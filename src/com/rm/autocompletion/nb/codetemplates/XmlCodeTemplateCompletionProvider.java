package com.rm.autocompletion.nb.codetemplates;

import com.rm.autocompletion.Document;
import com.rm.autocompletion.ManagedSet;
import com.rm.autocompletion.nb.AcCompletionProviderBase;
import com.rm.autocompletion.nb.CompletionItemsManager;
import org.netbeans.api.editor.mimelookup.MimeRegistration;
import org.netbeans.spi.editor.completion.CompletionProvider;

/**
 *
 * @author rmarquez
 */
@MimeRegistration(mimeType = "text/xml", service = CompletionProvider.class)
public class XmlCodeTemplateCompletionProvider extends AcCompletionProviderBase {
  /**
   *
   */
  public XmlCodeTemplateCompletionProvider() {
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