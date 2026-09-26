.class final Landroidx/media3/exoplayer/audio/AudioCapabilities$Api23;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/audio/AudioCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api23"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method private static final a()Lcom/google/common/collect/d0;
    .locals 6
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/d0<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/google/common/collect/d0$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/common/collect/d0$a;-><init>()V

    .line 6
    const/4 v1, 0x2

    .line 7
    .line 8
    new-array v2, v1, [Ljava/lang/Integer;

    .line 9
    .line 10
    const/16 v3, 0x8

    .line 11
    .line 12
    .line 13
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object v3

    .line 15
    const/4 v4, 0x0

    .line 16
    .line 17
    aput-object v3, v2, v4

    .line 18
    const/4 v3, 0x7

    .line 19
    .line 20
    .line 21
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object v3

    .line 23
    const/4 v5, 0x1

    .line 24
    .line 25
    aput-object v3, v2, v5

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v2}, Lcom/google/common/collect/d0$a;->i([Ljava/lang/Object;)Lcom/google/common/collect/d0$a;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    sget v2, Landroidx/media3/common/util/Util;->SDK_INT:I

    .line 32
    .line 33
    const/16 v3, 0x1f

    .line 34
    .line 35
    if-lt v2, v3, :cond_0

    .line 36
    .line 37
    new-array v1, v1, [Ljava/lang/Integer;

    .line 38
    .line 39
    const/16 v3, 0x1a

    .line 40
    .line 41
    .line 42
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    move-result-object v3

    .line 44
    .line 45
    aput-object v3, v1, v4

    .line 46
    .line 47
    const/16 v3, 0x1b

    .line 48
    .line 49
    .line 50
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    move-result-object v3

    .line 52
    .line 53
    aput-object v3, v1, v5

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lcom/google/common/collect/d0$a;->i([Ljava/lang/Object;)Lcom/google/common/collect/d0$a;

    .line 57
    .line 58
    :cond_0
    const/16 v1, 0x21

    .line 59
    .line 60
    if-lt v2, v1, :cond_1

    .line 61
    .line 62
    const/16 v1, 0x1e

    .line 63
    .line 64
    .line 65
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    move-result-object v1

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Lcom/google/common/collect/d0$a;->h(Ljava/lang/Object;)Lcom/google/common/collect/d0$a;

    .line 70
    .line 71
    .line 72
    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/d0$a;->l()Lcom/google/common/collect/d0;

    .line 73
    move-result-object v0

    .line 74
    return-object v0
.end method

.method public static final b(Landroid/content/Context;)Z
    .locals 4
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .line 1
    .line 2
    const-string v0, "audio"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Landroid/media/AudioManager;

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object p0

    .line 13
    .line 14
    check-cast p0, Landroid/media/AudioManager;

    .line 15
    const/4 v0, 0x2

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    .line 19
    move-result-object p0

    .line 20
    .line 21
    .line 22
    invoke-static {}, Landroidx/media3/exoplayer/audio/AudioCapabilities$Api23;->a()Lcom/google/common/collect/d0;

    .line 23
    move-result-object v0

    .line 24
    const/4 v1, 0x0

    .line 25
    move v2, v1

    .line 26
    :goto_0
    array-length v3, p0

    .line 27
    .line 28
    if-ge v2, v3, :cond_1

    .line 29
    .line 30
    aget-object v3, p0, v2

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getType()I

    .line 34
    move-result v3

    .line 35
    .line 36
    .line 37
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    move-result-object v3

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v3}, Lcom/google/common/collect/y;->contains(Ljava/lang/Object;)Z

    .line 42
    move-result v3

    .line 43
    .line 44
    if-eqz v3, :cond_0

    .line 45
    const/4 p0, 0x1

    .line 46
    return p0

    .line 47
    .line 48
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    return v1
.end method
