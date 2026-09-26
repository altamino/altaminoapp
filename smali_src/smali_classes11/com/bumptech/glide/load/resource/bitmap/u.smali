.class public final Lcom/bumptech/glide/load/resource/bitmap/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FD_SIZE_LIST:Ljava/io/File;

.field private static final MAXIMUM_FDS_FOR_HARDWARE_CONFIGS_O:I = 0x2bc

.field private static final MAXIMUM_FDS_FOR_HARDWARE_CONFIGS_P:I = 0x4e20

.field private static final MINIMUM_DECODES_BETWEEN_FD_CHECKS:I = 0x32

.field static final MIN_HARDWARE_DIMENSION_O:I = 0x80
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final MIN_HARDWARE_DIMENSION_P:I

.field private static volatile instance:Lcom/bumptech/glide/load/resource/bitmap/u;


# instance fields
.field private decodesSinceLastFdCheck:I
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation
.end field

.field private final fdCountLimit:I

.field private isFdSizeBelowHardwareLimit:Z
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation
.end field

.field private final isHardwareConfigAllowedByDeviceModel:Z

.field private final minHardwareDimension:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/io/File;

    .line 3
    .line 4
    const-string v1, "/proc/self/fd"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/u;->FD_SIZE_LIST:Ljava/io/File;

    .line 10
    return-void
.end method

.method constructor <init>()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/bitmap/u;->isFdSizeBelowHardwareLimit:Z

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/u;->d()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/bitmap/u;->isHardwareConfigAllowedByDeviceModel:Z

    .line 13
    .line 14
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 15
    .line 16
    const/16 v1, 0x1c

    .line 17
    .line 18
    if-lt v0, v1, :cond_0

    .line 19
    .line 20
    const/16 v0, 0x4e20

    .line 21
    .line 22
    iput v0, p0, Lcom/bumptech/glide/load/resource/bitmap/u;->fdCountLimit:I

    .line 23
    const/4 v0, 0x0

    .line 24
    .line 25
    iput v0, p0, Lcom/bumptech/glide/load/resource/bitmap/u;->minHardwareDimension:I

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_0
    const/16 v0, 0x2bc

    .line 29
    .line 30
    iput v0, p0, Lcom/bumptech/glide/load/resource/bitmap/u;->fdCountLimit:I

    .line 31
    .line 32
    const/16 v0, 0x80

    .line 33
    .line 34
    iput v0, p0, Lcom/bumptech/glide/load/resource/bitmap/u;->minHardwareDimension:I

    .line 35
    :goto_0
    return-void
.end method

.method public static a()Lcom/bumptech/glide/load/resource/bitmap/u;
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/u;->instance:Lcom/bumptech/glide/load/resource/bitmap/u;

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    const-class v0, Lcom/bumptech/glide/load/resource/bitmap/u;

    .line 7
    monitor-enter v0

    .line 8
    .line 9
    :try_start_0
    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/u;->instance:Lcom/bumptech/glide/load/resource/bitmap/u;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/u;

    .line 14
    .line 15
    .line 16
    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/u;-><init>()V

    .line 17
    .line 18
    sput-object v1, Lcom/bumptech/glide/load/resource/bitmap/u;->instance:Lcom/bumptech/glide/load/resource/bitmap/u;

    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0

    .line 23
    goto :goto_2

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v1

    .line 26
    .line 27
    :cond_1
    :goto_2
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/u;->instance:Lcom/bumptech/glide/load/resource/bitmap/u;

    .line 28
    return-object v0
.end method

.method private declared-synchronized b()Z
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/u;->decodesSinceLastFdCheck:I

    .line 4
    const/4 v1, 0x1

    .line 5
    add-int/2addr v0, v1

    .line 6
    .line 7
    iput v0, p0, Lcom/bumptech/glide/load/resource/bitmap/u;->decodesSinceLastFdCheck:I

    .line 8
    .line 9
    const/16 v2, 0x32

    .line 10
    .line 11
    if-lt v0, v2, :cond_1

    .line 12
    const/4 v0, 0x0

    .line 13
    .line 14
    iput v0, p0, Lcom/bumptech/glide/load/resource/bitmap/u;->decodesSinceLastFdCheck:I

    .line 15
    .line 16
    sget-object v2, Lcom/bumptech/glide/load/resource/bitmap/u;->FD_SIZE_LIST:Ljava/io/File;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 20
    move-result-object v2

    .line 21
    array-length v2, v2

    .line 22
    .line 23
    iget v3, p0, Lcom/bumptech/glide/load/resource/bitmap/u;->fdCountLimit:I

    .line 24
    .line 25
    if-ge v2, v3, :cond_0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v1, v0

    .line 28
    .line 29
    :goto_0
    iput-boolean v1, p0, Lcom/bumptech/glide/load/resource/bitmap/u;->isFdSizeBelowHardwareLimit:Z

    .line 30
    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    const-string v0, "Downsampler"

    .line 34
    const/4 v1, 0x5

    .line 35
    .line 36
    .line 37
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 38
    move-result v0

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    const-string v0, "Downsampler"

    .line 43
    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    const-string v3, "Excluding HARDWARE bitmap config because we\'re over the file descriptor limit, file descriptors "

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v2, ", limit "

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/u;->fdCountLimit:I

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object v1

    .line 70
    .line 71
    .line 72
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    goto :goto_1

    .line 74
    :catchall_0
    move-exception v0

    .line 75
    goto :goto_2

    .line 76
    .line 77
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/bitmap/u;->isFdSizeBelowHardwareLimit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    monitor-exit p0

    .line 79
    return v0

    .line 80
    :goto_2
    monitor-exit p0

    .line 81
    throw v0
