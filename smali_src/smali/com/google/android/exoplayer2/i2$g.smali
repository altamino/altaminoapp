.class public final Lcom/google/android/exoplayer2/i2$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/i2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/i2$g$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/exoplayer2/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/h$a<",
            "Lcom/google/android/exoplayer2/i2$g;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_MAX_OFFSET_MS:I = 0x2

.field private static final FIELD_MAX_PLAYBACK_SPEED:I = 0x4

.field private static final FIELD_MIN_OFFSET_MS:I = 0x1

.field private static final FIELD_MIN_PLAYBACK_SPEED:I = 0x3

.field private static final FIELD_TARGET_OFFSET_MS:I

.field public static final UNSET:Lcom/google/android/exoplayer2/i2$g;


# instance fields
.field public final maxOffsetMs:J

.field public final maxPlaybackSpeed:F

.field public final minOffsetMs:J

.field public final minPlaybackSpeed:F

.field public final targetOffsetMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/i2$g$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/android/exoplayer2/i2$g$a;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/i2$g$a;->f()Lcom/google/android/exoplayer2/i2$g;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    sput-object v0, Lcom/google/android/exoplayer2/i2$g;->UNSET:Lcom/google/android/exoplayer2/i2$g;

    .line 12
    .line 13
    new-instance v0, Lcom/google/android/exoplayer2/k2;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0}, Lcom/google/android/exoplayer2/k2;-><init>()V

    .line 17
    .line 18
    sput-object v0, Lcom/google/android/exoplayer2/i2$g;->CREATOR:Lcom/google/android/exoplayer2/h$a;

    .line 19
    return-void
.end method

.method public constructor <init>(JJJFF)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/exoplayer2/i2$g;->targetOffsetMs:J

    iput-wide p3, p0, Lcom/google/android/exoplayer2/i2$g;->minOffsetMs:J

    iput-wide p5, p0, Lcom/google/android/exoplayer2/i2$g;->maxOffsetMs:J

    iput p7, p0, Lcom/google/android/exoplayer2/i2$g;->minPlaybackSpeed:F

    iput p8, p0, Lcom/google/android/exoplayer2/i2$g;->maxPlaybackSpeed:F

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/i2$g$a;)V
    .locals 9

    .line 2
    invoke-static {p1}, Lcom/google/android/exoplayer2/i2$g$a;->a(Lcom/google/android/exoplayer2/i2$g$a;)J

    move-result-wide v1

    .line 3
    invoke-static {p1}, Lcom/google/android/exoplayer2/i2$g$a;->b(Lcom/google/android/exoplayer2/i2$g$a;)J

    move-result-wide v3

    .line 4
    invoke-static {p1}, Lcom/google/android/exoplayer2/i2$g$a;->c(Lcom/google/android/exoplayer2/i2$g$a;)J

    move-result-wide v5

    .line 5
    invoke-static {p1}, Lcom/google/android/exoplayer2/i2$g$a;->d(Lcom/google/android/exoplayer2/i2$g$a;)F

    move-result v7

    .line 6
    invoke-static {p1}, Lcom/google/android/exoplayer2/i2$g$a;->e(Lcom/google/android/exoplayer2/i2$g$a;)F

    move-result v8

    move-object v0, p0

    .line 7
    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/i2$g;-><init>(JJJFF)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/i2$g$a;Lcom/google/android/exoplayer2/i2$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/i2$g;-><init>(Lcom/google/android/exoplayer2/i2$g$a;)V

    return-void
.end method

