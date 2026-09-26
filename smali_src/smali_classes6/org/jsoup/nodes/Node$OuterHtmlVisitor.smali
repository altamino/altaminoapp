.class Lorg/jsoup/nodes/Node$OuterHtmlVisitor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/jsoup/select/NodeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/nodes/Node;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OuterHtmlVisitor"
.end annotation


# instance fields
.field private accum:Ljava/lang/Appendable;

.field private out:Lorg/jsoup/nodes/Document$OutputSettings;


# direct methods
.method constructor <init>(Ljava/lang/Appendable;Lorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lorg/jsoup/nodes/Node$OuterHtmlVisitor;->accum:Ljava/lang/Appendable;

    .line 6
    .line 7
    iput-object p2, p0, Lorg/jsoup/nodes/Node$OuterHtmlVisitor;->out:Lorg/jsoup/nodes/Document$OutputSettings;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Lorg/jsoup/nodes/Document$OutputSettings;->prepareEncoder()Ljava/nio/charset/CharsetEncoder;

    .line 11
    return-void
.end method


# virtual methods
.method public head(Lorg/jsoup/nodes/Node;I)V
    .locals 2

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/jsoup/nodes/Node$OuterHtmlVisitor;->accum:Ljava/lang/Appendable;

    .line 3
    .line 4
    iget-object v1, p0, Lorg/jsoup/nodes/Node$OuterHtmlVisitor;->out:Lorg/jsoup/nodes/Document$OutputSettings;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0, p2, v1}, Lorg/jsoup/nodes/Node;->outerHtmlHead(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    return-void

    .line 9
    :catch_0
    move-exception p1

    .line 10
    .line 11
    new-instance p2, Lorg/jsoup/SerializationException;

    .line 12
    .line 13
    .line 14
    invoke-direct {p2, p1}, Lorg/jsoup/SerializationException;-><init>(Ljava/lang/Throwable;)V

    .line 15
    throw p2
.end method

.method public tail(Lorg/jsoup/nodes/Node;I)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->nodeName()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "#text"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lorg/jsoup/nodes/Node$OuterHtmlVisitor;->accum:Ljava/lang/Appendable;

    .line 15
    .line 16
    iget-object v1, p0, Lorg/jsoup/nodes/Node$OuterHtmlVisitor;->out:Lorg/jsoup/nodes/Document$OutputSettings;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0, p2, v1}, Lorg/jsoup/nodes/Node;->outerHtmlTail(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception p1

    .line 22
    .line 23
    new-instance p2, Lorg/jsoup/SerializationException;

    .line 24
    .line 25
    .line 26
    invoke-direct {p2, p1}, Lorg/jsoup/SerializationException;-><init>(Ljava/lang/Throwable;)V

    .line 27
    throw p2

    .line 28
    :cond_0
    :goto_0
    return-void
.end method
