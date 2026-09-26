.class public final Lorg/jsoup/select/Evaluator$AttributeWithValueMatching;
.super Lorg/jsoup/select/Evaluator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/Evaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AttributeWithValueMatching"
.end annotation


# instance fields
.field key:Ljava/lang/String;

.field pattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/regex/Pattern;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lorg/jsoup/select/Evaluator;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lorg/jsoup/internal/Normalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    iput-object p1, p0, Lorg/jsoup/select/Evaluator$AttributeWithValueMatching;->key:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p2, p0, Lorg/jsoup/select/Evaluator$AttributeWithValueMatching;->pattern:Ljava/util/regex/Pattern;

    .line 12
    return-void
.end method


# virtual methods
.method public matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lorg/jsoup/select/Evaluator$AttributeWithValueMatching;->key:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2, p1}, Lorg/jsoup/nodes/Node;->hasAttr(Ljava/lang/String;)Z

    .line 6
    move-result p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lorg/jsoup/select/Evaluator$AttributeWithValueMatching;->pattern:Ljava/util/regex/Pattern;

    .line 11
    .line 12
    iget-object v0, p0, Lorg/jsoup/select/Evaluator$AttributeWithValueMatching;->key:Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, v0}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    .line 24
    move-result p1

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    const/4 p1, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p1, 0x0

    .line 30
    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    .line 6
    iget-object v2, p0, Lorg/jsoup/select/Evaluator$AttributeWithValueMatching;->key:Ljava/lang/String;

    .line 7
    .line 8
    aput-object v2, v0, v1

    .line 9
    .line 10
    iget-object v1, p0, Lorg/jsoup/select/Evaluator$AttributeWithValueMatching;->pattern:Ljava/util/regex/Pattern;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/util/regex/Pattern;->toString()Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x1

    .line 16
    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    const-string v1, "[%s~=%s]"

    .line 20
    .line 21
    .line 22
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    return-object v0
.end method
