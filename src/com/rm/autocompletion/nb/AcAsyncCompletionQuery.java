package com.rm.autocompletion.nb;

import com.rm.autocompletion.AutoCompletion;
import com.rm.autocompletion.CandidateCompletionItems;
import com.rm.autocompletion.CursorWord;
import java.util.List;
import java.util.stream.Collectors;
import javax.swing.text.BadLocationException;
import javax.swing.text.Document;
import javax.swing.text.Element;
import javax.swing.text.JTextComponent;
import javax.swing.text.StyledDocument;
import org.netbeans.spi.editor.completion.CompletionResultSet;
import org.netbeans.spi.editor.completion.support.AsyncCompletionQuery;

/**
 *
 * @author rmarquez
 */
public class AcAsyncCompletionQuery extends AsyncCompletionQuery {

  private final AutoCompletion autoComplete;
  private final JTextComponent textField;
  private final Document doc;
  private final int caretOffset;

  /**
   *
   * @param autoComplete
   */
  AcAsyncCompletionQuery(AutoCompletion autoComplete, JTextComponent textField, Document doc, int caretOffset) {
    this.autoComplete = autoComplete;
    this.textField = textField;
    this.doc = doc;
    this.caretOffset = caretOffset;
  }

  /**
   *
   * @param crs
   * @param dcmnt
   * @param caretOffset
   */
  @Override
  protected void query(CompletionResultSet crs, Document dcmnt, int caretOffset) {
    if (this.doc != null) {
      CursorWord cursorWord = this.getCursorWord(this.textField, this.doc, this.caretOffset);
      CandidateCompletionItems items = this.autoComplete.setCursorWord(cursorWord);
      List<AcCompletionItem> mapped = items.asList().stream().map((completionItem) -> {
        AcCompletionItem acCompletionItem = new AcCompletionItem(this.autoComplete, completionItem);
        return acCompletionItem;
      }).collect(Collectors.toList());
      crs.addAllItems(mapped);
    }
    crs.finish();
    
  }

  /**
   *
   * @param dcmnt
   * @param caretOffset
   * @return
   */
  private CursorWord getCursorWord(JTextComponent textField, Document document, int caretOffset) {
    String filter = null;
    try {
      final StyledDocument bDoc = (StyledDocument) document; 
      final int lineStartOffset = getRowFirstNonWhite(bDoc, caretOffset);
      final char[] line = bDoc.getText(lineStartOffset, caretOffset - lineStartOffset).toCharArray();
      final int whiteOffset = indexOfWhite(line);
      filter = new String(line, whiteOffset + 1, line.length - whiteOffset - 1);
    } catch (BadLocationException ex) {
      ex.printStackTrace();
    }
    CursorWordImpl result = new CursorWordImpl(filter, textField, (StyledDocument) document, caretOffset);
    return result;
  }

  /**
   *
   * @param doc
   * @param offset
   * @return
   * @throws BadLocationException
   */
  static int getRowFirstNonWhite(StyledDocument doc, int offset)
          throws BadLocationException {
    Element lineElement = doc.getParagraphElement(offset);
    int start = lineElement.getStartOffset();
    while (start + 1 < lineElement.getEndOffset()) {
      try {
        if (doc.getText(start, 1).charAt(0) != ' ') {
          break;
        }
      } catch (BadLocationException ex) {
        throw (BadLocationException) new BadLocationException(
                "calling getText(" + start + ", " + (start + 1)
                + ") on doc of length: " + doc.getLength(), start
        ).initCause(ex);
      }
      start++;
    }
    return start;
  }

  static int indexOfWhite(char[] line) {
    int i = line.length;
    while (--i > -1) {
      final char c = line[i];
      if (Character.isWhitespace(c)) {
        return i;
      }
    }
    return -1;
  }
}
