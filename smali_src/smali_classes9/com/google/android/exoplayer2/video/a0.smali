.class public final Lcom/google/android/exoplayer2/video/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/h;


# static fields
.field public static final CREATOR:Lcom/google/android/exoplayer2/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/h$a<",
            "Lcom/google/android/exoplayer2/video/a0;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_HEIGHT:I = 0x0

.field private static final DEFAULT_PIXEL_WIDTH_HEIGHT_RATIO:F = 1.0f

.field private static final DEFAULT_UNAPPLIED_ROTATION_DEGREES:I = 0x0

.field private static final DEFAULT_WIDTH:I = 0x0

.field private static final FIELD_HEIGHT:I = 0x1

.field private static final FIELD_PIXEL_WIDTH_HEIGHT_RATIO:I = 0x3

.field private static final FIELD_UNAPPLIED_ROTATION_DEGREES:I = 0x2

.field private static final FIELD_WIDTH:I

.field public static final UNKNOWN:Lcom/google/android/exoplayer2/video/a0;


# instance fields
.field public final height:I
    .annotation build Landroidx/annotation/IntRange;
    .end annotation
.end field

.field public final pixelWidthHeightRatio:F
    .annotation build Landroidx/annotation/FloatRange;
    .end annotation
.end field

.field public final unappliedRotationDegrees:I
    .annotation build Landroidx/annotation/IntRange;
    .end annotation
.end field

.field public final width:I
    .annotation build Landroidx/annotation/IntRange;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/video/a0;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1, v1}, Lcom/google/android/exoplayer2/video/a0;-><init>(II)V

    .line 7
    .line 8
    sput-object v0, Lcom/google/android/exoplayer2/video/a0;->UNKNOWN:Lcom/google/android/exoplayer2/video/a0;

    .line 9
    .line 10
    new-instance v0, Lcom/google/android/exoplayer2/video/z;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0}, Lcom/google/android/exoplayer2/video/z;-><init>()V

    .line 14
    .line 15
    sput-object v0, Lcom/google/android/exoplayer2/video/a0;->CREATOR:Lcom/google/android/exoplayer2/h$a;

    .line 16
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/exoplayer2/video/a0;-><init>(IIIF)V

    return-void
.end method

.method public constructor <init>(IIIF)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/IntRange;
        .end annotation
    .end param
    .param p4    # F
        .annotation build Landroidx/annotation/FloatRange;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplayer2/video/a0;->width:I

    iput p2, p0, Lcom/google/android/exoplayer2/video/a0;->height:I

    iput p3, p0, Lcom/google/android/exoplayer2/video/a0;->unappliedRotationDegrees:I

    iput p4, p0, Lcom/google/android/exoplayer2/video/a0;->pixelWidthHeightRatio:F

    return-void
.end method

