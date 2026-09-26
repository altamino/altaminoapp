.class public Lorg/jsoup/safety/Cleaner;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/safety/Cleaner$ElementMeta;,
        Lorg/jsoup/safety/Cleaner$CleaningVisitor;
    }
.end annotation


# instance fields
.field private whitelist:Lorg/jsoup/safety/Whitelist;


# direct methods
.method public constructor <init>(Lorg/jsoup/safety/Whitelist;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 7
    .line 8
    iput-object p1, p0, Lorg/jsoup/safety/Cleaner;->whitelist:Lorg/jsoup/safety/Whitelist;

    .line 9
    return-void
.end method

.method static synthetic access$000(Lorg/jsoup/safety/Cleaner;)Lorg/jsoup/safety/Whitelist;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lorg/jsoup/safety/Cleaner;->whitelist:Lorg/jsoup/safety/Whitelist;

    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lorg/jsoup/safety/Cleaner;Lorg/jsoup/nodes/Element;)Lorg/jsoup/safety/Cleaner$ElementMeta;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lorg/jsoup/safety/Cleaner;->createSafeElement(Lorg/jsoup/nodes/Element;)Lorg/jsoup/safety/Cleaner$ElementMeta;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private copySafeNodes(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)I
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0, p1, p2, v1}, Lorg/jsoup/safety/Cleaner$CleaningVisitor;-><init>(Lorg/jsoup/safety/Cleaner;Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;Lorg/jsoup/safety/Cleaner$1;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0, p1}, Lorg/jsoup/select/NodeTraversor;->traverse(Lorg/jsoup/select/NodeVisitor;Lorg/jsoup/nodes/Node;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->access$300(Lorg/jsoup/safety/Cleaner$CleaningVisitor;)I

    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method private createSafeElement(Lorg/jsoup/nodes/Element;)Lorg/jsoup/safety/Cleaner$ElementMeta;
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Lorg/jsoup/nodes/Attributes;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1}, Lorg/jsoup/nodes/Attributes;-><init>()V

    .line 10
    .line 11
    new-instance v2, Lorg/jsoup/nodes/Element;

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lorg/jsoup/parser/Tag;->valueOf(Ljava/lang/String;)Lorg/jsoup/parser/Tag;

    .line 15
    move-result-object v3

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->baseUri()Ljava/lang/String;

    .line 19
    move-result-object v4

    .line 20
    .line 21
    .line 22
    invoke-direct {v2, v3, v4, v1}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    .line 26
    move-result-object v3

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3}, Lorg/jsoup/nodes/Attributes;->iterator()Ljava/util/Iterator;

    .line 30
    move-result-object v3

    .line 31
    const/4 v4, 0x0

    .line 32
    .line 33
    .line 34
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    move-result v5

    .line 36
    .line 37
    if-eqz v5, :cond_1

    .line 38
    .line 39
    .line 40
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    move-result-object v5

    .line 42
    .line 43
    check-cast v5, Lorg/jsoup/nodes/Attribute;

    .line 44
    .line 45
    iget-object v6, p0, Lorg/jsoup/safety/Cleaner;->whitelist:Lorg/jsoup/safety/Whitelist;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v6, v0, p1, v5}, Lorg/jsoup/safety/Whitelist;->isSafeAttribute(Ljava/lang/String;Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Attribute;)Z

    .line 49
    move-result v6

    .line 50
    .line 51
    if-eqz v6, :cond_0

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v5}, Lorg/jsoup/nodes/Attributes;->put(Lorg/jsoup/nodes/Attribute;)Lorg/jsoup/nodes/Attributes;

    .line 55
    goto :goto_0

    .line 56
    .line 57
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 58
    goto :goto_0

    .line 59
    .line 60
    :cond_1
    iget-object p1, p0, Lorg/jsoup/safety/Cleaner;->whitelist:Lorg/jsoup/safety/Whitelist;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v0}, Lorg/jsoup/safety/Whitelist;->getEnforcedAttributes(Ljava/lang/String;)Lorg/jsoup/nodes/Attributes;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, p1}, Lorg/jsoup/nodes/Attributes;->addAll(Lorg/jsoup/nodes/Attributes;)V

    .line 68
    .line 69
    new-instance p1, Lorg/jsoup/safety/Cleaner$ElementMeta;

    .line 70
    .line 71
    .line 72
    invoke-direct {p1, v2, v4}, Lorg/jsoup/safety/Cleaner$ElementMeta;-><init>(Lorg/jsoup/nodes/Element;I)V

    .line 73
    return-object p1
