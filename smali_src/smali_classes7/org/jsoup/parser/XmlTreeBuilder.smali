.class public Lorg/jsoup/parser/XmlTreeBuilder;
.super Lorg/jsoup/parser/TreeBuilder;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lorg/jsoup/parser/TreeBuilder;-><init>()V

    .line 4
    return-void
.end method

.method private insertNode(Lorg/jsoup/nodes/Node;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/jsoup/parser/TreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    .line 8
    return-void
.end method

.method private popStackToClose(Lorg/jsoup/parser/Token$EndTag;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->settings:Lorg/jsoup/parser/ParseSettings;

    .line 3
    .line 4
    iget-object p1, p1, Lorg/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lorg/jsoup/parser/ParseSettings;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->stack:Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 14
    move-result v0

    .line 15
    .line 16
    add-int/lit8 v0, v0, -0x1

    .line 17
    .line 18
    :goto_0
    if-ltz v0, :cond_1

    .line 19
    .line 20
    iget-object v1, p0, Lorg/jsoup/parser/TreeBuilder;->stack:Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    check-cast v1, Lorg/jsoup/nodes/Element;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result v2

    .line 35
    .line 36
    if-eqz v2, :cond_0

    .line 37
    goto :goto_1

    .line 38
    .line 39
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 v1, 0x0

    .line 42
    .line 43
    :goto_1
    if-nez v1, :cond_2

    .line 44
    return-void

    .line 45
    .line 46
    :cond_2
    iget-object p1, p0, Lorg/jsoup/parser/TreeBuilder;->stack:Ljava/util/ArrayList;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 50
    move-result p1

    .line 51
    .line 52
    add-int/lit8 p1, p1, -0x1

    .line 53
    .line 54
    :goto_2
    if-ltz p1, :cond_4

    .line 55
    .line 56
    iget-object v0, p0, Lorg/jsoup/parser/TreeBuilder;->stack:Ljava/util/ArrayList;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    check-cast v0, Lorg/jsoup/nodes/Element;

    .line 63
    .line 64
    iget-object v2, p0, Lorg/jsoup/parser/TreeBuilder;->stack:Ljava/util/ArrayList;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 68
    .line 69
    if-ne v0, v1, :cond_3

    .line 70
    goto :goto_3

    .line 71
    .line 72
    :cond_3
    add-int/lit8 p1, p1, -0x1

    .line 73
    goto :goto_2

    .line 74
    :cond_4
    :goto_3
    return-void
.end method


# virtual methods
.method defaultSettings()Lorg/jsoup/parser/ParseSettings;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lorg/jsoup/parser/ParseSettings;->preserveCase:Lorg/jsoup/parser/ParseSettings;

    .line 3
    return-object v0
.end method

.method protected initialiseParse(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/ParseErrorList;Lorg/jsoup/parser/ParseSettings;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Lorg/jsoup/parser/TreeBuilder;->initialiseParse(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/ParseErrorList;Lorg/jsoup/parser/ParseSettings;)V

    .line 4
    .line 5
    iget-object p1, p0, Lorg/jsoup/parser/TreeBuilder;->stack:Ljava/util/ArrayList;

    .line 6
    .line 7
    iget-object p2, p0, Lorg/jsoup/parser/TreeBuilder;->doc:Lorg/jsoup/nodes/Document;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    iget-object p1, p0, Lorg/jsoup/parser/TreeBuilder;->doc:Lorg/jsoup/nodes/Document;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lorg/jsoup/nodes/Document;->outputSettings()Lorg/jsoup/nodes/Document$OutputSettings;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    sget-object p2, Lorg/jsoup/nodes/Document$OutputSettings$Syntax;->xml:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p2}, Lorg/jsoup/nodes/Document$OutputSettings;->syntax(Lorg/jsoup/nodes/Document$OutputSettings$Syntax;)Lorg/jsoup/nodes/Document$OutputSettings;

    .line 22
    return-void
.end method

.method insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;
    .locals 5

    .line 1
    invoke-virtual {p1}, Lorg/jsoup/parser/Token$Tag;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/jsoup/parser/TreeBuilder;->settings:Lorg/jsoup/parser/ParseSettings;

    invoke-static {v0, v1}, Lorg/jsoup/parser/Tag;->valueOf(Ljava/lang/String;Lorg/jsoup/parser/ParseSettings;)Lorg/jsoup/parser/Tag;

    move-result-object v0

    .line 2
    new-instance v1, Lorg/jsoup/nodes/Element;

    iget-object v2, p0, Lorg/jsoup/parser/TreeBuilder;->baseUri:Ljava/lang/String;

    iget-object v3, p0, Lorg/jsoup/parser/TreeBuilder;->settings:Lorg/jsoup/parser/ParseSettings;

    iget-object v4, p1, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    invoke-virtual {v3, v4}, Lorg/jsoup/parser/ParseSettings;->normalizeAttributes(Lorg/jsoup/nodes/Attributes;)Lorg/jsoup/nodes/Attributes;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V

    .line 3
    invoke-direct {p0, v1}, Lorg/jsoup/parser/XmlTreeBuilder;->insertNode(Lorg/jsoup/nodes/Node;)V

    .line 4
    invoke-virtual {p1}, Lorg/jsoup/parser/Token$Tag;->isSelfClosing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {v0}, Lorg/jsoup/parser/Tag;->isKnownTag()Z

    move-result p1

    if-nez p1, :cond_1

    .line 6
    invoke-virtual {v0}, Lorg/jsoup/parser/Tag;->setSelfClosing()Lorg/jsoup/parser/Tag;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/jsoup/parser/TreeBuilder;->stack:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-object v1
.end method

.method insert(Lorg/jsoup/parser/Token$Character;)V
    .locals 1

    .line 18
    invoke-virtual {p1}, Lorg/jsoup/parser/Token$Character;->getData()Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->isCData()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lorg/jsoup/nodes/CDataNode;

    invoke-direct {p1, v0}, Lorg/jsoup/nodes/CDataNode;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/jsoup/nodes/TextNode;

    invoke-direct {p1, v0}, Lorg/jsoup/nodes/TextNode;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0, p1}, Lorg/jsoup/parser/XmlTreeBuilder;->insertNode(Lorg/jsoup/nodes/Node;)V

    return-void
.end method

.method insert(Lorg/jsoup/parser/Token$Comment;)V
    .locals 5

    .line 8
    new-instance v0, Lorg/jsoup/nodes/Comment;

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$Comment;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jsoup/nodes/Comment;-><init>(Ljava/lang/String;)V

    .line 9
    iget-boolean p1, p1, Lorg/jsoup/parser/Token$Comment;->bogus:Z

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {v0}, Lorg/jsoup/nodes/Comment;->getData()Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    const-string v1, "!"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "?"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 12
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/jsoup/parser/TreeBuilder;->baseUri:Ljava/lang/String;

    invoke-static {}, Lorg/jsoup/parser/Parser;->xmlParser()Lorg/jsoup/parser/Parser;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lorg/jsoup/Jsoup;->parse(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;

    move-result-object v2

    .line 13
    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->childNodeSize()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v0, 0x0

    .line 14
    invoke-virtual {v2, v0}, Lorg/jsoup/nodes/Element;->child(I)Lorg/jsoup/nodes/Element;

    move-result-object v0

    .line 15
    new-instance v2, Lorg/jsoup/nodes/XmlDeclaration;

    iget-object v3, p0, Lorg/jsoup/parser/TreeBuilder;->settings:Lorg/jsoup/parser/ParseSettings;

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jsoup/parser/ParseSettings;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    invoke-direct {v2, v3, p1}, Lorg/jsoup/nodes/XmlDeclaration;-><init>(Ljava/lang/String;Z)V

    .line 16
    invoke-virtual {v2}, Lorg/jsoup/nodes/Node;->attributes()Lorg/jsoup/nodes/Attributes;

    move-result-object p1

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Attributes;->addAll(Lorg/jsoup/nodes/Attributes;)V

    move-object v0, v2

    .line 17
    :cond_1
    invoke-direct {p0, v0}, Lorg/jsoup/parser/XmlTreeBuilder;->insertNode(Lorg/jsoup/nodes/Node;)V

    return-void
.end method

.method insert(Lorg/jsoup/parser/Token$Doctype;)V
    .locals 4

    .line 20
    new-instance v0, Lorg/jsoup/nodes/DocumentType;

    iget-object v1, p0, Lorg/jsoup/parser/TreeBuilder;->settings:Lorg/jsoup/parser/ParseSettings;

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$Doctype;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jsoup/parser/ParseSettings;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$Doctype;->getPublicIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$Doctype;->getSystemIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/jsoup/nodes/DocumentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1}, Lorg/jsoup/parser/Token$Doctype;->getPubSysKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/DocumentType;->setPubSysKey(Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, v0}, Lorg/jsoup/parser/XmlTreeBuilder;->insertNode(Lorg/jsoup/nodes/Node;)V

    return-void
.end method

.method parse(Ljava/io/Reader;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 2

    .line 1
    invoke-static {}, Lorg/jsoup/parser/ParseErrorList;->noTracking()Lorg/jsoup/parser/ParseErrorList;

    move-result-object v0

    sget-object v1, Lorg/jsoup/parser/ParseSettings;->preserveCase:Lorg/jsoup/parser/ParseSettings;

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/jsoup/parser/TreeBuilder;->parse(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/ParseErrorList;Lorg/jsoup/parser/ParseSettings;)Lorg/jsoup/nodes/Document;

    move-result-object p1

    return-object p1
.end method

.method parse(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 2

    .line 2
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/jsoup/parser/ParseErrorList;->noTracking()Lorg/jsoup/parser/ParseErrorList;

    move-result-object p1

    sget-object v1, Lorg/jsoup/parser/ParseSettings;->preserveCase:Lorg/jsoup/parser/ParseSettings;

    invoke-virtual {p0, v0, p2, p1, v1}, Lorg/jsoup/parser/TreeBuilder;->parse(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/ParseErrorList;Lorg/jsoup/parser/ParseSettings;)Lorg/jsoup/nodes/Document;

    move-result-object p1

    return-object p1
.end method

.method parseFragment(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/ParseErrorList;Lorg/jsoup/parser/ParseSettings;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/jsoup/parser/ParseErrorList;",
            "Lorg/jsoup/parser/ParseSettings;",
            ")",
            "Ljava/util/List<",
            "Lorg/jsoup/nodes/Node;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/io/StringReader;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/jsoup/parser/XmlTreeBuilder;->initialiseParse(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/ParseErrorList;Lorg/jsoup/parser/ParseSettings;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/jsoup/parser/TreeBuilder;->runParser()V

    .line 12
    .line 13
    iget-object p1, p0, Lorg/jsoup/parser/TreeBuilder;->doc:Lorg/jsoup/nodes/Document;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->childNodes()Ljava/util/List;

    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method protected process(Lorg/jsoup/parser/Token;)Z
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lorg/jsoup/parser/XmlTreeBuilder$1;->$SwitchMap$org$jsoup$parser$Token$TokenType:[I

    .line 3
    .line 4
    iget-object v1, p1, Lorg/jsoup/parser/Token;->type:Lorg/jsoup/parser/Token$TokenType;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    move-result v1

    .line 9
    .line 10
    aget v0, v0, v1

    .line 11
    .line 12
    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    const-string v1, "Unexpected token type: "

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    iget-object p1, p1, Lorg/jsoup/parser/Token;->type:Lorg/jsoup/parser/Token$TokenType;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->fail(Ljava/lang/String;)V

    .line 36
    goto :goto_0

    .line 37
    .line 38
    .line 39
    :pswitch_0
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asDoctype()Lorg/jsoup/parser/Token$Doctype;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/XmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$Doctype;)V

    .line 44
    goto :goto_0

    .line 45
    .line 46
    .line 47
    :pswitch_1
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asCharacter()Lorg/jsoup/parser/Token$Character;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/XmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$Character;)V

    .line 52
    goto :goto_0

    .line 53
    .line 54
    .line 55
    :pswitch_2
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asComment()Lorg/jsoup/parser/Token$Comment;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/XmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$Comment;)V

    .line 60
    goto :goto_0

    .line 61
    .line 62
    .line 63
    :pswitch_3
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asEndTag()Lorg/jsoup/parser/Token$EndTag;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    .line 67
    invoke-direct {p0, p1}, Lorg/jsoup/parser/XmlTreeBuilder;->popStackToClose(Lorg/jsoup/parser/Token$EndTag;)V

    .line 68
    goto :goto_0

    .line 69
    .line 70
    .line 71
    :pswitch_4
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asStartTag()Lorg/jsoup/parser/Token$StartTag;

    .line 72
    move-result-object p1

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/XmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 76
    :goto_0
    :pswitch_5
    const/4 p1, 0x1

    .line 77
    return p1

    .line 78
    nop

    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public bridge synthetic processStartTag(Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lorg/jsoup/parser/TreeBuilder;->processStartTag(Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method