.method public static synthetic a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/video/a0;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/video/a0;->c(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/video/a0;

    move-result-object p0

    return-object p0
.end method

.method private static b(I)Ljava/lang/String;
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

.method private static synthetic c(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/video/a0;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Lcom/google/android/exoplayer2/video/a0;->b(I)Ljava/lang/String;

    .line 5
    move-result-object v1

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x1

    .line 11
    .line 12
    .line 13
    invoke-static {v2}, Lcom/google/android/exoplayer2/video/a0;->b(I)Ljava/lang/String;

    .line 14
    move-result-object v2

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x2

    .line 20
    .line 21
    .line 22
    invoke-static {v3}, Lcom/google/android/exoplayer2/video/a0;->b(I)Ljava/lang/String;

    .line 23
    move-result-object v3

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v3, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 27
    move-result v0

    .line 28
    const/4 v3, 0x3

    .line 29
    .line 30
    .line 31
    invoke-static {v3}, Lcom/google/android/exoplayer2/video/a0;->b(I)Ljava/lang/String;

    .line 32
    move-result-object v3

    .line 33
    .line 34
    const/high16 v4, 0x3f800000    # 1.0f

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v3, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    .line 38
    move-result p0

    .line 39
    .line 40
    new-instance v3, Lcom/google/android/exoplayer2/video/a0;

    .line 41
    .line 42
    .line 43
    invoke-direct {v3, v1, v2, v0, p0}, Lcom/google/android/exoplayer2/video/a0;-><init>(IIIF)V

    .line 44
    return-object v3
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    :cond_0
    instance-of v1, p1, Lcom/google/android/exoplayer2/video/a0;

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    check-cast p1, Lcom/google/android/exoplayer2/video/a0;

    .line 12
    .line 13
    iget v1, p0, Lcom/google/android/exoplayer2/video/a0;->width:I

    .line 14
    .line 15
    iget v3, p1, Lcom/google/android/exoplayer2/video/a0;->width:I

    .line 16
    .line 17
    if-ne v1, v3, :cond_1

    .line 18
    .line 19
    iget v1, p0, Lcom/google/android/exoplayer2/video/a0;->height:I

    .line 20
    .line 21
    iget v3, p1, Lcom/google/android/exoplayer2/video/a0;->height:I

    .line 22
    .line 23
    if-ne v1, v3, :cond_1

    .line 24
    .line 25
    iget v1, p0, Lcom/google/android/exoplayer2/video/a0;->unappliedRotationDegrees:I

    .line 26
    .line 27
    iget v3, p1, Lcom/google/android/exoplayer2/video/a0;->unappliedRotationDegrees:I

    .line 28
    .line 29
    if-ne v1, v3, :cond_1

    .line 30
    .line 31
    iget v1, p0, Lcom/google/android/exoplayer2/video/a0;->pixelWidthHeightRatio:F

    .line 32
    .line 33
    iget p1, p1, Lcom/google/android/exoplayer2/video/a0;->pixelWidthHeightRatio:F

    .line 34
    .line 35
    cmpl-float p1, v1, p1

    .line 36
    .line 37
    if-nez p1, :cond_1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move v0, v2

    .line 40
    :goto_0
    return v0

    .line 41
    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 2

    .line 1
    .line 2
    const/16 v0, 0xd9

    .line 3
    .line 4
    iget v1, p0, Lcom/google/android/exoplayer2/video/a0;->width:I

    .line 5
    add-int/2addr v0, v1

    .line 6
    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget v1, p0, Lcom/google/android/exoplayer2/video/a0;->height:I

    .line 10
    add-int/2addr v0, v1

    .line 11
    .line 12
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget v1, p0, Lcom/google/android/exoplayer2/video/a0;->unappliedRotationDegrees:I

    .line 15
    add-int/2addr v0, v1

    .line 16
    .line 17
    mul-int/lit8 v0, v0, 0x1f

    .line 18
    .line 19
    iget v1, p0, Lcom/google/android/exoplayer2/video/a0;->pixelWidthHeightRatio:F

    .line 20
    .line 21
    .line 22
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 23
    move-result v1

    .line 24
    add-int/2addr v0, v1

    .line 25
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
    invoke-static {v1}, Lcom/google/android/exoplayer2/video/a0;->b(I)Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    iget v2, p0, Lcom/google/android/exoplayer2/video/a0;->width:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 16
    const/4 v1, 0x1

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Lcom/google/android/exoplayer2/video/a0;->b(I)Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    iget v2, p0, Lcom/google/android/exoplayer2/video/a0;->height:I

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 26
    const/4 v1, 0x2

    .line 27
    .line 28
    .line 29
    invoke-static {v1}, Lcom/google/android/exoplayer2/video/a0;->b(I)Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, p0, Lcom/google/android/exoplayer2/video/a0;->unappliedRotationDegrees:I

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 36
    const/4 v1, 0x3

    .line 37
    .line 38
    .line 39
    invoke-static {v1}, Lcom/google/android/exoplayer2/video/a0;->b(I)Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    iget v2, p0, Lcom/google/android/exoplayer2/video/a0;->pixelWidthHeightRatio:F

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 46
    return-object v0
.end method
