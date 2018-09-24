package com.rm.autocompletion.nb.codetemplates;

import com.rm.autocompletion.Document;
import com.rm.autocompletion.ManagedSet;
import com.rm.autocompletion.nb.AcCompletionProviderBase;
import com.rm.autocompletion.nb.CompletionItemsManager;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.netbeans.api.editor.mimelookup.MimeRegistration;
import org.netbeans.spi.editor.completion.CompletionProvider;

/**
 *
 * @author rmarquez
 */
@MimeRegistration(mimeType = "text/x-java", service = CompletionProvider.class)
public class JavaCodeTemplateCompletionProvider 
        extends AcCompletionProviderBase implements CompletionProvider {
  /**
   *
   */
  public JavaCodeTemplateCompletionProvider() {
    Logger.getLogger(JavaCodeTemplateCompletionProvider.class.getName())
            .log(Level.INFO, "Initializing java codetemplate/autocompletion.");
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