.method public static synthetic a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/i2$g;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/i2$g;->d(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/i2$g;

    move-result-object p0

    return-object p0
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

.method private static synthetic d(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/i2$g;
    .locals 11

    .line 1
    .line 2
    new-instance v9, Lcom/google/android/exoplayer2/i2$g;

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/google/android/exoplayer2/i2$g;->c(I)Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 16
    move-result-wide v3

    .line 17
    const/4 v0, 0x1

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lcom/google/android/exoplayer2/i2$g;->c(I)Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 25
    move-result-wide v5

    .line 26
    const/4 v0, 0x2

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Lcom/google/android/exoplayer2/i2$g;->c(I)Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 34
    move-result-wide v7

    .line 35
    const/4 v0, 0x3

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Lcom/google/android/exoplayer2/i2$g;->c(I)Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    const v1, -0x800001

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    .line 46
    move-result v10

    .line 47
    const/4 v0, 0x4

    .line 48
    .line 49
    .line 50
    invoke-static {v0}, Lcom/google/android/exoplayer2/i2$g;->c(I)Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    .line 55
    move-result p0

    .line 56
    move-object v0, v9

    .line 57
    move-wide v1, v3

    .line 58
    move-wide v3, v5

    .line 59
    move-wide v5, v7

    .line 60
    move v7, v10

    .line 61
    move v8, p0

    .line 62
    .line 63
    .line 64
    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/i2$g;-><init>(JJJFF)V

    .line 65
    return-object v9
.end method


# virtual methods
.method public b()Lcom/google/android/exoplayer2/i2$g$a;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/i2$g$a;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/i2$g$a;-><init>(Lcom/google/android/exoplayer2/i2$g;Lcom/google/android/exoplayer2/i2$a;)V

    .line 7
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
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
    instance-of v1, p1, Lcom/google/android/exoplayer2/i2$g;

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    return v2

    .line 11
    .line 12
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/i2$g;

    .line 13
    .line 14
    iget-wide v3, p0, Lcom/google/android/exoplayer2/i2$g;->targetOffsetMs:J

    .line 15
    .line 16
    iget-wide v5, p1, Lcom/google/android/exoplayer2/i2$g;->targetOffsetMs:J

    .line 17
    .line 18
    cmp-long v1, v3, v5

    .line 19
    .line 20
    if-nez v1, :cond_2

    .line 21
    .line 22
    iget-wide v3, p0, Lcom/google/android/exoplayer2/i2$g;->minOffsetMs:J

    .line 23
    .line 24
    iget-wide v5, p1, Lcom/google/android/exoplayer2/i2$g;->minOffsetMs:J

    .line 25
    .line 26
    cmp-long v1, v3, v5

    .line 27
    .line 28
    if-nez v1, :cond_2

    .line 29
    .line 30
    iget-wide v3, p0, Lcom/google/android/exoplayer2/i2$g;->maxOffsetMs:J

    .line 31
    .line 32
    iget-wide v5, p1, Lcom/google/android/exoplayer2/i2$g;->maxOffsetMs:J

    .line 33
    .line 34
    cmp-long v1, v3, v5

    .line 35
    .line 36
    if-nez v1, :cond_2

    .line 37
    .line 38
    iget v1, p0, Lcom/google/android/exoplayer2/i2$g;->minPlaybackSpeed:F

    .line 39
    .line 40
    iget v3, p1, Lcom/google/android/exoplayer2/i2$g;->minPlaybackSpeed:F

    .line 41
    .line 42
    cmpl-float v1, v1, v3

    .line 43
    .line 44
    if-nez v1, :cond_2

    .line 45
    .line 46
    iget v1, p0, Lcom/google/android/exoplayer2/i2$g;->maxPlaybackSpeed:F

    .line 47
    .line 48
    iget p1, p1, Lcom/google/android/exoplayer2/i2$g;->maxPlaybackSpeed:F

    .line 49
    .line 50
    cmpl-float p1, v1, p1

    .line 51
    .line 52
    if-nez p1, :cond_2

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    move v0, v2

    .line 55
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 7

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/google/android/exoplayer2/i2$g;->targetOffsetMs:J

    .line 3
    .line 4
    const/16 v2, 0x20

    .line 5
    .line 6
    ushr-long v3, v0, v2

    .line 7
    xor-long/2addr v0, v3

    .line 8
    long-to-int v0, v0

    .line 9
    .line 10
    mul-int/lit8 v0, v0, 0x1f

    .line 11
    .line 12
    iget-wide v3, p0, Lcom/google/android/exoplayer2/i2$g;->minOffsetMs:J

    .line 13
    .line 14
    ushr-long v5, v3, v2

    .line 15
    xor-long/2addr v3, v5

    .line 16
    long-to-int v1, v3

    .line 17
    add-int/2addr v0, v1

    .line 18
    .line 19
    mul-int/lit8 v0, v0, 0x1f

    .line 20
    .line 21
    iget-wide v3, p0, Lcom/google/android/exoplayer2/i2$g;->maxOffsetMs:J

    .line 22
    .line 23
    ushr-long v1, v3, v2

    .line 24
    xor-long/2addr v1, v3

    .line 25
    long-to-int v1, v1

    .line 26
    add-int/2addr v0, v1

    .line 27
    .line 28
    mul-int/lit8 v0, v0, 0x1f

    .line 29
    .line 30
    iget v1, p0, Lcom/google/android/exoplayer2/i2$g;->minPlaybackSpeed:F

    .line 31
    const/4 v2, 0x0

    .line 32
    .line 33
    cmpl-float v3, v1, v2

    .line 34
    const/4 v4, 0x0

    .line 35
    .line 36
    if-eqz v3, :cond_0

    .line 37
    .line 38
    .line 39
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 40
    move-result v1

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    move v1, v4

    .line 43
    :goto_0
    add-int/2addr v0, v1

    .line 44
    .line 45
    mul-int/lit8 v0, v0, 0x1f

    .line 46
    .line 47
    iget v1, p0, Lcom/google/android/exoplayer2/i2$g;->maxPlaybackSpeed:F

    .line 48
    .line 49
    cmpl-float v2, v1, v2

    .line 50
    .line 51
    if-eqz v2, :cond_1

    .line 52
    .line 53
    .line 54
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 55
    move-result v4

    .line 56
    :cond_1
    add-int/2addr v0, v4

    .line 57
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
    invoke-static {v1}, Lcom/google/android/exoplayer2/i2$g;->c(I)Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    iget-wide v2, p0, Lcom/google/android/exoplayer2/i2$g;->targetOffsetMs:J

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 16
    const/4 v1, 0x1

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Lcom/google/android/exoplayer2/i2$g;->c(I)Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    iget-wide v2, p0, Lcom/google/android/exoplayer2/i2$g;->minOffsetMs:J

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 26
    const/4 v1, 0x2

    .line 27
    .line 28
    .line 29
    invoke-static {v1}, Lcom/google/android/exoplayer2/i2$g;->c(I)Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget-wide v2, p0, Lcom/google/android/exoplayer2/i2$g;->maxOffsetMs:J

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 36
    const/4 v1, 0x3

    .line 37
    .line 38
    .line 39
    invoke-static {v1}, Lcom/google/android/exoplayer2/i2$g;->c(I)Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    iget v2, p0, Lcom/google/android/exoplayer2/i2$g;->minPlaybackSpeed:F

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 46
    const/4 v1, 0x4

    .line 47
    .line 48
    .line 49
    invoke-static {v1}, Lcom/google/android/exoplayer2/i2$g;->c(I)Ljava/lang/String;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    iget v2, p0, Lcom/google/android/exoplayer2/i2$g;->maxPlaybackSpeed:F

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 56
    return-object v0
.end method
