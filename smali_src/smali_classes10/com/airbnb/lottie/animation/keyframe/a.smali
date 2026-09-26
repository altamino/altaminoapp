.class public abstract Lcom/airbnb/lottie/animation/keyframe/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/animation/keyframe/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private cachedKeyframe:Lh0/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh0/a<",
            "TK;>;"
        }
    .end annotation
.end field

.field private isDiscrete:Z

.field private final keyframes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lh0/a<",
            "TK;>;>;"
        }
    .end annotation
.end field

.field final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/animation/keyframe/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private progress:F


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lh0/a<",
            "TK;>;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/a;->listeners:Ljava/util/List;

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/airbnb/lottie/animation/keyframe/a;->isDiscrete:Z

    .line 14
    const/4 v0, 0x0

    .line 15
    .line 16
    iput v0, p0, Lcom/airbnb/lottie/animation/keyframe/a;->progress:F

    .line 17
    .line 18
    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/a;->keyframes:Ljava/util/List;

    .line 19
    return-void
.end method

.method private b()Lh0/a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lh0/a<",
            "TK;>;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/a;->keyframes:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_3

    .line 9
    .line 10
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/a;->cachedKeyframe:Lh0/a;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget v1, p0, Lcom/airbnb/lottie/animation/keyframe/a;->progress:F

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lh0/a;->b(F)Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/a;->cachedKeyframe:Lh0/a;

    .line 23
    return-object v0

    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/a;->keyframes:Ljava/util/List;

    .line 26
    const/4 v1, 0x0

    .line 27
    .line 28
    .line 29
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    check-cast v0, Lh0/a;

    .line 33
    .line 34
    iget v2, p0, Lcom/airbnb/lottie/animation/keyframe/a;->progress:F

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lh0/a;->d()F

    .line 38
    move-result v3

    .line 39
    .line 40
    cmpg-float v2, v2, v3

    .line 41
    .line 42
    if-gez v2, :cond_1

    .line 43
    .line 44
    iput-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/a;->cachedKeyframe:Lh0/a;

    .line 45
    return-object v0

    .line 46
    .line 47
    :cond_1
    :goto_0
    iget v2, p0, Lcom/airbnb/lottie/animation/keyframe/a;->progress:F

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v2}, Lh0/a;->b(F)Z

    .line 51
    move-result v2

    .line 52
    .line 53
    if-nez v2, :cond_2

    .line 54
    .line 55
    iget-object v2, p0, Lcom/airbnb/lottie/animation/keyframe/a;->keyframes:Ljava/util/List;

    .line 56
    .line 57
    .line 58
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 59
    move-result v2

    .line 60
    .line 61
    if-ge v1, v2, :cond_2

    .line 62
    .line 63
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/a;->keyframes:Ljava/util/List;

    .line 64
    .line 65
    .line 66
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    check-cast v0, Lh0/a;

    .line 70
    .line 71
    add-int/lit8 v1, v1, 0x1

    .line 72
    goto :goto_0

    .line 73
    .line 74
    :cond_2
    iput-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/a;->cachedKeyframe:Lh0/a;

    .line 75
    return-object v0

    .line 76
    .line 77
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 78
    .line 79
    const-string v1, "There are no keyframes"

    .line 80
    .line 81
    .line 82
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 83
    throw v0
.end method

