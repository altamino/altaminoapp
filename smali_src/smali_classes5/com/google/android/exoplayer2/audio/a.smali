.class public final Lcom/google/android/exoplayer2/audio/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/a$b;
    }
.end annotation


# static fields
.field public static final AAC_ELD_MAX_RATE_BYTES_PER_SECOND:I = 0x1f40

.field public static final AAC_HE_AUDIO_SAMPLE_COUNT:I = 0x800

.field public static final AAC_HE_V1_MAX_RATE_BYTES_PER_SECOND:I = 0x3e80

.field public static final AAC_HE_V2_MAX_RATE_BYTES_PER_SECOND:I = 0x1b58

.field public static final AAC_LC_AUDIO_SAMPLE_COUNT:I = 0x400

.field public static final AAC_LC_MAX_RATE_BYTES_PER_SECOND:I = 0x186a0

.field public static final AAC_LD_AUDIO_SAMPLE_COUNT:I = 0x200

.field public static final AAC_XHE_AUDIO_SAMPLE_COUNT:I = 0x400

.field public static final AAC_XHE_MAX_RATE_BYTES_PER_SECOND:I = 0x3e800

.field public static final AUDIO_OBJECT_TYPE_AAC_ELD:I = 0x17

.field public static final AUDIO_OBJECT_TYPE_AAC_ER_BSAC:I = 0x16

.field public static final AUDIO_OBJECT_TYPE_AAC_LC:I = 0x2

.field public static final AUDIO_OBJECT_TYPE_AAC_PS:I = 0x1d

.field public static final AUDIO_OBJECT_TYPE_AAC_SBR:I = 0x5

.field public static final AUDIO_OBJECT_TYPE_AAC_XHE:I = 0x2a

.field private static final AUDIO_OBJECT_TYPE_ESCAPE:I = 0x1f

.field private static final AUDIO_SPECIFIC_CONFIG_CHANNEL_CONFIGURATION_INVALID:I = -0x1

