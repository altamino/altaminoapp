.class public final Lcom/google/android/exoplayer2/x2;
.super Lcom/google/android/exoplayer2/k3;
.source "SourceFile"


# static fields
.field public static final CREATOR:Lcom/google/android/exoplayer2/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/h$a<",
            "Lcom/google/android/exoplayer2/x2;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_PERCENT:I = 0x1

.field private static final TYPE:I = 0x1


# instance fields
.field private final percent:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/w2;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/android/exoplayer2/w2;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/google/android/exoplayer2/x2;->CREATOR:Lcom/google/android/exoplayer2/h$a;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k3;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/google/android/exoplayer2/x2;->percent:F

    return-void
.end method

.method public constructor <init>(F)V
    .locals 2
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/k3;-><init>()V

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x42c80000    # 100.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "percent must be in the range of [0, 100]"

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/a;->b(ZLjava/lang/Object;)V

    iput p1, p0, Lcom/google/android/exoplayer2/x2;->percent:F

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

.method public static synthetic d(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/x2;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/x2;->e(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/x2;

    move-result-object p0

    return-object p0
.end method

.method private static e(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/x2;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Lcom/google/android/exoplayer2/x2;->c(I)Ljava/lang/String;

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
    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    move v0, v2

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 18
    .line 19
    .line 20
    invoke-static {v2}, Lcom/google/android/exoplayer2/x2;->c(I)Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    const/high16 v1, -0x40800000    # -1.0f

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    .line 27
    move-result p0

    .line 28
    .line 29
    cmpl-float v0, p0, v1

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    new-instance p0, Lcom/google/android/exoplayer2/x2;

    .line 34
    .line 35
    .line 36
    invoke-direct {p0}, Lcom/google/android/exoplayer2/x2;-><init>()V

    .line 37
    goto :goto_0

    .line 38
    .line 39
    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/x2;

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/x2;-><init>(F)V

    .line 43
    move-object p0, v0

    .line 44
    :goto_0
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    instance-of v0, p1, Lcom/google/android/exoplayer2/x2;

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
    iget v0, p0, Lcom/google/android/exoplayer2/x2;->percent:F

    .line 9
    .line 10
    check-cast p1, Lcom/google/android/exoplayer2/x2;

    .line 11
    .line 12
    iget p1, p1, Lcom/google/android/exoplayer2/x2;->percent:F

    .line 13
    .line 14
    cmpl-float p1, v0, p1

    .line 15
    .line 16
    if-nez p1, :cond_1

    .line 17
    const/4 v1, 0x1

    .line 18
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    .line 5
    iget v1, p0, Lcom/google/android/exoplayer2/x2;->percent:F

    .line 6
    .line 7
    .line 8
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/google/common/base/k;->b([Ljava/lang/Object;)I

    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

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
    invoke-static {v1}, Lcom/google/android/exoplayer2/x2;->c(I)Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v2}, Lcom/google/android/exoplayer2/x2;->c(I)Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    iget v2, p0, Lcom/google/android/exoplayer2/x2;->percent:F

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 24
    return-object v0
.end method
