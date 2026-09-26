.class Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$QualityLevelParser;
.super Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$ElementParser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QualityLevelParser"
.end annotation


# static fields
.field private static final KEY_BITRATE:Ljava/lang/String; = "Bitrate"

.field private static final KEY_CHANNELS:Ljava/lang/String; = "Channels"

.field private static final KEY_CODEC_PRIVATE_DATA:Ljava/lang/String; = "CodecPrivateData"

.field private static final KEY_FOUR_CC:Ljava/lang/String; = "FourCC"

.field private static final KEY_INDEX:Ljava/lang/String; = "Index"

.field private static final KEY_LANGUAGE:Ljava/lang/String; = "Language"

.field private static final KEY_MAX_HEIGHT:Ljava/lang/String; = "MaxHeight"

.field private static final KEY_MAX_WIDTH:Ljava/lang/String; = "MaxWidth"

.field private static final KEY_NAME:Ljava/lang/String; = "Name"

.field private static final KEY_SAMPLING_RATE:Ljava/lang/String; = "SamplingRate"

.field private static final KEY_SUB_TYPE:Ljava/lang/String; = "Subtype"

.field private static final KEY_TYPE:Ljava/lang/String; = "Type"

.field public static final TAG:Ljava/lang/String; = "QualityLevel"


# instance fields
.field private format:Landroidx/media3/common/Format;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$ElementParser;Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "QualityLevel"

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$ElementParser;-><init>(Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$ElementParser;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method private static q(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    move-result v1

    .line 10
    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-static {p0}, Landroidx/media3/common/util/Util;->K(Ljava/lang/String;)[B

    .line 15
    move-result-object p0

    .line 16
    .line 17
    .line 18
    invoke-static {p0}, Landroidx/media3/common/util/CodecSpecificDataUtil;->i([B)[[B

    .line 19
    move-result-object v1

    .line 20
    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    goto :goto_0

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 29
    :cond_1
    :goto_0
    return-object v0
.end method

.method private static r(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string v0, "H264"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_e

    .line 9
    .line 10
    const-string v0, "X264"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_e

    .line 17
    .line 18
    const-string v0, "AVC1"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-nez v0, :cond_e

    .line 25
    .line 26
    const-string v0, "DAVC"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 30
    move-result v0

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    goto/16 :goto_5

    .line 35
    .line 36
    :cond_0
    const-string v0, "AAC"

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 40
    move-result v0

    .line 41
    .line 42
    if-nez v0, :cond_d

    .line 43
    .line 44
    const-string v0, "AACL"

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 48
    move-result v0

    .line 49
    .line 50
    if-nez v0, :cond_d

    .line 51
    .line 52
    const-string v0, "AACH"

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 56
    move-result v0

    .line 57
    .line 58
    if-nez v0, :cond_d

    .line 59
    .line 60
    const-string v0, "AACP"

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 64
    move-result v0

    .line 65
    .line 66
    if-eqz v0, :cond_1

    .line 67
    .line 68
    goto/16 :goto_4

    .line 69
    .line 70
    :cond_1
    const-string v0, "TTML"

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 74
    move-result v0

    .line 75
    .line 76
    if-nez v0, :cond_c

    .line 77
    .line 78
    const-string v0, "DFXP"

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 82
    move-result v0

    .line 83
    .line 84
    if-eqz v0, :cond_2

    .line 85
    goto :goto_3

    .line 86
    .line 87
    :cond_2
    const-string v0, "ac-3"

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 91
    move-result v0

    .line 92
    .line 93
    if-nez v0, :cond_b

    .line 94
    .line 95
    const-string v0, "dac3"

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 99
    move-result v0

    .line 100
    .line 101
    if-eqz v0, :cond_3

    .line 102
    goto :goto_2

    .line 103
    .line 104
    :cond_3
    const-string v0, "ec-3"

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 108
    move-result v0

    .line 109
    .line 110
    if-nez v0, :cond_a

    .line 111
    .line 112
    const-string v0, "dec3"

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 116
    move-result v0

    .line 117
    .line 118
    if-eqz v0, :cond_4

    .line 119
    goto :goto_1

    .line 120
    .line 121
    :cond_4
    const-string v0, "dtsc"

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 125
    move-result v0

    .line 126
    .line 127
    if-eqz v0, :cond_5

    .line 128
    .line 129
    const-string p0, "audio/vnd.dts"

    .line 130
    return-object p0

    .line 131
    .line 132
    :cond_5
    const-string v0, "dtsh"

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 136
    move-result v0

    .line 137
    .line 138
    if-nez v0, :cond_9

    .line 139
    .line 140
    const-string v0, "dtsl"

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 144
    move-result v0

    .line 145
    .line 146
    if-eqz v0, :cond_6

    .line 147
    goto :goto_0

    .line 148
    .line 149
    :cond_6
    const-string v0, "dtse"

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 153
    move-result v0

    .line 154
    .line 155
    if-eqz v0, :cond_7

    .line 156
    .line 157
    const-string p0, "audio/vnd.dts.hd;profile=lbr"

    .line 158
    return-object p0

    .line 159
    .line 160
    .line 161
    :cond_7
    const-string/jumbo v0, "opus"

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 165
    move-result p0

    .line 166
    .line 167
    if-eqz p0, :cond_8

    .line 168
    .line 169
    const-string p0, "audio/opus"

    .line 170
    return-object p0

    .line 171
    :cond_8
    const/4 p0, 0x0

    .line 172
    return-object p0

    .line 173
    .line 174
    :cond_9
    :goto_0
    const-string p0, "audio/vnd.dts.hd"

    .line 175
    return-object p0

    .line 176
    .line 177
    :cond_a
    :goto_1
    const-string p0, "audio/eac3"

    .line 178
    return-object p0

    .line 179
    .line 180
    :cond_b
    :goto_2
    const-string p0, "audio/ac3"

    .line 181
    return-object p0

    .line 182
    .line 183
    :cond_c
    :goto_3
    const-string p0, "application/ttml+xml"

    .line 184
    return-object p0

    .line 185
    .line 186
    :cond_d
    :goto_4
    const-string p0, "audio/mp4a-latm"

    .line 187
    return-object p0

    .line 188
    .line 189
    .line 190
    :cond_e
    :goto_5
    const-string/jumbo p0, "video/avc"

    .line 191
    return-object p0
.end method


# virtual methods
.method public b()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$QualityLevelParser;->format:Landroidx/media3/common/Format;

    return-object v0
.end method

.method public n(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/media3/common/Format$Builder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 6
    .line 7
    const-string v1, "FourCC"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, v1}, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$ElementParser;->m(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-static {v1}, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$QualityLevelParser;->r(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    const-string v2, "Type"

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v2}, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$ElementParser;->c(Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    check-cast v2, Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 27
    move-result v2

    .line 28
    const/4 v3, 0x2

    .line 29
    .line 30
    const-string v4, "CodecPrivateData"

    .line 31
    const/4 v5, 0x0

    .line 32
    .line 33
    if-ne v2, v3, :cond_0

    .line 34
    .line 35
    .line 36
    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    .line 40
    invoke-static {v2}, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$QualityLevelParser;->q(Ljava/lang/String;)Ljava/util/List;

    .line 41
    move-result-object v2

    .line 42
    .line 43
    .line 44
    const-string/jumbo v3, "video/mp4"

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v3}, Landroidx/media3/common/Format$Builder;->M(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 48
    move-result-object v3

    .line 49
    .line 50
    const-string v4, "MaxWidth"

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1, v4}, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$ElementParser;->k(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    .line 54
    move-result v4

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3, v4}, Landroidx/media3/common/Format$Builder;->n0(I)Landroidx/media3/common/Format$Builder;

    .line 58
    move-result-object v3

    .line 59
    .line 60
    const-string v4, "MaxHeight"

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, p1, v4}, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$ElementParser;->k(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    .line 64
    move-result v4

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3, v4}, Landroidx/media3/common/Format$Builder;->S(I)Landroidx/media3/common/Format$Builder;

    .line 68
    move-result-object v3

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3, v2}, Landroidx/media3/common/Format$Builder;->V(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    .line 72
    .line 73
    goto/16 :goto_2

    .line 74
    :cond_0
    const/4 v3, 0x1

    .line 75
    .line 76
    if-ne v2, v3, :cond_3

    .line 77
    .line 78
    const-string v2, "audio/mp4a-latm"

    .line 79
    .line 80
    if-nez v1, :cond_1

    .line 81
    move-object v1, v2

    .line 82
    .line 83
    :cond_1
    const-string v3, "Channels"

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, p1, v3}, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$ElementParser;->k(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    .line 87
    move-result v3

    .line 88
    .line 89
    const-string v6, "SamplingRate"

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, p1, v6}, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$ElementParser;->k(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    .line 93
    move-result v6

    .line 94
    .line 95
    .line 96
    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    move-result-object v4

    .line 98
    .line 99
    .line 100
    invoke-static {v4}, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$QualityLevelParser;->q(Ljava/lang/String;)Ljava/util/List;

    .line 101
    move-result-object v4

    .line 102
    .line 103
    .line 104
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 105
    move-result v7

    .line 106
    .line 107
    if-eqz v7, :cond_2

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    move-result v2

    .line 112
    .line 113
    if-eqz v2, :cond_2

    .line 114
    .line 115
    .line 116
    invoke-static {v6, v3}, Landroidx/media3/extractor/AacUtil;->a(II)[B

    .line 117
    move-result-object v2

    .line 118
    .line 119
    .line 120
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 121
    move-result-object v4

    .line 122
    .line 123
    :cond_2
    const-string v2, "audio/mp4"

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v2}, Landroidx/media3/common/Format$Builder;->M(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 127
    move-result-object v2

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2, v3}, Landroidx/media3/common/Format$Builder;->J(I)Landroidx/media3/common/Format$Builder;

    .line 131
    move-result-object v2

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2, v6}, Landroidx/media3/common/Format$Builder;->h0(I)Landroidx/media3/common/Format$Builder;

    .line 135
    move-result-object v2

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2, v4}, Landroidx/media3/common/Format$Builder;->V(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    .line 139
    goto :goto_2

    .line 140
    :cond_3
    const/4 v3, 0x3

    .line 141
    .line 142
    const-string v4, "application/mp4"

    .line 143
    .line 144
    if-ne v2, v3, :cond_7

    .line 145
    .line 146
    const-string v2, "Subtype"

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0, v2}, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$ElementParser;->c(Ljava/lang/String;)Ljava/lang/Object;

    .line 150
    move-result-object v2

    .line 151
    .line 152
    check-cast v2, Ljava/lang/String;

    .line 153
    .line 154
    if-eqz v2, :cond_6

    .line 155
    .line 156
    const-string v3, "CAPT"

    .line 157
    .line 158
    .line 159
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    move-result v3

    .line 161
    .line 162
    if-nez v3, :cond_5

    .line 163
    .line 164
    const-string v3, "DESC"

    .line 165
    .line 166
    .line 167
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 168
    move-result v2

    .line 169
    .line 170
    if-nez v2, :cond_4

    .line 171
    goto :goto_0

    .line 172
    .line 173
    :cond_4
    const/16 v2, 0x400

    .line 174
    goto :goto_1

    .line 175
    .line 176
    :cond_5
    const/16 v2, 0x40

    .line 177
    goto :goto_1

    .line 178
    :cond_6
    :goto_0
    const/4 v2, 0x0

    .line 179
    .line 180
    .line 181
    :goto_1
    invoke-virtual {v0, v4}, Landroidx/media3/common/Format$Builder;->M(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 182
    move-result-object v3

    .line 183
    .line 184
    .line 185
    invoke-virtual {v3, v2}, Landroidx/media3/common/Format$Builder;->e0(I)Landroidx/media3/common/Format$Builder;

    .line 186
    goto :goto_2

    .line 187
    .line 188
    .line 189
    :cond_7
    invoke-virtual {v0, v4}, Landroidx/media3/common/Format$Builder;->M(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 190
    .line 191
    :goto_2
    const-string v2, "Index"

    .line 192
    .line 193
    .line 194
    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 195
    move-result-object v2

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0, v2}, Landroidx/media3/common/Format$Builder;->U(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 199
    move-result-object v0

    .line 200
    .line 201
    const-string v2, "Name"

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0, v2}, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$ElementParser;->c(Ljava/lang/String;)Ljava/lang/Object;

    .line 205
    move-result-object v2

    .line 206
    .line 207
    check-cast v2, Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0, v2}, Landroidx/media3/common/Format$Builder;->W(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 211
    move-result-object v0

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->g0(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 215
    move-result-object v0

    .line 216
    .line 217
    const-string v1, "Bitrate"

    .line 218
    .line 219
    .line 220
    invoke-virtual {p0, p1, v1}, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$ElementParser;->k(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    .line 221
    move-result p1

    .line 222
    .line 223
    .line 224
    invoke-virtual {v0, p1}, Landroidx/media3/common/Format$Builder;->I(I)Landroidx/media3/common/Format$Builder;

    .line 225
    move-result-object p1

    .line 226
    .line 227
    const-string v0, "Language"

    .line 228
    .line 229
    .line 230
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$ElementParser;->c(Ljava/lang/String;)Ljava/lang/Object;

    .line 231
    move-result-object v0

    .line 232
    .line 233
    check-cast v0, Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    invoke-virtual {p1, v0}, Landroidx/media3/common/Format$Builder;->X(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 237
    move-result-object p1

    .line 238
    .line 239
    .line 240
    invoke-virtual {p1}, Landroidx/media3/common/Format$Builder;->G()Landroidx/media3/common/Format;

    .line 241
    move-result-object p1

    .line 242
    .line 243
    iput-object p1, p0, Landroidx/media3/exoplayer/smoothstreaming/manifest/SsManifestParser$QualityLevelParser;->format:Landroidx/media3/common/Format;

    .line 244
    return-void
.end method
