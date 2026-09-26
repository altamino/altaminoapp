.class public abstract Lorg/jsoup/select/Evaluator$CssNthEvaluator;
.super Lorg/jsoup/select/Evaluator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/Evaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CssNthEvaluator"
.end annotation


# instance fields
.field protected final a:I

.field protected final b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1}, Lorg/jsoup/select/Evaluator$CssNthEvaluator;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/jsoup/select/Evaluator;-><init>()V

    iput p1, p0, Lorg/jsoup/select/Evaluator$CssNthEvaluator;->a:I

    iput p2, p0, Lorg/jsoup/select/Evaluator$CssNthEvaluator;->b:I

    return-void
.end method


# virtual methods
.method protected abstract calculatePosition(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)I
.end method

.method protected abstract getPseudoClass()Ljava/lang/String;
.end method

.method public matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    instance-of v0, v0, Lorg/jsoup/nodes/Document;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/select/Evaluator$CssNthEvaluator;->calculatePosition(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)I

    .line 16
    move-result p1

    .line 17
    .line 18
    iget p2, p0, Lorg/jsoup/select/Evaluator$CssNthEvaluator;->a:I

    .line 19
    const/4 v0, 0x1

    .line 20
    .line 21
    if-nez p2, :cond_2

    .line 22
    .line 23
    iget p2, p0, Lorg/jsoup/select/Evaluator$CssNthEvaluator;->b:I

    .line 24
    .line 25
    if-ne p1, p2, :cond_1

    .line 26
    move v1, v0

    .line 27
    :cond_1
    return v1

    .line 28
    .line 29
    :cond_2
    iget v2, p0, Lorg/jsoup/select/Evaluator$CssNthEvaluator;->b:I

    .line 30
    .line 31
    sub-int v3, p1, v2

    .line 32
    mul-int/2addr v3, p2

    .line 33
    .line 34
    if-ltz v3, :cond_3

    .line 35
    sub-int/2addr p1, v2

    .line 36
    rem-int/2addr p1, p2

    .line 37
    .line 38
    if-nez p1, :cond_3

    .line 39
    move v1, v0

    .line 40
    :cond_3
    :goto_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    .line 2
    iget v0, p0, Lorg/jsoup/select/Evaluator$CssNthEvaluator;->a:I

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x2

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-array v0, v3, [Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lorg/jsoup/select/Evaluator$CssNthEvaluator;->getPseudoClass()Ljava/lang/String;

    .line 13
    move-result-object v3

    .line 14
    .line 15
    aput-object v3, v0, v2

    .line 16
    .line 17
    iget v2, p0, Lorg/jsoup/select/Evaluator$CssNthEvaluator;->b:I

    .line 18
    .line 19
    .line 20
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    aput-object v2, v0, v1

    .line 24
    .line 25
    const-string v1, ":%s(%d)"

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    return-object v0

    .line 31
    .line 32
    :cond_0
    iget v0, p0, Lorg/jsoup/select/Evaluator$CssNthEvaluator;->b:I

    .line 33
    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    new-array v0, v3, [Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lorg/jsoup/select/Evaluator$CssNthEvaluator;->getPseudoClass()Ljava/lang/String;

    .line 40
    move-result-object v3

    .line 41
    .line 42
    aput-object v3, v0, v2

    .line 43
    .line 44
    iget v2, p0, Lorg/jsoup/select/Evaluator$CssNthEvaluator;->a:I

    .line 45
    .line 46
    .line 47
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    move-result-object v2

    .line 49
    .line 50
    aput-object v2, v0, v1

    .line 51
    .line 52
    const-string v1, ":%s(%dn)"

    .line 53
    .line 54
    .line 55
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 57
    return-object v0

    .line 58
    :cond_1
    const/4 v0, 0x3

    .line 59
    .line 60
    new-array v0, v0, [Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lorg/jsoup/select/Evaluator$CssNthEvaluator;->getPseudoClass()Ljava/lang/String;

    .line 64
    move-result-object v4

    .line 65
    .line 66
    aput-object v4, v0, v2

    .line 67
    .line 68
    iget v2, p0, Lorg/jsoup/select/Evaluator$CssNthEvaluator;->a:I

    .line 69
    .line 70
    .line 71
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    move-result-object v2

    .line 73
    .line 74
    aput-object v2, v0, v1

    .line 75
    .line 76
    iget v1, p0, Lorg/jsoup/select/Evaluator$CssNthEvaluator;->b:I

    .line 77
    .line 78
    .line 79
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    move-result-object v1

    .line 81
    .line 82
    aput-object v1, v0, v3

    .line 83
    .line 84
    const-string v1, ":%s(%dn%+d)"

    .line 85
    .line 86
    .line 87
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 88
    move-result-object v0

    .line 89
    return-object v0
.end method
