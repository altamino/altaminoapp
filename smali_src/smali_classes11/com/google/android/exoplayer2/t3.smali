.class public final Lcom/google/android/exoplayer2/t3;
.super Lcom/google/android/exoplayer2/k3;
.source "SourceFile"


# static fields
.field public static final CREATOR:Lcom/google/android/exoplayer2/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/h$a<",
            "Lcom/google/android/exoplayer2/t3;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_MAX_STARS:I = 0x1

.field private static final FIELD_STAR_RATING:I = 0x2

.field private static final MAX_STARS_DEFAULT:I = 0x5

.field private static final TYPE:I = 0x2


# instance fields
.field private final maxStars:I
    .annotation build Landroidx/annotation/IntRange;
    .end annotation
.end field

.field private final starRating:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/s3;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/android/exoplayer2/s3;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/google/android/exoplayer2/t3;->CREATOR:Lcom/google/android/exoplayer2/h$a;

    .line 8
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k3;-><init>()V

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "maxStars must be a positive integer"

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/a;->b(ZLjava/lang/Object;)V

    iput p1, p0, Lcom/google/android/exoplayer2/t3;->maxStars:I

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/google/android/exoplayer2/t3;->starRating:F

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
        .end annotation
    .end param
    .param p2    # F
        .annotation build Landroidx/annotation/FloatRange;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k3;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "maxStars must be a positive integer"

    .line 4
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/a;->b(ZLjava/lang/Object;)V

    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_1

    int-to-float v2, p1

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string v1, "starRating is out of range [0, maxStars]"

    .line 5
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/a;->b(ZLjava/lang/Object;)V

    iput p1, p0, Lcom/google/android/exoplayer2/t3;->maxStars:I

    iput p2, p0, Lcom/google/android/exoplayer2/t3;->starRating:F

    return-void
.end method

.method private static c(I)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0x24

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static synthetic d(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/t3;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/t3;->e(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/t3;

    move-result-object p0

    return-object p0
.end method

.method private static e(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/t3;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Lcom/google/android/exoplayer2/t3;->c(I)Ljava/lang/String;

    .line 5
    move-result-object v1

    .line 6
    const/4 v2, -0x1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    const/4 v3, 0x2

    .line 13
    .line 14
    if-ne v1, v3, :cond_0

    .line 15
    move v0, v2

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 19
    .line 20
    .line 21
    invoke-static {v2}, Lcom/google/android/exoplayer2/t3;->c(I)Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x5

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 27
    move-result v0

    .line 28
    .line 29
    .line 30
    invoke-static {v3}, Lcom/google/android/exoplayer2/t3;->c(I)Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    const/high16 v2, -0x40800000    # -1.0f

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    .line 37
    move-result p0

    .line 38
    .line 39
    cmpl-float v1, p0, v2

    .line 40
    .line 41
    if-nez v1, :cond_1

    .line 42
    .line 43
    new-instance p0, Lcom/google/android/exoplayer2/t3;

    .line 44
    .line 45
    .line 46
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/t3;-><init>(I)V

    .line 47
    goto :goto_0

    .line 48
    .line 49
    :cond_1
    new-instance v1, Lcom/google/android/exoplayer2/t3;

    .line 50
    .line 51
    .line 52
    invoke-direct {v1, v0, p0}, Lcom/google/android/exoplayer2/t3;-><init>(IF)V

    .line 53
    move-object p0, v1

    .line 54
    :goto_0
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    instance-of v0, p1, Lcom/google/android/exoplayer2/t3;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    .line 8
    :cond_0
    check-cast p1, Lcom/google/android/exoplayer2/t3;

    .line 9
    .line 10
    iget v0, p0, Lcom/google/android/exoplayer2/t3;->maxStars:I

    .line 11
    .line 12
    iget v2, p1, Lcom/google/android/exoplayer2/t3;->maxStars:I

    .line 13
    .line 14
    if-ne v0, v2, :cond_1

    .line 15
    .line 16
    iget v0, p0, Lcom/google/android/exoplayer2/t3;->starRating:F

    .line 17
    .line 18
    iget p1, p1, Lcom/google/android/exoplayer2/t3;->starRating:F

    .line 19
    .line 20
    cmpl-float p1, v0, p1

    .line 21
    .line 22
    if-nez p1, :cond_1

    .line 23
    const/4 v1, 0x1

    .line 24
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    .line 5
    iget v1, p0, Lcom/google/android/exoplayer2/t3;->maxStars:I

    .line 6
    .line 7
    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    iget v1, p0, Lcom/google/android/exoplayer2/t3;->starRating:F

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x1

    .line 20
    .line 21
    aput-object v1, v0, v2

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lcom/google/common/base/k;->b([Ljava/lang/Object;)I

    .line 25
    move-result v0

    .line 26
    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 4

    .line 1
    .line 2
    new-instance v0, Landroid/os/Bundle;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    .line 9
    invoke-static {v1}, Lcom/google/android/exoplayer2/t3;->c(I)Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x2

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 15
    const/4 v1, 0x1

    .line 16
    .line 17
    .line 18
    invoke-static {v1}, Lcom/google/android/exoplayer2/t3;->c(I)Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    iget v3, p0, Lcom/google/android/exoplayer2/t3;->maxStars:I

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    invoke-static {v2}, Lcom/google/android/exoplayer2/t3;->c(I)Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    iget v2, p0, Lcom/google/android/exoplayer2/t3;->starRating:F

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 34
    return-object v0
.end method