.method private c()F
    .locals 4

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/airbnb/lottie/animation/keyframe/a;->isDiscrete:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    return v1

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/airbnb/lottie/animation/keyframe/a;->b()Lh0/a;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lh0/a;->e()Z

    .line 14
    move-result v2

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    return v1

    .line 18
    .line 19
    :cond_1
    iget v1, p0, Lcom/airbnb/lottie/animation/keyframe/a;->progress:F

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lh0/a;->d()F

    .line 23
    move-result v2

    .line 24
    sub-float/2addr v1, v2

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lh0/a;->c()F

    .line 28
    move-result v2

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lh0/a;->d()F

    .line 32
    move-result v3

    .line 33
    sub-float/2addr v2, v3

    .line 34
    .line 35
    iget-object v0, v0, Lh0/a;->interpolator:Landroid/view/animation/Interpolator;

    .line 36
    div-float/2addr v1, v2

    .line 37
    .line 38
    .line 39
    invoke-interface {v0, v1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 40
    move-result v0

    .line 41
    return v0
.end method

.method private d()F
    .locals 2
    .annotation build Landroidx/annotation/FloatRange;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/a;->keyframes:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/high16 v0, 0x3f800000    # 1.0f

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/a;->keyframes:Ljava/util/List;

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 17
    move-result v1

    .line 18
    .line 19
    add-int/lit8 v1, v1, -0x1

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    check-cast v0, Lh0/a;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lh0/a;->c()F

    .line 29
    move-result v0

    .line 30
    :goto_0
    return v0
.end method

.method private f()F
    .locals 2
    .annotation build Landroidx/annotation/FloatRange;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/a;->keyframes:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    const/4 v0, 0x0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/a;->keyframes:Ljava/util/List;

    .line 13
    const/4 v1, 0x0

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    check-cast v0, Lh0/a;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lh0/a;->d()F

    .line 23
    move-result v0

    .line 24
    :goto_0
    return v0
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/animation/keyframe/a$a;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/a;->listeners:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public e()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/animation/keyframe/a;->progress:F

    return v0
.end method

.method public g()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/airbnb/lottie/animation/keyframe/a;->b()Lh0/a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/airbnb/lottie/animation/keyframe/a;->c()F

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0, v1}, Lcom/airbnb/lottie/animation/keyframe/a;->h(Lh0/a;F)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method abstract h(Lh0/a;F)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh0/a<",
            "TK;>;F)TA;"
        }
    .end annotation
.end method

.method public i()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/lottie/animation/keyframe/a;->isDiscrete:Z

    return-void
.end method

.method public j(F)V
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/airbnb/lottie/animation/keyframe/a;->f()F

    .line 4
    move-result v0

    .line 5
    .line 6
    cmpg-float v0, p1, v0

    .line 7
    .line 8
    if-gez v0, :cond_0

    .line 9
    const/4 p1, 0x0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-direct {p0}, Lcom/airbnb/lottie/animation/keyframe/a;->d()F

    .line 14
    move-result v0

    .line 15
    .line 16
    cmpl-float v0, p1, v0

    .line 17
    .line 18
    if-lez v0, :cond_1

    .line 19
    .line 20
    const/high16 p1, 0x3f800000    # 1.0f

    .line 21
    .line 22
    :cond_1
    :goto_0
    iget v0, p0, Lcom/airbnb/lottie/animation/keyframe/a;->progress:F

    .line 23
    .line 24
    cmpl-float v0, p1, v0

    .line 25
    .line 26
    if-nez v0, :cond_2

    .line 27
    return-void

    .line 28
    .line 29
    :cond_2
    iput p1, p0, Lcom/airbnb/lottie/animation/keyframe/a;->progress:F

    .line 30
    const/4 p1, 0x0

    .line 31
    .line 32
    :goto_1
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/a;->listeners:Ljava/util/List;

    .line 33
    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 36
    move-result v0

    .line 37
    .line 38
    if-ge p1, v0, :cond_3

    .line 39
    .line 40
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/a;->listeners:Ljava/util/List;

    .line 41
    .line 42
    .line 43
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    check-cast v0, Lcom/airbnb/lottie/animation/keyframe/a$a;

    .line 47
    .line 48
    .line 49
    invoke-interface {v0}, Lcom/airbnb/lottie/animation/keyframe/a$a;->e()V

    .line 50
    .line 51
    add-int/lit8 p1, p1, 0x1

    .line 52
    goto :goto_1

    .line 53
    :cond_3
    return-void
.end method
