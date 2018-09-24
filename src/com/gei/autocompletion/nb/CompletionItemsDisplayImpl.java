package com.gei.autocompletion.nb;

import com.gei.autocompletion.CandidateCompletionItems;
import com.gei.autocompletion.CompletionItem;
import com.gei.autocompletion.CompletionItemsDisplay;
import javafx.beans.property.Property;
import javafx.beans.property.SimpleObjectProperty;

/**
 *
 * @author rmarquez
 */
public class CompletionItemsDisplayImpl implements CompletionItemsDisplay {
  private final Property<CandidateCompletionItems> candidateCompletionItems = new SimpleObjectProperty<>();
  private final Property<CompletionItem> selected = new SimpleObjectProperty<>();
          
  /**
   * 
   */
  public CompletionItemsDisplayImpl() {
  }
  /**
   * 
   * @return 
   */
  @Override
  public Property<CandidateCompletionItems> candidateCompletionItemsProperty() {
    return this.candidateCompletionItems;
  }
  
  /**
   * 
   * @return 
   */
  @Override
  public Property<CompletionItem> getCompletionItemSelected() {
    return selected;
  }

  @Override
  public void display(CandidateCompletionItems cci) { 
    this.candidateCompletionItems.setValue(cci);
  }
}
