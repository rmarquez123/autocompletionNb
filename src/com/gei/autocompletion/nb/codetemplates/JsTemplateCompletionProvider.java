package com.gei.autocompletion.nb.codetemplates;

import com.gei.autocompletion.Document;
import com.gei.autocompletion.ManagedSet;
import com.gei.autocompletion.nb.AcCompletionProviderBase;
import com.gei.autocompletion.nb.CompletionItemsManager;
import org.netbeans.api.editor.mimelookup.MimeRegistration;
import org.netbeans.spi.editor.completion.CompletionProvider;

/**
 *
 * @author rmarquez
 */
@MimeRegistration(mimeType = "text/x-javascript", service = CompletionProvider.class)
public class JsTemplateCompletionProvider extends AcCompletionProviderBase {
  /**
   *
   */
  public JsTemplateCompletionProvider() {
  }
  
  @Override
  protected CompletionItemsManager onGetItemsManager(ManagedSet managedSet) {
    return new CodeTemplateCompletionItemsManager(managedSet);
  }

  @Override
  protected Document onGetDocument() {
    return new CodeTemplateDocument();
  }
  
  
}
