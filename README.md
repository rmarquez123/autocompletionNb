# autocompletionNb - autocompletion for netbeans (integration with code templates) 
<h4>See Also : https://github.com/rmarquez123/autocompletion</h4>
<h4>Download the plugin : http://ricardo-marquez.com/nb/com-rm-autocompletionNb.nbm</h4>
<h4> See plug in in Action</h4> 

[![netbeans code completion](https://img.youtube.com/vi/kIvnGBucGko/0.jpg)](http://www.youtube.com/watch?v=kIvnGBucGko)


<h3>Purpose</h3> 
The code templates feature in Netbeans is useful for storing common code snippets which can be inserted into a document by typing the code template name.   For users who frequent this feature, the code template names have to be committed to memory.   It would be nice if code completion in (out-of-the-box) Netbeans would support assistance for invoking code templates based on a few key strokes in the editor.  

This module bridges the gap between auto completion and code templates in Netbeans.  The module has bean packaged as a Netbean plugin which can be download from here.  

The rest of the article below describes how the plugin was produced in case any one wants to further customize the plugin (for example, the code completion rending can be modified to show descriptions, icons, or links).  The source code is available on GitHub. 

This module uses the autocompletion module which was described in this blog.  The sequence diagram shows the interaction of key objects.

  <div align="center" width="1200px"> 
    <img src="http://ricardo-marquez.com/rm/assets/images/sequence-diagram-autocompletionnb.svg" alt="" height="550px">
  </div> 

<h4>1. Sequence Entry: <code>&lt;&lt;create&gt;&gt;</code> </h4>
The first interaction case, the CodeTemplateCompletionProvider (which implements Netbeans' <code>CompletionProvider</code> class) is the controller object and is instantiated by Netbeans when the file with the matching mime type (configured with annotations) is opened.  On instantiation, the <code>CodeTemplateCompletionProvider</code> creates its collaborators <code>Autocompletion</code> and <code>CodeTemplateDocument</code>.  

<h4>2. Sequence Entry:  createTask() </h4>
As the user types, the Netbeans IDE will call the <code>createTask</code> method.  This method will return a <code>CtASyncCompletionTask</code> instance.  

<h4>3. Sequence Entry: <code>query()</code> </h4>
The query method of <code>CtASyncCompletionTask</code> will be called with the result set passed to it and the <code>CtASyncCompletionTask</code> instance will interact with the <code>AutoCompletion</code> instance to update the <code>CompletionResultSet</code> with candidate completion items.    

<h4>4. Sequence Entry: <code>defaultAction()</code> </h4>
The user then selects a completion item which causes the Netbeans IDE to invoke the <code>defaultAction</code> of the <code>CompletionItem</code>.  The completion item will then invoke the <code>AutoCompletion</code> to display which then invokes the <code>Document</code>(in this case <code>CodeTemplateDocument</code>) to replace the cursor word with the insertion text.  

The above general sequence diagram was converted into a class diagram (not shown), then after some generalization considerations a separate package was created to consist of classes specifically pertaining to code templates (highlighted in blue in the sequence diagram).  The following package organization below resulted from the refactoring. 

<h3>Package Organization: </h3>
  <div align="center" width="1200px"> 
    <img src="http://ricardo-marquez.com/rm/assets/images/autocompletion-nb-packages-384x422.png" alt="" height="450px">
  </div> 
  
<h4><code>com.rm.autocompletion.nb</code> </h4>
This package contains integration with the <code>Autocompletion</code> and Netbeans editor auto completion support but abstracts the <code>Document</code> and part of the <code>ManagedSet</code> implementation.  
<h4><code>com.rm.autocompletion.nb.codetemplates</code></h4>
This package implements the Document and ManageSet abstractions based on code templates.  

Incidentally, the relation among classes in the two packages in the module happens to resemble the Bridge Design Pattern.   This is ideal because I intend to reuse this module for another use case involing code completion with custom Spring components in a future blog. The class diagram is shown below.
  <div align="center" width="1200px"> 
    <img src="http://ricardo-marquez.com/rm/assets/images/class-diagram-autocompletion-nb.svg" alt="" height="350px">
  </div> 
  


