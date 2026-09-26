.class public final Lorg/jsoup/select/Evaluator$IsEmpty;
.super Lorg/jsoup/select/Evaluator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/Evaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IsEmpty"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lorg/jsoup/select/Evaluator;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Lorg/jsoup/nodes/Node;->childNodes()Ljava/util/List;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result p2

    .line 13
    .line 14
    if-eqz p2, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object p2

    .line 19
    .line 20
    check-cast p2, Lorg/jsoup/nodes/Node;

    .line 21
    .line 22
    instance-of v0, p2, Lorg/jsoup/nodes/Comment;

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    instance-of v0, p2, Lorg/jsoup/nodes/XmlDeclaration;

    .line 27
    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    instance-of p2, p2, Lorg/jsoup/nodes/DocumentType;

    .line 31
    .line 32
    if-nez p2, :cond_0

    .line 33
    const/4 p1, 0x0

    .line 34
    return p1

    .line 35
    :cond_1
    const/4 p1, 0x1

    .line 36
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, ":empty"

    return-object v0
.end method
