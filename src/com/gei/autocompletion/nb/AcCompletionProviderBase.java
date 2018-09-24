package com.gei.autocompletion.nb;

import com.gei.autocompletion.AutoCompletion;
import com.gei.autocompletion.CompletionItemsDisplay;
import com.gei.autocompletion.ManagedSet;
import java.util.ArrayList;
import javax.swing.text.Document;
import javax.swing.text.JTextComponent;
import org.netbeans.spi.editor.completion.CompletionProvider;
import org.netbeans.spi.editor.completion.CompletionTask;
import org.netbeans.spi.editor.completion.support.AsyncCompletionTask;

/**
 *
 * @author rmarquez
 */
public abstract class AcCompletionProviderBase implements CompletionProvider {

  protected final AutoCompletion autoCompletion;
  protected final CompletionItemsManager ctItemsManager;
  
  /**
   * 
   */
  public AcCompletionProviderBase() {
    ManagedSet managedSet = new ManagedSet(new ArrayList<>());
    CompletionItemsDisplay display = new CompletionItemsDisplayImpl();
    com.gei.autocompletion.Document document = this.onGetDocument();
    this.autoCompletion = new AutoCompletion(document, managedSet, display);
    this.ctItemsManager = this.onGetItemsManager(managedSet);
  }
  

  
  /**
   *
   * @param queryType
   * @param jtc
   * @return
   */
  @Override
  public CompletionTask createTask(int queryType, JTextComponent jtc) {
    AsyncCompletionTask result;
    if (queryType != CompletionProvider.COMPLETION_QUERY_TYPE) {
      result = null;
    } else {
      Document document = jtc.getDocument();
      this.ctItemsManager.setDocument(document);
      AcAsyncCompletionQuery queryObj = new AcAsyncCompletionQuery(this.autoCompletion, jtc, document, jtc.getCaretPosition());
      result = new AsyncCompletionTask(queryObj);
    }
    return result;
  }

  @Override
  public int getAutoQueryTypes(JTextComponent jtc, String string) {
    return 0;
  }

  /**
   * 
   * @param managedSet
   * @return 
   */
  protected abstract CompletionItemsManager onGetItemsManager(ManagedSet managedSet);
  
  
  /**
   * 
   * @return 
   */
  protected abstract com.gei.autocompletion.Document onGetDocument(); 

}
