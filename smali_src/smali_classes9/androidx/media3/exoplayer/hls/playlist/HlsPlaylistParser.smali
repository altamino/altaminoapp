.class public final Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;,
        Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$DeltaUpdateException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser<",
        "Landroidx/media3/exoplayer/hls/playlist/HlsPlaylist;",
        ">;"
    }
.end annotation


# static fields
.field private static final ATTR_CLOSED_CAPTIONS_NONE:Ljava/lang/String; = "CLOSED-CAPTIONS=NONE"

.field private static final BOOLEAN_FALSE:Ljava/lang/String; = "NO"

.field private static final BOOLEAN_TRUE:Ljava/lang/String; = "YES"

.field private static final KEYFORMAT_IDENTITY:Ljava/lang/String; = "identity"

.field private static final KEYFORMAT_PLAYREADY:Ljava/lang/String; = "com.microsoft.playready"

.field private static final KEYFORMAT_WIDEVINE_PSSH_BINARY:Ljava/lang/String; = "urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed"

.field private static final KEYFORMAT_WIDEVINE_PSSH_JSON:Ljava/lang/String; = "com.widevine"

.field private static final LOG_TAG:Ljava/lang/String; = "HlsPlaylistParser"

.field private static final METHOD_AES_128:Ljava/lang/String; = "AES-128"

.field private static final METHOD_NONE:Ljava/lang/String; = "NONE"

.field private static final METHOD_SAMPLE_AES:Ljava/lang/String; = "SAMPLE-AES"

.field private static final METHOD_SAMPLE_AES_CENC:Ljava/lang/String; = "SAMPLE-AES-CENC"

.field private static final METHOD_SAMPLE_AES_CTR:Ljava/lang/String; = "SAMPLE-AES-CTR"

.field private static final PLAYLIST_HEADER:Ljava/lang/String; = "#EXTM3U"

.field private static final REGEX_ATTR_BYTERANGE:Ljava/util/regex/Pattern;

.field private static final REGEX_ATTR_DURATION:Ljava/util/regex/Pattern;

.field private static final REGEX_AUDIO:Ljava/util/regex/Pattern;

.field private static final REGEX_AUTOSELECT:Ljava/util/regex/Pattern;

.field private static final REGEX_AVERAGE_BANDWIDTH:Ljava/util/regex/Pattern;

.field private static final REGEX_BANDWIDTH:Ljava/util/regex/Pattern;

.field private static final REGEX_BYTERANGE:Ljava/util/regex/Pattern;

.field private static final REGEX_BYTERANGE_LENGTH:Ljava/util/regex/Pattern;

.field private static final REGEX_BYTERANGE_START:Ljava/util/regex/Pattern;

.field private static final REGEX_CAN_BLOCK_RELOAD:Ljava/util/regex/Pattern;

.field private static final REGEX_CAN_SKIP_DATE_RANGES:Ljava/util/regex/Pattern;

.field private static final REGEX_CAN_SKIP_UNTIL:Ljava/util/regex/Pattern;

.field private static final REGEX_CHANNELS:Ljava/util/regex/Pattern;

.field private static final REGEX_CHARACTERISTICS:Ljava/util/regex/Pattern;

.field private static final REGEX_CLOSED_CAPTIONS:Ljava/util/regex/Pattern;

.field private static final REGEX_CODECS:Ljava/util/regex/Pattern;

.field private static final REGEX_DEFAULT:Ljava/util/regex/Pattern;

.field private static final REGEX_FORCED:Ljava/util/regex/Pattern;

.field private static final REGEX_FRAME_RATE:Ljava/util/regex/Pattern;

.field private static final REGEX_GAP:Ljava/util/regex/Pattern;

.field private static final REGEX_GROUP_ID:Ljava/util/regex/Pattern;

.field private static final REGEX_HOLD_BACK:Ljava/util/regex/Pattern;

.field private static final REGEX_IMPORT:Ljava/util/regex/Pattern;

.field private static final REGEX_INDEPENDENT:Ljava/util/regex/Pattern;

.field private static final REGEX_INSTREAM_ID:Ljava/util/regex/Pattern;

.field private static final REGEX_IV:Ljava/util/regex/Pattern;

.field private static final REGEX_KEYFORMAT:Ljava/util/regex/Pattern;

.field private static final REGEX_KEYFORMATVERSIONS:Ljava/util/regex/Pattern;

.field private static final REGEX_LANGUAGE:Ljava/util/regex/Pattern;

.field private static final REGEX_LAST_MSN:Ljava/util/regex/Pattern;

.field private static final REGEX_LAST_PART:Ljava/util/regex/Pattern;

.field private static final REGEX_MEDIA_DURATION:Ljava/util/regex/Pattern;

.field private static final REGEX_MEDIA_SEQUENCE:Ljava/util/regex/Pattern;

.field private static final REGEX_MEDIA_TITLE:Ljava/util/regex/Pattern;

.field private static final REGEX_METHOD:Ljava/util/regex/Pattern;

.field private static final REGEX_NAME:Ljava/util/regex/Pattern;

.field private static final REGEX_PART_HOLD_BACK:Ljava/util/regex/Pattern;

.field private static final REGEX_PART_TARGET_DURATION:Ljava/util/regex/Pattern;

.field private static final REGEX_PLAYLIST_TYPE:Ljava/util/regex/Pattern;

.field private static final REGEX_PRECISE:Ljava/util/regex/Pattern;

.field private static final REGEX_PRELOAD_HINT_TYPE:Ljava/util/regex/Pattern;

.field private static final REGEX_RESOLUTION:Ljava/util/regex/Pattern;

.field private static final REGEX_SKIPPED_SEGMENTS:Ljava/util/regex/Pattern;

.field private static final REGEX_SUBTITLES:Ljava/util/regex/Pattern;

.field private static final REGEX_TARGET_DURATION:Ljava/util/regex/Pattern;

.field private static final REGEX_TIME_OFFSET:Ljava/util/regex/Pattern;

.field private static final REGEX_TYPE:Ljava/util/regex/Pattern;

.field private static final REGEX_URI:Ljava/util/regex/Pattern;

.field private static final REGEX_VALUE:Ljava/util/regex/Pattern;

.field private static final REGEX_VARIABLE_REFERENCE:Ljava/util/regex/Pattern;

.field private static final REGEX_VERSION:Ljava/util/regex/Pattern;

.field private static final REGEX_VIDEO:Ljava/util/regex/Pattern;

.field private static final TAG_BYTERANGE:Ljava/lang/String; = "#EXT-X-BYTERANGE"

.field private static final TAG_DEFINE:Ljava/lang/String; = "#EXT-X-DEFINE"

.field private static final TAG_DISCONTINUITY:Ljava/lang/String; = "#EXT-X-DISCONTINUITY"

.field private static final TAG_DISCONTINUITY_SEQUENCE:Ljava/lang/String; = "#EXT-X-DISCONTINUITY-SEQUENCE"

.field private static final TAG_ENDLIST:Ljava/lang/String; = "#EXT-X-ENDLIST"

.field private static final TAG_GAP:Ljava/lang/String; = "#EXT-X-GAP"

.field private static final TAG_IFRAME:Ljava/lang/String; = "#EXT-X-I-FRAMES-ONLY"

.field private static final TAG_INDEPENDENT_SEGMENTS:Ljava/lang/String; = "#EXT-X-INDEPENDENT-SEGMENTS"

.field private static final TAG_INIT_SEGMENT:Ljava/lang/String; = "#EXT-X-MAP"

.field private static final TAG_I_FRAME_STREAM_INF:Ljava/lang/String; = "#EXT-X-I-FRAME-STREAM-INF"

.field private static final TAG_KEY:Ljava/lang/String; = "#EXT-X-KEY"

.field private static final TAG_MEDIA:Ljava/lang/String; = "#EXT-X-MEDIA"

.field private static final TAG_MEDIA_DURATION:Ljava/lang/String; = "#EXTINF"

.field private static final TAG_MEDIA_SEQUENCE:Ljava/lang/String; = "#EXT-X-MEDIA-SEQUENCE"

.field private static final TAG_PART:Ljava/lang/String; = "#EXT-X-PART"

.field private static final TAG_PART_INF:Ljava/lang/String; = "#EXT-X-PART-INF"

.field private static final TAG_PLAYLIST_TYPE:Ljava/lang/String; = "#EXT-X-PLAYLIST-TYPE"

.field private static final TAG_PREFIX:Ljava/lang/String; = "#EXT"

.field private static final TAG_PRELOAD_HINT:Ljava/lang/String; = "#EXT-X-PRELOAD-HINT"

.field private static final TAG_PROGRAM_DATE_TIME:Ljava/lang/String; = "#EXT-X-PROGRAM-DATE-TIME"

.field private static final TAG_RENDITION_REPORT:Ljava/lang/String; = "#EXT-X-RENDITION-REPORT"

.field private static final TAG_SERVER_CONTROL:Ljava/lang/String; = "#EXT-X-SERVER-CONTROL"

.field private static final TAG_SESSION_KEY:Ljava/lang/String; = "#EXT-X-SESSION-KEY"

.field private static final TAG_SKIP:Ljava/lang/String; = "#EXT-X-SKIP"

.field private static final TAG_START:Ljava/lang/String; = "#EXT-X-START"

.field private static final TAG_STREAM_INF:Ljava/lang/String; = "#EXT-X-STREAM-INF"

.field private static final TAG_TARGET_DURATION:Ljava/lang/String; = "#EXT-X-TARGETDURATION"

.field private static final TAG_VERSION:Ljava/lang/String; = "#EXT-X-VERSION"

.field private static final TYPE_AUDIO:Ljava/lang/String; = "AUDIO"

.field private static final TYPE_CLOSED_CAPTIONS:Ljava/lang/String; = "CLOSED-CAPTIONS"

.field private static final TYPE_MAP:Ljava/lang/String; = "MAP"

.field private static final TYPE_PART:Ljava/lang/String; = "PART"

.field private static final TYPE_SUBTITLES:Ljava/lang/String; = "SUBTITLES"

.field private static final TYPE_VIDEO:Ljava/lang/String; = "VIDEO"


# instance fields
.field private final multivariantPlaylist:Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;

