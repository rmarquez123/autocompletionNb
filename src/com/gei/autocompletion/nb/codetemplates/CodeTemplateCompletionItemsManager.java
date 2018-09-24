package com.gei.autocompletion.nb.codetemplates;

import com.gei.autocompletion.CompletionItem;
import com.gei.autocompletion.ManagedSet;
import com.gei.autocompletion.nb.CompletionItemsManager;
import java.util.Collection;
import java.util.List;
import java.util.stream.Collectors;
import javax.swing.text.Document;
import org.netbeans.lib.editor.codetemplates.api.CodeTemplate;
import org.netbeans.lib.editor.codetemplates.api.CodeTemplateManager;

/**
 *
 * @author rmarquez
 */
public class CodeTemplateCompletionItemsManager implements CompletionItemsManager {
  
  private final ManagedSet managedSet;

  /**
   * 
   * @param managedSet 
   */
  public CodeTemplateCompletionItemsManager(ManagedSet managedSet) {
    this.managedSet = managedSet;
  }
  
  /**
   * 
   * @param document 
   */
  @Override
  public void setDocument(Document document) {
    CodeTemplateManager manager = CodeTemplateManager.get(document);
    Collection<? extends CodeTemplate> codeTemplates = manager.getCodeTemplates(); 
    List<CompletionItem> collect = codeTemplates.stream().map((ct)->{
      String description = ct.getDescription();
      int lastIndexOfSemiColon = description == null ? -1 : description.lastIndexOf(":"); 
      int lastIndexOfPeriod = description == null ? -1 : description.lastIndexOf("."); 
      String key; 
      if (description != null 
              && lastIndexOfSemiColon != -1 
              && lastIndexOfPeriod != -1 
              && (lastIndexOfPeriod < lastIndexOfSemiColon)) {
        key = description.substring(0, lastIndexOfSemiColon).trim(); 
      } else {
        key = ct.getAbbreviation();
      }
      String insertionText = ct.getParametrizedText();
      CompletionItem completionItem = new CompletionItem(key, insertionText, ct);
      return completionItem;
    }).collect(Collectors.toList());
    this.managedSet.setCompletionItems(collect);
  }
}
