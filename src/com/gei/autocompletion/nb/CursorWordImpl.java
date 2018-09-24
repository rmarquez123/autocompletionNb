package com.gei.autocompletion.nb;

import com.gei.autocompletion.CursorWord;
import javax.swing.text.JTextComponent;
import javax.swing.text.StyledDocument;

/**
 *
 * @author rmarquez
 */
public class CursorWordImpl extends CursorWord {

  private final JTextComponent textField;

  private final StyledDocument doc;
  private final int caretOffset;
  
  public CursorWordImpl(String text, JTextComponent textField, StyledDocument doc, int caretOffset) {
    super(text);
    this.textField = textField;
    this.doc = doc;
    this.caretOffset = caretOffset;
  }
  
  /**
   * 
   * @return 
   */
  public int getCaretOffSet() {
    return this.caretOffset;
  }
  
  /**
   * 
   * @return 
   */
  public StyledDocument getDocument() {
    return this.doc;
  }

  public JTextComponent getTextField() {
    return this.textField;
  }
  
}
