.class final Landroidx/media3/exoplayer/audio/AudioCapabilities$Api29;
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
    name = "Api29"
.end annotation


# static fields
.field private static final DEFAULT_AUDIO_ATTRIBUTES:Landroid/media/AudioAttributes;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 6
    const/4 v1, 0x1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x3

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    sput-object v0, Landroidx/media3/exoplayer/audio/AudioCapabilities$Api29;->DEFAULT_AUDIO_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 27
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static a()Lcom/google/common/collect/a0;
    .locals 5
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/a0<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/common/collect/a0;->r()Lcom/google/common/collect/a0$a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroidx/media3/exoplayer/audio/AudioCapabilities;->a()Lcom/google/common/collect/b0;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/google/common/collect/b0;->l()Lcom/google/common/collect/d0;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/google/common/collect/d0;->m()Lcom/google/common/collect/l1;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v2

    .line 21
    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    check-cast v2, Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 32
    move-result v2

    .line 33
    .line 34
    sget v3, Landroidx/media3/common/util/Util;->SDK_INT:I

    .line 35
    .line 36
    const/16 v4, 0x22

    .line 37
    .line 38
    if-ge v3, v4, :cond_1

    .line 39
    .line 40
    const/16 v3, 0x1e

    .line 41
    .line 42
    if-ne v2, v3, :cond_1

    .line 43
    goto :goto_0

    .line 44
    .line 45
    :cond_1
    new-instance v3, Landroid/media/AudioFormat$Builder;

    .line 46
    .line 47
    .line 48
    invoke-direct {v3}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 49
    .line 50
    const/16 v4, 0xc

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, v4}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    .line 54
    move-result-object v3

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3, v2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    .line 58
    move-result-object v3

    .line 59
    .line 60
    .line 61
    const v4, 0xbb80

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, v4}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    .line 65
    move-result-object v3

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    .line 69
    move-result-object v3

    .line 70
    .line 71
    sget-object v4, Landroidx/media3/exoplayer/audio/AudioCapabilities$Api29;->DEFAULT_AUDIO_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 72
    .line 73
    .line 74
    invoke-static {v3, v4}, Landroidx/media3/exoplayer/audio/a;->a(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)Z

    .line 75
    move-result v3

    .line 76
    .line 77
    if-eqz v3, :cond_0

    .line 78
    .line 79
    .line 80
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    move-result-object v2

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v2}, Lcom/google/common/collect/a0$a;->h(Ljava/lang/Object;)Lcom/google/common/collect/a0$a;

    .line 85
    goto :goto_0

    .line 86
    :cond_2
    const/4 v1, 0x2

    .line 87
    .line 88
    .line 89
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    move-result-object v1

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v1}, Lcom/google/common/collect/a0$a;->h(Ljava/lang/Object;)Lcom/google/common/collect/a0$a;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/google/common/collect/a0$a;->k()Lcom/google/common/collect/a0;

    .line 97
    move-result-object v0

    .line 98
    return-object v0
.end method

.method public static b(II)I
    .locals 3
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .line 1
    .line 2
    const/16 v0, 0xa

    .line 3
    .line 4
    :goto_0
    if-lez v0, :cond_1

    .line 5
    .line 6
    new-instance v1, Landroid/media/AudioFormat$Builder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p0}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Landroidx/media3/common/util/Util;->H(I)I

    .line 21
    move-result v2

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    sget-object v2, Landroidx/media3/exoplayer/audio/AudioCapabilities$Api29;->DEFAULT_AUDIO_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 32
    .line 33
    .line 34
    invoke-static {v1, v2}, Landroidx/media3/exoplayer/audio/a;->a(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)Z

    .line 35
    move-result v1

    .line 36
    .line 37
    if-eqz v1, :cond_0

    .line 38
    return v0

    .line 39
    .line 40
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/4 p0, 0x0

    .line 43
    return p0
.end method