.end method

.method private static d()Z
    .locals 5

    .line 1
    .line 2
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-eqz v0, :cond_9

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 9
    move-result v2

    .line 10
    const/4 v3, 0x7

    .line 11
    .line 12
    if-ge v2, v3, :cond_0

    .line 13
    .line 14
    goto/16 :goto_1

    .line 15
    :cond_0
    const/4 v2, 0x0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 26
    move-result v3

    .line 27
    const/4 v4, -0x1

    .line 28
    .line 29
    .line 30
    sparse-switch v3, :sswitch_data_0

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :sswitch_0
    const-string v3, "SM-N935"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    move-result v0

    .line 38
    .line 39
    if-nez v0, :cond_1

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 v4, 0x6

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :sswitch_1
    const-string v3, "SM-J720"

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    move-result v0

    .line 49
    .line 50
    if-nez v0, :cond_2

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    const/4 v4, 0x5

    .line 53
    goto :goto_0

    .line 54
    .line 55
    :sswitch_2
    const-string v3, "SM-G965"

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    move-result v0

    .line 60
    .line 61
    if-nez v0, :cond_3

    .line 62
    goto :goto_0

    .line 63
    :cond_3
    const/4 v4, 0x4

    .line 64
    goto :goto_0

    .line 65
    .line 66
    :sswitch_3
    const-string v3, "SM-G960"

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    move-result v0

    .line 71
    .line 72
    if-nez v0, :cond_4

    .line 73
    goto :goto_0

    .line 74
    :cond_4
    const/4 v4, 0x3

    .line 75
    goto :goto_0

    .line 76
    .line 77
    :sswitch_4
    const-string v3, "SM-G935"

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    move-result v0

    .line 82
    .line 83
    if-nez v0, :cond_5

    .line 84
    goto :goto_0

    .line 85
    :cond_5
    const/4 v4, 0x2

    .line 86
    goto :goto_0

    .line 87
    .line 88
    :sswitch_5
    const-string v3, "SM-G930"

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    move-result v0

    .line 93
    .line 94
    if-nez v0, :cond_6

    .line 95
    goto :goto_0

    .line 96
    :cond_6
    move v4, v1

    .line 97
    goto :goto_0

    .line 98
    .line 99
    :sswitch_6
    const-string v3, "SM-A520"

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    move-result v0

    .line 104
    .line 105
    if-nez v0, :cond_7

    .line 106
    goto :goto_0

    .line 107
    :cond_7
    move v4, v2

    .line 108
    .line 109
    .line 110
    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 111
    return v1

    .line 112
    .line 113
    :pswitch_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 114
    .line 115
    const/16 v3, 0x1a

    .line 116
    .line 117
    if-eq v0, v3, :cond_8

    .line 118
    goto :goto_1

    .line 119
    :cond_8
    move v1, v2

    .line 120
    :cond_9
    :goto_1
    return v1

    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    :sswitch_data_0
    .sparse-switch
        -0x535d271b -> :sswitch_6
        -0x535a5dbe -> :sswitch_5
        -0x535a5db9 -> :sswitch_4
        -0x535a5d61 -> :sswitch_3
        -0x535a5d5c -> :sswitch_2
        -0x53590842 -> :sswitch_1
        -0x53572f20 -> :sswitch_0
    .end sparse-switch

    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public c(IIZZ)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p3, :cond_1

    .line 4
    .line 5
    iget-boolean p3, p0, Lcom/bumptech/glide/load/resource/bitmap/u;->isHardwareConfigAllowedByDeviceModel:Z

    .line 6
    .line 7
    if-eqz p3, :cond_1

    .line 8
    .line 9
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    .line 11
    const/16 v1, 0x1a

    .line 12
    .line 13
    if-lt p3, v1, :cond_1

    .line 14
    .line 15
    if-eqz p4, :cond_0

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    iget p3, p0, Lcom/bumptech/glide/load/resource/bitmap/u;->minHardwareDimension:I

    .line 19
    .line 20
    if-lt p1, p3, :cond_1

    .line 21
    .line 22
    if-lt p2, p3, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/bitmap/u;->b()Z

    .line 26
    move-result p1

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    const/4 v0, 0x1

    .line 30
    :cond_1
    :goto_0
    return v0
.end method

.method e(IILandroid/graphics/BitmapFactory$Options;ZZ)Z
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/bumptech/glide/load/resource/bitmap/u;->c(IIZZ)Z

    .line 4
    move-result p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {}, Landroidx/compose/ui/graphics/f0;->a()Landroid/graphics/Bitmap$Config;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    iput-object p2, p3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 13
    const/4 p2, 0x0

    .line 14
    .line 15
    iput-boolean p2, p3, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 16
    :cond_0
    return p1
.end method
