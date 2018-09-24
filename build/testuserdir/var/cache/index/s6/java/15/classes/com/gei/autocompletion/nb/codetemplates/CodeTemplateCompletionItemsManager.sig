����   4 �
  B	  C
 D E
 D F G H   N O P
 Q R O S T
 U V
 W X Y
 Z [ \
 Z ]
 Z ^
 W _
 W ` a
  b c d e 
managedSet #Lcom/gei/autocompletion/ManagedSet; <init> &(Lcom/gei/autocompletion/ManagedSet;)V Code LineNumberTable LocalVariableTable this LLcom/gei/autocompletion/nb/codetemplates/CodeTemplateCompletionItemsManager; setDocument (Ljavax/swing/text/Document;)V document Ljavax/swing/text/Document; manager ?Lorg/netbeans/lib/editor/codetemplates/api/CodeTemplateManager; codeTemplates Ljava/util/Collection; collect Ljava/util/List; LocalVariableTypeTable QLjava/util/Collection<+Lorg/netbeans/lib/editor/codetemplates/api/CodeTemplate;>; 9Ljava/util/List<Lcom/gei/autocompletion/CompletionItem;>; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; lambda$setDocument$3 a(Lorg/netbeans/lib/editor/codetemplates/api/CodeTemplate;)Lcom/gei/autocompletion/CompletionItem; key Ljava/lang/String; ct 8Lorg/netbeans/lib/editor/codetemplates/api/CodeTemplate; description lastIndexOfSemiColon I lastIndexOfPeriod insertionText completionItem 'Lcom/gei/autocompletion/CompletionItem; StackMapTable f 
SourceFile 'CodeTemplateCompletionItemsManager.java  g   h i j k l m n o BootstrapMethods p q r 2 s t u v w x y z * { java/util/List | } ~  � � : f � � . � � � � � � � � %com/gei/autocompletion/CompletionItem  � Jcom/gei/autocompletion/nb/codetemplates/CodeTemplateCompletionItemsManager java/lang/Object 0com/gei/autocompletion/nb/CompletionItemsManager java/lang/String ()V =org/netbeans/lib/editor/codetemplates/api/CodeTemplateManager get \(Ljavax/swing/text/Document;)Lorg/netbeans/lib/editor/codetemplates/api/CodeTemplateManager; getCodeTemplates ()Ljava/util/Collection; java/util/Collection stream ()Ljava/util/stream/Stream;
 � � &(Ljava/lang/Object;)Ljava/lang/Object;
  � apply ()Ljava/util/function/Function; java/util/stream/Stream map 8(Ljava/util/function/Function;)Ljava/util/stream/Stream; java/util/stream/Collectors toList ()Ljava/util/stream/Collector; 0(Ljava/util/stream/Collector;)Ljava/lang/Object; !com/gei/autocompletion/ManagedSet setCompletionItems (Ljava/util/List;)V 6org/netbeans/lib/editor/codetemplates/api/CodeTemplate getDescription ()Ljava/lang/String; lastIndexOf (Ljava/lang/String;)I 	substring (II)Ljava/lang/String; trim getAbbreviation getParametrizedText 9(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V � � � 1 2 "java/lang/invoke/LambdaMetafactory metafactory � Lookup InnerClasses �(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite; � %java/lang/invoke/MethodHandles$Lookup java/lang/invoke/MethodHandles !                   F     
*� *+� �              	         
   !     
     " #     �     1+� M,� N-�  �   �  � � 	 � 
:*� � �           #  $ 
 %  5 ' 6 0 7    4    1   !     1 $ %   , & '  
 ' ( )  ' 
 * +  ,     
 ' ( -  ' 
 * .  /     0  
 1 2         a*� L+� � 	+� =+� � 	+� >+�  � � � +� � :� 	*� :*� :� Y*� :�       & 	   &  '  ( # * 6 . D 0 J 2 P 3 ^ 4    R  A  3 4    a 5 6    \ 7 4   M 8 9  # > : 9  J  3 4  P  ; 4  ^  < =  >    �  ?E� E� !�  ?  @    A �   
  � � �  I     J  K L M