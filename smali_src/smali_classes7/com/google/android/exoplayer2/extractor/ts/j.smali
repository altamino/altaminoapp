.class public final Lcom/google/android/exoplayer2/extractor/ts/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ts/i0$c;


# static fields
.field private static final DESCRIPTOR_TAG_CAPTION_SERVICE:I = 0x86

.field public static final FLAG_ALLOW_NON_IDR_KEYFRAMES:I = 0x1

.field public static final FLAG_DETECT_ACCESS_UNITS:I = 0x8

.field public static final FLAG_ENABLE_HDMV_DTS_AUDIO_STREAMS:I = 0x40

.field public static final FLAG_IGNORE_AAC_STREAM:I = 0x2

.field public static final FLAG_IGNORE_H264_STREAM:I = 0x4

.field public static final FLAG_IGNORE_SPLICE_INFO_STREAM:I = 0x10

.field public static final FLAG_OVERRIDE_CAPTION_DESCRIPTORS:I = 0x20


# instance fields
.field private final closedCaptionFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/a2;",
            ">;"
        }
    .end annotation
.end field

.field private final flags:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/ts/j;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-static {}, Lcom/google/common/collect/a0;->x()Lcom/google/common/collect/a0;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/extractor/ts/j;-><init>(ILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/a2;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/j;->flags:I

    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/j;->closedCaptionFormats:Ljava/util/List;

    return-void
.end method

.method private b(Lcom/google/android/exoplayer2/extractor/ts/i0$b;)Lcom/google/android/exoplayer2/extractor/ts/d0;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/d0;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/j;->d(Lcom/google/android/exoplayer2/extractor/ts/i0$b;)Ljava/util/List;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/extractor/ts/d0;-><init>(Ljava/util/List;)V

    .line 10
    return-object v0
.end method

.method private c(Lcom/google/android/exoplayer2/extractor/ts/i0$b;)Lcom/google/android/exoplayer2/extractor/ts/k0;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/k0;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/j;->d(Lcom/google/android/exoplayer2/extractor/ts/i0$b;)Ljava/util/List;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/extractor/ts/k0;-><init>(Ljava/util/List;)V

    .line 10
    return-object v0
.end method

.method private d(Lcom/google/android/exoplayer2/extractor/ts/i0$b;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/extractor/ts/i0$b;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/a2;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    const/16 v0, 0x20

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/ts/j;->e(I)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/j;->closedCaptionFormats:Ljava/util/List;

    .line 11
    return-object p1

    .line 12
    .line 13
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/util/c0;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/ts/i0$b;->descriptorBytes:[B

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/util/c0;-><init>([B)V

    .line 19
    .line 20
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/j;->closedCaptionFormats:Ljava/util/List;

    .line 21
    .line 22
    .line 23
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/c0;->a()I

    .line 24
    move-result v1

    .line 25
    .line 26
    if-lez v1, :cond_6

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/c0;->D()I

    .line 30
    move-result v1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/c0;->D()I

    .line 34
    move-result v2

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/c0;->e()I

    .line 38
    move-result v3

    .line 39
    add-int/2addr v3, v2

    .line 40
    .line 41
    const/16 v2, 0x86

    .line 42
    .line 43
    if-ne v1, v2, :cond_5

    .line 44
    .line 45
    new-instance p1, Ljava/util/ArrayList;

    .line 46
    .line 47
    .line 48
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/c0;->D()I

    .line 52
    move-result v1

    .line 53
    .line 54
    and-int/lit8 v1, v1, 0x1f

    .line 55
    const/4 v2, 0x0

    .line 56
    move v4, v2

    .line 57
    .line 58
    :goto_1
    if-ge v4, v1, :cond_5

    .line 59
    const/4 v5, 0x3

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/c0;->A(I)Ljava/lang/String;

    .line 63
    move-result-object v5

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/c0;->D()I

    .line 67
    move-result v6

    .line 68
    .line 69
    and-int/lit16 v7, v6, 0x80

    .line 70
    const/4 v8, 0x1

    .line 71
    .line 72
    if-eqz v7, :cond_1

    .line 73
    move v7, v8

    .line 74
    goto :goto_2

    .line 75
    :cond_1
    move v7, v2

    .line 76
    .line 77
    :goto_2
    if-eqz v7, :cond_2

    .line 78
    .line 79
    and-int/lit8 v6, v6, 0x3f

    .line 80
    .line 81
    const-string v9, "application/cea-708"

    .line 82
    goto :goto_3

    .line 83
    .line 84
    :cond_2
    const-string v9, "application/cea-608"

    .line 85
    move v6, v8

    .line 86
    .line 87
    .line 88
    :goto_3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/c0;->D()I

    .line 89
    move-result v10

    .line 90
    int-to-byte v10, v10

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/c0;->Q(I)V

    .line 94
    .line 95
    if-eqz v7, :cond_4

    .line 96
    .line 97
    and-int/lit8 v7, v10, 0x40

    .line 98
    .line 99
    if-eqz v7, :cond_3

    .line 100
    goto :goto_4

    .line 101
    :cond_3
    move v8, v2

    .line 102
    .line 103
    .line 104
    :goto_4
    invoke-static {v8}, Lcom/google/android/exoplayer2/util/e;->b(Z)Ljava/util/List;

    .line 105
    move-result-object v7

    .line 106
    goto :goto_5

    .line 107
    :cond_4
    const/4 v7, 0x0

    .line 108
    .line 109
    :goto_5
    new-instance v8, Lcom/google/android/exoplayer2/a2$b;

    .line 110
    .line 111
    .line 112
    invoke-direct {v8}, Lcom/google/android/exoplayer2/a2$b;-><init>()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v8, v9}, Lcom/google/android/exoplayer2/a2$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/a2$b;

    .line 116
    move-result-object v8

    .line 117
    .line 118
    .line 119
    invoke-virtual {v8, v5}, Lcom/google/android/exoplayer2/a2$b;->V(Ljava/lang/String;)Lcom/google/android/exoplayer2/a2$b;

    .line 120
    move-result-object v5

    .line 121
    .line 122
    .line 123
    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/a2$b;->F(I)Lcom/google/android/exoplayer2/a2$b;

    .line 124
    move-result-object v5

    .line 125
    .line 126
    .line 127
    invoke-virtual {v5, v7}, Lcom/google/android/exoplayer2/a2$b;->T(Ljava/util/List;)Lcom/google/android/exoplayer2/a2$b;

    .line 128
    move-result-object v5

    .line 129
    .line 130
    .line 131
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/a2$b;->E()Lcom/google/android/exoplayer2/a2;

    .line 132
    move-result-object v5

    .line 133
    .line 134
    .line 135
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    .line 137
    add-int/lit8 v4, v4, 0x1

    .line 138
    goto :goto_1

    .line 139
    .line 140
    .line 141
    :cond_5
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/c0;->P(I)V

    .line 142
    goto :goto_0

    .line 143
    :cond_6
    return-object p1
.end method

.method private e(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/j;->flags:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public a(ILcom/google/android/exoplayer2/extractor/ts/i0$b;)Lcom/google/android/exoplayer2/extractor/ts/i0;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    if-eq p1, v0, :cond_e

    .line 4
    const/4 v1, 0x3

    .line 5
    .line 6
    if-eq p1, v1, :cond_d

    .line 7
    const/4 v1, 0x4

    .line 8
    .line 9
    if-eq p1, v1, :cond_d

    .line 10
    .line 11
    const/16 v2, 0x15

    .line 12
    .line 13
    if-eq p1, v2, :cond_c

    .line 14
    .line 15
    const/16 v2, 0x1b

    .line 16
    const/4 v3, 0x0

    .line 17
    .line 18
    if-eq p1, v2, :cond_a

    .line 19
    .line 20
    const/16 v1, 0x24

    .line 21
    .line 22
    if-eq p1, v1, :cond_9

    .line 23
    .line 24
    const/16 v1, 0x59

    .line 25
    .line 26
    if-eq p1, v1, :cond_8

    .line 27
    .line 28
    const/16 v1, 0x8a

    .line 29
    .line 30
    if-eq p1, v1, :cond_7

    .line 31
    .line 32
    const/16 v1, 0xac

    .line 33
    .line 34
    if-eq p1, v1, :cond_6

    .line 35
    .line 36
    const/16 v1, 0x101

    .line 37
    .line 38
    if-eq p1, v1, :cond_5

    .line 39
    .line 40
    const/16 v1, 0x86

    .line 41
    .line 42
    if-eq p1, v1, :cond_3

    .line 43
    .line 44
    const/16 v1, 0x87

    .line 45
    .line 46
    if-eq p1, v1, :cond_2

    .line 47
    .line 48
    .line 49
    packed-switch p1, :pswitch_data_0

    .line 50
    .line 51
    .line 52
    packed-switch p1, :pswitch_data_1

    .line 53
    return-object v3

    .line 54
    .line 55
    :pswitch_0
    const/16 p1, 0x40

    .line 56
    .line 57
    .line 58
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/j;->e(I)Z

    .line 59
    move-result p1

    .line 60
    .line 61
    if-nez p1, :cond_7

    .line 62
    return-object v3

    .line 63
    .line 64
    .line 65
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/ts/j;->e(I)Z

    .line 66
    move-result p1

    .line 67
    .line 68
    if-eqz p1, :cond_0

    .line 69
    goto :goto_0

    .line 70
    .line 71
    :cond_0
    new-instance v3, Lcom/google/android/exoplayer2/extractor/ts/w;

    .line 72
    .line 73
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/s;

    .line 74
    .line 75
    iget-object p2, p2, Lcom/google/android/exoplayer2/extractor/ts/i0$b;->language:Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/extractor/ts/s;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-direct {v3, p1}, Lcom/google/android/exoplayer2/extractor/ts/w;-><init>(Lcom/google/android/exoplayer2/extractor/ts/m;)V

    .line 82
    :goto_0
    return-object v3

    .line 83
    .line 84
    :pswitch_2
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/w;

    .line 85
    .line 86
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/o;

    .line 87
    .line 88
    .line 89
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/extractor/ts/j;->c(Lcom/google/android/exoplayer2/extractor/ts/i0$b;)Lcom/google/android/exoplayer2/extractor/ts/k0;

    .line 90
    move-result-object p2

    .line 91
    .line 92
    .line 93
    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/extractor/ts/o;-><init>(Lcom/google/android/exoplayer2/extractor/ts/k0;)V

    .line 94
    .line 95
    .line 96
    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/extractor/ts/w;-><init>(Lcom/google/android/exoplayer2/extractor/ts/m;)V

    .line 97
    return-object p1

    .line 98
    .line 99
    .line 100
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/ts/j;->e(I)Z

    .line 101
    move-result p1

    .line 102
    .line 103
    if-eqz p1, :cond_1

    .line 104
    goto :goto_1

    .line 105
    .line 106
    :cond_1
    new-instance v3, Lcom/google/android/exoplayer2/extractor/ts/w;

    .line 107
    .line 108
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/i;

    .line 109
    const/4 v0, 0x0

    .line 110
    .line 111
    iget-object p2, p2, Lcom/google/android/exoplayer2/extractor/ts/i0$b;->language:Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    invoke-direct {p1, v0, p2}, Lcom/google/android/exoplayer2/extractor/ts/i;-><init>(ZLjava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-direct {v3, p1}, Lcom/google/android/exoplayer2/extractor/ts/w;-><init>(Lcom/google/android/exoplayer2/extractor/ts/m;)V

    .line 118
    :goto_1
    return-object v3

    .line 119
    .line 120
    :cond_2
    :pswitch_4
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/w;

    .line 121
    .line 122
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/c;

    .line 123
    .line 124
    iget-object p2, p2, Lcom/google/android/exoplayer2/extractor/ts/i0$b;->language:Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/extractor/ts/c;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/extractor/ts/w;-><init>(Lcom/google/android/exoplayer2/extractor/ts/m;)V

    .line 131
    return-object p1

    .line 132
    .line 133
    :cond_3
    const/16 p1, 0x10

    .line 134
    .line 135
    .line 136
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/j;->e(I)Z

    .line 137
    move-result p1

    .line 138
    .line 139
    if-eqz p1, :cond_4

    .line 140
    goto :goto_2

    .line 141
    .line 142
    :cond_4
    new-instance v3, Lcom/google/android/exoplayer2/extractor/ts/c0;

    .line 143
    .line 144
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/v;

    .line 145
    .line 146
    const-string p2, "application/x-scte35"

    .line 147
    .line 148
    .line 149
    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/extractor/ts/v;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-direct {v3, p1}, Lcom/google/android/exoplayer2/extractor/ts/c0;-><init>(Lcom/google/android/exoplayer2/extractor/ts/b0;)V

    .line 153
    :goto_2
    return-object v3

    .line 154
    .line 155
    :cond_5
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/c0;

    .line 156
    .line 157
    new-instance p2, Lcom/google/android/exoplayer2/extractor/ts/v;

    .line 158
    .line 159
    const-string v0, "application/vnd.dvb.ait"

    .line 160
    .line 161
    .line 162
    invoke-direct {p2, v0}, Lcom/google/android/exoplayer2/extractor/ts/v;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/extractor/ts/c0;-><init>(Lcom/google/android/exoplayer2/extractor/ts/b0;)V

    .line 166
    return-object p1

    .line 167
    .line 168
    :cond_6
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/w;

    .line 169
    .line 170
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/f;

    .line 171
    .line 172
    iget-object p2, p2, Lcom/google/android/exoplayer2/extractor/ts/i0$b;->language:Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/extractor/ts/f;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/extractor/ts/w;-><init>(Lcom/google/android/exoplayer2/extractor/ts/m;)V

    .line 179
    return-object p1

    .line 180
    .line 181
    :cond_7
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/w;

    .line 182
    .line 183
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/k;

    .line 184
    .line 185
    iget-object p2, p2, Lcom/google/android/exoplayer2/extractor/ts/i0$b;->language:Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/extractor/ts/k;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/extractor/ts/w;-><init>(Lcom/google/android/exoplayer2/extractor/ts/m;)V

    .line 192
    return-object p1

    .line 193
    .line 194
    :cond_8
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/w;

    .line 195
    .line 196
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/l;

    .line 197
    .line 198
    iget-object p2, p2, Lcom/google/android/exoplayer2/extractor/ts/i0$b;->dvbSubtitleInfos:Ljava/util/List;

    .line 199
    .line 200
    .line 201
    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/extractor/ts/l;-><init>(Ljava/util/List;)V

    .line 202
    .line 203
    .line 204
    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/extractor/ts/w;-><init>(Lcom/google/android/exoplayer2/extractor/ts/m;)V

    .line 205
    return-object p1

    .line 206
    .line 207
    :cond_9
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/w;

    .line 208
    .line 209
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/q;

    .line 210
    .line 211
    .line 212
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/extractor/ts/j;->b(Lcom/google/android/exoplayer2/extractor/ts/i0$b;)Lcom/google/android/exoplayer2/extractor/ts/d0;

    .line 213
    move-result-object p2

    .line 214
    .line 215
    .line 216
    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/extractor/ts/q;-><init>(Lcom/google/android/exoplayer2/extractor/ts/d0;)V

    .line 217
    .line 218
    .line 219
    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/extractor/ts/w;-><init>(Lcom/google/android/exoplayer2/extractor/ts/m;)V

    .line 220
    return-object p1

    .line 221
    .line 222
    .line 223
    :cond_a
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/extractor/ts/j;->e(I)Z

    .line 224
    move-result p1

    .line 225
    .line 226
    if-eqz p1, :cond_b

    .line 227
    goto :goto_3

    .line 228
    .line 229
    :cond_b
    new-instance v3, Lcom/google/android/exoplayer2/extractor/ts/w;

    .line 230
    .line 231
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/p;

    .line 232
    .line 233
    .line 234
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/extractor/ts/j;->b(Lcom/google/android/exoplayer2/extractor/ts/i0$b;)Lcom/google/android/exoplayer2/extractor/ts/d0;

    .line 235
    move-result-object p2

    .line 236
    const/4 v0, 0x1

    .line 237
    .line 238
    .line 239
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/ts/j;->e(I)Z

    .line 240
    move-result v0

    .line 241
    .line 242
    const/16 v1, 0x8

    .line 243
    .line 244
    .line 245
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/extractor/ts/j;->e(I)Z

    .line 246
    move-result v1

    .line 247
    .line 248
    .line 249
    invoke-direct {p1, p2, v0, v1}, Lcom/google/android/exoplayer2/extractor/ts/p;-><init>(Lcom/google/android/exoplayer2/extractor/ts/d0;ZZ)V

    .line 250
    .line 251
    .line 252
    invoke-direct {v3, p1}, Lcom/google/android/exoplayer2/extractor/ts/w;-><init>(Lcom/google/android/exoplayer2/extractor/ts/m;)V

    .line 253
    :goto_3
    return-object v3

    .line 254
    .line 255
    :cond_c
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/w;

    .line 256
    .line 257
    new-instance p2, Lcom/google/android/exoplayer2/extractor/ts/r;

    .line 258
    .line 259
    .line 260
    invoke-direct {p2}, Lcom/google/android/exoplayer2/extractor/ts/r;-><init>()V

    .line 261
    .line 262
    .line 263
    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/extractor/ts/w;-><init>(Lcom/google/android/exoplayer2/extractor/ts/m;)V

    .line 264
    return-object p1

    .line 265
    .line 266
    :cond_d
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/w;

    .line 267
    .line 268
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/t;

    .line 269
    .line 270
    iget-object p2, p2, Lcom/google/android/exoplayer2/extractor/ts/i0$b;->language:Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/extractor/ts/t;-><init>(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/extractor/ts/w;-><init>(Lcom/google/android/exoplayer2/extractor/ts/m;)V

    .line 277
    return-object p1

    .line 278
    .line 279
    :cond_e
    :pswitch_5
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/w;

    .line 280
    .line 281
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/n;

    .line 282
    .line 283
    .line 284
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/extractor/ts/j;->c(Lcom/google/android/exoplayer2/extractor/ts/i0$b;)Lcom/google/android/exoplayer2/extractor/ts/k0;

    .line 285
    move-result-object p2

    .line 286
    .line 287
    .line 288
    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/extractor/ts/n;-><init>(Lcom/google/android/exoplayer2/extractor/ts/k0;)V

    .line 289
    .line 290
    .line 291
    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/extractor/ts/w;-><init>(Lcom/google/android/exoplayer2/extractor/ts/m;)V

    .line 292
    return-object p1

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x80
        :pswitch_5
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method public createInitialPayloadReaders()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/extractor/ts/i0;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroid/util/SparseArray;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 6
    return-object v0
.end method