.end method


# virtual methods
.method public clean(Lorg/jsoup/nodes/Document;)Lorg/jsoup/nodes/Document;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->baseUri()Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lorg/jsoup/nodes/Document;->createShell(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lorg/jsoup/nodes/Document;->body()Lorg/jsoup/nodes/Element;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lorg/jsoup/nodes/Document;->body()Lorg/jsoup/nodes/Element;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lorg/jsoup/nodes/Document;->body()Lorg/jsoup/nodes/Element;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, p1, v1}, Lorg/jsoup/safety/Cleaner;->copySafeNodes(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)I

    .line 29
    :cond_0
    return-object v0
.end method

.method public isValid(Lorg/jsoup/nodes/Document;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->baseUri()Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lorg/jsoup/nodes/Document;->createShell(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lorg/jsoup/nodes/Document;->body()Lorg/jsoup/nodes/Element;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lorg/jsoup/nodes/Document;->body()Lorg/jsoup/nodes/Element;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, v1, v0}, Lorg/jsoup/safety/Cleaner;->copySafeNodes(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)I

    .line 23
    move-result v0

    .line 24
    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lorg/jsoup/nodes/Document;->head()Lorg/jsoup/nodes/Element;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->childNodes()Ljava/util/List;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 37
    move-result p1

    .line 38
    .line 39
    if-nez p1, :cond_0

    .line 40
    const/4 p1, 0x1

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 p1, 0x0

    .line 43
    :goto_0
    return p1
.end method

.method public isValidBodyHtml(Ljava/lang/String;)Z
    .locals 6

    .line 1
    .line 2
    const-string v0, ""

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lorg/jsoup/nodes/Document;->createShell(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lorg/jsoup/nodes/Document;->createShell(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    .line 10
    move-result-object v2

    .line 11
    const/4 v3, 0x1

    .line 12
    .line 13
    .line 14
    invoke-static {v3}, Lorg/jsoup/parser/ParseErrorList;->tracking(I)Lorg/jsoup/parser/ParseErrorList;

    .line 15
    move-result-object v4

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Lorg/jsoup/nodes/Document;->body()Lorg/jsoup/nodes/Element;

    .line 19
    move-result-object v5

    .line 20
    .line 21
    .line 22
    invoke-static {p1, v5, v0, v4}, Lorg/jsoup/parser/Parser;->parseFragment(Ljava/lang/String;Lorg/jsoup/nodes/Element;Ljava/lang/String;Lorg/jsoup/parser/ParseErrorList;)Ljava/util/List;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Lorg/jsoup/nodes/Document;->body()Lorg/jsoup/nodes/Element;

    .line 27
    move-result-object v0

    .line 28
    const/4 v5, 0x0

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v5, p1}, Lorg/jsoup/nodes/Element;->insertChildren(ILjava/util/Collection;)Lorg/jsoup/nodes/Element;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Lorg/jsoup/nodes/Document;->body()Lorg/jsoup/nodes/Element;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Lorg/jsoup/nodes/Document;->body()Lorg/jsoup/nodes/Element;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    invoke-direct {p0, p1, v0}, Lorg/jsoup/safety/Cleaner;->copySafeNodes(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)I

    .line 43
    move-result p1

    .line 44
    .line 45
    if-nez p1, :cond_0

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    .line 49
    move-result p1

    .line 50
    .line 51
    if-nez p1, :cond_0

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    move v3, v5

    .line 54
    :goto_0
    return v3
.end method
