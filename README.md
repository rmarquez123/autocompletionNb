# autocompletionNb
autocompletion for netbeans (integration with code templates)

Purpose
The code templates feature in Netbeans is useful for storing common code snippets which can be inserted into a document by typing the code template name.   For users who frequent this feature, the code template names have to be committed to memory.   It would be nice if code completion in (out-of-the-box) Netbeans would support assistance for invoking code templates based on a few key strokes in the editor.  

This module bridges the gap between auto completion and code templates in Netbeans.  The module has bean packaged as a Netbean plugin which can be download from here.  

The rest of the article below describes how the plugin was produced in case any one wants to further customize the plugin (for example, the code completion rending can be modified to show descriptions, icons, or links).  The source code is available on GitHub. 

This module uses the autocompletion module which was described in this blog.  The sequence diagram shows the interaction of key objects.


1. Sequence Entry: <<create>>

The first interaction case, the CodeTemplateCompletionProvider (which implements Netbeans' CompletionProvider class) is the controller object and is instantiated by Netbeans when the file with the matching mime type (configured with annotations) is opened.  On instantiation, the CodeTemplateCompletionProvider creates its collaborators Autocompletion and CodeTemplateDocument.  

2. Sequence Entry:  createTask()

As the user types, the Netbeans IDE will call the createTask method.  This method will return a CtASyncCompletionTask instance.  

3. Sequence Entry: query()

The query method of CtASyncCompletionTask will be called with the result set passed to it and the CtASyncCompletionTask instance will interact with the AutoCompletion instance to update the CompletionResultSet with candidate completion items.    

4. Sequence Entry: defaultAction() 

The user then selects a completion item which causes the Netbeans IDE to invoke the defaultAction of the CompletionItem.  The completion item will then invoke the AutoCompletion to display which then invokes the Document(in this case CodeTemplateDocument) to replace the cursor word with the insertion text.  

The above general sequence diagram was converted into a class diagram (not shown), then after some generalization considerations a separate package was created to consist of classes specifically pertaining to code templates (highlighted in blue in the sequence diagram).  The following package organization below resulted from the refactoring. 

Package Organization: 
com.rm.autocompletion.nb 
This package contains integration with the Autocompletion and Netbeans editor auto completion support but abstracts the Document and part of the ManagedSet implementation.  
com.rm.autocompletion.nb.codetemplates 
This package implements the Document and ManageSet abstractions based on code templates.  

Incidentally, the relation among classes in the two packages in the module happens to resemble the Bridge Design Pattern.   This is ideal because I intend to reuse this module for another use case involing code completion with custom Spring components in a future blog. The class diagram is shown below.


