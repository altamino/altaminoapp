.class public Lcom/airbnb/lottie/model/layer/f;
.super Lcom/airbnb/lottie/model/layer/a;
.source "SourceFile"


# instance fields
.field private final contentGroup:Lcom/airbnb/lottie/animation/content/c;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/model/layer/d;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/a;-><init>(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/model/layer/d;)V

    .line 4
    .line 5
    new-instance v0, Lcom/airbnb/lottie/model/content/n;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/d;->g()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/d;->l()Ljava/util/List;

    .line 13
    move-result-object p2

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1, p2}, Lcom/airbnb/lottie/model/content/n;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 17
    .line 18
    new-instance p2, Lcom/airbnb/lottie/animation/content/c;

    .line 19
    .line 20
    .line 21
    invoke-direct {p2, p1, p0, v0}, Lcom/airbnb/lottie/animation/content/c;-><init>(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/model/layer/a;Lcom/airbnb/lottie/model/content/n;)V

    .line 22
    .line 23
    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/f;->contentGroup:Lcom/airbnb/lottie/animation/content/c;

    .line 24
    .line 25
    .line 26
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, p1, v0}, Lcom/airbnb/lottie/animation/content/c;->f(Ljava/util/List;Ljava/util/List;)V

    .line 35
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/a;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 4
    .line 5
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/f;->contentGroup:Lcom/airbnb/lottie/animation/content/c;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->boundsMatrix:Landroid/graphics/Matrix;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, p1, v0}, Lcom/airbnb/lottie/animation/content/c;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 11
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/f;->contentGroup:Lcom/airbnb/lottie/animation/content/c;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/airbnb/lottie/animation/content/c;->b(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    .line 6
    return-void
.end method

.method k(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 1
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/f;->contentGroup:Lcom/airbnb/lottie/animation/content/c;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/airbnb/lottie/animation/content/c;->d(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 6
    return-void
.end method