.field private final previousMediaPlaylist:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    const-string v0, "AVERAGE-BANDWIDTH=(\\d+)\\b"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_AVERAGE_BANDWIDTH:Ljava/util/regex/Pattern;

    .line 9
    .line 10
    const-string v0, "VIDEO=\"(.+?)\""

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_VIDEO:Ljava/util/regex/Pattern;

    .line 17
    .line 18
    const-string v0, "AUDIO=\"(.+?)\""

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_AUDIO:Ljava/util/regex/Pattern;

    .line 25
    .line 26
    const-string v0, "SUBTITLES=\"(.+?)\""

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_SUBTITLES:Ljava/util/regex/Pattern;

    .line 33
    .line 34
    const-string v0, "CLOSED-CAPTIONS=\"(.+?)\""

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CLOSED_CAPTIONS:Ljava/util/regex/Pattern;

    .line 41
    .line 42
    const-string v0, "[^-]BANDWIDTH=(\\d+)\\b"

    .line 43
    .line 44
    .line 45
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_BANDWIDTH:Ljava/util/regex/Pattern;

    .line 49
    .line 50
    const-string v0, "CHANNELS=\"(.+?)\""

    .line 51
    .line 52
    .line 53
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CHANNELS:Ljava/util/regex/Pattern;

    .line 57
    .line 58
    const-string v0, "CODECS=\"(.+?)\""

    .line 59
    .line 60
    .line 61
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CODECS:Ljava/util/regex/Pattern;

    .line 65
    .line 66
    const-string v0, "RESOLUTION=(\\d+x\\d+)"

    .line 67
    .line 68
    .line 69
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 70
    move-result-object v0

    .line 71
    .line 72
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_RESOLUTION:Ljava/util/regex/Pattern;

    .line 73
    .line 74
    const-string v0, "FRAME-RATE=([\\d\\.]+)\\b"

    .line 75
    .line 76
    .line 77
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 78
    move-result-object v0

    .line 79
    .line 80
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_FRAME_RATE:Ljava/util/regex/Pattern;

    .line 81
    .line 82
    const-string v0, "#EXT-X-TARGETDURATION:(\\d+)\\b"

    .line 83
    .line 84
    .line 85
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 86
    move-result-object v0

    .line 87
    .line 88
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_TARGET_DURATION:Ljava/util/regex/Pattern;

    .line 89
    .line 90
    const-string v0, "DURATION=([\\d\\.]+)\\b"

    .line 91
    .line 92
    .line 93
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 94
    move-result-object v0

    .line 95
    .line 96
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_ATTR_DURATION:Ljava/util/regex/Pattern;

    .line 97
    .line 98
    const-string v0, "PART-TARGET=([\\d\\.]+)\\b"

    .line 99
    .line 100
    .line 101
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 102
    move-result-object v0

    .line 103
    .line 104
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_PART_TARGET_DURATION:Ljava/util/regex/Pattern;

    .line 105
    .line 106
    const-string v0, "#EXT-X-VERSION:(\\d+)\\b"

    .line 107
    .line 108
    .line 109
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 110
    move-result-object v0

    .line 111
    .line 112
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_VERSION:Ljava/util/regex/Pattern;

    .line 113
    .line 114
    const-string v0, "#EXT-X-PLAYLIST-TYPE:(.+)\\b"

    .line 115
    .line 116
    .line 117
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 118
    move-result-object v0

    .line 119
    .line 120
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_PLAYLIST_TYPE:Ljava/util/regex/Pattern;

    .line 121
    .line 122
    const-string v0, "CAN-SKIP-UNTIL=([\\d\\.]+)\\b"

    .line 123
    .line 124
    .line 125
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 126
    move-result-object v0

    .line 127
    .line 128
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CAN_SKIP_UNTIL:Ljava/util/regex/Pattern;

    .line 129
    .line 130
    const-string v0, "CAN-SKIP-DATERANGES"

    .line 131
    .line 132
    .line 133
    invoke-static {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 134
    move-result-object v0

    .line 135
    .line 136
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CAN_SKIP_DATE_RANGES:Ljava/util/regex/Pattern;

    .line 137
    .line 138
    const-string v0, "SKIPPED-SEGMENTS=(\\d+)\\b"

    .line 139
    .line 140
    .line 141
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 142
    move-result-object v0

    .line 143
    .line 144
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_SKIPPED_SEGMENTS:Ljava/util/regex/Pattern;

    .line 145
    .line 146
    const-string v0, "[:|,]HOLD-BACK=([\\d\\.]+)\\b"

    .line 147
    .line 148
    .line 149
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 150
    move-result-object v0

    .line 151
    .line 152
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_HOLD_BACK:Ljava/util/regex/Pattern;

    .line 153
    .line 154
    const-string v0, "PART-HOLD-BACK=([\\d\\.]+)\\b"

    .line 155
    .line 156
    .line 157
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 158
    move-result-object v0

    .line 159
    .line 160
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_PART_HOLD_BACK:Ljava/util/regex/Pattern;

    .line 161
    .line 162
    const-string v0, "CAN-BLOCK-RELOAD"

    .line 163
    .line 164
    .line 165
    invoke-static {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 166
    move-result-object v0

    .line 167
    .line 168
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CAN_BLOCK_RELOAD:Ljava/util/regex/Pattern;

    .line 169
    .line 170
    const-string v0, "#EXT-X-MEDIA-SEQUENCE:(\\d+)\\b"

    .line 171
    .line 172
    .line 173
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 174
    move-result-object v0

    .line 175
    .line 176
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_MEDIA_SEQUENCE:Ljava/util/regex/Pattern;

    .line 177
    .line 178
    const-string v0, "#EXTINF:([\\d\\.]+)\\b"

    .line 179
    .line 180
    .line 181
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 182
    move-result-object v0

    .line 183
    .line 184
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_MEDIA_DURATION:Ljava/util/regex/Pattern;

    .line 185
    .line 186
    const-string v0, "#EXTINF:[\\d\\.]+\\b,(.+)"

    .line 187
    .line 188
    .line 189
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 190
    move-result-object v0

    .line 191
    .line 192
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_MEDIA_TITLE:Ljava/util/regex/Pattern;

    .line 193
    .line 194
    const-string v0, "LAST-MSN=(\\d+)\\b"

    .line 195
    .line 196
    .line 197
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 198
    move-result-object v0

    .line 199
    .line 200
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_LAST_MSN:Ljava/util/regex/Pattern;

    .line 201
    .line 202
    const-string v0, "LAST-PART=(\\d+)\\b"

    .line 203
    .line 204
    .line 205
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 206
    move-result-object v0

    .line 207
    .line 208
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_LAST_PART:Ljava/util/regex/Pattern;

    .line 209
    .line 210
    const-string v0, "TIME-OFFSET=(-?[\\d\\.]+)\\b"

    .line 211
    .line 212
    .line 213
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 214
    move-result-object v0

    .line 215
    .line 216
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_TIME_OFFSET:Ljava/util/regex/Pattern;

    .line 217
    .line 218
    const-string v0, "#EXT-X-BYTERANGE:(\\d+(?:@\\d+)?)\\b"

    .line 219
    .line 220
    .line 221
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 222
    move-result-object v0

    .line 223
    .line 224
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_BYTERANGE:Ljava/util/regex/Pattern;

    .line 225
    .line 226
    const-string v0, "BYTERANGE=\"(\\d+(?:@\\d+)?)\\b\""

    .line 227
    .line 228
    .line 229
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 230
    move-result-object v0

    .line 231
    .line 232
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_ATTR_BYTERANGE:Ljava/util/regex/Pattern;

    .line 233
    .line 234
    const-string v0, "BYTERANGE-START=(\\d+)\\b"

    .line 235
    .line 236
    .line 237
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 238
    move-result-object v0

    .line 239
    .line 240
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_BYTERANGE_START:Ljava/util/regex/Pattern;

    .line 241
    .line 242
    const-string v0, "BYTERANGE-LENGTH=(\\d+)\\b"

    .line 243
    .line 244
    .line 245
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 246
    move-result-object v0

    .line 247
    .line 248
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_BYTERANGE_LENGTH:Ljava/util/regex/Pattern;

    .line 249
    .line 250
    const-string v0, "METHOD=(NONE|AES-128|SAMPLE-AES|SAMPLE-AES-CENC|SAMPLE-AES-CTR)\\s*(?:,|$)"

    .line 251
    .line 252
    .line 253
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 254
    move-result-object v0

    .line 255
    .line 256
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_METHOD:Ljava/util/regex/Pattern;

    .line 257
    .line 258
    const-string v0, "KEYFORMAT=\"(.+?)\""

    .line 259
    .line 260
    .line 261
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 262
    move-result-object v0

    .line 263
    .line 264
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_KEYFORMAT:Ljava/util/regex/Pattern;

    .line 265
    .line 266
    const-string v0, "KEYFORMATVERSIONS=\"(.+?)\""

    .line 267
    .line 268
    .line 269
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 270
    move-result-object v0

    .line 271
    .line 272
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_KEYFORMATVERSIONS:Ljava/util/regex/Pattern;

    .line 273
    .line 274
    const-string v0, "URI=\"(.+?)\""

    .line 275
    .line 276
    .line 277
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 278
    move-result-object v0

    .line 279
    .line 280
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    .line 281
    .line 282
    const-string v0, "IV=([^,.*]+)"

    .line 283
    .line 284
    .line 285
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 286
    move-result-object v0

    .line 287
    .line 288
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_IV:Ljava/util/regex/Pattern;

    .line 289
    .line 290
    const-string v0, "TYPE=(AUDIO|VIDEO|SUBTITLES|CLOSED-CAPTIONS)"

    .line 291
    .line 292
    .line 293
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 294
    move-result-object v0

    .line 295
    .line 296
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_TYPE:Ljava/util/regex/Pattern;

    .line 297
    .line 298
    const-string v0, "TYPE=(PART|MAP)"

    .line 299
    .line 300
    .line 301
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 302
    move-result-object v0

    .line 303
    .line 304
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_PRELOAD_HINT_TYPE:Ljava/util/regex/Pattern;

    .line 305
    .line 306
    const-string v0, "LANGUAGE=\"(.+?)\""

    .line 307
    .line 308
    .line 309
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 310
    move-result-object v0

    .line 311
    .line 312
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_LANGUAGE:Ljava/util/regex/Pattern;

    .line 313
    .line 314
    const-string v0, "NAME=\"(.+?)\""

    .line 315
    .line 316
    .line 317
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 318
    move-result-object v0

    .line 319
    .line 320
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_NAME:Ljava/util/regex/Pattern;

    .line 321
    .line 322
    const-string v0, "GROUP-ID=\"(.+?)\""

    .line 323
    .line 324
    .line 325
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 326
    move-result-object v0

    .line 327
    .line 328
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_GROUP_ID:Ljava/util/regex/Pattern;

    .line 329
    .line 330
    const-string v0, "CHARACTERISTICS=\"(.+?)\""

    .line 331
    .line 332
    .line 333
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 334
    move-result-object v0

    .line 335
    .line 336
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CHARACTERISTICS:Ljava/util/regex/Pattern;

    .line 337
    .line 338
    const-string v0, "INSTREAM-ID=\"((?:CC|SERVICE)\\d+)\""

    .line 339
    .line 340
    .line 341
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 342
    move-result-object v0

    .line 343
    .line 344
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_INSTREAM_ID:Ljava/util/regex/Pattern;

    .line 345
    .line 346
    const-string v0, "AUTOSELECT"

    .line 347
    .line 348
    .line 349
    invoke-static {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 350
    move-result-object v0

    .line 351
    .line 352
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_AUTOSELECT:Ljava/util/regex/Pattern;

    .line 353
    .line 354
    const-string v0, "DEFAULT"

    .line 355
    .line 356
    .line 357
    invoke-static {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 358
    move-result-object v0

    .line 359
    .line 360
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_DEFAULT:Ljava/util/regex/Pattern;

    .line 361
    .line 362
    const-string v0, "FORCED"

    .line 363
    .line 364
    .line 365
    invoke-static {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 366
    move-result-object v0

    .line 367
    .line 368
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_FORCED:Ljava/util/regex/Pattern;

    .line 369
    .line 370
    const-string v0, "INDEPENDENT"

    .line 371
    .line 372
    .line 373
    invoke-static {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 374
    move-result-object v0

    .line 375
    .line 376
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_INDEPENDENT:Ljava/util/regex/Pattern;

    .line 377
    .line 378
    const-string v0, "GAP"

    .line 379
    .line 380
    .line 381
    invoke-static {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 382
    move-result-object v0

    .line 383
    .line 384
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_GAP:Ljava/util/regex/Pattern;

    .line 385
    .line 386
    const-string v0, "PRECISE"

    .line 387
    .line 388
    .line 389
    invoke-static {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 390
    move-result-object v0

    .line 391
    .line 392
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_PRECISE:Ljava/util/regex/Pattern;

    .line 393
    .line 394
    const-string v0, "VALUE=\"(.+?)\""

    .line 395
    .line 396
    .line 397
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 398
    move-result-object v0

    .line 399
    .line 400
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_VALUE:Ljava/util/regex/Pattern;

    .line 401
    .line 402
    const-string v0, "IMPORT=\"(.+?)\""

    .line 403
    .line 404
    .line 405
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 406
    move-result-object v0

    .line 407
    .line 408
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_IMPORT:Ljava/util/regex/Pattern;

    .line 409
    .line 410
    const-string v0, "\\{\\$([a-zA-Z0-9\\-_]+)\\}"

    .line 411
    .line 412
    .line 413
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 414
    move-result-object v0

    .line 415
    .line 416
    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_VARIABLE_REFERENCE:Ljava/util/regex/Pattern;

    .line 417
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->EMPTY:Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;-><init>(Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;)V
    .locals 0
    .param p2    # Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->multivariantPlaylist:Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;

    iput-object p2, p0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->previousMediaPlaylist:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    return-void
.end method

.method private static A(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_VARIABLE_REFERENCE:Ljava/util/regex/Pattern;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuffer;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 12
    .line 13
    .line 14
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    .line 15
    move-result v1

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    const/4 v1, 0x1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 26
    move-result v2

    .line 27
    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    .line 31
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    check-cast v1, Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    invoke-static {v1}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0, v1}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 42
    goto :goto_0

    .line 43
    .line 44
    .line 45
    :cond_1
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 49
    move-result-object p0

    .line 50
    return-object p0
.end method

.method private static B(Ljava/io/BufferedReader;ZI)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :goto_0
    const/4 v0, -0x1

    .line 2
    .line 3
    if-eq p2, v0, :cond_1

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Ljava/lang/Character;->isWhitespace(I)Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-static {p2}, Landroidx/media3/common/util/Util;->D0(I)Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    .line 21
    move-result p2

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    return p2
.end method

.method private static a(Ljava/io/BufferedReader;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    .line 4
    move-result v0

    .line 5
    .line 6
    const/16 v1, 0xef

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-ne v0, v1, :cond_2

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    .line 13
    move-result v0

    .line 14
    .line 15
    const/16 v1, 0xbb

    .line 16
    .line 17
    if-ne v0, v1, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    .line 21
    move-result v0

    .line 22
    .line 23
    const/16 v1, 0xbf

    .line 24
    .line 25
    if-eq v0, v1, :cond_0

    .line 26
    goto :goto_0

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    .line 30
    move-result v0

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    return v2

    .line 33
    :cond_2
    :goto_1
    const/4 v1, 0x1

    .line 34
    .line 35
    .line 36
    invoke-static {p0, v1, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->B(Ljava/io/BufferedReader;ZI)I

    .line 37
    move-result v0

    .line 38
    move v1, v2

    .line 39
    :goto_2
    const/4 v3, 0x7

    .line 40
    .line 41
    if-ge v1, v3, :cond_4

    .line 42
    .line 43
    const-string v3, "#EXTM3U"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    .line 47
    move-result v3

    .line 48
    .line 49
    if-eq v0, v3, :cond_3

    .line 50
    return v2

    .line 51
    .line 52
    .line 53
    :cond_3
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    .line 54
    move-result v0

    .line 55
    .line 56
    add-int/lit8 v1, v1, 0x1

    .line 57
    goto :goto_2

    .line 58
    .line 59
    .line 60
    :cond_4
    invoke-static {p0, v2, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->B(Ljava/io/BufferedReader;ZI)I

    .line 61
    move-result p0

    .line 62
    .line 63
    .line 64
    invoke-static {p0}, Landroidx/media3/common/util/Util;->D0(I)Z

    .line 65
    move-result p0

    .line 66
    return p0
.end method

.method private static b(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string p0, "=("

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string p0, "NO"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string/jumbo p0, "|"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string p0, "YES"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string p0, ")"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object p0

    .line 39
    .line 40
    .line 41
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 42
    move-result-object p0

    .line 43
    return-object p0
.end method

.method private static c(Ljava/lang/String;[Landroidx/media3/common/DrmInitData$SchemeData;)Landroidx/media3/common/DrmInitData;
    .locals 4
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    array-length v0, p1

    .line 2
    .line 3
    new-array v0, v0, [Landroidx/media3/common/DrmInitData$SchemeData;

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    array-length v2, p1

    .line 6
    .line 7
    if-ge v1, v2, :cond_0

    .line 8
    .line 9
    aget-object v2, p1, v1

    .line 10
    const/4 v3, 0x0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2, v3}, Landroidx/media3/common/DrmInitData$SchemeData;->c([B)Landroidx/media3/common/DrmInitData$SchemeData;

    .line 14
    move-result-object v2

    .line 15
    .line 16
    aput-object v2, v0, v1

    .line 17
    .line 18
    add-int/lit8 v1, v1, 0x1

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance p1, Landroidx/media3/common/DrmInitData;

    .line 22
    .line 23
    .line 24
    invoke-direct {p1, p0, v0}, Landroidx/media3/common/DrmInitData;-><init>(Ljava/lang/String;[Landroidx/media3/common/DrmInitData$SchemeData;)V

    .line 25
    return-object p1
.end method

.method private static d(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    .line 6
    :cond_0
    if-eqz p3, :cond_1

    .line 7
    return-object p3

    .line 8
    .line 9
    .line 10
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method private static e(Ljava/util/ArrayList;Ljava/lang/String;)Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 5
    move-result v1

    .line 6
    .line 7
    if-ge v0, v1, :cond_1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    check-cast v1, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;

    .line 14
    .line 15
    iget-object v2, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->audioGroupId:Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result v2

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    return-object v1

    .line 23
    .line 24
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 p0, 0x0

    .line 27
    return-object p0
.end method

.method private static f(Ljava/util/ArrayList;Ljava/lang/String;)Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 5
    move-result v1

    .line 6
    .line 7
    if-ge v0, v1, :cond_1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    check-cast v1, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;

    .line 14
    .line 15
    iget-object v2, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->subtitleGroupId:Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result v2

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    return-object v1

    .line 23
    .line 24
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 p0, 0x0

    .line 27
    return-object p0
.end method

.method private static g(Ljava/util/ArrayList;Ljava/lang/String;)Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 5
    move-result v1

    .line 6
    .line 7
    if-ge v0, v1, :cond_1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    check-cast v1, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;

    .line 14
    .line 15
    iget-object v2, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->videoGroupId:Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result v2

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    return-object v1

    .line 23
    .line 24
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 p0, 0x0

    .line 27
    return-object p0
.end method

.method private static i(Ljava/lang/String;Ljava/util/regex/Pattern;)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {p0, p1, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->y(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 12
    move-result-wide p0

    .line 13
    return-wide p0
.end method

.method private static j(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroidx/media3/common/DrmInitData$SchemeData;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/media3/common/DrmInitData$SchemeData;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_KEYFORMATVERSIONS:Ljava/util/regex/Pattern;

    .line 3
    .line 4
    const-string v1, "1"

    .line 5
    .line 6
    .line 7
    invoke-static {p0, v0, v1, p2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->t(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    const-string/jumbo v2, "urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    move-result v2

    .line 16
    const/4 v3, 0x0

    .line 17
    .line 18
    const/16 v4, 0x2c

    .line 19
    .line 20
    .line 21
    const-string/jumbo v5, "video/mp4"

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    sget-object p1, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    .line 26
    .line 27
    .line 28
    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->y(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 30
    .line 31
    new-instance p1, Landroidx/media3/common/DrmInitData$SchemeData;

    .line 32
    .line 33
    sget-object p2, Landroidx/media3/common/C;->WIDEVINE_UUID:Ljava/util/UUID;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    .line 37
    move-result v0

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 41
    move-result-object p0

    .line 42
    .line 43
    .line 44
    invoke-static {p0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 45
    move-result-object p0

    .line 46
    .line 47
    .line 48
    invoke-direct {p1, p2, v5, p0}, Landroidx/media3/common/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    .line 49
    return-object p1

    .line 50
    .line 51
    :cond_0
    const-string v2, "com.widevine"

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    move-result v2

    .line 56
    .line 57
    if-eqz v2, :cond_1

    .line 58
    .line 59
    new-instance p1, Landroidx/media3/common/DrmInitData$SchemeData;

    .line 60
    .line 61
    sget-object p2, Landroidx/media3/common/C;->WIDEVINE_UUID:Ljava/util/UUID;

    .line 62
    .line 63
    const-string v0, "hls"

    .line 64
    .line 65
    .line 66
    invoke-static {p0}, Landroidx/media3/common/util/Util;->q0(Ljava/lang/String;)[B

    .line 67
    move-result-object p0

    .line 68
    .line 69
    .line 70
    invoke-direct {p1, p2, v0, p0}, Landroidx/media3/common/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    .line 71
    return-object p1

    .line 72
    .line 73
    :cond_1
    const-string v2, "com.microsoft.playready"

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    move-result p1

    .line 78
    .line 79
    if-eqz p1, :cond_2

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    move-result p1

    .line 84
    .line 85
    if-eqz p1, :cond_2

    .line 86
    .line 87
    sget-object p1, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    .line 88
    .line 89
    .line 90
    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->y(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 91
    move-result-object p0

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    .line 95
    move-result p1

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 99
    move-result-object p0

    .line 100
    .line 101
    .line 102
    invoke-static {p0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 103
    move-result-object p0

    .line 104
    .line 105
    sget-object p1, Landroidx/media3/common/C;->PLAYREADY_UUID:Ljava/util/UUID;

    .line 106
    .line 107
    .line 108
    invoke-static {p1, p0}, Landroidx/media3/extractor/mp4/PsshAtomUtil;->a(Ljava/util/UUID;[B)[B

    .line 109
    move-result-object p0

    .line 110
    .line 111
    new-instance p2, Landroidx/media3/common/DrmInitData$SchemeData;

    .line 112
    .line 113
    .line 114
    invoke-direct {p2, p1, v5, p0}, Landroidx/media3/common/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    .line 115
    return-object p2

    .line 116
    :cond_2
    const/4 p0, 0x0

    .line 117
    return-object p0
.end method

.method private static k(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    const-string v0, "SAMPLE-AES-CENC"

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    const-string v0, "SAMPLE-AES-CTR"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result p0

    .line 15
    .line 16
    if-eqz p0, :cond_0

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    const-string p0, "cbcs"

    .line 20
    goto :goto_1

    .line 21
    .line 22
    :cond_1
    :goto_0
    const-string p0, "cenc"

    .line 23
    :goto_1
    return-object p0
.end method

.method private static l(Ljava/lang/String;Ljava/util/regex/Pattern;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {p0, p1, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->y(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method private static m(Ljava/lang/String;Ljava/util/regex/Pattern;)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {p0, p1, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->y(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 12
    move-result-wide p0

    .line 13
    return-wide p0
.end method

.method private static n(Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;Ljava/lang/String;)Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;
    .locals 92
    .param p1    # Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-boolean v2, v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylist;->hasIndependentSegments:Z

    .line 2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 3
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 4
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 7
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 8
    new-instance v7, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;

    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v19, 0x0

    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v22, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v24, 0x0

    move-object/from16 v16, v7

    invoke-direct/range {v16 .. v24}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;-><init>(JZJJZ)V

    .line 9
    new-instance v9, Ljava/util/TreeMap;

    invoke-direct {v9}, Ljava/util/TreeMap;-><init>()V

    const/4 v10, 0x0

    const-string v13, ""

    move-object/from16 v20, v13

    move/from16 v35, v2

    move-object/from16 v56, v7

    move v2, v10

    move/from16 v23, v2

    move/from16 v26, v23

    move/from16 v27, v26

    move/from16 v36, v27

    move/from16 v54, v36

    move/from16 v79, v54

    move/from16 v84, v79

    move-object/from16 v41, v20

    const/4 v14, 0x0

    const-wide v21, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v24, 0x0

    const-wide/16 v28, 0x0

    const/16 v30, 0x1

    const-wide v31, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v33, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v37, 0x0

    const-wide/16 v39, 0x0

    const/16 v50, 0x0

    const-wide/16 v51, 0x0

    const-wide/16 v75, -0x1

    const/16 v77, 0x0

    const/16 v78, 0x0

    const-wide/16 v80, 0x0

    const-wide/16 v82, 0x0

    const/16 v85, 0x0

    const-wide/16 v86, 0x0

    const-wide/16 v88, 0x0

    move-object v7, v5

    const/4 v5, 0x0

    .line 10
    :cond_0
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;->a()Z

    move-result v42

    if-eqz v42, :cond_43

    .line 11
    invoke-virtual/range {p2 .. p2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;->b()Ljava/lang/String;

    move-result-object v13

    const-string v12, "#EXT"

    .line 12
    invoke-virtual {v13, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 13
    invoke-interface {v8, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v12, "#EXT-X-PLAYLIST-TYPE"

    .line 14
    invoke-virtual {v13, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    sget-object v12, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_PLAYLIST_TYPE:Ljava/util/regex/Pattern;

    .line 15
    invoke-static {v13, v12, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->y(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "VOD"

    .line 16
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const-string v13, "EVENT"

    .line 17
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_3
    const-string v12, "#EXT-X-I-FRAMES-ONLY"

    .line 18
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    const/16 v84, 0x1

    goto :goto_0

    :cond_4
    const-string v12, "#EXT-X-START"

    .line 19
    invoke-virtual {v13, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    const-wide v43, 0x412e848000000000L    # 1000000.0

    if-eqz v12, :cond_5

    sget-object v12, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_TIME_OFFSET:Ljava/util/regex/Pattern;

    .line 20
    invoke-static {v13, v12}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->i(Ljava/lang/String;Ljava/util/regex/Pattern;)D

    move-result-wide v21

    mul-double v11, v21, v43

    double-to-long v11, v11

    move-wide/from16 v21, v11

    sget-object v11, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_PRECISE:Ljava/util/regex/Pattern;

    .line 21
    invoke-static {v13, v11, v10}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->p(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result v23

    goto :goto_0

    :cond_5
    const-string v11, "#EXT-X-SERVER-CONTROL"

    .line 22
    invoke-virtual {v13, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 23
    invoke-static {v13}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->x(Ljava/lang/String;)Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;

    move-result-object v56

    goto :goto_0

    :cond_6
    const-string v11, "#EXT-X-PART-INF"

    .line 24
    invoke-virtual {v13, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    sget-object v11, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_PART_TARGET_DURATION:Ljava/util/regex/Pattern;

    .line 25
    invoke-static {v13, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->i(Ljava/lang/String;Ljava/util/regex/Pattern;)D

    move-result-wide v11

    mul-double v11, v11, v43

    double-to-long v11, v11

    move-wide/from16 v33, v11

    goto/16 :goto_0

    :cond_7
    const-string v11, "#EXT-X-MAP"

    .line 26
    invoke-virtual {v13, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    const-string v12, "@"

    if-eqz v11, :cond_d

    sget-object v11, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    .line 27
    invoke-static {v13, v11, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->y(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v43

    sget-object v11, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_ATTR_BYTERANGE:Ljava/util/regex/Pattern;

    .line 28
    invoke-static {v13, v11, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->u(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_8

    .line 29
    invoke-static {v11, v12}, Landroidx/media3/common/util/Util;->d1(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 30
    aget-object v12, v11, v10

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v75

    .line 31
    array-length v12, v11

    const/4 v13, 0x1

    if-le v12, v13, :cond_8

    .line 32
    aget-object v11, v11, v13

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    move-wide/from16 v39, v11

    :cond_8
    const-wide/16 v11, -0x1

    cmp-long v13, v75, v11

    if-nez v13, :cond_9

    const-wide/16 v39, 0x0

    :cond_9
    move-object/from16 v11, v77

    if-eqz v14, :cond_a

    if-eqz v11, :cond_b

    :cond_a
    const/4 v12, 0x0

    goto :goto_1

    :cond_b
    const-string v0, "The encryption IV attribute must be present when an initialization segment is encrypted with METHOD=AES-128."

    const/4 v12, 0x0

    .line 33
    invoke-static {v0, v12}, Landroidx/media3/common/ParserException;->c(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    .line 34
    :goto_1
    new-instance v85, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    move-object/from16 v42, v85

    move-wide/from16 v44, v39

    move-wide/from16 v46, v75

    move-object/from16 v48, v14

    move-object/from16 v49, v11

    invoke-direct/range {v42 .. v49}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;-><init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    if-eqz v13, :cond_c

    add-long v39, v39, v75

    :cond_c
    move-object/from16 v77, v11

    const-wide/16 v75, -0x1

    goto/16 :goto_0

    :cond_d
    move-object/from16 v11, v77

    const/16 v77, 0x0

    const-string v10, "#EXT-X-TARGETDURATION"

    .line 35
    invoke-virtual {v13, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e

    sget-object v10, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_TARGET_DURATION:Ljava/util/regex/Pattern;

    .line 36
    invoke-static {v13, v10}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->l(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result v10

    int-to-long v12, v10

    const-wide/32 v31, 0xf4240

    mul-long v31, v31, v12

    :goto_2
    move-object/from16 v77, v11

    :goto_3
    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_e
    const-string v10, "#EXT-X-MEDIA-SEQUENCE"

    .line 37
    invoke-virtual {v13, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_f

    sget-object v10, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_MEDIA_SEQUENCE:Ljava/util/regex/Pattern;

    .line 38
    invoke-static {v13, v10}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->m(Ljava/lang/String;Ljava/util/regex/Pattern;)J

    move-result-wide v82

    move-object/from16 v77, v11

    move-wide/from16 v28, v82

    goto :goto_3

    :cond_f
    const-string v10, "#EXT-X-VERSION"

    .line 39
    invoke-virtual {v13, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_10

    sget-object v10, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_VERSION:Ljava/util/regex/Pattern;

    .line 40
    invoke-static {v13, v10}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->l(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result v30

    goto :goto_2

    :cond_10
    const-string v10, "#EXT-X-DEFINE"

    .line 41
    invoke-virtual {v13, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_13

    sget-object v10, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_IMPORT:Ljava/util/regex/Pattern;

    .line 42
    invoke-static {v13, v10, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->u(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_11

    .line 43
    iget-object v12, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;->variableDefinitions:Ljava/util/Map;

    invoke-interface {v12, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    if-eqz v12, :cond_12

    .line 44
    invoke-virtual {v3, v10, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_11
    sget-object v10, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_NAME:Ljava/util/regex/Pattern;

    .line 45
    invoke-static {v13, v10, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->y(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    sget-object v12, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_VALUE:Ljava/util/regex/Pattern;

    .line 46
    invoke-static {v13, v12, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->y(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v12

    .line 47
    invoke-virtual {v3, v10, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    :goto_4
    move-object v12, v7

    move-object/from16 v91, v8

    move-object/from16 v10, v78

    move-wide/from16 v7, v82

    const/4 v1, 0x0

    move/from16 v78, v2

    :goto_5
    move-object/from16 v82, v5

    goto/16 :goto_17

    :cond_13
    const-string v10, "#EXTINF"

    .line 48
    invoke-virtual {v13, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_14

    sget-object v10, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_MEDIA_DURATION:Ljava/util/regex/Pattern;

    .line 49
    invoke-static {v13, v10}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->z(Ljava/lang/String;Ljava/util/regex/Pattern;)J

    move-result-wide v86

    sget-object v10, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_MEDIA_TITLE:Ljava/util/regex/Pattern;

    move-object/from16 v12, v20

    .line 50
    invoke-static {v13, v10, v12, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->t(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v41

    goto :goto_2

    :cond_14
    move-object/from16 v10, v20

    const-string v0, "#EXT-X-SKIP"

    .line 51
    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v45, 0x1

    if-eqz v0, :cond_1c

    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_SKIPPED_SEGMENTS:Ljava/util/regex/Pattern;

    .line 52
    invoke-static {v13, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->l(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result v0

    if-eqz v1, :cond_15

    .line 53
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_15

    const/4 v12, 0x1

    goto :goto_6

    :cond_15
    const/4 v12, 0x0

    :goto_6
    invoke-static {v12}, Landroidx/media3/common/util/Assertions;->g(Z)V

    .line 54
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/util/Util;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    iget-wide v12, v12, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    sub-long v12, v28, v12

    long-to-int v12, v12

    add-int/2addr v0, v12

    if-ltz v12, :cond_1b

    .line 55
    iget-object v13, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-gt v0, v13, :cond_1b

    move-object/from16 v20, v10

    move-object v13, v11

    move-wide/from16 v10, v80

    :goto_7
    if-ge v12, v0, :cond_1a

    .line 56
    iget-object v14, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    move-object/from16 v55, v7

    move-object/from16 v91, v8

    .line 57
    iget-wide v7, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    cmp-long v7, v28, v7

    if-eqz v7, :cond_16

    .line 58
    iget v7, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->discontinuitySequence:I

    sub-int v7, v7, v27

    iget v8, v14, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->relativeDiscontinuitySequence:I

    add-int/2addr v7, v8

    .line 59
    invoke-virtual {v14, v10, v11, v7}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->b(JI)Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    move-result-object v14

    .line 60
    :cond_16
    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    iget-wide v7, v14, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->durationUs:J

    add-long/2addr v10, v7

    .line 62
    iget-wide v7, v14, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->byteRangeLength:J

    const-wide/16 v42, -0x1

    cmp-long v38, v7, v42

    if-eqz v38, :cond_17

    move/from16 v38, v0

    .line 63
    iget-wide v0, v14, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->byteRangeOffset:J

    add-long v39, v0, v7

    goto :goto_8

    :cond_17
    move/from16 v38, v0

    .line 64
    :goto_8
    iget v0, v14, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->relativeDiscontinuitySequence:I

    .line 65
    iget-object v1, v14, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->initializationSegment:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    .line 66
    iget-object v7, v14, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->drmInitData:Landroidx/media3/common/DrmInitData;

    .line 67
    iget-object v8, v14, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->fullSegmentEncryptionKeyUri:Ljava/lang/String;

    move/from16 v42, v0

    .line 68
    iget-object v0, v14, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->encryptionIV:Ljava/lang/String;

    move-object/from16 v43, v1

    if-eqz v0, :cond_18

    .line 69
    invoke-static/range {v82 .. v83}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 70
    :cond_18
    iget-object v0, v14, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->encryptionIV:Ljava/lang/String;

    move-object v13, v0

    :cond_19
    add-long v82, v82, v45

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p1

    move-object/from16 v50, v7

    move-object v14, v8

    move-wide/from16 v51, v10

    move/from16 v0, v38

    move/from16 v79, v42

    move-object/from16 v85, v43

    move-object/from16 v7, v55

    move-object/from16 v8, v91

    goto :goto_7

    :cond_1a
    move-object/from16 v55, v7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v80, v10

    move-object/from16 v77, v13

    goto/16 :goto_3

    .line 71
    :cond_1b
    new-instance v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$DeltaUpdateException;

    invoke-direct {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$DeltaUpdateException;-><init>()V

    throw v0

    :cond_1c
    move-object/from16 v55, v7

    move-object/from16 v91, v8

    move-object/from16 v20, v10

    const-string v0, "#EXT-X-KEY"

    .line 72
    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_METHOD:Ljava/util/regex/Pattern;

    .line 73
    invoke-static {v13, v0, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->y(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_KEYFORMAT:Ljava/util/regex/Pattern;

    const-string v7, "identity"

    .line 74
    invoke-static {v13, v1, v7, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->t(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    const-string v8, "NONE"

    .line 75
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 76
    invoke-virtual {v9}, Ljava/util/TreeMap;->clear()V

    move-object/from16 v8, v77

    move-object v14, v8

    :goto_9
    move-object/from16 v50, v14

    goto :goto_b

    :cond_1d
    sget-object v8, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_IV:Ljava/util/regex/Pattern;

    .line 77
    invoke-static {v13, v8, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->u(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    .line 78
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    const-string v1, "AES-128"

    .line 79
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    .line 80
    invoke-static {v13, v0, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->y(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    goto :goto_b

    :cond_1e
    move-object/from16 v14, v77

    goto :goto_b

    :cond_1f
    move-object/from16 v7, v78

    if-nez v7, :cond_20

    .line 81
    invoke-static {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v78

    goto :goto_a

    :cond_20
    move-object/from16 v78, v7

    .line 82
    :goto_a
    invoke-static {v13, v1, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->j(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroidx/media3/common/DrmInitData$SchemeData;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 83
    invoke-virtual {v9, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v14, v77

    goto :goto_9

    :goto_b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v77, v8

    :goto_c
    move-object/from16 v7, v55

    :goto_d
    move-object/from16 v8, v91

    goto/16 :goto_3

    :cond_21
    move-object/from16 v7, v78

    const-string v0, "#EXT-X-BYTERANGE"

    .line 84
    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_BYTERANGE:Ljava/util/regex/Pattern;

    .line 85
    invoke-static {v13, v0, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->y(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-static {v0, v12}, Landroidx/media3/common/util/Util;->d1(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 87
    aget-object v8, v0, v1

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v75

    .line 88
    array-length v1, v0

    const/4 v8, 0x1

    if-le v1, v8, :cond_22

    .line 89
    aget-object v0, v0, v8

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    move-wide/from16 v39, v0

    :cond_22
    :goto_e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v78, v7

    move-object/from16 v77, v11

    goto :goto_c

    :cond_23
    const/4 v8, 0x1

    const-string v0, "#EXT-X-DISCONTINUITY-SEQUENCE"

    .line 90
    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x3a

    if-eqz v0, :cond_24

    .line 91
    invoke-virtual {v13, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/2addr v0, v8

    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v78, v7

    move-object/from16 v77, v11

    move-object/from16 v7, v55

    move-object/from16 v8, v91

    const/4 v10, 0x0

    const/16 v26, 0x1

    goto/16 :goto_0

    :cond_24
    const-string v0, "#EXT-X-DISCONTINUITY"

    .line 92
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    add-int/lit8 v79, v79, 0x1

    goto :goto_e

    :cond_25
    const-string v0, "#EXT-X-PROGRAM-DATE-TIME"

    .line 93
    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    const-wide/16 v18, 0x0

    cmp-long v0, v24, v18

    if-nez v0, :cond_26

    .line 94
    invoke-virtual {v13, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->R0(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->K0(J)J

    move-result-wide v0

    sub-long v24, v0, v80

    goto :goto_e

    :cond_26
    move/from16 v78, v2

    move-object v10, v7

    :goto_f
    move-object/from16 v12, v55

    move-wide/from16 v7, v82

    const/4 v1, 0x0

    goto/16 :goto_5

    :cond_27
    const-string v0, "#EXT-X-GAP"

    .line 95
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v78, v7

    move-object/from16 v77, v11

    move-object/from16 v7, v55

    move-object/from16 v8, v91

    const/4 v10, 0x0

    const/16 v54, 0x1

    goto/16 :goto_0

    :cond_28
    const-string v0, "#EXT-X-INDEPENDENT-SEGMENTS"

    .line 96
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v78, v7

    move-object/from16 v77, v11

    move-object/from16 v7, v55

    move-object/from16 v8, v91

    const/4 v10, 0x0

    const/16 v35, 0x1

    goto/16 :goto_0

    :cond_29
    const-string v0, "#EXT-X-ENDLIST"

    .line 97
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v78, v7

    move-object/from16 v77, v11

    move-object/from16 v7, v55

    move-object/from16 v8, v91

    const/4 v10, 0x0

    const/16 v36, 0x1

    goto/16 :goto_0

    :cond_2a
    const-string v0, "#EXT-X-RENDITION-REPORT"

    .line 98
    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_LAST_MSN:Ljava/util/regex/Pattern;

    move/from16 v78, v2

    move-object v10, v7

    const-wide/16 v1, -0x1

    .line 99
    invoke-static {v13, v0, v1, v2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->s(Ljava/lang/String;Ljava/util/regex/Pattern;J)J

    move-result-wide v7

    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_LAST_PART:Ljava/util/regex/Pattern;

    const/4 v1, -0x1

    .line 100
    invoke-static {v13, v0, v1}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->r(Ljava/lang/String;Ljava/util/regex/Pattern;I)I

    move-result v0

    sget-object v1, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    .line 101
    invoke-static {v13, v1, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->y(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p3

    .line 102
    invoke-static {v2, v1}, Landroidx/media3/common/util/UriUtil;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 103
    new-instance v12, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$RenditionReport;

    invoke-direct {v12, v1, v7, v8, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$RenditionReport;-><init>(Landroid/net/Uri;JI)V

    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    :cond_2b
    move/from16 v78, v2

    move-object v10, v7

    move-object/from16 v2, p3

    const-string v0, "#EXT-X-PRELOAD-HINT"

    .line 104
    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    if-eqz v5, :cond_2c

    :goto_10
    goto/16 :goto_f

    :cond_2c
    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_PRELOAD_HINT_TYPE:Ljava/util/regex/Pattern;

    .line 105
    invoke-static {v13, v0, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->y(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PART"

    .line 106
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    goto :goto_10

    :cond_2d
    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    .line 107
    invoke-static {v13, v0, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->y(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v58

    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_BYTERANGE_START:Ljava/util/regex/Pattern;

    const-wide/16 v7, -0x1

    .line 108
    invoke-static {v13, v0, v7, v8}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->s(Ljava/lang/String;Ljava/util/regex/Pattern;J)J

    move-result-wide v0

    sget-object v12, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_BYTERANGE_LENGTH:Ljava/util/regex/Pattern;

    .line 109
    invoke-static {v13, v12, v7, v8}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->s(Ljava/lang/String;Ljava/util/regex/Pattern;J)J

    move-result-wide v70

    move-wide/from16 v7, v82

    .line 110
    invoke-static {v7, v8, v14, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->d(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v67

    if-nez v50, :cond_2f

    .line 111
    invoke-virtual {v9}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_2f

    .line 112
    invoke-virtual {v9}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v12

    const/4 v13, 0x0

    new-array v2, v13, [Landroidx/media3/common/DrmInitData$SchemeData;

    invoke-interface {v12, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroidx/media3/common/DrmInitData$SchemeData;

    .line 113
    new-instance v12, Landroidx/media3/common/DrmInitData;

    invoke-direct {v12, v10, v2}, Landroidx/media3/common/DrmInitData;-><init>(Ljava/lang/String;[Landroidx/media3/common/DrmInitData$SchemeData;)V

    if-nez v37, :cond_2e

    .line 114
    invoke-static {v10, v2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->c(Ljava/lang/String;[Landroidx/media3/common/DrmInitData$SchemeData;)Landroidx/media3/common/DrmInitData;

    move-result-object v37

    :cond_2e
    move-object/from16 v50, v12

    :cond_2f
    const-wide/16 v12, -0x1

    cmp-long v2, v0, v12

    if-eqz v2, :cond_30

    cmp-long v38, v70, v12

    if-eqz v38, :cond_32

    .line 115
    :cond_30
    new-instance v5, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;

    const-wide/16 v60, 0x0

    if-eqz v2, :cond_31

    move-wide/from16 v68, v0

    goto :goto_11

    :cond_31
    const-wide/16 v68, 0x0

    :goto_11
    const/16 v72, 0x0

    const/16 v73, 0x0

    const/16 v74, 0x1

    move-object/from16 v57, v5

    move-object/from16 v59, v85

    move/from16 v62, v79

    move-wide/from16 v63, v51

    move-object/from16 v65, v50

    move-object/from16 v66, v14

    .line 116
    invoke-direct/range {v57 .. v74}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;-><init>(Ljava/lang/String;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;JIJLandroidx/media3/common/DrmInitData;Ljava/lang/String;Ljava/lang/String;JJZZZ)V

    :cond_32
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v82, v7

    move-object/from16 v77, v11

    move-object/from16 v7, v55

    move/from16 v2, v78

    move-object/from16 v8, v91

    move-object/from16 v78, v10

    goto/16 :goto_3

    :cond_33
    move-wide/from16 v7, v82

    const-string v0, "#EXT-X-PART"

    .line 117
    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 118
    invoke-static {v7, v8, v14, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->d(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v67

    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    .line 119
    invoke-static {v13, v0, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->y(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v58

    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_ATTR_DURATION:Ljava/util/regex/Pattern;

    .line 120
    invoke-static {v13, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->i(Ljava/lang/String;Ljava/util/regex/Pattern;)D

    move-result-wide v0

    mul-double v0, v0, v43

    double-to-long v0, v0

    sget-object v2, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_INDEPENDENT:Ljava/util/regex/Pattern;

    move-object/from16 v82, v5

    const/4 v5, 0x0

    .line 121
    invoke-static {v13, v2, v5}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->p(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result v2

    if-eqz v35, :cond_34

    .line 122
    invoke-interface/range {v55 .. v55}, Ljava/util/List;->isEmpty()Z

    move-result v38

    if-eqz v38, :cond_34

    const/16 v38, 0x1

    goto :goto_12

    :cond_34
    move/from16 v38, v5

    :goto_12
    or-int v73, v2, v38

    sget-object v2, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_GAP:Ljava/util/regex/Pattern;

    .line 123
    invoke-static {v13, v2, v5}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->p(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result v72

    sget-object v2, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_ATTR_BYTERANGE:Ljava/util/regex/Pattern;

    .line 124
    invoke-static {v13, v2, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->u(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 125
    invoke-static {v2, v12}, Landroidx/media3/common/util/Util;->d1(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 126
    aget-object v12, v2, v5

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 127
    array-length v5, v2

    move-wide/from16 v42, v12

    const/4 v12, 0x1

    if-le v5, v12, :cond_35

    .line 128
    aget-object v2, v2, v12

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v88

    :cond_35
    const-wide/16 v12, -0x1

    goto :goto_13

    :cond_36
    const-wide/16 v12, -0x1

    const-wide/16 v42, -0x1

    :goto_13
    cmp-long v2, v42, v12

    if-nez v2, :cond_37

    const-wide/16 v88, 0x0

    :cond_37
    if-nez v50, :cond_39

    .line 129
    invoke-virtual {v9}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_39

    .line 130
    invoke-virtual {v9}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v5

    const/4 v12, 0x0

    new-array v13, v12, [Landroidx/media3/common/DrmInitData$SchemeData;

    invoke-interface {v5, v13}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroidx/media3/common/DrmInitData$SchemeData;

    .line 131
    new-instance v12, Landroidx/media3/common/DrmInitData;

    invoke-direct {v12, v10, v5}, Landroidx/media3/common/DrmInitData;-><init>(Ljava/lang/String;[Landroidx/media3/common/DrmInitData$SchemeData;)V

    if-nez v37, :cond_38

    .line 132
    invoke-static {v10, v5}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->c(Ljava/lang/String;[Landroidx/media3/common/DrmInitData$SchemeData;)Landroidx/media3/common/DrmInitData;

    move-result-object v37

    :cond_38
    move-object/from16 v50, v12

    .line 133
    :cond_39
    new-instance v5, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;

    move-object/from16 v57, v5

    const/16 v74, 0x0

    move-object/from16 v59, v85

    move-wide/from16 v60, v0

    move/from16 v62, v79

    move-wide/from16 v63, v51

    move-object/from16 v65, v50

    move-object/from16 v66, v14

    move-wide/from16 v68, v88

    move-wide/from16 v70, v42

    invoke-direct/range {v57 .. v74}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;-><init>(Ljava/lang/String;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;JIJLandroidx/media3/common/DrmInitData;Ljava/lang/String;Ljava/lang/String;JJZZZ)V

    move-object/from16 v12, v55

    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-long v51, v51, v0

    if-eqz v2, :cond_3a

    add-long v88, v88, v42

    :cond_3a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v77, v11

    move/from16 v2, v78

    move-object/from16 v5, v82

    move-wide/from16 v82, v7

    move-object/from16 v78, v10

    move-object v7, v12

    goto/16 :goto_d

    :cond_3b
    move-object/from16 v82, v5

    move-object/from16 v12, v55

    const-string v0, "#"

    .line 134
    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 135
    invoke-static {v7, v8, v14, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->d(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    add-long v1, v7, v45

    .line 136
    invoke-static {v13, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->A(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    .line 137
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    const-wide/16 v42, -0x1

    cmp-long v8, v75, v42

    if-nez v8, :cond_3c

    const-wide/16 v57, 0x0

    goto :goto_14

    :cond_3c
    if-eqz v84, :cond_3d

    if-nez v85, :cond_3d

    if-nez v7, :cond_3d

    .line 138
    new-instance v7, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    const-wide/16 v44, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    move-object/from16 v42, v7

    move-object/from16 v43, v5

    move-wide/from16 v46, v39

    invoke-direct/range {v42 .. v49}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;-><init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {v4, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3d
    move-wide/from16 v57, v39

    :goto_14
    if-nez v50, :cond_3e

    .line 140
    invoke-virtual {v9}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_3e

    .line 141
    invoke-virtual {v9}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v13

    move-wide/from16 v59, v1

    const/4 v1, 0x0

    new-array v2, v1, [Landroidx/media3/common/DrmInitData$SchemeData;

    invoke-interface {v13, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroidx/media3/common/DrmInitData$SchemeData;

    .line 142
    new-instance v13, Landroidx/media3/common/DrmInitData;

    invoke-direct {v13, v10, v2}, Landroidx/media3/common/DrmInitData;-><init>(Ljava/lang/String;[Landroidx/media3/common/DrmInitData$SchemeData;)V

    if-nez v37, :cond_3f

    .line 143
    invoke-static {v10, v2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->c(Ljava/lang/String;[Landroidx/media3/common/DrmInitData$SchemeData;)Landroidx/media3/common/DrmInitData;

    move-result-object v37

    goto :goto_15

    :cond_3e
    move-wide/from16 v59, v1

    const/4 v1, 0x0

    move-object/from16 v13, v50

    .line 144
    :cond_3f
    :goto_15
    new-instance v2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    if-eqz v85, :cond_40

    move-object/from16 v40, v85

    goto :goto_16

    :cond_40
    move-object/from16 v40, v7

    :goto_16
    move-object/from16 v38, v2

    move-object/from16 v39, v5

    move-wide/from16 v42, v86

    move/from16 v44, v79

    move-wide/from16 v45, v80

    move-object/from16 v47, v13

    move-object/from16 v48, v14

    move-object/from16 v49, v0

    move-wide/from16 v50, v57

    move-wide/from16 v52, v75

    move-object/from16 v55, v12

    .line 145
    invoke-direct/range {v38 .. v55}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;-><init>(Ljava/lang/String;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;Ljava/lang/String;JIJLandroidx/media3/common/DrmInitData;Ljava/lang/String;Ljava/lang/String;JJZLjava/util/List;)V

    .line 146
    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-long v51, v80, v86

    .line 147
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    if-eqz v8, :cond_41

    add-long v57, v57, v75

    :cond_41
    move-wide/from16 v39, v57

    move-object/from16 v0, p0

    move/from16 v54, v1

    move-object/from16 v77, v11

    move-object/from16 v50, v13

    move-object/from16 v41, v20

    move-wide/from16 v80, v51

    move/from16 v2, v78

    move-object/from16 v5, v82

    move-object/from16 v8, v91

    const-wide/16 v75, -0x1

    const-wide/16 v86, 0x0

    move-object/from16 v78, v10

    move-wide/from16 v82, v59

    move-object/from16 v1, p1

    move/from16 v10, v54

    goto/16 :goto_0

    :cond_42
    const/4 v1, 0x0

    :goto_17
    move-object/from16 v0, p0

    move-object/from16 v77, v11

    move/from16 v2, v78

    move-object/from16 v5, v82

    move-wide/from16 v82, v7

    move-object/from16 v78, v10

    move-object v7, v12

    move-object/from16 v8, v91

    move v10, v1

    move-object/from16 v1, p1

    goto/16 :goto_0

    :cond_43
    move/from16 v78, v2

    move-object/from16 v82, v5

    move-object v12, v7

    move-object/from16 v91, v8

    move v1, v10

    .line 148
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move v2, v1

    .line 149
    :goto_18
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_48

    .line 150
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$RenditionReport;

    .line 151
    iget-wide v4, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$RenditionReport;->lastMediaSequence:J

    const-wide/16 v7, -0x1

    cmp-long v9, v4, v7

    if-nez v9, :cond_44

    .line 152
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v4

    int-to-long v4, v4

    add-long v4, v28, v4

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v9

    int-to-long v9, v9

    sub-long/2addr v4, v9

    .line 153
    :cond_44
    iget v9, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$RenditionReport;->lastPartIndex:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_47

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v11, v33, v13

    if-eqz v11, :cond_46

    .line 154
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_45

    invoke-static {v15}, Lcom/google/common/collect/h0;->e(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    iget-object v9, v9, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->parts:Ljava/util/List;

    goto :goto_19

    :cond_45
    move-object v9, v12

    .line 155
    :goto_19
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const/4 v11, 0x1

    sub-int/2addr v9, v11

    goto :goto_1a

    :cond_46
    const/4 v11, 0x1

    goto :goto_1a

    :cond_47
    const/4 v11, 0x1

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .line 156
    :goto_1a
    iget-object v3, v3, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$RenditionReport;->playlistUri:Landroid/net/Uri;

    new-instance v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$RenditionReport;

    invoke-direct {v1, v3, v4, v5, v9}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$RenditionReport;-><init>(Landroid/net/Uri;JI)V

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    const/4 v1, 0x0

    goto :goto_18

    :cond_48
    const/4 v11, 0x1

    if-eqz v82, :cond_49

    move-object/from16 v5, v82

    .line 157
    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_49
    new-instance v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    const-wide/16 v2, 0x0

    cmp-long v2, v24, v2

    if-eqz v2, :cond_4a

    move/from16 v90, v11

    goto :goto_1b

    :cond_4a
    const/16 v90, 0x0

    :goto_1b
    move-object v5, v1

    move/from16 v6, v78

    move-object/from16 v55, v12

    move-object/from16 v7, p3

    move-object/from16 v8, v91

    move-wide/from16 v9, v21

    move/from16 v11, v23

    move-wide/from16 v12, v24

    move/from16 v14, v26

    move-object v2, v15

    move/from16 v15, v27

    move-wide/from16 v16, v28

    move/from16 v18, v30

    move-wide/from16 v19, v31

    move-wide/from16 v21, v33

    move/from16 v23, v35

    move/from16 v24, v36

    move/from16 v25, v90

    move-object/from16 v26, v37

    move-object/from16 v27, v2

    move-object/from16 v28, v55

    move-object/from16 v29, v56

    move-object/from16 v30, v0

    invoke-direct/range {v5 .. v30}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;-><init>(ILjava/lang/String;Ljava/util/List;JZJZIJIJJZZZLandroidx/media3/common/DrmInitData;Ljava/util/List;Ljava/util/List;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;Ljava/util/Map;)V

    return-object v1
.end method

.method private static o(Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;Ljava/lang/String;)Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;
    .locals 36
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v1, p1

    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8
    .line 9
    new-instance v11, Ljava/util/HashMap;

    .line 10
    .line 11
    .line 12
    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 13
    .line 14
    new-instance v2, Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    new-instance v4, Ljava/util/ArrayList;

    .line 20
    .line 21
    .line 22
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    new-instance v5, Ljava/util/ArrayList;

    .line 25
    .line 26
    .line 27
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    new-instance v6, Ljava/util/ArrayList;

    .line 30
    .line 31
    .line 32
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    new-instance v7, Ljava/util/ArrayList;

    .line 35
    .line 36
    .line 37
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    new-instance v3, Ljava/util/ArrayList;

    .line 40
    .line 41
    .line 42
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .line 44
    new-instance v12, Ljava/util/ArrayList;

    .line 45
    .line 46
    .line 47
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .line 49
    new-instance v8, Ljava/util/ArrayList;

    .line 50
    .line 51
    .line 52
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 53
    const/4 v10, 0x0

    .line 54
    const/4 v13, 0x0

    .line 55
    .line 56
    .line 57
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;->a()Z

    .line 58
    move-result v14

    .line 59
    .line 60
    const-string v15, "application/x-mpegURL"

    .line 61
    .line 62
    if-eqz v14, :cond_f

    .line 63
    .line 64
    .line 65
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;->b()Ljava/lang/String;

    .line 66
    move-result-object v14

    .line 67
    .line 68
    const-string v9, "#EXT"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v14, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 72
    move-result v9

    .line 73
    .line 74
    if-eqz v9, :cond_0

    .line 75
    .line 76
    .line 77
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    :cond_0
    const-string v9, "#EXT-X-I-FRAME-STREAM-INF"

    .line 80
    .line 81
    .line 82
    invoke-virtual {v14, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 83
    move-result v9

    .line 84
    .line 85
    move/from16 v19, v10

    .line 86
    .line 87
    const-string v10, "#EXT-X-DEFINE"

    .line 88
    .line 89
    .line 90
    invoke-virtual {v14, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 91
    move-result v10

    .line 92
    .line 93
    if-eqz v10, :cond_1

    .line 94
    .line 95
    sget-object v9, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_NAME:Ljava/util/regex/Pattern;

    .line 96
    .line 97
    .line 98
    invoke-static {v14, v9, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->y(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 99
    move-result-object v9

    .line 100
    .line 101
    sget-object v10, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_VALUE:Ljava/util/regex/Pattern;

    .line 102
    .line 103
    .line 104
    invoke-static {v14, v10, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->y(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 105
    move-result-object v10

    .line 106
    .line 107
    .line 108
    invoke-virtual {v11, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    goto :goto_1

    .line 110
    .line 111
    :cond_1
    const-string v10, "#EXT-X-INDEPENDENT-SEGMENTS"

    .line 112
    .line 113
    .line 114
    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    move-result v10

    .line 116
    .line 117
    if-eqz v10, :cond_2

    .line 118
    move-object v1, v0

    .line 119
    .line 120
    move-object/from16 v34, v3

    .line 121
    .line 122
    move-object/from16 v33, v4

    .line 123
    .line 124
    move-object/from16 v32, v5

    .line 125
    .line 126
    move-object/from16 v31, v6

    .line 127
    .line 128
    move-object/from16 v29, v7

    .line 129
    .line 130
    move-object/from16 v30, v8

    .line 131
    .line 132
    move-object/from16 v28, v12

    .line 133
    const/4 v10, 0x1

    .line 134
    .line 135
    goto/16 :goto_a

    .line 136
    .line 137
    :cond_2
    const-string v10, "#EXT-X-MEDIA"

    .line 138
    .line 139
    .line 140
    invoke-virtual {v14, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 141
    move-result v10

    .line 142
    .line 143
    if-eqz v10, :cond_3

    .line 144
    .line 145
    .line 146
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    goto :goto_1

    .line 148
    .line 149
    :cond_3
    const-string v10, "#EXT-X-SESSION-KEY"

    .line 150
    .line 151
    .line 152
    invoke-virtual {v14, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 153
    move-result v10

    .line 154
    .line 155
    if-eqz v10, :cond_4

    .line 156
    .line 157
    sget-object v9, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_KEYFORMAT:Ljava/util/regex/Pattern;

    .line 158
    .line 159
    const-string v10, "identity"

    .line 160
    .line 161
    .line 162
    invoke-static {v14, v9, v10, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->t(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 163
    move-result-object v9

    .line 164
    .line 165
    .line 166
    invoke-static {v14, v9, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->j(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroidx/media3/common/DrmInitData$SchemeData;

    .line 167
    move-result-object v9

    .line 168
    .line 169
    if-eqz v9, :cond_5

    .line 170
    .line 171
    sget-object v10, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_METHOD:Ljava/util/regex/Pattern;

    .line 172
    .line 173
    .line 174
    invoke-static {v14, v10, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->y(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 175
    move-result-object v10

    .line 176
    .line 177
    .line 178
    invoke-static {v10}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->k(Ljava/lang/String;)Ljava/lang/String;

    .line 179
    move-result-object v10

    .line 180
    .line 181
    new-instance v14, Landroidx/media3/common/DrmInitData;

    .line 182
    const/4 v15, 0x1

    .line 183
    .line 184
    new-array v15, v15, [Landroidx/media3/common/DrmInitData$SchemeData;

    .line 185
    .line 186
    const/16 v16, 0x0

    .line 187
    .line 188
    aput-object v9, v15, v16

    .line 189
    .line 190
    .line 191
    invoke-direct {v14, v10, v15}, Landroidx/media3/common/DrmInitData;-><init>(Ljava/lang/String;[Landroidx/media3/common/DrmInitData$SchemeData;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    goto :goto_1

    .line 196
    .line 197
    :cond_4
    const-string v10, "#EXT-X-STREAM-INF"

    .line 198
    .line 199
    .line 200
    invoke-virtual {v14, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 201
    move-result v10

    .line 202
    .line 203
    if-nez v10, :cond_6

    .line 204
    .line 205
    if-eqz v9, :cond_5

    .line 206
    goto :goto_2

    .line 207
    :cond_5
    :goto_1
    move-object v1, v0

    .line 208
    .line 209
    move-object/from16 v34, v3

    .line 210
    .line 211
    move-object/from16 v33, v4

    .line 212
    .line 213
    move-object/from16 v32, v5

    .line 214
    .line 215
    move-object/from16 v31, v6

    .line 216
    .line 217
    move-object/from16 v29, v7

    .line 218
    .line 219
    move-object/from16 v30, v8

    .line 220
    .line 221
    move-object/from16 v28, v12

    .line 222
    .line 223
    move/from16 v10, v19

    .line 224
    .line 225
    goto/16 :goto_a

    .line 226
    .line 227
    :cond_6
    :goto_2
    const-string v10, "CLOSED-CAPTIONS=NONE"

    .line 228
    .line 229
    .line 230
    invoke-virtual {v14, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 231
    move-result v10

    .line 232
    or-int/2addr v13, v10

    .line 233
    .line 234
    if-eqz v9, :cond_7

    .line 235
    .line 236
    const/16 v10, 0x4000

    .line 237
    .line 238
    move/from16 v20, v13

    .line 239
    goto :goto_3

    .line 240
    .line 241
    :cond_7
    move/from16 v20, v13

    .line 242
    const/4 v10, 0x0

    .line 243
    .line 244
    :goto_3
    sget-object v13, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_BANDWIDTH:Ljava/util/regex/Pattern;

    .line 245
    .line 246
    .line 247
    invoke-static {v14, v13}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->l(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    .line 248
    move-result v13

    .line 249
    .line 250
    move-object/from16 v28, v12

    .line 251
    .line 252
    sget-object v12, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_AVERAGE_BANDWIDTH:Ljava/util/regex/Pattern;

    .line 253
    .line 254
    move-object/from16 v29, v7

    .line 255
    const/4 v7, -0x1

    .line 256
    .line 257
    .line 258
    invoke-static {v14, v12, v7}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->r(Ljava/lang/String;Ljava/util/regex/Pattern;I)I

    .line 259
    move-result v12

    .line 260
    .line 261
    sget-object v7, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CODECS:Ljava/util/regex/Pattern;

    .line 262
    .line 263
    .line 264
    invoke-static {v14, v7, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->u(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 265
    move-result-object v7

    .line 266
    .line 267
    move-object/from16 v30, v8

    .line 268
    .line 269
    sget-object v8, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_RESOLUTION:Ljava/util/regex/Pattern;

    .line 270
    .line 271
    .line 272
    invoke-static {v14, v8, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->u(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 273
    move-result-object v8

    .line 274
    .line 275
    if-eqz v8, :cond_a

    .line 276
    .line 277
    move-object/from16 v31, v6

    .line 278
    .line 279
    .line 280
    const-string/jumbo v6, "x"

    .line 281
    .line 282
    .line 283
    invoke-static {v8, v6}, Landroidx/media3/common/util/Util;->d1(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 284
    move-result-object v6

    .line 285
    const/4 v8, 0x0

    .line 286
    .line 287
    aget-object v21, v6, v8

    .line 288
    .line 289
    .line 290
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 291
    move-result v8

    .line 292
    .line 293
    const/16 v18, 0x1

    .line 294
    .line 295
    aget-object v6, v6, v18

    .line 296
    .line 297
    .line 298
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 299
    move-result v6

    .line 300
    .line 301
    if-lez v8, :cond_9

    .line 302
    .line 303
    if-gtz v6, :cond_8

    .line 304
    goto :goto_4

    .line 305
    .line 306
    :cond_8
    move/from16 v17, v8

    .line 307
    goto :goto_5

    .line 308
    :cond_9
    :goto_4
    const/4 v6, -0x1

    .line 309
    .line 310
    const/16 v17, -0x1

    .line 311
    .line 312
    :goto_5
    move-object/from16 v32, v5

    .line 313
    move v8, v6

    .line 314
    .line 315
    move/from16 v6, v17

    .line 316
    goto :goto_6

    .line 317
    .line 318
    :cond_a
    move-object/from16 v31, v6

    .line 319
    .line 320
    move-object/from16 v32, v5

    .line 321
    const/4 v6, -0x1

    .line 322
    const/4 v8, -0x1

    .line 323
    .line 324
    :goto_6
    sget-object v5, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_FRAME_RATE:Ljava/util/regex/Pattern;

    .line 325
    .line 326
    .line 327
    invoke-static {v14, v5, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->u(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 328
    move-result-object v5

    .line 329
    .line 330
    if-eqz v5, :cond_b

    .line 331
    .line 332
    .line 333
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 334
    move-result v5

    .line 335
    .line 336
    :goto_7
    move-object/from16 v33, v4

    .line 337
    goto :goto_8

    .line 338
    .line 339
    :cond_b
    const/high16 v5, -0x40800000    # -1.0f

    .line 340
    goto :goto_7

    .line 341
    .line 342
    :goto_8
    sget-object v4, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_VIDEO:Ljava/util/regex/Pattern;

    .line 343
    .line 344
    .line 345
    invoke-static {v14, v4, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->u(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 346
    move-result-object v4

    .line 347
    .line 348
    move-object/from16 v34, v3

    .line 349
    .line 350
    sget-object v3, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_AUDIO:Ljava/util/regex/Pattern;

    .line 351
    .line 352
    .line 353
    invoke-static {v14, v3, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->u(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 354
    move-result-object v3

    .line 355
    .line 356
    move-object/from16 v35, v0

    .line 357
    .line 358
    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_SUBTITLES:Ljava/util/regex/Pattern;

    .line 359
    .line 360
    .line 361
    invoke-static {v14, v0, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->u(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 362
    move-result-object v0

    .line 363
    .line 364
    move-object/from16 v17, v0

    .line 365
    .line 366
    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CLOSED_CAPTIONS:Ljava/util/regex/Pattern;

    .line 367
    .line 368
    .line 369
    invoke-static {v14, v0, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->u(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 370
    move-result-object v0

    .line 371
    .line 372
    if-eqz v9, :cond_c

    .line 373
    .line 374
    sget-object v9, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    .line 375
    .line 376
    .line 377
    invoke-static {v14, v9, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->y(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 378
    move-result-object v9

    .line 379
    .line 380
    .line 381
    invoke-static {v1, v9}, Landroidx/media3/common/util/UriUtil;->e(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 382
    move-result-object v9

    .line 383
    goto :goto_9

    .line 384
    .line 385
    .line 386
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;->a()Z

    .line 387
    move-result v9

    .line 388
    .line 389
    if-eqz v9, :cond_e

    .line 390
    .line 391
    .line 392
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;->b()Ljava/lang/String;

    .line 393
    move-result-object v9

    .line 394
    .line 395
    .line 396
    invoke-static {v9, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->A(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 397
    move-result-object v9

    .line 398
    .line 399
    .line 400
    invoke-static {v1, v9}, Landroidx/media3/common/util/UriUtil;->e(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 401
    move-result-object v9

    .line 402
    .line 403
    :goto_9
    new-instance v14, Landroidx/media3/common/Format$Builder;

    .line 404
    .line 405
    .line 406
    invoke-direct {v14}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 407
    .line 408
    .line 409
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 410
    move-result v1

    .line 411
    .line 412
    .line 413
    invoke-virtual {v14, v1}, Landroidx/media3/common/Format$Builder;->T(I)Landroidx/media3/common/Format$Builder;

    .line 414
    move-result-object v1

    .line 415
    .line 416
    .line 417
    invoke-virtual {v1, v15}, Landroidx/media3/common/Format$Builder;->M(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 418
    move-result-object v1

    .line 419
    .line 420
    .line 421
    invoke-virtual {v1, v7}, Landroidx/media3/common/Format$Builder;->K(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 422
    move-result-object v1

    .line 423
    .line 424
    .line 425
    invoke-virtual {v1, v12}, Landroidx/media3/common/Format$Builder;->I(I)Landroidx/media3/common/Format$Builder;

    .line 426
    move-result-object v1

    .line 427
    .line 428
    .line 429
    invoke-virtual {v1, v13}, Landroidx/media3/common/Format$Builder;->b0(I)Landroidx/media3/common/Format$Builder;

    .line 430
    move-result-object v1

    .line 431
    .line 432
    .line 433
    invoke-virtual {v1, v6}, Landroidx/media3/common/Format$Builder;->n0(I)Landroidx/media3/common/Format$Builder;

    .line 434
    move-result-object v1

    .line 435
    .line 436
    .line 437
    invoke-virtual {v1, v8}, Landroidx/media3/common/Format$Builder;->S(I)Landroidx/media3/common/Format$Builder;

    .line 438
    move-result-object v1

    .line 439
    .line 440
    .line 441
    invoke-virtual {v1, v5}, Landroidx/media3/common/Format$Builder;->R(F)Landroidx/media3/common/Format$Builder;

    .line 442
    move-result-object v1

    .line 443
    .line 444
    .line 445
    invoke-virtual {v1, v10}, Landroidx/media3/common/Format$Builder;->e0(I)Landroidx/media3/common/Format$Builder;

    .line 446
    move-result-object v1

    .line 447
    .line 448
    .line 449
    invoke-virtual {v1}, Landroidx/media3/common/Format$Builder;->G()Landroidx/media3/common/Format;

    .line 450
    move-result-object v23

    .line 451
    .line 452
    new-instance v1, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;

    .line 453
    .line 454
    move-object/from16 v21, v1

    .line 455
    .line 456
    move-object/from16 v22, v9

    .line 457
    .line 458
    move-object/from16 v24, v4

    .line 459
    .line 460
    move-object/from16 v25, v3

    .line 461
    .line 462
    move-object/from16 v26, v17

    .line 463
    .line 464
    move-object/from16 v27, v0

    .line 465
    .line 466
    .line 467
    invoke-direct/range {v21 .. v27}, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;-><init>(Landroid/net/Uri;Landroidx/media3/common/Format;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    .line 472
    move-object/from16 v1, v35

    .line 473
    .line 474
    .line 475
    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    move-result-object v5

    .line 477
    .line 478
    check-cast v5, Ljava/util/ArrayList;

    .line 479
    .line 480
    if-nez v5, :cond_d

    .line 481
    .line 482
    new-instance v5, Ljava/util/ArrayList;

    .line 483
    .line 484
    .line 485
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 486
    .line 487
    .line 488
    invoke-virtual {v1, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    .line 490
    :cond_d
    new-instance v6, Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry$VariantInfo;

    .line 491
    .line 492
    move-object/from16 v21, v6

    .line 493
    .line 494
    move/from16 v22, v12

    .line 495
    .line 496
    move/from16 v23, v13

    .line 497
    .line 498
    move-object/from16 v24, v4

    .line 499
    .line 500
    move-object/from16 v25, v3

    .line 501
    .line 502
    move-object/from16 v26, v17

    .line 503
    .line 504
    move-object/from16 v27, v0

    .line 505
    .line 506
    .line 507
    invoke-direct/range {v21 .. v27}, Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry$VariantInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    .line 509
    .line 510
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    .line 512
    move/from16 v10, v19

    .line 513
    .line 514
    move/from16 v13, v20

    .line 515
    :goto_a
    move-object v0, v1

    .line 516
    .line 517
    move-object/from16 v12, v28

    .line 518
    .line 519
    move-object/from16 v7, v29

    .line 520
    .line 521
    move-object/from16 v8, v30

    .line 522
    .line 523
    move-object/from16 v6, v31

    .line 524
    .line 525
    move-object/from16 v5, v32

    .line 526
    .line 527
    move-object/from16 v4, v33

    .line 528
    .line 529
    move-object/from16 v3, v34

    .line 530
    .line 531
    move-object/from16 v1, p1

    .line 532
    .line 533
    goto/16 :goto_0

    .line 534
    .line 535
    :cond_e
    const-string v0, "#EXT-X-STREAM-INF must be followed by another line"

    .line 536
    const/4 v1, 0x0

    .line 537
    .line 538
    .line 539
    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->c(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 540
    move-result-object v0

    .line 541
    throw v0

    .line 542
    :cond_f
    move-object v1, v0

    .line 543
    .line 544
    move-object/from16 v34, v3

    .line 545
    .line 546
    move-object/from16 v33, v4

    .line 547
    .line 548
    move-object/from16 v32, v5

    .line 549
    .line 550
    move-object/from16 v31, v6

    .line 551
    .line 552
    move-object/from16 v29, v7

    .line 553
    .line 554
    move-object/from16 v30, v8

    .line 555
    .line 556
    move/from16 v19, v10

    .line 557
    .line 558
    move-object/from16 v28, v12

    .line 559
    .line 560
    new-instance v3, Ljava/util/ArrayList;

    .line 561
    .line 562
    .line 563
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 564
    .line 565
    new-instance v0, Ljava/util/HashSet;

    .line 566
    .line 567
    .line 568
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 569
    const/4 v4, 0x0

    .line 570
    .line 571
    .line 572
    :goto_b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 573
    move-result v5

    .line 574
    .line 575
    if-ge v4, v5, :cond_12

    .line 576
    .line 577
    .line 578
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 579
    move-result-object v5

    .line 580
    .line 581
    check-cast v5, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;

    .line 582
    .line 583
    iget-object v6, v5, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->url:Landroid/net/Uri;

    .line 584
    .line 585
    .line 586
    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 587
    move-result v6

    .line 588
    .line 589
    if-eqz v6, :cond_11

    .line 590
    .line 591
    iget-object v6, v5, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->format:Landroidx/media3/common/Format;

    .line 592
    .line 593
    iget-object v6, v6, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    .line 594
    .line 595
    if-nez v6, :cond_10

    .line 596
    const/4 v6, 0x1

    .line 597
    goto :goto_c

    .line 598
    :cond_10
    const/4 v6, 0x0

    .line 599
    .line 600
    .line 601
    :goto_c
    invoke-static {v6}, Landroidx/media3/common/util/Assertions;->g(Z)V

    .line 602
    .line 603
    new-instance v6, Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry;

    .line 604
    .line 605
    iget-object v7, v5, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->url:Landroid/net/Uri;

    .line 606
    .line 607
    .line 608
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    move-result-object v7

    .line 610
    .line 611
    check-cast v7, Ljava/util/ArrayList;

    .line 612
    .line 613
    .line 614
    invoke-static {v7}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    move-result-object v7

    .line 616
    .line 617
    check-cast v7, Ljava/util/List;

    .line 618
    const/4 v8, 0x0

    .line 619
    .line 620
    .line 621
    invoke-direct {v6, v8, v8, v7}, Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 622
    .line 623
    new-instance v7, Landroidx/media3/common/Metadata;

    .line 624
    const/4 v9, 0x1

    .line 625
    .line 626
    new-array v10, v9, [Landroidx/media3/common/Metadata$Entry;

    .line 627
    const/4 v9, 0x0

    .line 628
    .line 629
    aput-object v6, v10, v9

    .line 630
    .line 631
    .line 632
    invoke-direct {v7, v10}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    .line 633
    .line 634
    iget-object v6, v5, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->format:Landroidx/media3/common/Format;

    .line 635
    .line 636
    .line 637
    invoke-virtual {v6}, Landroidx/media3/common/Format;->b()Landroidx/media3/common/Format$Builder;

    .line 638
    move-result-object v6

    .line 639
    .line 640
    .line 641
    invoke-virtual {v6, v7}, Landroidx/media3/common/Format$Builder;->Z(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Format$Builder;

    .line 642
    move-result-object v6

    .line 643
    .line 644
    .line 645
    invoke-virtual {v6}, Landroidx/media3/common/Format$Builder;->G()Landroidx/media3/common/Format;

    .line 646
    move-result-object v6

    .line 647
    .line 648
    .line 649
    invoke-virtual {v5, v6}, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->a(Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;

    .line 650
    move-result-object v5

    .line 651
    .line 652
    .line 653
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 654
    goto :goto_d

    .line 655
    :cond_11
    const/4 v8, 0x0

    .line 656
    .line 657
    :goto_d
    add-int/lit8 v4, v4, 0x1

    .line 658
    goto :goto_b

    .line 659
    :cond_12
    const/4 v8, 0x0

    .line 660
    move-object v1, v8

    .line 661
    move-object v9, v1

    .line 662
    const/4 v0, 0x0

    .line 663
    .line 664
    .line 665
    :goto_e
    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    .line 666
    move-result v4

    .line 667
    .line 668
    if-ge v0, v4, :cond_24

    .line 669
    .line 670
    move-object/from16 v4, v34

    .line 671
    .line 672
    .line 673
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 674
    move-result-object v5

    .line 675
    .line 676
    check-cast v5, Ljava/lang/String;

    .line 677
    .line 678
    sget-object v6, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_GROUP_ID:Ljava/util/regex/Pattern;

    .line 679
    .line 680
    .line 681
    invoke-static {v5, v6, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->y(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 682
    move-result-object v6

    .line 683
    .line 684
    sget-object v7, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_NAME:Ljava/util/regex/Pattern;

    .line 685
    .line 686
    .line 687
    invoke-static {v5, v7, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->y(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 688
    move-result-object v7

    .line 689
    .line 690
    new-instance v10, Landroidx/media3/common/Format$Builder;

    .line 691
    .line 692
    .line 693
    invoke-direct {v10}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 694
    .line 695
    new-instance v12, Ljava/lang/StringBuilder;

    .line 696
    .line 697
    .line 698
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 699
    .line 700
    .line 701
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    .line 703
    const-string v14, ":"

    .line 704
    .line 705
    .line 706
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    .line 708
    .line 709
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    .line 711
    .line 712
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 713
    move-result-object v12

    .line 714
    .line 715
    .line 716
    invoke-virtual {v10, v12}, Landroidx/media3/common/Format$Builder;->U(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 717
    move-result-object v10

    .line 718
    .line 719
    .line 720
    invoke-virtual {v10, v7}, Landroidx/media3/common/Format$Builder;->W(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 721
    move-result-object v10

    .line 722
    .line 723
    .line 724
    invoke-virtual {v10, v15}, Landroidx/media3/common/Format$Builder;->M(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 725
    move-result-object v10

    .line 726
    .line 727
    .line 728
    invoke-static {v5}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->w(Ljava/lang/String;)I

    .line 729
    move-result v12

    .line 730
    .line 731
    .line 732
    invoke-virtual {v10, v12}, Landroidx/media3/common/Format$Builder;->i0(I)Landroidx/media3/common/Format$Builder;

    .line 733
    move-result-object v10

    .line 734
    .line 735
    .line 736
    invoke-static {v5, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->v(Ljava/lang/String;Ljava/util/Map;)I

    .line 737
    move-result v12

    .line 738
    .line 739
    .line 740
    invoke-virtual {v10, v12}, Landroidx/media3/common/Format$Builder;->e0(I)Landroidx/media3/common/Format$Builder;

    .line 741
    move-result-object v10

    .line 742
    .line 743
    sget-object v12, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_LANGUAGE:Ljava/util/regex/Pattern;

    .line 744
    .line 745
    .line 746
    invoke-static {v5, v12, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->u(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 747
    move-result-object v12

    .line 748
    .line 749
    .line 750
    invoke-virtual {v10, v12}, Landroidx/media3/common/Format$Builder;->X(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 751
    move-result-object v10

    .line 752
    .line 753
    sget-object v12, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_URI:Ljava/util/regex/Pattern;

    .line 754
    .line 755
    .line 756
    invoke-static {v5, v12, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->u(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 757
    move-result-object v12

    .line 758
    .line 759
    move-object/from16 v14, p1

    .line 760
    .line 761
    if-nez v12, :cond_13

    .line 762
    move-object v12, v8

    .line 763
    goto :goto_f

    .line 764
    .line 765
    .line 766
    :cond_13
    invoke-static {v14, v12}, Landroidx/media3/common/util/UriUtil;->e(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 767
    move-result-object v12

    .line 768
    .line 769
    :goto_f
    new-instance v8, Landroidx/media3/common/Metadata;

    .line 770
    .line 771
    move-object/from16 v34, v4

    .line 772
    const/4 v4, 0x1

    .line 773
    .line 774
    new-array v14, v4, [Landroidx/media3/common/Metadata$Entry;

    .line 775
    .line 776
    new-instance v4, Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry;

    .line 777
    .line 778
    move-object/from16 v20, v15

    .line 779
    .line 780
    .line 781
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 782
    move-result-object v15

    .line 783
    .line 784
    .line 785
    invoke-direct {v4, v6, v7, v15}, Landroidx/media3/exoplayer/hls/HlsTrackMetadataEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 786
    const/4 v15, 0x0

    .line 787
    .line 788
    aput-object v4, v14, v15

    .line 789
    .line 790
    .line 791
    invoke-direct {v8, v14}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    .line 792
    .line 793
    sget-object v4, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_TYPE:Ljava/util/regex/Pattern;

    .line 794
    .line 795
    .line 796
    invoke-static {v5, v4, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->y(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 797
    move-result-object v4

    .line 798
    .line 799
    .line 800
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 801
    .line 802
    .line 803
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 804
    move-result v14

    .line 805
    const/4 v15, 0x2

    .line 806
    .line 807
    .line 808
    sparse-switch v14, :sswitch_data_0

    .line 809
    :goto_10
    const/4 v4, -0x1

    .line 810
    goto :goto_11

    .line 811
    .line 812
    :sswitch_0
    const-string v14, "VIDEO"

    .line 813
    .line 814
    .line 815
    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 816
    move-result v4

    .line 817
    .line 818
    if-nez v4, :cond_14

    .line 819
    goto :goto_10

    .line 820
    :cond_14
    const/4 v4, 0x3

    .line 821
    goto :goto_11

    .line 822
    .line 823
    :sswitch_1
    const-string v14, "AUDIO"

    .line 824
    .line 825
    .line 826
    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 827
    move-result v4

    .line 828
    .line 829
    if-nez v4, :cond_15

    .line 830
    goto :goto_10

    .line 831
    :cond_15
    move v4, v15

    .line 832
    goto :goto_11

    .line 833
    .line 834
    :sswitch_2
    const-string v14, "CLOSED-CAPTIONS"

    .line 835
    .line 836
    .line 837
    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 838
    move-result v4

    .line 839
    .line 840
    if-nez v4, :cond_16

    .line 841
    goto :goto_10

    .line 842
    :cond_16
    const/4 v4, 0x1

    .line 843
    goto :goto_11

    .line 844
    .line 845
    :sswitch_3
    const-string v14, "SUBTITLES"

    .line 846
    .line 847
    .line 848
    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 849
    move-result v4

    .line 850
    .line 851
    if-nez v4, :cond_17

    .line 852
    goto :goto_10

    .line 853
    :cond_17
    const/4 v4, 0x0

    .line 854
    .line 855
    .line 856
    :goto_11
    packed-switch v4, :pswitch_data_0

    .line 857
    .line 858
    :goto_12
    move-object/from16 v21, v9

    .line 859
    .line 860
    move-object/from16 v6, v31

    .line 861
    .line 862
    move-object/from16 v9, v32

    .line 863
    .line 864
    move-object/from16 v14, v33

    .line 865
    .line 866
    :goto_13
    const/16 v16, 0x0

    .line 867
    .line 868
    goto/16 :goto_19

    .line 869
    .line 870
    .line 871
    :pswitch_0
    invoke-static {v2, v6}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->g(Ljava/util/ArrayList;Ljava/lang/String;)Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;

    .line 872
    move-result-object v4

    .line 873
    .line 874
    if-eqz v4, :cond_18

    .line 875
    .line 876
    iget-object v4, v4, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->format:Landroidx/media3/common/Format;

    .line 877
    .line 878
    iget-object v5, v4, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    .line 879
    .line 880
    .line 881
    invoke-static {v5, v15}, Landroidx/media3/common/util/Util;->M(Ljava/lang/String;I)Ljava/lang/String;

    .line 882
    move-result-object v5

    .line 883
    .line 884
    .line 885
    invoke-virtual {v10, v5}, Landroidx/media3/common/Format$Builder;->K(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 886
    move-result-object v14

    .line 887
    .line 888
    .line 889
    invoke-static {v5}, Landroidx/media3/common/MimeTypes;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 890
    move-result-object v5

    .line 891
    .line 892
    .line 893
    invoke-virtual {v14, v5}, Landroidx/media3/common/Format$Builder;->g0(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 894
    move-result-object v5

    .line 895
    .line 896
    iget v14, v4, Landroidx/media3/common/Format;->width:I

    .line 897
    .line 898
    .line 899
    invoke-virtual {v5, v14}, Landroidx/media3/common/Format$Builder;->n0(I)Landroidx/media3/common/Format$Builder;

    .line 900
    move-result-object v5

    .line 901
    .line 902
    iget v14, v4, Landroidx/media3/common/Format;->height:I

    .line 903
    .line 904
    .line 905
    invoke-virtual {v5, v14}, Landroidx/media3/common/Format$Builder;->S(I)Landroidx/media3/common/Format$Builder;

    .line 906
    move-result-object v5

    .line 907
    .line 908
    iget v4, v4, Landroidx/media3/common/Format;->frameRate:F

    .line 909
    .line 910
    .line 911
    invoke-virtual {v5, v4}, Landroidx/media3/common/Format$Builder;->R(F)Landroidx/media3/common/Format$Builder;

    .line 912
    .line 913
    :cond_18
    if-nez v12, :cond_19

    .line 914
    goto :goto_12

    .line 915
    .line 916
    .line 917
    :cond_19
    invoke-virtual {v10, v8}, Landroidx/media3/common/Format$Builder;->Z(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Format$Builder;

    .line 918
    .line 919
    new-instance v4, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;

    .line 920
    .line 921
    .line 922
    invoke-virtual {v10}, Landroidx/media3/common/Format$Builder;->G()Landroidx/media3/common/Format;

    .line 923
    move-result-object v5

    .line 924
    .line 925
    .line 926
    invoke-direct {v4, v12, v5, v6, v7}, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;-><init>(Landroid/net/Uri;Landroidx/media3/common/Format;Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    .line 928
    move-object/from16 v14, v33

    .line 929
    .line 930
    .line 931
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 932
    .line 933
    move-object/from16 v21, v9

    .line 934
    .line 935
    move-object/from16 v6, v31

    .line 936
    .line 937
    move-object/from16 v9, v32

    .line 938
    goto :goto_13

    .line 939
    .line 940
    :pswitch_1
    move-object/from16 v14, v33

    .line 941
    .line 942
    .line 943
    invoke-static {v2, v6}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->e(Ljava/util/ArrayList;Ljava/lang/String;)Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;

    .line 944
    move-result-object v4

    .line 945
    .line 946
    if-eqz v4, :cond_1a

    .line 947
    .line 948
    iget-object v15, v4, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->format:Landroidx/media3/common/Format;

    .line 949
    .line 950
    iget-object v15, v15, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    .line 951
    .line 952
    move-object/from16 v21, v9

    .line 953
    const/4 v9, 0x1

    .line 954
    .line 955
    .line 956
    invoke-static {v15, v9}, Landroidx/media3/common/util/Util;->M(Ljava/lang/String;I)Ljava/lang/String;

    .line 957
    move-result-object v15

    .line 958
    .line 959
    .line 960
    invoke-virtual {v10, v15}, Landroidx/media3/common/Format$Builder;->K(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 961
    .line 962
    .line 963
    invoke-static {v15}, Landroidx/media3/common/MimeTypes;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 964
    move-result-object v15

    .line 965
    goto :goto_14

    .line 966
    .line 967
    :cond_1a
    move-object/from16 v21, v9

    .line 968
    const/4 v15, 0x0

    .line 969
    .line 970
    :goto_14
    sget-object v9, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CHANNELS:Ljava/util/regex/Pattern;

    .line 971
    .line 972
    .line 973
    invoke-static {v5, v9, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->u(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 974
    move-result-object v5

    .line 975
    .line 976
    if-eqz v5, :cond_1b

    .line 977
    .line 978
    const-string v9, "/"

    .line 979
    .line 980
    .line 981
    invoke-static {v5, v9}, Landroidx/media3/common/util/Util;->e1(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 982
    move-result-object v9

    .line 983
    .line 984
    const/16 v16, 0x0

    .line 985
    .line 986
    aget-object v9, v9, v16

    .line 987
    .line 988
    .line 989
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 990
    move-result v9

    .line 991
    .line 992
    .line 993
    invoke-virtual {v10, v9}, Landroidx/media3/common/Format$Builder;->J(I)Landroidx/media3/common/Format$Builder;

    .line 994
    .line 995
    const-string v9, "audio/eac3"

    .line 996
    .line 997
    .line 998
    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 999
    move-result v9

    .line 1000
    .line 1001
    if-eqz v9, :cond_1c

    .line 1002
    .line 1003
    const-string v9, "/JOC"

    .line 1004
    .line 1005
    .line 1006
    invoke-virtual {v5, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 1007
    move-result v5

    .line 1008
    .line 1009
    if-eqz v5, :cond_1c

    .line 1010
    .line 1011
    const-string v5, "ec+3"

    .line 1012
    .line 1013
    .line 1014
    invoke-virtual {v10, v5}, Landroidx/media3/common/Format$Builder;->K(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 1015
    .line 1016
    const-string v15, "audio/eac3-joc"

    .line 1017
    goto :goto_15

    .line 1018
    .line 1019
    :cond_1b
    const/16 v16, 0x0

    .line 1020
    .line 1021
    .line 1022
    :cond_1c
    :goto_15
    invoke-virtual {v10, v15}, Landroidx/media3/common/Format$Builder;->g0(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 1023
    .line 1024
    if-eqz v12, :cond_1d

    .line 1025
    .line 1026
    .line 1027
    invoke-virtual {v10, v8}, Landroidx/media3/common/Format$Builder;->Z(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Format$Builder;

    .line 1028
    .line 1029
    new-instance v4, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;

    .line 1030
    .line 1031
    .line 1032
    invoke-virtual {v10}, Landroidx/media3/common/Format$Builder;->G()Landroidx/media3/common/Format;

    .line 1033
    move-result-object v5

    .line 1034
    .line 1035
    .line 1036
    invoke-direct {v4, v12, v5, v6, v7}, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;-><init>(Landroid/net/Uri;Landroidx/media3/common/Format;Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    .line 1038
    move-object/from16 v9, v32

    .line 1039
    .line 1040
    .line 1041
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1042
    goto :goto_16

    .line 1043
    .line 1044
    :cond_1d
    move-object/from16 v9, v32

    .line 1045
    .line 1046
    if-eqz v4, :cond_1e

    .line 1047
    .line 1048
    .line 1049
    invoke-virtual {v10}, Landroidx/media3/common/Format$Builder;->G()Landroidx/media3/common/Format;

    .line 1050
    move-result-object v4

    .line 1051
    .line 1052
    move-object/from16 v21, v4

    .line 1053
    .line 1054
    :cond_1e
    :goto_16
    move-object/from16 v6, v31

    .line 1055
    .line 1056
    goto/16 :goto_19

    .line 1057
    .line 1058
    :pswitch_2
    move-object/from16 v21, v9

    .line 1059
    .line 1060
    move-object/from16 v9, v32

    .line 1061
    .line 1062
    move-object/from16 v14, v33

    .line 1063
    .line 1064
    const/16 v16, 0x0

    .line 1065
    .line 1066
    sget-object v4, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_INSTREAM_ID:Ljava/util/regex/Pattern;

    .line 1067
    .line 1068
    .line 1069
    invoke-static {v5, v4, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->y(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 1070
    move-result-object v4

    .line 1071
    .line 1072
    const-string v5, "CC"

    .line 1073
    .line 1074
    .line 1075
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1076
    move-result v5

    .line 1077
    .line 1078
    if-eqz v5, :cond_1f

    .line 1079
    .line 1080
    .line 1081
    invoke-virtual {v4, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1082
    move-result-object v4

    .line 1083
    .line 1084
    .line 1085
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1086
    move-result v4

    .line 1087
    .line 1088
    const-string v5, "application/cea-608"

    .line 1089
    goto :goto_17

    .line 1090
    :cond_1f
    const/4 v5, 0x7

    .line 1091
    .line 1092
    .line 1093
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1094
    move-result-object v4

    .line 1095
    .line 1096
    .line 1097
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1098
    move-result v4

    .line 1099
    .line 1100
    const-string v5, "application/cea-708"

    .line 1101
    .line 1102
    :goto_17
    if-nez v1, :cond_20

    .line 1103
    .line 1104
    new-instance v1, Ljava/util/ArrayList;

    .line 1105
    .line 1106
    .line 1107
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1108
    .line 1109
    .line 1110
    :cond_20
    invoke-virtual {v10, v5}, Landroidx/media3/common/Format$Builder;->g0(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 1111
    move-result-object v5

    .line 1112
    .line 1113
    .line 1114
    invoke-virtual {v5, v4}, Landroidx/media3/common/Format$Builder;->H(I)Landroidx/media3/common/Format$Builder;

    .line 1115
    .line 1116
    .line 1117
    invoke-virtual {v10}, Landroidx/media3/common/Format$Builder;->G()Landroidx/media3/common/Format;

    .line 1118
    move-result-object v4

    .line 1119
    .line 1120
    .line 1121
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1122
    goto :goto_16

    .line 1123
    .line 1124
    :pswitch_3
    move-object/from16 v21, v9

    .line 1125
    .line 1126
    move-object/from16 v9, v32

    .line 1127
    .line 1128
    move-object/from16 v14, v33

    .line 1129
    .line 1130
    const/16 v16, 0x0

    .line 1131
    .line 1132
    .line 1133
    invoke-static {v2, v6}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->f(Ljava/util/ArrayList;Ljava/lang/String;)Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;

    .line 1134
    move-result-object v4

    .line 1135
    .line 1136
    if-eqz v4, :cond_21

    .line 1137
    .line 1138
    iget-object v4, v4, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Variant;->format:Landroidx/media3/common/Format;

    .line 1139
    .line 1140
    iget-object v4, v4, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    .line 1141
    const/4 v5, 0x3

    .line 1142
    .line 1143
    .line 1144
    invoke-static {v4, v5}, Landroidx/media3/common/util/Util;->M(Ljava/lang/String;I)Ljava/lang/String;

    .line 1145
    move-result-object v4

    .line 1146
    .line 1147
    .line 1148
    invoke-virtual {v10, v4}, Landroidx/media3/common/Format$Builder;->K(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 1149
    .line 1150
    .line 1151
    invoke-static {v4}, Landroidx/media3/common/MimeTypes;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 1152
    move-result-object v4

    .line 1153
    goto :goto_18

    .line 1154
    :cond_21
    const/4 v4, 0x0

    .line 1155
    .line 1156
    :goto_18
    if-nez v4, :cond_22

    .line 1157
    .line 1158
    .line 1159
    const-string/jumbo v4, "text/vtt"

    .line 1160
    .line 1161
    .line 1162
    :cond_22
    invoke-virtual {v10, v4}, Landroidx/media3/common/Format$Builder;->g0(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 1163
    move-result-object v4

    .line 1164
    .line 1165
    .line 1166
    invoke-virtual {v4, v8}, Landroidx/media3/common/Format$Builder;->Z(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Format$Builder;

    .line 1167
    .line 1168
    if-eqz v12, :cond_23

    .line 1169
    .line 1170
    new-instance v4, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;

    .line 1171
    .line 1172
    .line 1173
    invoke-virtual {v10}, Landroidx/media3/common/Format$Builder;->G()Landroidx/media3/common/Format;

    .line 1174
    move-result-object v5

    .line 1175
    .line 1176
    .line 1177
    invoke-direct {v4, v12, v5, v6, v7}, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist$Rendition;-><init>(Landroid/net/Uri;Landroidx/media3/common/Format;Ljava/lang/String;Ljava/lang/String;)V

    .line 1178
    .line 1179
    move-object/from16 v6, v31

    .line 1180
    .line 1181
    .line 1182
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1183
    goto :goto_19

    .line 1184
    .line 1185
    :cond_23
    move-object/from16 v6, v31

    .line 1186
    .line 1187
    const-string v4, "HlsPlaylistParser"

    .line 1188
    .line 1189
    const-string v5, "EXT-X-MEDIA tag with missing mandatory URI attribute: skipping"

    .line 1190
    .line 1191
    .line 1192
    invoke-static {v4, v5}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    .line 1194
    :goto_19
    add-int/lit8 v0, v0, 0x1

    .line 1195
    .line 1196
    move-object/from16 v31, v6

    .line 1197
    .line 1198
    move-object/from16 v32, v9

    .line 1199
    .line 1200
    move-object/from16 v33, v14

    .line 1201
    .line 1202
    move-object/from16 v15, v20

    .line 1203
    .line 1204
    move-object/from16 v9, v21

    .line 1205
    const/4 v8, 0x0

    .line 1206
    .line 1207
    goto/16 :goto_e

    .line 1208
    .line 1209
    :cond_24
    move-object/from16 v21, v9

    .line 1210
    .line 1211
    move-object/from16 v6, v31

    .line 1212
    .line 1213
    move-object/from16 v9, v32

    .line 1214
    .line 1215
    move-object/from16 v14, v33

    .line 1216
    .line 1217
    if-eqz v13, :cond_25

    .line 1218
    .line 1219
    .line 1220
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 1221
    move-result-object v0

    .line 1222
    move-object v10, v0

    .line 1223
    goto :goto_1a

    .line 1224
    :cond_25
    move-object v10, v1

    .line 1225
    .line 1226
    :goto_1a
    new-instance v13, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;

    .line 1227
    move-object v0, v13

    .line 1228
    .line 1229
    move-object/from16 v1, p1

    .line 1230
    .line 1231
    move-object/from16 v2, v30

    .line 1232
    move-object v4, v14

    .line 1233
    move-object v5, v9

    .line 1234
    .line 1235
    move-object/from16 v7, v29

    .line 1236
    .line 1237
    move-object/from16 v8, v21

    .line 1238
    move-object v9, v10

    .line 1239
    .line 1240
    move/from16 v10, v19

    .line 1241
    .line 1242
    move-object/from16 v12, v28

    .line 1243
    .line 1244
    .line 1245
    invoke-direct/range {v0 .. v12}, Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/media3/common/Format;Ljava/util/List;ZLjava/util/Map;Ljava/util/List;)V

    .line 1246
    return-object v13

    .line 1247
    .line 1248
    .line 1249
    .line 1250
    .line 1251
    .line 1252
    .line 1253
    .line 1254
    .line 1255
    .line 1256
    .line 1257
    .line 1258
    .line 1259
    .line 1260
    .line 1261
    .line 1262
    .line 1263
    .line 1264
    :sswitch_data_0
    .sparse-switch
        -0x392db8c5 -> :sswitch_3
        -0x13dc6572 -> :sswitch_2
        0x3bba3b6 -> :sswitch_1
        0x4de1c5b -> :sswitch_0
    .end sparse-switch

    .line 1265
    .line 1266
    .line 1267
    .line 1268
    .line 1269
    .line 1270
    .line 1271
    .line 1272
    .line 1273
    .line 1274
    .line 1275
    .line 1276
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static p(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    .line 8
    move-result p1

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    const/4 p1, 0x1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 15
    move-result-object p0

    .line 16
    .line 17
    const-string p1, "YES"

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    move-result p0

    .line 22
    return p0

    .line 23
    :cond_0
    return p2
.end method

.method private static q(Ljava/lang/String;Ljava/util/regex/Pattern;D)D
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    .line 8
    move-result p1

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    const/4 p1, 0x1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 15
    move-result-object p0

    .line 16
    .line 17
    .line 18
    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    move-result-object p0

    .line 20
    .line 21
    check-cast p0, Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 25
    move-result-wide p0

    .line 26
    return-wide p0

    .line 27
    :cond_0
    return-wide p2
.end method

.method private static r(Ljava/lang/String;Ljava/util/regex/Pattern;I)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    .line 8
    move-result p1

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    const/4 p1, 0x1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 15
    move-result-object p0

    .line 16
    .line 17
    .line 18
    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    move-result-object p0

    .line 20
    .line 21
    check-cast p0, Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 25
    move-result p0

    .line 26
    return p0

    .line 27
    :cond_0
    return p2
.end method

.method private static s(Ljava/lang/String;Ljava/util/regex/Pattern;J)J
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    .line 8
    move-result p1

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    const/4 p1, 0x1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 15
    move-result-object p0

    .line 16
    .line 17
    .line 18
    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    move-result-object p0

    .line 20
    .line 21
    check-cast p0, Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 25
    move-result-wide p0

    .line 26
    return-wide p0

    .line 27
    :cond_0
    return-wide p2
.end method

.method private static t(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    .line 8
    move-result p1

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    const/4 p1, 0x1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 15
    move-result-object p0

    .line 16
    .line 17
    .line 18
    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    move-result-object p0

    .line 20
    move-object p2, p0

    .line 21
    .line 22
    check-cast p2, Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    .line 26
    move-result p0

    .line 27
    .line 28
    if-nez p0, :cond_2

    .line 29
    .line 30
    if-nez p2, :cond_1

    .line 31
    goto :goto_0

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-static {p2, p3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->A(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 35
    move-result-object p2

    .line 36
    :cond_2
    :goto_0
    return-object p2
.end method

.method private static u(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-static {p0, p1, v0, p2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->t(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method private static v(Ljava/lang/String;Ljava/util/Map;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CHARACTERISTICS:Ljava/util/regex/Pattern;

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0, p1}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->u(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    .line 9
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result p1

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    return v0

    .line 15
    .line 16
    :cond_0
    const-string p1, ","

    .line 17
    .line 18
    .line 19
    invoke-static {p0, p1}, Landroidx/media3/common/util/Util;->d1(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 20
    move-result-object p0

    .line 21
    .line 22
    .line 23
    const-string/jumbo p1, "public.accessibility.describes-video"

    .line 24
    .line 25
    .line 26
    invoke-static {p0, p1}, Landroidx/media3/common/util/Util;->s([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    move-result p1

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    const/16 v0, 0x200

    .line 32
    .line 33
    .line 34
    :cond_1
    const-string/jumbo p1, "public.accessibility.transcribes-spoken-dialog"

    .line 35
    .line 36
    .line 37
    invoke-static {p0, p1}, Landroidx/media3/common/util/Util;->s([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    move-result p1

    .line 39
    .line 40
    if-eqz p1, :cond_2

    .line 41
    .line 42
    or-int/lit16 v0, v0, 0x1000

    .line 43
    .line 44
    .line 45
    :cond_2
    const-string/jumbo p1, "public.accessibility.describes-music-and-sound"

    .line 46
    .line 47
    .line 48
    invoke-static {p0, p1}, Landroidx/media3/common/util/Util;->s([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    move-result p1

    .line 50
    .line 51
    if-eqz p1, :cond_3

    .line 52
    .line 53
    or-int/lit16 v0, v0, 0x400

    .line 54
    .line 55
    .line 56
    :cond_3
    const-string/jumbo p1, "public.easy-to-read"

    .line 57
    .line 58
    .line 59
    invoke-static {p0, p1}, Landroidx/media3/common/util/Util;->s([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    move-result p0

    .line 61
    .line 62
    if-eqz p0, :cond_4

    .line 63
    .line 64
    or-int/lit16 v0, v0, 0x2000

    .line 65
    :cond_4
    return v0
.end method

.method private static w(Ljava/lang/String;)I
    .locals 3

    .line 1
    .line 2
    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_DEFAULT:Ljava/util/regex/Pattern;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0, v1}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->p(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    .line 7
    move-result v0

    .line 8
    .line 9
    sget-object v2, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_FORCED:Ljava/util/regex/Pattern;

    .line 10
    .line 11
    .line 12
    invoke-static {p0, v2, v1}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->p(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    .line 13
    move-result v2

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    or-int/lit8 v0, v0, 0x2

    .line 18
    .line 19
    :cond_0
    sget-object v2, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_AUTOSELECT:Ljava/util/regex/Pattern;

    .line 20
    .line 21
    .line 22
    invoke-static {p0, v2, v1}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->p(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    .line 23
    move-result p0

    .line 24
    .line 25
    if-eqz p0, :cond_1

    .line 26
    .line 27
    or-int/lit8 v0, v0, 0x4

    .line 28
    :cond_1
    return v0
.end method

.method private static x(Ljava/lang/String;)Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;
    .locals 19

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    sget-object v1, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CAN_SKIP_UNTIL:Ljava/util/regex/Pattern;

    .line 5
    .line 6
    const-wide/high16 v2, -0x3c20000000000000L    # -9.223372036854776E18

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->q(Ljava/lang/String;Ljava/util/regex/Pattern;D)D

    .line 10
    move-result-wide v4

    .line 11
    .line 12
    cmpl-double v1, v4, v2

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    const-wide v6, 0x412e848000000000L    # 1000000.0

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 23
    .line 24
    if-nez v1, :cond_0

    .line 25
    move-wide v11, v8

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    mul-double/2addr v4, v6

    .line 28
    double-to-long v4, v4

    .line 29
    move-wide v11, v4

    .line 30
    .line 31
    :goto_0
    sget-object v1, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CAN_SKIP_DATE_RANGES:Ljava/util/regex/Pattern;

    .line 32
    const/4 v4, 0x0

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v1, v4}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->p(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    .line 36
    move-result v13

    .line 37
    .line 38
    sget-object v1, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_HOLD_BACK:Ljava/util/regex/Pattern;

    .line 39
    .line 40
    .line 41
    invoke-static {v0, v1, v2, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->q(Ljava/lang/String;Ljava/util/regex/Pattern;D)D

    .line 42
    move-result-wide v14

    .line 43
    .line 44
    cmpl-double v1, v14, v2

    .line 45
    .line 46
    if-nez v1, :cond_1

    .line 47
    move-wide v14, v8

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    mul-double/2addr v14, v6

    .line 50
    double-to-long v14, v14

    .line 51
    .line 52
    :goto_1
    sget-object v1, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_PART_HOLD_BACK:Ljava/util/regex/Pattern;

    .line 53
    .line 54
    .line 55
    invoke-static {v0, v1, v2, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->q(Ljava/lang/String;Ljava/util/regex/Pattern;D)D

    .line 56
    move-result-wide v16

    .line 57
    .line 58
    cmpl-double v1, v16, v2

    .line 59
    .line 60
    if-nez v1, :cond_2

    .line 61
    .line 62
    :goto_2
    move-wide/from16 v16, v8

    .line 63
    goto :goto_3

    .line 64
    .line 65
    :cond_2
    mul-double v1, v16, v6

    .line 66
    double-to-long v8, v1

    .line 67
    goto :goto_2

    .line 68
    .line 69
    :goto_3
    sget-object v1, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->REGEX_CAN_BLOCK_RELOAD:Ljava/util/regex/Pattern;

    .line 70
    .line 71
    .line 72
    invoke-static {v0, v1, v4}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->p(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    .line 73
    move-result v18

    .line 74
    .line 75
    new-instance v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;

    .line 76
    move-object v10, v0

    .line 77
    .line 78
    .line 79
    invoke-direct/range {v10 .. v18}, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;-><init>(JZJJZ)V

    .line 80
    return-object v0
.end method

.method private static y(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->u(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    return-object p2

    .line 8
    .line 9
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    const-string v0, "Couldn\'t match "

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string p1, " in "

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object p0

    .line 37
    const/4 p1, 0x0

    .line 38
    .line 39
    .line 40
    invoke-static {p0, p1}, Landroidx/media3/common/ParserException;->c(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 41
    move-result-object p0

    .line 42
    throw p0
.end method

.method private static z(Ljava/lang/String;Ljava/util/regex/Pattern;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {p0, p1, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->y(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    .line 10
    new-instance p1, Ljava/math/BigDecimal;

    .line 11
    .line 12
    .line 13
    invoke-direct {p1, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    new-instance p0, Ljava/math/BigDecimal;

    .line 16
    .line 17
    .line 18
    const-wide/32 v0, 0xf4240

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, v0, v1}, Ljava/math/BigDecimal;-><init>(J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p0}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    .line 25
    move-result-object p0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/math/BigDecimal;->longValue()J

    .line 29
    move-result-wide p0

    .line 30
    return-wide p0
.end method


# virtual methods
.method public h(Landroid/net/Uri;Ljava/io/InputStream;)Landroidx/media3/exoplayer/hls/playlist/HlsPlaylist;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/io/BufferedReader;

    .line 3
    .line 4
    new-instance v1, Ljava/io/InputStreamReader;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 11
    .line 12
    new-instance p2, Ljava/util/ArrayDeque;

    .line 13
    .line 14
    .line 15
    invoke-direct {p2}, Ljava/util/ArrayDeque;-><init>()V

    .line 16
    .line 17
    .line 18
    :try_start_0
    invoke-static {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->a(Ljava/io/BufferedReader;)Z

    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x0

    .line 21
    .line 22
    if-eqz v1, :cond_5

    .line 23
    .line 24
    .line 25
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    if-eqz v1, :cond_4

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 36
    move-result v3

    .line 37
    .line 38
    if-eqz v3, :cond_0

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :cond_0
    const-string v3, "#EXT-X-STREAM-INF"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 45
    move-result v3

    .line 46
    .line 47
    if-eqz v3, :cond_1

    .line 48
    .line 49
    .line 50
    invoke-interface {p2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    new-instance v1, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;

    .line 53
    .line 54
    .line 55
    invoke-direct {v1, p2, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;-><init>(Ljava/util/Queue;Ljava/io/BufferedReader;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    .line 62
    invoke-static {v1, p1}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->o(Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;Ljava/lang/String;)Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;

    .line 63
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .line 65
    .line 66
    invoke-static {v0}, Landroidx/media3/common/util/Util;->n(Ljava/io/Closeable;)V

    .line 67
    return-object p1

    .line 68
    :catchall_0
    move-exception p1

    .line 69
    goto :goto_2

    .line 70
    .line 71
    :cond_1
    :try_start_1
    const-string v3, "#EXT-X-TARGETDURATION"

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 75
    move-result v3

    .line 76
    .line 77
    if-nez v3, :cond_3

    .line 78
    .line 79
    const-string v3, "#EXT-X-MEDIA-SEQUENCE"

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 83
    move-result v3

    .line 84
    .line 85
    if-nez v3, :cond_3

    .line 86
    .line 87
    const-string v3, "#EXTINF"

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 91
    move-result v3

    .line 92
    .line 93
    if-nez v3, :cond_3

    .line 94
    .line 95
    const-string v3, "#EXT-X-KEY"

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 99
    move-result v3

    .line 100
    .line 101
    if-nez v3, :cond_3

    .line 102
    .line 103
    const-string v3, "#EXT-X-BYTERANGE"

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 107
    move-result v3

    .line 108
    .line 109
    if-nez v3, :cond_3

    .line 110
    .line 111
    const-string v3, "#EXT-X-DISCONTINUITY"

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    move-result v3

    .line 116
    .line 117
    if-nez v3, :cond_3

    .line 118
    .line 119
    const-string v3, "#EXT-X-DISCONTINUITY-SEQUENCE"

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    move-result v3

    .line 124
    .line 125
    if-nez v3, :cond_3

    .line 126
    .line 127
    const-string v3, "#EXT-X-ENDLIST"

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    move-result v3

    .line 132
    .line 133
    if-eqz v3, :cond_2

    .line 134
    goto :goto_1

    .line 135
    .line 136
    .line 137
    :cond_2
    invoke-interface {p2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 138
    goto :goto_0

    .line 139
    .line 140
    .line 141
    :cond_3
    :goto_1
    invoke-interface {p2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 142
    .line 143
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->multivariantPlaylist:Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;

    .line 144
    .line 145
    iget-object v2, p0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->previousMediaPlaylist:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    .line 146
    .line 147
    new-instance v3, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;

    .line 148
    .line 149
    .line 150
    invoke-direct {v3, p2, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;-><init>(Ljava/util/Queue;Ljava/io/BufferedReader;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 154
    move-result-object p1

    .line 155
    .line 156
    .line 157
    invoke-static {v1, v2, v3, p1}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->n(Landroidx/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$LineIterator;Ljava/lang/String;)Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    .line 158
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    .line 160
    .line 161
    invoke-static {v0}, Landroidx/media3/common/util/Util;->n(Ljava/io/Closeable;)V

    .line 162
    return-object p1

    .line 163
    .line 164
    .line 165
    :cond_4
    invoke-static {v0}, Landroidx/media3/common/util/Util;->n(Ljava/io/Closeable;)V

    .line 166
    .line 167
    const-string p1, "Failed to parse the playlist, could not identify any tags."

    .line 168
    .line 169
    .line 170
    invoke-static {p1, v2}, Landroidx/media3/common/ParserException;->c(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 171
    move-result-object p1

    .line 172
    throw p1

    .line 173
    .line 174
    :cond_5
    :try_start_2
    const-string p1, "Input does not start with the #EXTM3U header."

    .line 175
    .line 176
    .line 177
    invoke-static {p1, v2}, Landroidx/media3/common/ParserException;->c(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    .line 178
    move-result-object p1

    .line 179
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 180
    .line 181
    .line 182
    :goto_2
    invoke-static {v0}, Landroidx/media3/common/util/Util;->n(Ljava/io/Closeable;)V

    .line 183
    throw p1
.end method

.method public bridge synthetic parse(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->h(Landroid/net/Uri;Ljava/io/InputStream;)Landroidx/media3/exoplayer/hls/playlist/HlsPlaylist;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
