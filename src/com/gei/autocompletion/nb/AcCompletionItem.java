package com.gei.autocompletion.nb;

import com.gei.autocompletion.AutoCompletion;
import com.gei.autocompletion.CompletionItem;
import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.event.KeyEvent;
import javax.swing.text.JTextComponent;
import org.netbeans.api.editor.completion.Completion;
import org.netbeans.spi.editor.completion.CompletionTask;
import org.netbeans.spi.editor.completion.support.CompletionUtilities;

/**
 *
 * @author rmarquez
 */
public class AcCompletionItem implements org.netbeans.spi.editor.completion.CompletionItem {

  private final AutoCompletion autoCompletion;
  private final CompletionItem completionItem;
  private final Color fieldColor = Color.decode("0x0000B2");
  
  /**
   * 
   * @param autoCompletion
   * @param completionItem 
   */
  public AcCompletionItem(AutoCompletion autoCompletion, CompletionItem completionItem) {
    this.autoCompletion = autoCompletion;
    this.completionItem = completionItem;
  }

  /**
   *
   * @param jtc
   */
  @Override
  public void defaultAction(JTextComponent jtc) {
    this.autoCompletion.selectCompletionItem(this.completionItem);
    Completion.get().hideAll();
  }

  @Override
  public void processKeyEvent(KeyEvent ke) {

  }

  @Override
  public int getPreferredWidth(Graphics graphics, Font font) {
    return CompletionUtilities.getPreferredWidth(this.completionItem.getKey(), null, graphics, font);
  }

  @Override
  public void render(Graphics g, Font defaultFont, Color defaultColor,
          Color backgroundColor, int width, int height, boolean selected) {
    CompletionUtilities.renderHtml(null, this.completionItem.getKey(), null, g, defaultFont,
            (selected ? Color.white : fieldColor), width, height, selected);
  }

  @Override
  public CompletionTask createDocumentationTask() {
    return null;
  }

  @Override
  public CompletionTask createToolTipTask() {
    return null;
  }

  @Override
  public boolean instantSubstitution(JTextComponent jtc) {
    return false;
  }

  @Override
  public int getSortPriority() {
    return 0;
  }

  @Override
  public CharSequence getSortText() {
    return this.completionItem.getKey();
  }

  @Override
  public CharSequence getInsertPrefix() {
    return this.completionItem.getKey();
  }
}
