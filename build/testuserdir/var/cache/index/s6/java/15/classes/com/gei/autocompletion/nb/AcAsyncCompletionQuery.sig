����   4 �
 / x	 . y	 . z	 . {	 . |
 . }
 ~ 
 � �  �   � � �
 � � � � �
 � �
 � � �
 . �  �
  �
 . � �
  � �
  � �
  �  � � � � �
  � �
   x �
   �
   � � �  �
   �
  �
  �
 � � �
 , � � � autoComplete 'Lcom/gei/autocompletion/AutoCompletion; 	textField !Ljavax/swing/text/JTextComponent; doc Ljavax/swing/text/Document; caretOffset I <init> g(Lcom/gei/autocompletion/AutoCompletion;Ljavax/swing/text/JTextComponent;Ljavax/swing/text/Document;I)V Code LineNumberTable LocalVariableTable this 2Lcom/gei/autocompletion/nb/AcAsyncCompletionQuery; query W(Lorg/netbeans/spi/editor/completion/CompletionResultSet;Ljavax/swing/text/Document;I)V 
cursorWord #Lcom/gei/autocompletion/CursorWord; items 1Lcom/gei/autocompletion/CandidateCompletionItems; mapped Ljava/util/List; crs 8Lorg/netbeans/spi/editor/completion/CompletionResultSet; dcmnt LocalVariableTypeTable >Ljava/util/List<Lcom/gei/autocompletion/nb/AcCompletionItem;>; StackMapTable #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; getCursorWord b(Ljavax/swing/text/JTextComponent;Ljavax/swing/text/Document;I)Lcom/gei/autocompletion/CursorWord; bDoc !Ljavax/swing/text/StyledDocument; lineStartOffset line [C whiteOffset ex 'Ljavax/swing/text/BadLocationException; document filter Ljava/lang/String; result *Lcom/gei/autocompletion/nb/CursorWordImpl; � � � � � getRowFirstNonWhite %(Ljavax/swing/text/StyledDocument;I)I offset lineElement Ljavax/swing/text/Element; start � 
Exceptions indexOfWhite ([C)I c C i lambda$query$0 U(Lcom/gei/autocompletion/CompletionItem;)Lcom/gei/autocompletion/nb/AcCompletionItem; completionItem 'Lcom/gei/autocompletion/CompletionItem; acCompletionItem ,Lcom/gei/autocompletion/nb/AcCompletionItem; 
SourceFile AcAsyncCompletionQuery.java 8 � 0 1 2 3 4 5 6 7 O P � � � � � � � � BootstrapMethods � � � q � � � � � � � � � � java/util/List � � � � � javax/swing/text/StyledDocument c d � � � � k l java/lang/String 8 � %javax/swing/text/BadLocationException � � (com/gei/autocompletion/nb/CursorWordImpl 8 � � � � � � � � � � java/lang/StringBuilder calling getText( � � � � ,  ) on doc of length:  � � � � 8 � � � � � � *com/gei/autocompletion/nb/AcCompletionItem 8 � 0com/gei/autocompletion/nb/AcAsyncCompletionQuery ?org/netbeans/spi/editor/completion/support/AsyncCompletionQuery javax/swing/text/JTextComponent javax/swing/text/Document javax/swing/text/Element ()V %com/gei/autocompletion/AutoCompletion setCursorWord V(Lcom/gei/autocompletion/CursorWord;)Lcom/gei/autocompletion/CandidateCompletionItems; /com/gei/autocompletion/CandidateCompletionItems asList ()Ljava/util/List; stream ()Ljava/util/stream/Stream;
 � � &(Ljava/lang/Object;)Ljava/lang/Object;
 . � apply Q(Lcom/gei/autocompletion/nb/AcAsyncCompletionQuery;)Ljava/util/function/Function; java/util/stream/Stream map 8(Ljava/util/function/Function;)Ljava/util/stream/Stream; java/util/stream/Collectors toList ()Ljava/util/stream/Collector; collect 0(Ljava/util/stream/Collector;)Ljava/lang/Object; 6org/netbeans/spi/editor/completion/CompletionResultSet addAllItems (Ljava/util/Collection;)Z finish getText (II)Ljava/lang/String; toCharArray ()[C ([CII)V printStackTrace X(Ljava/lang/String;Ljavax/swing/text/JTextComponent;Ljavax/swing/text/StyledDocument;I)V getParagraphElement (I)Ljavax/swing/text/Element; getStartOffset ()I getEndOffset charAt (I)C append -(Ljava/lang/String;)Ljava/lang/StringBuilder; (I)Ljava/lang/StringBuilder; 	getLength toString ()Ljava/lang/String; (Ljava/lang/String;I)V 	initCause ,(Ljava/lang/Throwable;)Ljava/lang/Throwable; java/lang/Character isWhitespace (C)Z Q(Lcom/gei/autocompletion/AutoCompletion;Lcom/gei/autocompletion/CompletionItem;)V � � � p q "java/lang/invoke/LambdaMetafactory metafactory � Lookup InnerClasses �(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite; � %java/lang/invoke/MethodHandles$Lookup java/lang/invoke/MethodHandles ! . /     0 1    2 3    4 5    6 7      8 9  :   �     *� *+� *,� *-� *� �    ;           	 !  "  #  $ <   4     = >      0 1     2 3     4 5     6 7   ? @  :   �     R*� � I**� *� *� � :*� � :� � 	 *� 
  �  � �  � :+� W+� �    ;   "    .  /  0 $ 1 9 4 F 5 M 7 Q 9 <   H   4 A B  $ ) C D  F  E F    R = >     R G H    R I 5    R 6 7  J     F  E K  L    � M M     N    O P  :  =  	   _:,� :� 6d�  � :� 6� Y`�dd� :� 
:� � Y+,� � :�   A D   ;   .    B  D 	 E  F # G * H A K D I F J K L \ M <   p  	 8 Q R   0 S 7  #  T U  *  V 7  F  W X    _ = >     _ 2 3    _ Y 5    _ 6 7   \ Z [  \  \ ]  L    � D  ^ _ ` a  b  c d  :       y*�  M,�  >`,�  � _*�  �  � � K� B:� Y�  Y� !"� #� $%� #`� $&� #*� ' � $� (� )� *� ������   , 2   ;   2    Y  Z  [  ] , ^ / e 2 ` 4 a Y c j d q f w h <   4  4 = W X    y 4 R     y e 7   q f g   j h 7  L    �  iB b> j       k l  :   �     *�<��� *4=� +� �����    ;       l  m  n  o  p  r  s <       	 m n     T U     o 7  L    �  p q  :   Q     � ,Y*� +� -M,�    ;   
    2  3 <         = >      r s    t u   v    w �   
  � � �  �     �  � � �