.class public Lh0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh0/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final MAX_CP_VALUE:F = 100.0f


# instance fields
.field private final composition:Lcom/airbnb/lottie/e;

.field public endFrame:Ljava/lang/Float;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private endProgress:F

.field public final endValue:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final interpolator:Landroid/view/animation/Interpolator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final startFrame:F

.field private startProgress:F

.field public final startValue:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lh0/a;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/airbnb/lottie/e;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/view/animation/Interpolator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Float;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/e;",
            "TT;TT;",
            "Landroid/view/animation/Interpolator;",
            "F",
            "Ljava/lang/Float;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput v0, p0, Lh0/a;->startProgress:F

    .line 7
    .line 8
    iput v0, p0, Lh0/a;->endProgress:F

    .line 9
    .line 10
    iput-object p1, p0, Lh0/a;->composition:Lcom/airbnb/lottie/e;

    .line 11
    .line 12
    iput-object p2, p0, Lh0/a;->startValue:Ljava/lang/Object;

    .line 13
    .line 14
    iput-object p3, p0, Lh0/a;->endValue:Ljava/lang/Object;

    .line 15
    .line 16
    iput-object p4, p0, Lh0/a;->interpolator:Landroid/view/animation/Interpolator;

    .line 17
    .line 18
    iput p5, p0, Lh0/a;->startFrame:F

    .line 19
    .line 20
    iput-object p6, p0, Lh0/a;->endFrame:Ljava/lang/Float;

    .line 21
    return-void
.end method

.method static synthetic a()Landroid/view/animation/Interpolator;
    .locals 1

    .line 1
    sget-object v0, Lh0/a;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public static f(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lh0/a<",
            "*>;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    :goto_0
    add-int/lit8 v2, v0, -0x1

    .line 8
    .line 9
    if-ge v1, v2, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    move-result-object v2

    .line 14
    .line 15
    check-cast v2, Lh0/a;

    .line 16
    .line 17
    add-int/lit8 v1, v1, 0x1

    .line 18
    .line 19
    .line 20
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object v3

    .line 22
    .line 23
    check-cast v3, Lh0/a;

    .line 24
    .line 25
    iget v3, v3, Lh0/a;->startFrame:F

    .line 26
    .line 27
    .line 28
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 29
    move-result-object v3

    .line 30
    .line 31
    iput-object v3, v2, Lh0/a;->endFrame:Ljava/lang/Float;

    .line 32
    goto :goto_0

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    check-cast v0, Lh0/a;

    .line 39
    .line 40
    iget-object v1, v0, Lh0/a;->startValue:Ljava/lang/Object;

    .line 41
    .line 42
    if-nez v1, :cond_1

    .line 43
    .line 44
    .line 45
    invoke-interface {p0, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 46
    :cond_1
    return-void
.end method


# virtual methods
.method public b(F)Z
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lh0/a;->d()F

    .line 4
    move-result v0

    .line 5
    .line 6
    cmpl-float v0, p1, v0

    .line 7
    .line 8
    if-ltz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lh0/a;->c()F

    .line 12
    move-result v0

    .line 13
    .line 14
    cmpg-float p1, p1, v0

    .line 15
    .line 16
    if-gtz p1, :cond_0

    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    return p1
.end method

.method public c()F
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lh0/a;->endProgress:F

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    cmpl-float v0, v0, v1

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lh0/a;->endFrame:Ljava/lang/Float;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/high16 v0, 0x3f800000    # 1.0f

    .line 14
    .line 15
    iput v0, p0, Lh0/a;->endProgress:F

    .line 16
    goto :goto_0

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0}, Lh0/a;->d()F

    .line 20
    move-result v0

    .line 21
    .line 22
    iget-object v1, p0, Lh0/a;->endFrame:Ljava/lang/Float;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 26
    move-result v1

    .line 27
    .line 28
    iget v2, p0, Lh0/a;->startFrame:F

    .line 29
    sub-float/2addr v1, v2

    .line 30
    .line 31
    iget-object v2, p0, Lh0/a;->composition:Lcom/airbnb/lottie/e;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/airbnb/lottie/e;->l()F

    .line 35
    move-result v2

    .line 36
    div-float/2addr v1, v2

    .line 37
    add-float/2addr v0, v1

    .line 38
    .line 39
    iput v0, p0, Lh0/a;->endProgress:F

    .line 40
    .line 41
    :cond_1
    :goto_0
    iget v0, p0, Lh0/a;->endProgress:F

    .line 42
    return v0
.end method

.method public d()F
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lh0/a;->startProgress:F

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    cmpl-float v0, v0, v1

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget v0, p0, Lh0/a;->startFrame:F

    .line 10
    .line 11
    iget-object v1, p0, Lh0/a;->composition:Lcom/airbnb/lottie/e;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/airbnb/lottie/e;->v()J

    .line 15
    move-result-wide v1

    .line 16
    long-to-float v1, v1

    .line 17
    sub-float/2addr v0, v1

    .line 18
    .line 19
    iget-object v1, p0, Lh0/a;->composition:Lcom/airbnb/lottie/e;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/airbnb/lottie/e;->l()F

    .line 23
    move-result v1

    .line 24
    div-float/2addr v0, v1

    .line 25
    .line 26
    iput v0, p0, Lh0/a;->startProgress:F

    .line 27
    .line 28
    :cond_0
    iget v0, p0, Lh0/a;->startProgress:F

    .line 29
    return v0
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lh0/a;->interpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "Keyframe{startValue="

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget-object v1, p0, Lh0/a;->startValue:Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, ", endValue="

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    iget-object v1, p0, Lh0/a;->endValue:Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v1, ", startFrame="

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    iget v1, p0, Lh0/a;->startFrame:F

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v1, ", endFrame="

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    iget-object v1, p0, Lh0/a;->endFrame:Ljava/lang/Float;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v1, ", interpolator="

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    iget-object v1, p0, Lh0/a;->interpolator:Landroid/view/animation/Interpolator;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const/16 v1, 0x7d

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object v0

    .line 65
    return-object v0
.end method
