.class final Lorg/jsoup/safety/Cleaner$CleaningVisitor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/jsoup/select/NodeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/safety/Cleaner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CleaningVisitor"
.end annotation


# instance fields
.field private destination:Lorg/jsoup/nodes/Element;

.field private numDiscarded:I

.field private final root:Lorg/jsoup/nodes/Element;

.field final synthetic this$0:Lorg/jsoup/safety/Cleaner;


# direct methods
.method private constructor <init>(Lorg/jsoup/safety/Cleaner;Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)V
    .locals 0

    iput-object p1, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->this$0:Lorg/jsoup/safety/Cleaner;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->numDiscarded:I

    iput-object p2, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->root:Lorg/jsoup/nodes/Element;

    iput-object p3, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->destination:Lorg/jsoup/nodes/Element;

    return-void
.end method

.method synthetic constructor <init>(Lorg/jsoup/safety/Cleaner;Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;Lorg/jsoup/safety/Cleaner$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/jsoup/safety/Cleaner$CleaningVisitor;-><init>(Lorg/jsoup/safety/Cleaner;Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)V

    return-void
.end method

.method static synthetic access$300(Lorg/jsoup/safety/Cleaner$CleaningVisitor;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->numDiscarded:I

    .line 3
    return p0
.end method


# virtual methods
.method public head(Lorg/jsoup/nodes/Node;I)V
    .locals 2

    .line 1
    .line 2
    instance-of p2, p1, Lorg/jsoup/nodes/Element;

    .line 3
    .line 4
    if-eqz p2, :cond_1

    .line 5
    move-object p2, p1

    .line 6
    .line 7
    check-cast p2, Lorg/jsoup/nodes/Element;

    .line 8
    .line 9
    iget-object v0, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->this$0:Lorg/jsoup/safety/Cleaner;

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lorg/jsoup/safety/Cleaner;->access$000(Lorg/jsoup/safety/Cleaner;)Lorg/jsoup/safety/Whitelist;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lorg/jsoup/safety/Whitelist;->isSafeTag(Ljava/lang/String;)Z

    .line 21
    move-result v0

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object p1, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->this$0:Lorg/jsoup/safety/Cleaner;

    .line 26
    .line 27
    .line 28
    invoke-static {p1, p2}, Lorg/jsoup/safety/Cleaner;->access$100(Lorg/jsoup/safety/Cleaner;Lorg/jsoup/nodes/Element;)Lorg/jsoup/safety/Cleaner$ElementMeta;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    iget-object p2, p1, Lorg/jsoup/safety/Cleaner$ElementMeta;->el:Lorg/jsoup/nodes/Element;

    .line 32
    .line 33
    iget-object v0, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->destination:Lorg/jsoup/nodes/Element;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p2}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    .line 37
    .line 38
    iget v0, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->numDiscarded:I

    .line 39
    .line 40
    iget p1, p1, Lorg/jsoup/safety/Cleaner$ElementMeta;->numAttribsDiscarded:I

    .line 41
    add-int/2addr v0, p1

    .line 42
    .line 43
    iput v0, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->numDiscarded:I

    .line 44
    .line 45
    iput-object p2, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->destination:Lorg/jsoup/nodes/Element;

    .line 46
    goto :goto_0

    .line 47
    .line 48
    :cond_0
    iget-object p2, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->root:Lorg/jsoup/nodes/Element;

    .line 49
    .line 50
    if-eq p1, p2, :cond_4

    .line 51
    .line 52
    iget p1, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->numDiscarded:I

    .line 53
    .line 54
    add-int/lit8 p1, p1, 0x1

    .line 55
    .line 56
    iput p1, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->numDiscarded:I

    .line 57
    goto :goto_0

    .line 58
    .line 59
    :cond_1
    instance-of p2, p1, Lorg/jsoup/nodes/TextNode;

    .line 60
    .line 61
    if-eqz p2, :cond_2

    .line 62
    .line 63
    check-cast p1, Lorg/jsoup/nodes/TextNode;

    .line 64
    .line 65
    new-instance p2, Lorg/jsoup/nodes/TextNode;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Lorg/jsoup/nodes/TextNode;->getWholeText()Ljava/lang/String;

    .line 69
    move-result-object p1

    .line 70
    .line 71
    .line 72
    invoke-direct {p2, p1}, Lorg/jsoup/nodes/TextNode;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    iget-object p1, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->destination:Lorg/jsoup/nodes/Element;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, p2}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    .line 78
    goto :goto_0

    .line 79
    .line 80
    :cond_2
    instance-of p2, p1, Lorg/jsoup/nodes/DataNode;

    .line 81
    .line 82
    if-eqz p2, :cond_3

    .line 83
    .line 84
    iget-object p2, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->this$0:Lorg/jsoup/safety/Cleaner;

    .line 85
    .line 86
    .line 87
    invoke-static {p2}, Lorg/jsoup/safety/Cleaner;->access$000(Lorg/jsoup/safety/Cleaner;)Lorg/jsoup/safety/Whitelist;

    .line 88
    move-result-object p2

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->parent()Lorg/jsoup/nodes/Node;

    .line 92
    move-result-object v0

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Lorg/jsoup/nodes/Node;->nodeName()Ljava/lang/String;

    .line 96
    move-result-object v0

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2, v0}, Lorg/jsoup/safety/Whitelist;->isSafeTag(Ljava/lang/String;)Z

    .line 100
    move-result p2

    .line 101
    .line 102
    if-eqz p2, :cond_3

    .line 103
    .line 104
    check-cast p1, Lorg/jsoup/nodes/DataNode;

    .line 105
    .line 106
    new-instance p2, Lorg/jsoup/nodes/DataNode;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1}, Lorg/jsoup/nodes/DataNode;->getWholeData()Ljava/lang/String;

    .line 110
    move-result-object p1

    .line 111
    .line 112
    .line 113
    invoke-direct {p2, p1}, Lorg/jsoup/nodes/DataNode;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    iget-object p1, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->destination:Lorg/jsoup/nodes/Element;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, p2}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    .line 119
    goto :goto_0

    .line 120
    .line 121
    :cond_3
    iget p1, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->numDiscarded:I

    .line 122
    .line 123
    add-int/lit8 p1, p1, 0x1

    .line 124
    .line 125
    iput p1, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->numDiscarded:I

    .line 126
    :cond_4
    :goto_0
    return-void
.end method

.method public tail(Lorg/jsoup/nodes/Node;I)V
    .locals 0

    .line 1
    .line 2
    instance-of p2, p1, Lorg/jsoup/nodes/Element;

    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    iget-object p2, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->this$0:Lorg/jsoup/safety/Cleaner;

    .line 7
    .line 8
    .line 9
    invoke-static {p2}, Lorg/jsoup/safety/Cleaner;->access$000(Lorg/jsoup/safety/Cleaner;)Lorg/jsoup/safety/Whitelist;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->nodeName()Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, p1}, Lorg/jsoup/safety/Whitelist;->isSafeTag(Ljava/lang/String;)Z

    .line 18
    move-result p1

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget-object p1, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->destination:Lorg/jsoup/nodes/Element;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    iput-object p1, p0, Lorg/jsoup/safety/Cleaner$CleaningVisitor;->destination:Lorg/jsoup/nodes/Element;

    .line 29
    :cond_0
    return-void
.end method
