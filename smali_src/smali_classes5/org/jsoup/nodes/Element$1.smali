.class Lorg/jsoup/nodes/Element$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/jsoup/select/NodeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jsoup/nodes/Element;

.field final synthetic val$accum:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lorg/jsoup/nodes/Element;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lorg/jsoup/nodes/Element$1;->this$0:Lorg/jsoup/nodes/Element;

    .line 3
    .line 4
    iput-object p2, p0, Lorg/jsoup/nodes/Element$1;->val$accum:Ljava/lang/StringBuilder;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public head(Lorg/jsoup/nodes/Node;I)V
    .locals 0

    .line 1
    .line 2
    instance-of p2, p1, Lorg/jsoup/nodes/TextNode;

    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    check-cast p1, Lorg/jsoup/nodes/TextNode;

    .line 7
    .line 8
    iget-object p2, p0, Lorg/jsoup/nodes/Element$1;->val$accum:Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-static {p2, p1}, Lorg/jsoup/nodes/Element;->access$000(Ljava/lang/StringBuilder;Lorg/jsoup/nodes/TextNode;)V

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    instance-of p2, p1, Lorg/jsoup/nodes/Element;

    .line 15
    .line 16
    if-eqz p2, :cond_2

    .line 17
    .line 18
    check-cast p1, Lorg/jsoup/nodes/Element;

    .line 19
    .line 20
    iget-object p2, p0, Lorg/jsoup/nodes/Element$1;->val$accum:Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    .line 24
    move-result p2

    .line 25
    .line 26
    if-lez p2, :cond_2

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->isBlock()Z

    .line 30
    move-result p2

    .line 31
    .line 32
    if-nez p2, :cond_1

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Lorg/jsoup/nodes/Element;->access$100(Lorg/jsoup/nodes/Element;)Lorg/jsoup/parser/Tag;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lorg/jsoup/parser/Tag;->getName()Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    const-string p2, "br"

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result p1

    .line 47
    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    :cond_1
    iget-object p1, p0, Lorg/jsoup/nodes/Element$1;->val$accum:Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-static {p1}, Lorg/jsoup/nodes/TextNode;->lastCharIsWhitespace(Ljava/lang/StringBuilder;)Z

    .line 54
    move-result p1

    .line 55
    .line 56
    if-nez p1, :cond_2

    .line 57
    .line 58
    iget-object p1, p0, Lorg/jsoup/nodes/Element$1;->val$accum:Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const/16 p2, 0x20

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    :cond_2
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
    move-object p2, p1

    .line 6
    .line 7
    check-cast p2, Lorg/jsoup/nodes/Element;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->isBlock()Z

    .line 11
    move-result p2

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->nextSibling()Lorg/jsoup/nodes/Node;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    instance-of p1, p1, Lorg/jsoup/nodes/TextNode;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    iget-object p1, p0, Lorg/jsoup/nodes/Element$1;->val$accum:Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Lorg/jsoup/nodes/TextNode;->lastCharIsWhitespace(Ljava/lang/StringBuilder;)Z

    .line 27
    move-result p1

    .line 28
    .line 29
    if-nez p1, :cond_0

    .line 30
    .line 31
    iget-object p1, p0, Lorg/jsoup/nodes/Element$1;->val$accum:Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const/16 p2, 0x20

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 37
    :cond_0
    return-void
.end method