.field private static final AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE:[I

.field private static final AUDIO_SPECIFIC_CONFIG_FREQUENCY_INDEX_ARBITRARY:I = 0xf

.field private static final AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE:[I

.field private static final CODECS_STRING_PREFIX:Ljava/lang/String; = "mp4a.40."

.field private static final TAG:Ljava/lang/String; = "AacUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer2/audio/a;->AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE:[I

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/exoplayer2/audio/a;->AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x17700
        0x15888
        0xfa00
        0xbb80
        0xac44
        0x7d00
        0x5dc0
        0x5622
        0x3e80
        0x2ee0
        0x2b11
        0x1f40
        0x1cb6
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x8
        -0x1
        -0x1
        -0x1
        0x7
        0x8
        -0x1
        0x8
        -0x1
    .end array-data
.end method

.method public static a(III)[B
    .locals 2

    .line 1
    const/4 v0, 0x2

    new-array v0, v0, [B

    shl-int/lit8 p0, p0, 0x3

    and-int/lit16 p0, p0, 0xf8

    shr-int/lit8 v1, p1, 0x1

    and-int/lit8 v1, v1, 0x7

    or-int/2addr p0, v1

    int-to-byte p0, p0

    const/4 v1, 0x0

    aput-byte p0, v0, v1

    shl-int/lit8 p0, p1, 0x7

    and-int/lit16 p0, p0, 0x80

    shl-int/lit8 p1, p2, 0x3

    and-int/lit8 p1, p1, 0x78

    or-int/2addr p0, p1

    int-to-byte p0, p0

    const/4 p1, 0x1

    aput-byte p0, v0, p1

    return-object v0
.end method

.method private static b(Lcom/google/android/exoplayer2/util/b0;)I
    .locals 2

    .line 1
    const/4 v0, 0x5

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/b0;->h(I)I

    .line 5
    move-result v0

    .line 6
    .line 7
    const/16 v1, 0x1f

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    const/4 v0, 0x6

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/b0;->h(I)I

    .line 14
    move-result p0

    .line 15
    .line 16
    add-int/lit8 v0, p0, 0x20

    .line 17
    :cond_0
    return v0
.end method

.method private static c(Lcom/google/android/exoplayer2/util/b0;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/v2;
        }
    .end annotation

    .line 1
    const/4 v0, 0x4

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/b0;->h(I)I

    .line 5
    move-result v0

    .line 6
    .line 7
    const/16 v1, 0xf

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    const/16 v0, 0x18

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/b0;->h(I)I

    .line 15
    move-result p0

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    const/16 p0, 0xd

    .line 19
    .line 20
    if-ge v0, p0, :cond_1

    .line 21
    .line 22
    sget-object p0, Lcom/google/android/exoplayer2/audio/a;->AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE:[I

    .line 23
    .line 24
    aget p0, p0, v0

    .line 25
    :goto_0
    return p0

    .line 26
    :cond_1
    const/4 p0, 0x0

    .line 27
    .line 28
    .line 29
    invoke-static {p0, p0}, Lcom/google/android/exoplayer2/v2;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/v2;

    .line 30
    move-result-object p0

    .line 31
    throw p0
.end method

.method public static d(Lcom/google/android/exoplayer2/util/b0;Z)Lcom/google/android/exoplayer2/audio/a$b;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/v2;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/android/exoplayer2/audio/a;->b(Lcom/google/android/exoplayer2/util/b0;)I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Lcom/google/android/exoplayer2/audio/a;->c(Lcom/google/android/exoplayer2/util/b0;)I

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x4

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/b0;->h(I)I

    .line 13
    move-result v3

    .line 14
    .line 15
    new-instance v4, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    const-string v5, "mp4a.40."

    .line 21
    .line 22
    .line 23
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object v4

    .line 31
    const/4 v5, 0x5

    .line 32
    .line 33
    if-eq v0, v5, :cond_0

    .line 34
    .line 35
    const/16 v5, 0x1d

    .line 36
    .line 37
    if-ne v0, v5, :cond_1

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-static {p0}, Lcom/google/android/exoplayer2/audio/a;->c(Lcom/google/android/exoplayer2/util/b0;)I

    .line 41
    move-result v1

    .line 42
    .line 43
    .line 44
    invoke-static {p0}, Lcom/google/android/exoplayer2/audio/a;->b(Lcom/google/android/exoplayer2/util/b0;)I

    .line 45
    move-result v0

    .line 46
    .line 47
    const/16 v5, 0x16

    .line 48
    .line 49
    if-ne v0, v5, :cond_1

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/b0;->h(I)I

    .line 53
    move-result v3

    .line 54
    .line 55
    :cond_1
    if-eqz p1, :cond_4

    .line 56
    const/4 p1, 0x1

    .line 57
    const/4 v5, 0x3

    .line 58
    const/4 v6, 0x2

    .line 59
    .line 60
    if-eq v0, p1, :cond_2

    .line 61
    .line 62
    if-eq v0, v6, :cond_2

    .line 63
    .line 64
    if-eq v0, v5, :cond_2

    .line 65
    .line 66
    if-eq v0, v2, :cond_2

    .line 67
    const/4 p1, 0x6

    .line 68
    .line 69
    if-eq v0, p1, :cond_2

    .line 70
    const/4 p1, 0x7

    .line 71
    .line 72
    if-eq v0, p1, :cond_2

    .line 73
    .line 74
    const/16 p1, 0x11

    .line 75
    .line 76
    if-eq v0, p1, :cond_2

    .line 77
    .line 78
    .line 79
    packed-switch v0, :pswitch_data_0

    .line 80
    .line 81
    new-instance p0, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    const-string p1, "Unsupported audio object type: "

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    move-result-object p0

    .line 97
    .line 98
    .line 99
    invoke-static {p0}, Lcom/google/android/exoplayer2/v2;->c(Ljava/lang/String;)Lcom/google/android/exoplayer2/v2;

    .line 100
    move-result-object p0

    .line 101
    throw p0

    .line 102
    .line 103
    .line 104
    :cond_2
    :pswitch_0
    invoke-static {p0, v0, v3}, Lcom/google/android/exoplayer2/audio/a;->f(Lcom/google/android/exoplayer2/util/b0;II)V

    .line 105
    .line 106
    .line 107
    packed-switch v0, :pswitch_data_1

    .line 108
    :pswitch_1
    goto :goto_0

    .line 109
    .line 110
    .line 111
    :pswitch_2
    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/util/b0;->h(I)I

    .line 112
    move-result p0

    .line 113
    .line 114
    if-eq p0, v6, :cond_3

    .line 115
    .line 116
    if-eq p0, v5, :cond_3

    .line 117
    goto :goto_0

    .line 118
    .line 119
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    const-string v0, "Unsupported epConfig: "

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    move-result-object p0

    .line 135
    .line 136
    .line 137
    invoke-static {p0}, Lcom/google/android/exoplayer2/v2;->c(Ljava/lang/String;)Lcom/google/android/exoplayer2/v2;

    .line 138
    move-result-object p0

    .line 139
    throw p0

    .line 140
    .line 141
    :cond_4
    :goto_0
    sget-object p0, Lcom/google/android/exoplayer2/audio/a;->AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE:[I

    .line 142
    .line 143
    aget p0, p0, v3

    .line 144
    const/4 p1, -0x1

    .line 145
    const/4 v0, 0x0

    .line 146
    .line 147
    if-eq p0, p1, :cond_5

    .line 148
    .line 149
    new-instance p1, Lcom/google/android/exoplayer2/audio/a$b;

    .line 150
    .line 151
    .line 152
    invoke-direct {p1, v1, p0, v4, v0}, Lcom/google/android/exoplayer2/audio/a$b;-><init>(IILjava/lang/String;Lcom/google/android/exoplayer2/audio/a$a;)V

    .line 153
    return-object p1

    .line 154
    .line 155
    .line 156
    :cond_5
    invoke-static {v0, v0}, Lcom/google/android/exoplayer2/v2;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/v2;

    .line 157
    move-result-object p0

    .line 158
    throw p0

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
    .line 169
    .line 170
    .line 171
    .line 172
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    :pswitch_data_1
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static e([B)Lcom/google/android/exoplayer2/audio/a$b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/v2;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/util/b0;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/util/b0;-><init>([B)V

    .line 6
    const/4 p0, 0x0

    .line 7
    .line 8
    .line 9
    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/audio/a;->d(Lcom/google/android/exoplayer2/util/b0;Z)Lcom/google/android/exoplayer2/audio/a$b;

    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private static f(Lcom/google/android/exoplayer2/util/b0;II)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/b0;->g()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string v0, "AacUtil"

    .line 9
    .line 10
    const-string v1, "Unexpected frameLengthFlag = 1"

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/t;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/b0;->g()Z

    .line 17
    move-result v0

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    const/16 v0, 0xe

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/b0;->r(I)V

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/b0;->g()Z

    .line 28
    move-result v0

    .line 29
    .line 30
    if-eqz p2, :cond_8

    .line 31
    const/4 p2, 0x6

    .line 32
    const/4 v1, 0x3

    .line 33
    .line 34
    const/16 v2, 0x14

    .line 35
    .line 36
    if-eq p1, p2, :cond_2

    .line 37
    .line 38
    if-ne p1, v2, :cond_3

    .line 39
    .line 40
    .line 41
    :cond_2
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/b0;->r(I)V

    .line 42
    .line 43
    :cond_3
    if-eqz v0, :cond_7

    .line 44
    .line 45
    const/16 p2, 0x16

    .line 46
    .line 47
    if-ne p1, p2, :cond_4

    .line 48
    .line 49
    const/16 p2, 0x10

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/util/b0;->r(I)V

    .line 53
    .line 54
    :cond_4
    const/16 p2, 0x11

    .line 55
    .line 56
    if-eq p1, p2, :cond_5

    .line 57
    .line 58
    const/16 p2, 0x13

    .line 59
    .line 60
    if-eq p1, p2, :cond_5

    .line 61
    .line 62
    if-eq p1, v2, :cond_5

    .line 63
    .line 64
    const/16 p2, 0x17

    .line 65
    .line 66
    if-ne p1, p2, :cond_6

    .line 67
    .line 68
    .line 69
    :cond_5
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/b0;->r(I)V

    .line 70
    :cond_6
    const/4 p1, 0x1

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/b0;->r(I)V

    .line 74
    :cond_7
    return-void

    .line 75
    .line 76
    :cond_8
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 77
    .line 78
    .line 79
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 80
    throw p0
.end method
