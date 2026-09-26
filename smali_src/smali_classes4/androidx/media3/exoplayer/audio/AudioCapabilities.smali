.class public final Landroidx/media3/exoplayer/audio/AudioCapabilities;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/audio/AudioCapabilities$Api23;,
        Landroidx/media3/exoplayer/audio/AudioCapabilities$Api29;
    }
.end annotation


# static fields
.field private static final ALL_SURROUND_ENCODINGS_AND_MAX_CHANNELS:Lcom/google/common/collect/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/b0<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_AUDIO_CAPABILITIES:Landroidx/media3/exoplayer/audio/AudioCapabilities;

.field private static final DEFAULT_MAX_CHANNEL_COUNT:I = 0xa

.field static final DEFAULT_SAMPLE_RATE_HZ:I = 0xbb80
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final EXTERNAL_SURROUND_SOUND_ENCODINGS:Lcom/google/common/collect/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/a0<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final EXTERNAL_SURROUND_SOUND_KEY:Ljava/lang/String; = "external_surround_sound_enabled"


# instance fields
.field private final maxChannelCount:I

.field private final supportedEncodings:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Landroidx/media3/exoplayer/audio/AudioCapabilities;

    .line 3
    const/4 v1, 0x2

    .line 4
    .line 5
    .line 6
    filled-new-array {v1}, [I

    .line 7
    move-result-object v2

    .line 8
    .line 9
    const/16 v3, 0xa

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v2, v3}, Landroidx/media3/exoplayer/audio/AudioCapabilities;-><init>([II)V

    .line 13
    .line 14
    sput-object v0, Landroidx/media3/exoplayer/audio/AudioCapabilities;->DEFAULT_AUDIO_CAPABILITIES:Landroidx/media3/exoplayer/audio/AudioCapabilities;

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x5

    .line 20
    .line 21
    .line 22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x6

    .line 25
    .line 26
    .line 27
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    .line 31
    invoke-static {v0, v1, v2}, Lcom/google/common/collect/a0;->A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/a0;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    sput-object v0, Landroidx/media3/exoplayer/audio/AudioCapabilities;->EXTERNAL_SURROUND_SOUND_ENCODINGS:Lcom/google/common/collect/a0;

    .line 35
    .line 36
    new-instance v0, Lcom/google/common/collect/b0$a;

    .line 37
    .line 38
    .line 39
    invoke-direct {v0}, Lcom/google/common/collect/b0$a;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/b0$a;->f(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/b0$a;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    const/16 v1, 0x11

    .line 46
    .line 47
    .line 48
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    move-result-object v1

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/b0$a;->f(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/b0$a;

    .line 53
    move-result-object v0

    .line 54
    const/4 v1, 0x7

    .line 55
    .line 56
    .line 57
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    move-result-object v1

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/b0$a;->f(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/b0$a;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    const/16 v1, 0x1e

    .line 65
    .line 66
    .line 67
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    move-result-object v1

    .line 69
    .line 70
    .line 71
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    move-result-object v3

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1, v3}, Lcom/google/common/collect/b0$a;->f(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/b0$a;

    .line 76
    move-result-object v0

    .line 77
    .line 78
    const/16 v1, 0x12

    .line 79
    .line 80
    .line 81
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    move-result-object v1

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/b0$a;->f(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/b0$a;

    .line 86
    move-result-object v0

    .line 87
    .line 88
    const/16 v1, 0x8

    .line 89
    .line 90
    .line 91
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    move-result-object v1

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/b0$a;->f(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/b0$a;

    .line 96
    move-result-object v0

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v1, v1}, Lcom/google/common/collect/b0$a;->f(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/b0$a;

    .line 100
    move-result-object v0

    .line 101
    .line 102
    const/16 v2, 0xe

    .line 103
    .line 104
    .line 105
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    move-result-object v2

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/b0$a;->f(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/b0$a;

    .line 110
    move-result-object v0

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Lcom/google/common/collect/b0$a;->c()Lcom/google/common/collect/b0;

    .line 114
    move-result-object v0

    .line 115
    .line 116
    sput-object v0, Landroidx/media3/exoplayer/audio/AudioCapabilities;->ALL_SURROUND_ENCODINGS_AND_MAX_CHANNELS:Lcom/google/common/collect/b0;

    .line 117
    return-void
.end method

.method public constructor <init>([II)V
    .locals 1
    .param p1    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    array-length v0, p1

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    .line 10
    move-result-object p1

    .line 11
    .line 12
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/AudioCapabilities;->supportedEncodings:[I

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    .line 19
    new-array p1, p1, [I

    .line 20
    .line 21
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/AudioCapabilities;->supportedEncodings:[I

    .line 22
    .line 23
    :goto_0
    iput p2, p0, Landroidx/media3/exoplayer/audio/AudioCapabilities;->maxChannelCount:I

    .line 24
    return-void
.end method

.method static synthetic a()Lcom/google/common/collect/b0;
    .locals 1

    .line 1
    sget-object v0, Landroidx/media3/exoplayer/audio/AudioCapabilities;->ALL_SURROUND_ENCODINGS_AND_MAX_CHANNELS:Lcom/google/common/collect/b0;

    return-object v0
.end method

.method private static b()Z
    .locals 2

    .line 1
    .line 2
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x11

    .line 5
    .line 6
    if-lt v0, v1, :cond_1

    .line 7
    .line 8
    sget-object v0, Landroidx/media3/common/util/Util;->MANUFACTURER:Ljava/lang/String;

    .line 9
    .line 10
    const-string v1, "Amazon"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    const-string v1, "Xiaomi"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    :cond_0
    const/4 v0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v0, 0x0

    .line 28
    :goto_0
    return v0
.end method

.method public static c(Landroid/content/Context;)Landroidx/media3/exoplayer/audio/AudioCapabilities;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroid/content/IntentFilter;

    .line 3
    .line 4
    const-string v1, "android.media.action.HDMI_AUDIO_PLUG"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-static {p0, v0}, Landroidx/media3/exoplayer/audio/AudioCapabilities;->d(Landroid/content/Context;Landroid/content/Intent;)Landroidx/media3/exoplayer/audio/AudioCapabilities;

    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method static d(Landroid/content/Context;Landroid/content/Intent;)Landroidx/media3/exoplayer/audio/AudioCapabilities;
    .locals 6
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 1
    .line 2
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x17

    .line 5
    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {p0}, Landroidx/media3/exoplayer/audio/AudioCapabilities$Api23;->b(Landroid/content/Context;)Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    sget-object p0, Landroidx/media3/exoplayer/audio/AudioCapabilities;->DEFAULT_AUDIO_CAPABILITIES:Landroidx/media3/exoplayer/audio/AudioCapabilities;

    .line 15
    return-object p0

    .line 16
    .line 17
    :cond_0
    new-instance v1, Lcom/google/common/collect/d0$a;

    .line 18
    .line 19
    .line 20
    invoke-direct {v1}, Lcom/google/common/collect/d0$a;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Landroidx/media3/exoplayer/audio/AudioCapabilities;->b()Z

    .line 24
    move-result v2

    .line 25
    const/4 v3, 0x1

    .line 26
    const/4 v4, 0x0

    .line 27
    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 32
    move-result-object v2

    .line 33
    .line 34
    const-string v5, "external_surround_sound_enabled"

    .line 35
    .line 36
    .line 37
    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 38
    move-result v2

    .line 39
    .line 40
    if-ne v2, v3, :cond_1

    .line 41
    .line 42
    sget-object v2, Landroidx/media3/exoplayer/audio/AudioCapabilities;->EXTERNAL_SURROUND_SOUND_ENCODINGS:Lcom/google/common/collect/a0;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Lcom/google/common/collect/d0$a;->j(Ljava/lang/Iterable;)Lcom/google/common/collect/d0$a;

    .line 46
    .line 47
    :cond_1
    const/16 v2, 0x1d

    .line 48
    .line 49
    const/16 v5, 0xa

    .line 50
    .line 51
    if-lt v0, v2, :cond_3

    .line 52
    .line 53
    .line 54
    invoke-static {p0}, Landroidx/media3/common/util/Util;->F0(Landroid/content/Context;)Z

    .line 55
    move-result v0

    .line 56
    .line 57
    if-nez v0, :cond_2

    .line 58
    .line 59
    .line 60
    invoke-static {p0}, Landroidx/media3/common/util/Util;->A0(Landroid/content/Context;)Z

    .line 61
    move-result p0

    .line 62
    .line 63
    if-eqz p0, :cond_3

    .line 64
    .line 65
    .line 66
    :cond_2
    invoke-static {}, Landroidx/media3/exoplayer/audio/AudioCapabilities$Api29;->a()Lcom/google/common/collect/a0;

    .line 67
    move-result-object p0

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, p0}, Lcom/google/common/collect/d0$a;->j(Ljava/lang/Iterable;)Lcom/google/common/collect/d0$a;

    .line 71
    .line 72
    new-instance p0, Landroidx/media3/exoplayer/audio/AudioCapabilities;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Lcom/google/common/collect/d0$a;->l()Lcom/google/common/collect/d0;

    .line 76
    move-result-object p1

    .line 77
    .line 78
    .line 79
    invoke-static {p1}, Lcom/google/common/primitives/e;->l(Ljava/util/Collection;)[I

    .line 80
    move-result-object p1

    .line 81
    .line 82
    .line 83
    invoke-direct {p0, p1, v5}, Landroidx/media3/exoplayer/audio/AudioCapabilities;-><init>([II)V

    .line 84
    return-object p0

    .line 85
    .line 86
    :cond_3
    if-eqz p1, :cond_5

    .line 87
    .line 88
    const-string p0, "android.media.extra.AUDIO_PLUG_STATE"

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, p0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 92
    move-result p0

    .line 93
    .line 94
    if-ne p0, v3, :cond_5

    .line 95
    .line 96
    const-string p0, "android.media.extra.ENCODINGS"

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    .line 100
    move-result-object p0

    .line 101
    .line 102
    if-eqz p0, :cond_4

    .line 103
    .line 104
    .line 105
    invoke-static {p0}, Lcom/google/common/primitives/e;->c([I)Ljava/util/List;

    .line 106
    move-result-object p0

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, p0}, Lcom/google/common/collect/d0$a;->j(Ljava/lang/Iterable;)Lcom/google/common/collect/d0$a;

    .line 110
    .line 111
    :cond_4
    new-instance p0, Landroidx/media3/exoplayer/audio/AudioCapabilities;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1}, Lcom/google/common/collect/d0$a;->l()Lcom/google/common/collect/d0;

    .line 115
    move-result-object v0

    .line 116
    .line 117
    .line 118
    invoke-static {v0}, Lcom/google/common/primitives/e;->l(Ljava/util/Collection;)[I

    .line 119
    move-result-object v0

    .line 120
    .line 121
    const-string v1, "android.media.extra.MAX_CHANNEL_COUNT"

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 125
    move-result p1

    .line 126
    .line 127
    .line 128
    invoke-direct {p0, v0, p1}, Landroidx/media3/exoplayer/audio/AudioCapabilities;-><init>([II)V

    .line 129
    return-object p0

    .line 130
    .line 131
    .line 132
    :cond_5
    invoke-virtual {v1}, Lcom/google/common/collect/d0$a;->l()Lcom/google/common/collect/d0;

    .line 133
    move-result-object p0

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 137
    move-result p1

    .line 138
    .line 139
    if-nez p1, :cond_6

    .line 140
    .line 141
    new-instance p1, Landroidx/media3/exoplayer/audio/AudioCapabilities;

    .line 142
    .line 143
    .line 144
    invoke-static {p0}, Lcom/google/common/primitives/e;->l(Ljava/util/Collection;)[I

    .line 145
    move-result-object p0

    .line 146
    .line 147
    .line 148
    invoke-direct {p1, p0, v5}, Landroidx/media3/exoplayer/audio/AudioCapabilities;-><init>([II)V

    .line 149
    return-object p1

    .line 150
    .line 151
    :cond_6
    sget-object p0, Landroidx/media3/exoplayer/audio/AudioCapabilities;->DEFAULT_AUDIO_CAPABILITIES:Landroidx/media3/exoplayer/audio/AudioCapabilities;

    .line 152
    return-object p0
.end method

.method private static e(I)I
    .locals 2

    .line 1
    .line 2
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x1c

    .line 5
    .line 6
    if-gt v0, v1, :cond_2

    .line 7
    const/4 v1, 0x7

    .line 8
    .line 9
    if-ne p0, v1, :cond_0

    .line 10
    .line 11
    const/16 p0, 0x8

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x3

    .line 14
    .line 15
    if-eq p0, v1, :cond_1

    .line 16
    const/4 v1, 0x4

    .line 17
    .line 18
    if-eq p0, v1, :cond_1

    .line 19
    const/4 v1, 0x5

    .line 20
    .line 21
    if-ne p0, v1, :cond_2

    .line 22
    :cond_1
    const/4 p0, 0x6

    .line 23
    .line 24
    :cond_2
    :goto_0
    const/16 v1, 0x1a

    .line 25
    .line 26
    if-gt v0, v1, :cond_3

    .line 27
    .line 28
    const-string v0, "fugu"

    .line 29
    .line 30
    sget-object v1, Landroidx/media3/common/util/Util;->DEVICE:Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result v0

    .line 35
    .line 36
    if-eqz v0, :cond_3

    .line 37
    const/4 v0, 0x1

    .line 38
    .line 39
    if-ne p0, v0, :cond_3

    .line 40
    const/4 p0, 0x2

    .line 41
    .line 42
    .line 43
    :cond_3
    invoke-static {p0}, Landroidx/media3/common/util/Util;->H(I)I

    .line 44
    move-result p0

    .line 45
    return p0
.end method

.method static g()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroidx/media3/exoplayer/audio/AudioCapabilities;->b()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string v0, "external_surround_sound_enabled"

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return-object v0
.end method

.method private static h(II)I
    .locals 2

    .line 1
    .line 2
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x1d

    .line 5
    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/audio/AudioCapabilities$Api29;->b(II)I

    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    .line 13
    :cond_0
    sget-object p1, Landroidx/media3/exoplayer/audio/AudioCapabilities;->ALL_SURROUND_ENCODINGS_AND_MAX_CHANNELS:Lcom/google/common/collect/b0;

    .line 14
    .line 15
    .line 16
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    move-result-object p0

    .line 18
    const/4 v0, 0x0

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p0, v0}, Lcom/google/common/collect/b0;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    move-result-object p0

    .line 27
    .line 28
    check-cast p0, Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    move-result-object p0

    .line 33
    .line 34
    check-cast p0, Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 38
    move-result p0

    .line 39
    return p0
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
    instance-of v1, p1, Landroidx/media3/exoplayer/audio/AudioCapabilities;

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
    check-cast p1, Landroidx/media3/exoplayer/audio/AudioCapabilities;

    .line 13
    .line 14
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/AudioCapabilities;->supportedEncodings:[I

    .line 15
    .line 16
    iget-object v3, p1, Landroidx/media3/exoplayer/audio/AudioCapabilities;->supportedEncodings:[I

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    .line 20
    move-result v1

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    iget v1, p0, Landroidx/media3/exoplayer/audio/AudioCapabilities;->maxChannelCount:I

    .line 25
    .line 26
    iget p1, p1, Landroidx/media3/exoplayer/audio/AudioCapabilities;->maxChannelCount:I

    .line 27
    .line 28
    if-ne v1, p1, :cond_2

    .line 29
    goto :goto_0

    .line 30
    :cond_2
    move v0, v2

    .line 31
    :goto_0
    return v0
.end method

.method public f(Landroidx/media3/common/Format;)Landroid/util/Pair;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/Format;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Ljava/lang/String;

    .line 9
    .line 10
    iget-object v1, p1, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Landroidx/media3/common/MimeTypes;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    move-result v0

    .line 15
    .line 16
    sget-object v1, Landroidx/media3/exoplayer/audio/AudioCapabilities;->ALL_SURROUND_ENCODINGS_AND_MAX_CHANNELS:Lcom/google/common/collect/b0;

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Lcom/google/common/collect/b0;->containsKey(Ljava/lang/Object;)Z

    .line 24
    move-result v1

    .line 25
    const/4 v2, 0x0

    .line 26
    .line 27
    if-nez v1, :cond_0

    .line 28
    return-object v2

    .line 29
    .line 30
    :cond_0
    const/16 v1, 0x12

    .line 31
    .line 32
    if-ne v0, v1, :cond_1

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/audio/AudioCapabilities;->j(I)Z

    .line 36
    move-result v3

    .line 37
    .line 38
    if-nez v3, :cond_1

    .line 39
    const/4 v0, 0x6

    .line 40
    goto :goto_0

    .line 41
    .line 42
    :cond_1
    const/16 v3, 0x8

    .line 43
    .line 44
    if-ne v0, v3, :cond_2

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v3}, Landroidx/media3/exoplayer/audio/AudioCapabilities;->j(I)Z

    .line 48
    move-result v3

    .line 49
    .line 50
    if-eqz v3, :cond_3

    .line 51
    .line 52
    :cond_2
    const/16 v3, 0x1e

    .line 53
    .line 54
    if-ne v0, v3, :cond_4

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v3}, Landroidx/media3/exoplayer/audio/AudioCapabilities;->j(I)Z

    .line 58
    move-result v3

    .line 59
    .line 60
    if-nez v3, :cond_4

    .line 61
    :cond_3
    const/4 v0, 0x7

    .line 62
    .line 63
    .line 64
    :cond_4
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/audio/AudioCapabilities;->j(I)Z

    .line 65
    move-result v3

    .line 66
    .line 67
    if-nez v3, :cond_5

    .line 68
    return-object v2

    .line 69
    .line 70
    :cond_5
    iget v3, p1, Landroidx/media3/common/Format;->channelCount:I

    .line 71
    const/4 v4, -0x1

    .line 72
    .line 73
    if-eq v3, v4, :cond_8

    .line 74
    .line 75
    if-ne v0, v1, :cond_6

    .line 76
    goto :goto_1

    .line 77
    .line 78
    :cond_6
    iget-object p1, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 79
    .line 80
    const-string v1, "audio/vnd.dts.uhd;profile=p2"

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    move-result p1

    .line 85
    .line 86
    if-eqz p1, :cond_7

    .line 87
    .line 88
    const/16 p1, 0xa

    .line 89
    .line 90
    if-le v3, p1, :cond_a

    .line 91
    return-object v2

    .line 92
    .line 93
    :cond_7
    iget p1, p0, Landroidx/media3/exoplayer/audio/AudioCapabilities;->maxChannelCount:I

    .line 94
    .line 95
    if-le v3, p1, :cond_a

    .line 96
    return-object v2

    .line 97
    .line 98
    :cond_8
    :goto_1
    iget p1, p1, Landroidx/media3/common/Format;->sampleRate:I

    .line 99
    .line 100
    if-eq p1, v4, :cond_9

    .line 101
    goto :goto_2

    .line 102
    .line 103
    .line 104
    :cond_9
    const p1, 0xbb80

    .line 105
    .line 106
    .line 107
    :goto_2
    invoke-static {v0, p1}, Landroidx/media3/exoplayer/audio/AudioCapabilities;->h(II)I

    .line 108
    move-result v3

    .line 109
    .line 110
    .line 111
    :cond_a
    invoke-static {v3}, Landroidx/media3/exoplayer/audio/AudioCapabilities;->e(I)I

    .line 112
    move-result p1

    .line 113
    .line 114
    if-nez p1, :cond_b

    .line 115
    return-object v2

    .line 116
    .line 117
    .line 118
    :cond_b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    move-result-object v0

    .line 120
    .line 121
    .line 122
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    move-result-object p1

    .line 124
    .line 125
    .line 126
    invoke-static {v0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 127
    move-result-object p1

    .line 128
    return-object p1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Landroidx/media3/exoplayer/audio/AudioCapabilities;->maxChannelCount:I

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/AudioCapabilities;->supportedEncodings:[I

    .line 5
    .line 6
    .line 7
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    .line 8
    move-result v1

    .line 9
    .line 10
    mul-int/lit8 v1, v1, 0x1f

    .line 11
    add-int/2addr v0, v1

    .line 12
    return v0
.end method

.method public i(Landroidx/media3/common/Format;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/audio/AudioCapabilities;->f(Landroidx/media3/common/Format;)Landroid/util/Pair;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    return p1
.end method

.method public j(I)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioCapabilities;->supportedEncodings:[I

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    .line 6
    move-result p1

    .line 7
    .line 8
    if-ltz p1, :cond_0

    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    return p1
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
    const-string v1, "AudioCapabilities[maxChannelCount="

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget v1, p0, Landroidx/media3/exoplayer/audio/AudioCapabilities;->maxChannelCount:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, ", supportedEncodings="

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/AudioCapabilities;->supportedEncodings:[I

    .line 23
    .line 24
    .line 25
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v1, "]"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    return-object v0
.end method
