����   4 f
  C D E
  C
  F G
  C
  H I
 	 J	  K
  L	  M N
 O P Q R S
 O T
  U V
  W X Y autoCompletion 'Lcom/gei/autocompletion/AutoCompletion; ctItemsManager 2Lcom/gei/autocompletion/nb/CompletionItemsManager; <init> ()V Code LineNumberTable LocalVariableTable this 4Lcom/gei/autocompletion/nb/AcCompletionProviderBase; 
managedSet #Lcom/gei/autocompletion/ManagedSet; display /Lcom/gei/autocompletion/CompletionItemsDisplay; document !Lcom/gei/autocompletion/Document; 
createTask W(ILjavax/swing/text/JTextComponent;)Lorg/netbeans/spi/editor/completion/CompletionTask; result @Lorg/netbeans/spi/editor/completion/support/AsyncCompletionTask; Ljavax/swing/text/Document; queryObj 2Lcom/gei/autocompletion/nb/AcAsyncCompletionQuery; 	queryType I jtc !Ljavax/swing/text/JTextComponent; StackMapTable V #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; getAutoQueryTypes 6(Ljavax/swing/text/JTextComponent;Ljava/lang/String;)I string Ljava/lang/String; onGetItemsManager W(Lcom/gei/autocompletion/ManagedSet;)Lcom/gei/autocompletion/nb/CompletionItemsManager; org.netbeans.ParameterNames onGetDocument #()Lcom/gei/autocompletion/Document; 
SourceFile AcCompletionProviderBase.java   !com/gei/autocompletion/ManagedSet java/util/ArrayList  Z 4com/gei/autocompletion/nb/CompletionItemsDisplayImpl ? @ %com/gei/autocompletion/AutoCompletion  [   < =   5org/netbeans/spi/editor/completion/CompletionProvider \ ] ^ _ ` a 0com/gei/autocompletion/nb/AcAsyncCompletionQuery b c  d >org/netbeans/spi/editor/completion/support/AsyncCompletionTask  e 2com/gei/autocompletion/nb/AcCompletionProviderBase java/lang/Object (Ljava/util/List;)V v(Lcom/gei/autocompletion/Document;Lcom/gei/autocompletion/ManagedSet;Lcom/gei/autocompletion/CompletionItemsDisplay;)V javax/swing/text/JTextComponent getDocument ()Ljavax/swing/text/Document; 0com/gei/autocompletion/nb/CompletionItemsManager setDocument (Ljavax/swing/text/Document;)V getCaretPosition ()I g(Lcom/gei/autocompletion/AutoCompletion;Ljavax/swing/text/JTextComponent;Ljavax/swing/text/Document;I)V D(Lorg/netbeans/spi/editor/completion/support/AsyncCompletionQuery;)V!                        �     8*� � Y� Y� � L� Y� M*� N*� 	Y-+,� 
� **+� � �                     .  7       *    8 ! "    % # $    % &     ' (   ) *     �     ;� N� 2,� :*� �  � Y*� ,,� � :� Y� N-�           -  . 
 0  1  2 / 3 9 5     H    + ,   ) ' -  / 
 . /    ; ! "     ; 0 1    ; 2 3  9  + ,  4   	 
� . 5 6     7    8 9     @     �           :           ! "      2 3     : ;  6     7   < =  >    # ? @    A    B