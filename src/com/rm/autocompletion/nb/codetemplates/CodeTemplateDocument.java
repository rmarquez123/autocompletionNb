package com.rm.autocompletion.nb.codetemplates;

import com.rm.autocompletion.CompletionItem;
import com.rm.autocompletion.CursorWord;
import com.rm.autocompletion.Document;
import com.rm.autocompletion.nb.CursorWordImpl;
import java.util.logging.Level;
import java.util.logging.Logger;
import javafx.beans.property.Property;
import javafx.beans.property.SimpleObjectProperty;
import javax.swing.text.BadLocationException;
import javax.swing.text.JTextComponent;
import javax.swing.text.StyledDocument;
import org.netbeans.lib.editor.codetemplates.api.CodeTemplate;

/**
 *
 * @author rmarquez
 */
public class CodeTemplateDocument implements Document {

  private final Property<CursorWordImpl> cursorWordProperty = new SimpleObjectProperty<>();
  private final Property<CursorWord> cursorWordPropertyBind = new SimpleObjectProperty<>();
  
  /**
   *
   */
  public CodeTemplateDocument() {
    this.cursorWordPropertyBind.addListener((obs, old, change) -> {
      this.cursorWordProperty.setValue((CursorWordImpl) change);
    });
    this.cursorWordProperty.addListener((obs, old, change) -> {
      this.cursorWordPropertyBind.setValue((CursorWordImpl) change);
    });
  }

  /**
   *
   * @return
   */
  @Override
  public Property<CursorWord> cursorWordProperty() {
    return cursorWordPropertyBind;
  }

  /**
   *
   * @param ci
   */
  @Override
  public void replaceCursorWord(CompletionItem ci) {
    if (ci != null) {
      try {
        CursorWordImpl cursorWord = this.cursorWordProperty.getValue();
        int caretOffset = cursorWord.getCaretOffSet();
        StyledDocument doc = cursorWord.getDocument();
        Object object = ci.getObject();
        if (object == null) {
          doc.insertString(caretOffset, ci.getKey(), null);
        } else {
          JTextComponent jtc = cursorWord.getTextField();
          int len = cursorWord.getText().length();
          doc.remove(caretOffset - cursorWord.getText().length(), len);
          CodeTemplate ct = (CodeTemplate) object; 
          ct.insert(jtc);
        }
      } catch (BadLocationException ex) {
        Logger.getLogger(CodeTemplateDocument.class.getName()).log(Level.SEVERE, null, ex);
      }
    }
  }
}
