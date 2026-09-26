.class public Lcom/airbnb/lottie/animation/content/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/animation/content/k;
.implements Lcom/airbnb/lottie/animation/keyframe/a$a;


# instance fields
.field private isPathValid:Z

.field private final lottieDrawable:Lcom/airbnb/lottie/f;

.field private final name:Ljava/lang/String;

.field private final path:Landroid/graphics/Path;

.field private final shapeAnimation:Lcom/airbnb/lottie/animation/keyframe/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/a<",
            "*",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation
.end field

.field private trimPath:Lcom/airbnb/lottie/animation/content/q;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/model/layer/a;Lcom/airbnb/lottie/model/content/o;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Landroid/graphics/Path;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/o;->path:Landroid/graphics/Path;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/o;->b()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/o;->name:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/o;->lottieDrawable:Lcom/airbnb/lottie/f;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/o;->c()Lcom/airbnb/lottie/model/animatable/h;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/h;->a()Lcom/airbnb/lottie/animation/keyframe/a;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/o;->shapeAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/a;->g(Lcom/airbnb/lottie/animation/keyframe/a;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/a;->a(Lcom/airbnb/lottie/animation/keyframe/a$a;)V

    .line 35
    return-void
.end method

.method private c()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/airbnb/lottie/animation/content/o;->isPathValid:Z

    .line 4
    .line 5
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/o;->lottieDrawable:Lcom/airbnb/lottie/f;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/airbnb/lottie/f;->invalidateSelf()V

    .line 9
    return-void
.end method


# virtual methods
.method public e()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/airbnb/lottie/animation/content/o;->c()V

    .line 4
    return-void
.end method

.method public f(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/animation/content/b;",
            ">;",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/animation/content/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 p2, 0x0

    .line 2
    .line 3
    .line 4
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 5
    move-result v0

    .line 6
    .line 7
    if-ge p2, v0, :cond_1

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Lcom/airbnb/lottie/animation/content/b;

    .line 14
    .line 15
    instance-of v1, v0, Lcom/airbnb/lottie/animation/content/q;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    check-cast v0, Lcom/airbnb/lottie/animation/content/q;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/content/q;->j()Lcom/airbnb/lottie/model/content/q$c;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    sget-object v2, Lcom/airbnb/lottie/model/content/q$c;->Simultaneously:Lcom/airbnb/lottie/model/content/q$c;

    .line 26
    .line 27
    if-ne v1, v2, :cond_0

    .line 28
    .line 29
    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/o;->trimPath:Lcom/airbnb/lottie/animation/content/q;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/content/q;->c(Lcom/airbnb/lottie/animation/keyframe/a$a;)V

    .line 33
    .line 34
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/o;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/airbnb/lottie/animation/content/o;->isPathValid:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/o;->path:Landroid/graphics/Path;

    .line 7
    return-object v0

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/o;->path:Landroid/graphics/Path;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 13
    .line 14
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/o;->path:Landroid/graphics/Path;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/o;->shapeAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/a;->g()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    check-cast v1, Landroid/graphics/Path;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 26
    .line 27
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/o;->path:Landroid/graphics/Path;

    .line 28
    .line 29
    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 33
    .line 34
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/o;->path:Landroid/graphics/Path;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/o;->trimPath:Lcom/airbnb/lottie/animation/content/q;

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v1}, Lcom/airbnb/lottie/utils/f;->b(Landroid/graphics/Path;Lcom/airbnb/lottie/animation/content/q;)V

    .line 40
    const/4 v0, 0x1

    .line 41
    .line 42
    iput-boolean v0, p0, Lcom/airbnb/lottie/animation/content/o;->isPathValid:Z

    .line 43
    .line 44
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/o;->path:Landroid/graphics/Path;

    .line 45
    return-object v0
.end method
