����   4 �
  U V
  U	  W	  X   ^ _ `  ^ _ c d
 
 e
 
 f
 g h
 g i j k
 
 l
 
 m
 n o j p q
  r s t
 u v
 w x	 y z
 w { _ | } ~ cursorWordProperty  Ljavafx/beans/property/Property; 	Signature LLjavafx/beans/property/Property<Lcom/gei/autocompletion/nb/CursorWordImpl;>; cursorWordPropertyBind ELjavafx/beans/property/Property<Lcom/gei/autocompletion/CursorWord;>; <init> ()V Code LineNumberTable LocalVariableTable this >Lcom/gei/autocompletion/nb/codetemplates/CodeTemplateDocument; "()Ljavafx/beans/property/Property; G()Ljavafx/beans/property/Property<Lcom/gei/autocompletion/CursorWord;>; #org.netbeans.SourceLevelAnnotations Ljava/lang/Override; replaceCursorWord *(Lcom/gei/autocompletion/CompletionItem;)V jtc !Ljavax/swing/text/JTextComponent; len I ct 8Lorg/netbeans/lib/editor/codetemplates/api/CodeTemplate; 
cursorWord *Lcom/gei/autocompletion/nb/CursorWordImpl; caretOffset doc !Ljavax/swing/text/StyledDocument; object Ljava/lang/Object; ex 'Ljavax/swing/text/BadLocationException; ci 'Lcom/gei/autocompletion/CompletionItem; StackMapTable t  d � } s lambda$new$2 {(Ljavafx/beans/value/ObservableValue;Lcom/gei/autocompletion/nb/CursorWordImpl;Lcom/gei/autocompletion/nb/CursorWordImpl;)V obs $Ljavafx/beans/value/ObservableValue; old change lambda$new$1 m(Ljavafx/beans/value/ObservableValue;Lcom/gei/autocompletion/CursorWord;Lcom/gei/autocompletion/CursorWord;)V #Lcom/gei/autocompletion/CursorWord; 
SourceFile CodeTemplateDocument.java % & *javafx/beans/property/SimpleObjectProperty    #   BootstrapMethods � � � Q � � � � � � K � � (com/gei/autocompletion/nb/CursorWordImpl � � � �  � � � � � � � � � � � � � � � � 6org/netbeans/lib/editor/codetemplates/api/CodeTemplate � � %javax/swing/text/BadLocationException <com/gei/autocompletion/nb/codetemplates/CodeTemplateDocument � � � � � � � � � � � � � java/lang/Object com/gei/autocompletion/Document %com/gei/autocompletion/CompletionItem javax/swing/text/StyledDocument
 � � K(Ljavafx/beans/value/ObservableValue;Ljava/lang/Object;Ljava/lang/Object;)V
  � changed c(Lcom/gei/autocompletion/nb/codetemplates/CodeTemplateDocument;)Ljavafx/beans/value/ChangeListener; javafx/beans/property/Property addListener &(Ljavafx/beans/value/ChangeListener;)V
  � getValue ()Ljava/lang/Object; getCaretOffSet ()I getDocument #()Ljavax/swing/text/StyledDocument; 	getObject getKey ()Ljava/lang/String; insertString 5(ILjava/lang/String;Ljavax/swing/text/AttributeSet;)V getTextField #()Ljavax/swing/text/JTextComponent; getText java/lang/String length remove (II)V insert $(Ljavax/swing/text/JTextComponent;)V java/lang/Class getName java/util/logging/Logger 	getLogger .(Ljava/lang/String;)Ljava/util/logging/Logger; java/util/logging/Level SEVERE Ljava/util/logging/Level; log C(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V setValue (Ljava/lang/Object;)V � � � P Q J K "java/lang/invoke/LambdaMetafactory metafactory � Lookup InnerClasses �(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite; � %java/lang/invoke/MethodHandles$Lookup java/lang/invoke/MethodHandles !           !    "  #    !    $   % &  '   w     9*� *� Y� � *� Y� � *� *�   �  *� *�   �  �    (              )   8 # )       9 * +     ,  '   /     *� �    (       + )        * +   !    - .     /    0 1  '  t  	   {+� y*� � 	 � 
M,� >,� :+� :� +� �  � 2,� :,� � 6,� � d�  � :� � M� � � ,� �   f i   (   B    4  6  7  8  9 " : ' ; 7 = = > F ? X @ _ A f E i C j D z G )   f 
 = ) 2 3  F   4 5  _  6 7   U 8 9   P : 5   J ; <  " D = >  j  ? @    { * +     { A B  C   + � 7  D E F G H  � .  D E  B I .     /   J K  '   W     *� -�  �    (   
    ! 
 " )   *     * +      L M     N 9     O 9  P Q  '   Z     *� -� 
�  �    (   
       )   *     * +      L M     N R     O R   S    T �   
  � � �  Y     Z  [ \ ] Z  [ a b