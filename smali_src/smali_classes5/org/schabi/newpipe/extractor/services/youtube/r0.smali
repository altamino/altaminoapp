.class public final Lorg/schabi/newpipe/extractor/services/youtube/r0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ANDROID_YOUTUBE_CLIENT_VERSION:Ljava/lang/String; = "19.28.35"

.field public static final CONTENT_CHECK_OK:Ljava/lang/String; = "contentCheckOk"

.field private static final CONTENT_PLAYBACK_NONCE_ALPHABET:Ljava/lang/String; = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

.field public static final CPN:Ljava/lang/String; = "cpn"

.field private static final C_ANDROID_PATTERN:Ljava/util/regex/Pattern;

.field private static final C_IOS_PATTERN:Ljava/util/regex/Pattern;

.field private static final C_TVHTML5_SIMPLY_EMBEDDED_PLAYER_PATTERN:Ljava/util/regex/Pattern;

.field private static final C_WEB_PATTERN:Ljava/util/regex/Pattern;

.field public static final DISABLE_PRETTY_PRINT_PARAMETER:Ljava/lang/String; = "prettyPrint=false"

.field private static final FEED_BASE_CHANNEL_ID:Ljava/lang/String; = "https://www.youtube.com/feeds/videos.xml?channel_id="

.field private static final FEED_BASE_USER:Ljava/lang/String; = "https://www.youtube.com/feeds/videos.xml?user="

.field private static final GOOGLE_URLS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final HARDCODED_CLIENT_VERSION:Ljava/lang/String; = "2.20240718.01.00"

.field private static final HARDCODED_YOUTUBE_MUSIC_CLIENT_VERSION:Ljava/lang/String; = "1.20240715.01.00"

.field private static final INITIAL_DATA_REGEXES:[Ljava/lang/String;

.field private static final INNERTUBE_CONTEXT_CLIENT_VERSION_REGEXES:[Ljava/lang/String;

.field private static final INVIDIOUS_URLS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final IOS_DEVICE_MODEL:Ljava/lang/String; = "iPhone16,2"

.field private static final IOS_OS_VERSION:Ljava/lang/String; = "17.5.1.21F90"

.field private static final IOS_USER_AGENT_VERSION:Ljava/lang/String; = "17_5_1"

.field private static final IOS_YOUTUBE_CLIENT_VERSION:Ljava/lang/String; = "19.28.1"

.field public static final RACY_CHECK_OK:Ljava/lang/String; = "racyCheckOk"

.field private static final TVHTML5_SIMPLY_EMBED_CLIENT_VERSION:Ljava/lang/String; = "2.0"

.field public static final VIDEO_ID:Ljava/lang/String; = "videoId"

.field private static final WEB_CLIENT_ID:Ljava/lang/String; = "1"

.field public static final YOUTUBEI_V1_GAPIS_URL:Ljava/lang/String; = "https://youtubei.googleapis.com/youtubei/v1/"

.field public static final YOUTUBEI_V1_URL:Ljava/lang/String; = "https://www.youtube.com/youtubei/v1/"

.field private static final YOUTUBE_MUSIC_CLIENT_ID:Ljava/lang/String; = "67"

.field private static final YOUTUBE_MUSIC_URL:Ljava/lang/String; = "https://music.youtube.com"

.field private static final YOUTUBE_URLS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static clientVersion:Ljava/lang/String;

.field private static clientVersionExtracted:Z

.field private static consentAccepted:Z

.field private static hardcodedClientVersionValid:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static numberGenerator:Ljava/util/Random;

.field private static youtubeMusicClientVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 29

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/b;->a()Ljava/util/Optional;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/r0;->hardcodedClientVersionValid:Ljava/util/Optional;

    .line 7
    .line 8
    const-string v0, "innertube_context_client_version\":\"([0-9\\.]+?)\""

    .line 9
    .line 10
    const-string v1, "client.version=([0-9\\.]+)"

    .line 11
    .line 12
    const-string v2, "INNERTUBE_CONTEXT_CLIENT_VERSION\":\"([0-9\\.]+?)\""

    .line 13
    .line 14
    .line 15
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/r0;->INNERTUBE_CONTEXT_CLIENT_VERSION_REGEXES:[Ljava/lang/String;

    .line 19
    .line 20
    const-string v0, "window\\[\"ytInitialData\"\\]\\s*=\\s*(\\{.*?\\});"

    .line 21
    .line 22
    const-string v1, "var\\s*ytInitialData\\s*=\\s*(\\{.*?\\});"

    .line 23
    .line 24
    .line 25
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/r0;->INITIAL_DATA_REGEXES:[Ljava/lang/String;

    .line 29
    .line 30
    new-instance v0, Ljava/util/Random;

    .line 31
    .line 32
    .line 33
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 34
    .line 35
    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/r0;->numberGenerator:Ljava/util/Random;

    .line 36
    .line 37
    const-string v0, "&c=WEB"

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/r0;->C_WEB_PATTERN:Ljava/util/regex/Pattern;

    .line 44
    .line 45
    const-string v0, "&c=TVHTML5_SIMPLY_EMBEDDED_PLAYER"

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/r0;->C_TVHTML5_SIMPLY_EMBEDDED_PLAYER_PATTERN:Ljava/util/regex/Pattern;

    .line 52
    .line 53
    const-string v0, "&c=ANDROID"

    .line 54
    .line 55
    .line 56
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/r0;->C_ANDROID_PATTERN:Ljava/util/regex/Pattern;

    .line 60
    .line 61
    const-string v0, "&c=IOS"

    .line 62
    .line 63
    .line 64
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 65
    move-result-object v0

    .line 66
    .line 67
    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/r0;->C_IOS_PATTERN:Ljava/util/regex/Pattern;

    .line 68
    .line 69
    const-string v0, "m.google."

    .line 70
    .line 71
    const-string v1, "www.google."

    .line 72
    .line 73
    const-string v2, "google."

    .line 74
    .line 75
    .line 76
    invoke-static {v2, v0, v1}, Lorg/schabi/newpipe/extractor/services/youtube/e0;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    .line 77
    move-result-object v0

    .line 78
    .line 79
    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/r0;->GOOGLE_URLS:Ljava/util/Set;

    .line 80
    .line 81
    const-string v1, "invidio.us"

    .line 82
    .line 83
    const-string v2, "dev.invidio.us"

    .line 84
    .line 85
    const-string v3, "www.invidio.us"

    .line 86
    .line 87
    const-string v4, "redirect.invidious.io"

    .line 88
    .line 89
    const-string v5, "invidious.snopyta.org"

    .line 90
    .line 91
    const-string v6, "yewtu.be"

    .line 92
    .line 93
    const-string v7, "tube.connect.cafe"

    .line 94
    .line 95
    const-string v8, "tubus.eduvid.org"

    .line 96
    .line 97
    const-string v9, "invidious.kavin.rocks"

    .line 98
    .line 99
    const-string v10, "invidious.site"

    .line 100
    .line 101
    const-string v11, "invidious-us.kavin.rocks"

    .line 102
    .line 103
    const-string v12, "piped.kavin.rocks"

    .line 104
    .line 105
    const-string v13, "vid.mint.lgbt"

    .line 106
    .line 107
    const-string v14, "invidiou.site"

    .line 108
    .line 109
    const-string v15, "invidious.fdn.fr"

    .line 110
    .line 111
    const-string v16, "invidious.048596.xyz"

    .line 112
    .line 113
    const-string v17, "invidious.zee.li"

    .line 114
    .line 115
    const-string v18, "vid.puffyan.us"

    .line 116
    .line 117
    const-string v19, "ytprivate.com"

    .line 118
    .line 119
    const-string v20, "invidious.namazso.eu"

    .line 120
    .line 121
    const-string v21, "invidious.silkky.cloud"

    .line 122
    .line 123
    const-string v22, "ytb.trom.tf"

    .line 124
    .line 125
    const-string v23, "invidious.exonip.de"

    .line 126
    .line 127
    const-string v24, "inv.riverside.rocks"

    .line 128
    .line 129
    const-string v25, "invidious.blamefran.net"

    .line 130
    .line 131
    const-string v26, "y.com.cm"

    .line 132
    .line 133
    const-string v27, "invidious.moomoo.me"

    .line 134
    .line 135
    const-string v28, "yt.cyberhost.uk"

    .line 136
    .line 137
    .line 138
    filled-new-array/range {v1 .. v28}, [Ljava/lang/String;

    .line 139
    move-result-object v0

    .line 140
    .line 141
    .line 142
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/f0;->a([Ljava/lang/Object;)Ljava/util/Set;

    .line 143
    move-result-object v0

    .line 144
    .line 145
    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/r0;->INVIDIOUS_URLS:Ljava/util/Set;

    .line 146
    .line 147
    const-string v0, "m.youtube.com"

    .line 148
    .line 149
    const-string v1, "music.youtube.com"

    .line 150
    .line 151
    const-string v2, "youtube.com"

    .line 152
    .line 153
    const-string v3, "www.youtube.com"

    .line 154
    .line 155
    .line 156
    invoke-static {v2, v3, v0, v1}, Lorg/schabi/newpipe/extractor/services/youtube/g0;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    .line 157
    move-result-object v0

    .line 158
    .line 159
    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/r0;->YOUTUBE_URLS:Ljava/util/Set;

    .line 160
    const/4 v0, 0x0

    .line 161
    .line 162
    sput-boolean v0, Lorg/schabi/newpipe/extractor/services/youtube/r0;->consentAccepted:Z

    .line 163
    return-void
.end method

.method public static A()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->s()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/w;->a(Ljava/lang/Object;)Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    const-string v1, "Cookie"

    .line 11
    .line 12
    .line 13
    invoke-static {v1, v0}, Lorg/schabi/newpipe/extractor/services/youtube/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public static B(Lcom/grack/nanojson/JsonArray;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/grack/nanojson/JsonArray;",
            ")",
            "Ljava/util/List<",
            "Lx9/c;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonArray;->stream()Ljava/util/stream/Stream;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    const-class v0, Lcom/grack/nanojson/JsonObject;

    .line 7
    .line 8
    new-instance v1, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/a;

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v0}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/a;-><init>(Ljava/lang/Class;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p0, v1}, Lx9/j;->a(Ljava/util/stream/Stream;Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 15
    move-result-object p0

    .line 16
    .line 17
    const-class v0, Lcom/grack/nanojson/JsonObject;

    .line 18
    .line 19
    new-instance v1, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/d;

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, v0}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/d;-><init>(Ljava/lang/Class;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p0, v1}, Lorg/schabi/newpipe/extractor/localization/n;->a(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 26
    move-result-object p0

    .line 27
    .line 28
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/j0;

    .line 29
    .line 30
    .line 31
    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/services/youtube/j0;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-static {p0, v0}, Lx9/j;->a(Ljava/util/stream/Stream;Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 35
    move-result-object p0

    .line 36
    .line 37
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/k0;

    .line 38
    .line 39
    .line 40
    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/services/youtube/k0;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-static {p0, v0}, Lorg/schabi/newpipe/extractor/localization/n;->a(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 44
    move-result-object p0

    .line 45
    .line 46
    .line 47
    invoke-static {}, Lda/d;->a()Ljava/util/stream/Collector;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    .line 51
    invoke-static {p0, v0}, Lda/e;->a(Ljava/util/stream/Stream;Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 52
    move-result-object p0

    .line 53
    .line 54
    check-cast p0, Ljava/util/List;

    .line 55
    return-object p0
.end method

.method private static C(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-static {}, Lcom/grack/nanojson/JsonParser;->object()Lcom/grack/nanojson/JsonParser$JsonParserContext;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget-object v1, Lorg/schabi/newpipe/extractor/services/youtube/r0;->INITIAL_DATA_REGEXES:[Ljava/lang/String;

    .line 7
    const/4 v2, 0x1

    .line 8
    .line 9
    .line 10
    invoke-static {p0, v1, v2}, Lqa/y;->i(Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;

    .line 11
    move-result-object p0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p0}, Lcom/grack/nanojson/JsonParser$JsonParserContext;->from(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    move-result-object p0

    .line 16
    .line 17
    check-cast p0, Lcom/grack/nanojson/JsonObject;
    :try_end_0
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lqa/n$a; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    return-object p0

    .line 19
    :catch_0
    move-exception p0

    .line 20
    goto :goto_0

    .line 21
    :catch_1
    move-exception p0

    .line 22
    .line 23
    :goto_0
    new-instance v0, Laa/h;

    .line 24
    .line 25
    const-string v1, "Could not get ytInitialData"

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v1, p0}, Laa/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    throw v0
.end method

.method public static D(Lorg/schabi/newpipe/extractor/localization/i;)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    if-eqz p0, :cond_0

    .line 3
    goto :goto_0

    .line 4
    .line 5
    :cond_0
    sget-object p0, Lorg/schabi/newpipe/extractor/localization/i;->DEFAULT:Lorg/schabi/newpipe/extractor/localization/i;

    .line 6
    .line 7
    .line 8
    :goto_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/localization/i;->d()Ljava/lang/String;

    .line 9
    move-result-object p0

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    const-string v1, "com.google.ios.youtube/19.28.1(iPhone16,2; U; CPU iOS 17_5_1 like Mac OS X; "

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string p0, ")"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method

.method public static E(Ljava/lang/String;[BLorg/schabi/newpipe/extractor/localization/i;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Laa/d;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p2}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->v(Lorg/schabi/newpipe/extractor/localization/i;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {p0, p1, p2, v0, p3}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->H(Ljava/lang/String;[BLorg/schabi/newpipe/extractor/localization/i;Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static F(Ljava/lang/String;[BLorg/schabi/newpipe/extractor/localization/i;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Laa/d;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p2}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->D(Lorg/schabi/newpipe/extractor/localization/i;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {p0, p1, p2, v0, p3}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->H(Ljava/lang/String;[BLorg/schabi/newpipe/extractor/localization/i;Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static G(Ljava/lang/String;[BLorg/schabi/newpipe/extractor/localization/i;)Lcom/grack/nanojson/JsonObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Laa/d;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->Q()Ljava/util/Map;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lx9/p;->a()Lz9/a;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    const-string v3, "https://www.youtube.com/youtubei/v1/"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string p0, "?prettyPrint=false"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p0, v0, p1, p2}, Lz9/a;->postWithContentTypeJson(Ljava/lang/String;Ljava/util/Map;[BLorg/schabi/newpipe/extractor/localization/i;)Lz9/d;

    .line 34
    move-result-object p0

    .line 35
    .line 36
    .line 37
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->O(Lz9/d;)Ljava/lang/String;

    .line 38
    move-result-object p0

    .line 39
    .line 40
    .line 41
    invoke-static {p0}, Lqa/e;->k(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 42
    move-result-object p0

    .line 43
    return-object p0
.end method

.method private static H(Ljava/lang/String;[BLorg/schabi/newpipe/extractor/localization/i;Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Laa/d;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p3}, Lorg/schabi/newpipe/extractor/services/youtube/b0;->a(Ljava/lang/Object;)Ljava/util/List;

    .line 4
    move-result-object p3

    .line 5
    .line 6
    const-string v0, "2"

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/c0;->a(Ljava/lang/Object;)Ljava/util/List;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    const-string v1, "User-Agent"

    .line 13
    .line 14
    const-string v2, "X-Goog-Api-Format-Version"

    .line 15
    .line 16
    .line 17
    invoke-static {v1, p3, v2, v0}, Lorg/schabi/newpipe/extractor/services/youtube/d0;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 18
    move-result-object p3

    .line 19
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    const-string v1, "https://youtubei.googleapis.com/youtubei/v1/"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string p0, "?prettyPrint=false"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object p0

    .line 41
    .line 42
    .line 43
    invoke-static {}, Lx9/p;->a()Lz9/a;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    .line 47
    invoke-static {p4}, Lqa/y;->m(Ljava/lang/String;)Z

    .line 48
    move-result v1

    .line 49
    .line 50
    if-eqz v1, :cond_0

    .line 51
    goto :goto_0

    .line 52
    .line 53
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object p0

    .line 67
    .line 68
    .line 69
    :goto_0
    invoke-virtual {v0, p0, p3, p1, p2}, Lz9/a;->postWithContentTypeJson(Ljava/lang/String;Ljava/util/Map;[BLorg/schabi/newpipe/extractor/localization/i;)Lz9/d;

    .line 70
    move-result-object p0

    .line 71
    .line 72
    .line 73
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->O(Lz9/d;)Ljava/lang/String;

    .line 74
    move-result-object p0

    .line 75
    .line 76
    .line 77
    invoke-static {p0}, Lqa/e;->k(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 78
    move-result-object p0

    .line 79
    return-object p0
.end method

.method private static I(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/i0;->a(Ljava/lang/Object;)Ljava/util/List;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    const-string v0, "Origin"

    .line 7
    .line 8
    const-string v1, "Referer"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, p0, v1, p0}, Lorg/schabi/newpipe/extractor/services/youtube/v;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public static J(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-static {p0, v0}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->K(Lcom/grack/nanojson/JsonObject;Z)Ljava/lang/String;

    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public static K(Lcom/grack/nanojson/JsonObject;Z)Ljava/lang/String;
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lqa/y;->o(Ljava/util/Map;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    return-object v1

    .line 9
    .line 10
    :cond_0
    const-string v0, "simpleText"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    .line 14
    move-result v2

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    .line 23
    :cond_1
    const-string v0, "runs"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 27
    move-result-object p0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonArray;->isEmpty()Z

    .line 31
    move-result v0

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    return-object v1

    .line 35
    .line 36
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonArray;->iterator()Ljava/util/Iterator;

    .line 43
    move-result-object p0

    .line 44
    .line 45
    .line 46
    :cond_3
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    move-result v1

    .line 48
    .line 49
    if-eqz v1, :cond_e

    .line 50
    .line 51
    .line 52
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    move-result-object v1

    .line 54
    .line 55
    check-cast v1, Lcom/grack/nanojson/JsonObject;

    .line 56
    .line 57
    const-string v2, "text"

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    move-result-object v2

    .line 62
    .line 63
    if-eqz p1, :cond_d

    .line 64
    .line 65
    const-string v3, "navigationEndpoint"

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v3}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    .line 69
    move-result v4

    .line 70
    .line 71
    if-eqz v4, :cond_4

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 75
    move-result-object v3

    .line 76
    .line 77
    .line 78
    invoke-static {v3}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->N(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    .line 79
    move-result-object v3

    .line 80
    .line 81
    .line 82
    invoke-static {v3}, Lqa/y;->m(Ljava/lang/String;)Z

    .line 83
    move-result v4

    .line 84
    .line 85
    if-nez v4, :cond_4

    .line 86
    .line 87
    .line 88
    invoke-static {v3}, Lorg/jsoup/nodes/Entities;->escape(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    move-result-object v3

    .line 90
    .line 91
    .line 92
    invoke-static {v2}, Lorg/jsoup/nodes/Entities;->escape(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    move-result-object v2

    .line 94
    .line 95
    new-instance v4, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    const-string v5, "<a href=\""

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    const-string v3, "\">"

    .line 109
    .line 110
    .line 111
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    const-string v2, "</a>"

    .line 117
    .line 118
    .line 119
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    move-result-object v2

    .line 124
    .line 125
    :cond_4
    const-string v3, "bold"

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1, v3}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    .line 129
    move-result v4

    .line 130
    const/4 v5, 0x0

    .line 131
    const/4 v6, 0x1

    .line 132
    .line 133
    if-eqz v4, :cond_5

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1, v3}, Lcom/grack/nanojson/JsonObject;->getBoolean(Ljava/lang/String;)Z

    .line 137
    move-result v3

    .line 138
    .line 139
    if-eqz v3, :cond_5

    .line 140
    move v3, v6

    .line 141
    goto :goto_1

    .line 142
    :cond_5
    move v3, v5

    .line 143
    .line 144
    :goto_1
    const-string v4, "italics"

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1, v4}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    .line 148
    move-result v7

    .line 149
    .line 150
    if-eqz v7, :cond_6

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1, v4}, Lcom/grack/nanojson/JsonObject;->getBoolean(Ljava/lang/String;)Z

    .line 154
    move-result v4

    .line 155
    .line 156
    if-eqz v4, :cond_6

    .line 157
    move v4, v6

    .line 158
    goto :goto_2

    .line 159
    :cond_6
    move v4, v5

    .line 160
    .line 161
    :goto_2
    const-string v7, "strikethrough"

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1, v7}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    .line 165
    move-result v8

    .line 166
    .line 167
    if-eqz v8, :cond_7

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1, v7}, Lcom/grack/nanojson/JsonObject;->getBoolean(Ljava/lang/String;)Z

    .line 171
    move-result v1

    .line 172
    .line 173
    if-eqz v1, :cond_7

    .line 174
    move v5, v6

    .line 175
    .line 176
    :cond_7
    if-eqz v3, :cond_8

    .line 177
    .line 178
    const-string v1, "<b>"

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    :cond_8
    if-eqz v4, :cond_9

    .line 184
    .line 185
    const-string v1, "<i>"

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    :cond_9
    if-eqz v5, :cond_a

    .line 191
    .line 192
    const-string v1, "<s>"

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    :cond_a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    if-eqz v5, :cond_b

    .line 201
    .line 202
    const-string v1, "</s>"

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    :cond_b
    if-eqz v4, :cond_c

    .line 208
    .line 209
    const-string v1, "</i>"

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    :cond_c
    if-eqz v3, :cond_3

    .line 215
    .line 216
    const-string v1, "</b>"

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    goto/16 :goto_0

    .line 222
    .line 223
    .line 224
    :cond_d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    goto/16 :goto_0

    .line 227
    .line 228
    .line 229
    :cond_e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    move-result-object p0

    .line 231
    .line 232
    if-eqz p1, :cond_f

    .line 233
    .line 234
    const-string p1, "\\n"

    .line 235
    .line 236
    const-string v0, "<br>"

    .line 237
    .line 238
    .line 239
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 240
    move-result-object p0

    .line 241
    .line 242
    const-string p1, " {2}"

    .line 243
    .line 244
    const-string v0, " &nbsp;"

    .line 245
    .line 246
    .line 247
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 248
    move-result-object p0

    .line 249
    :cond_f
    return-object p0
.end method

.method public static L(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->J(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    return-object p0

    .line 8
    .line 9
    :cond_0
    new-instance p0, Laa/h;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    const-string v1, "Could not extract text: "

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, p1}, Laa/h;-><init>(Ljava/lang/String;)V

    .line 30
    throw p0
.end method

.method public static M(Lcom/grack/nanojson/JsonObject;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/grack/nanojson/JsonObject;",
            ")",
            "Ljava/util/List<",
            "Lx9/c;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    :try_start_0
    const-string v0, "thumbnail"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    const-string v0, "thumbnails"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 12
    move-result-object p0

    .line 13
    .line 14
    .line 15
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->B(Lcom/grack/nanojson/JsonArray;)Ljava/util/List;

    .line 16
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return-object p0

    .line 18
    :catch_0
    move-exception p0

    .line 19
    .line 20
    new-instance v0, Laa/h;

    .line 21
    .line 22
    const-string v1, "Could not get thumbnails from InfoItem"

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v1, p0}, Laa/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    throw v0
.end method

.method public static N(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;
    .locals 10

    .line 1
    .line 2
    const-string v0, "urlEndpoint"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    .line 6
    move-result v1

    .line 7
    .line 8
    const-string v2, "https://www.youtube.com"

    .line 9
    .line 10
    const-string v3, "url"

    .line 11
    .line 12
    if-eqz v1, :cond_5

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v3}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    const-string v1, "https://www.youtube.com/redirect?"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 26
    move-result v1

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    const/16 v1, 0x17

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    :cond_0
    const-string v1, "/redirect?"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 40
    move-result v1

    .line 41
    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    const/16 v1, 0xa

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    const-string v1, "&"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    array-length v1, v0

    .line 56
    const/4 v4, 0x0

    .line 57
    move v5, v4

    .line 58
    .line 59
    :goto_0
    if-ge v5, v1, :cond_5

    .line 60
    .line 61
    aget-object v6, v0, v5

    .line 62
    .line 63
    const-string v7, "="

    .line 64
    .line 65
    .line 66
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 67
    move-result-object v8

    .line 68
    .line 69
    aget-object v8, v8, v4

    .line 70
    .line 71
    const-string v9, "q"

    .line 72
    .line 73
    .line 74
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    move-result v8

    .line 76
    .line 77
    if-eqz v8, :cond_1

    .line 78
    .line 79
    .line 80
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 81
    move-result-object p0

    .line 82
    const/4 v0, 0x1

    .line 83
    .line 84
    aget-object p0, p0, v0

    .line 85
    .line 86
    .line 87
    invoke-static {p0}, Lqa/y;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    move-result-object p0

    .line 89
    return-object p0

    .line 90
    .line 91
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 92
    goto :goto_0

    .line 93
    .line 94
    :cond_2
    const-string v1, "http"

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 98
    move-result v1

    .line 99
    .line 100
    if-eqz v1, :cond_3

    .line 101
    return-object v0

    .line 102
    .line 103
    :cond_3
    const-string v1, "/channel"

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 107
    move-result v1

    .line 108
    .line 109
    if-nez v1, :cond_4

    .line 110
    .line 111
    const-string v1, "/user"

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 115
    move-result v1

    .line 116
    .line 117
    if-nez v1, :cond_4

    .line 118
    .line 119
    const-string v1, "/watch"

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 123
    move-result v1

    .line 124
    .line 125
    if-eqz v1, :cond_5

    .line 126
    .line 127
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    move-result-object p0

    .line 141
    return-object p0

    .line 142
    .line 143
    :cond_5
    const-string v0, "browseEndpoint"

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    .line 147
    move-result v1

    .line 148
    .line 149
    const-string v4, "https://www.youtube.com/playlist?list="

    .line 150
    .line 151
    if-eqz v1, :cond_8

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 155
    move-result-object v0

    .line 156
    .line 157
    const-string v1, "canonicalBaseUrl"

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 161
    move-result-object v1

    .line 162
    .line 163
    const-string v5, "browseId"

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0, v5}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 167
    move-result-object v0

    .line 168
    .line 169
    if-eqz v0, :cond_7

    .line 170
    .line 171
    const-string v5, "UC"

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 175
    move-result v5

    .line 176
    .line 177
    if-eqz v5, :cond_6

    .line 178
    .line 179
    new-instance p0, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .line 184
    const-string v1, "https://www.youtube.com/channel/"

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    move-result-object p0

    .line 195
    return-object p0

    .line 196
    .line 197
    :cond_6
    const-string v5, "VL"

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 201
    move-result v5

    .line 202
    .line 203
    if-eqz v5, :cond_7

    .line 204
    const/4 p0, 0x2

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 208
    move-result-object p0

    .line 209
    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    move-result-object p0

    .line 224
    return-object p0

    .line 225
    .line 226
    .line 227
    :cond_7
    invoke-static {v1}, Lqa/y;->m(Ljava/lang/String;)Z

    .line 228
    move-result v0

    .line 229
    .line 230
    if-nez v0, :cond_8

    .line 231
    .line 232
    new-instance p0, Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 236
    .line 237
    .line 238
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 245
    move-result-object p0

    .line 246
    return-object p0

    .line 247
    .line 248
    :cond_8
    const-string v0, "watchEndpoint"

    .line 249
    .line 250
    .line 251
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    .line 252
    move-result v1

    .line 253
    .line 254
    const-string v5, "playlistId"

    .line 255
    .line 256
    if-eqz v1, :cond_b

    .line 257
    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    .line 263
    const-string v2, "https://www.youtube.com/watch?v="

    .line 264
    .line 265
    .line 266
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 270
    move-result-object v2

    .line 271
    .line 272
    const-string v3, "videoId"

    .line 273
    .line 274
    .line 275
    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 276
    move-result-object v2

    .line 277
    .line 278
    .line 279
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 283
    move-result-object v2

    .line 284
    .line 285
    .line 286
    invoke-virtual {v2, v5}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    .line 287
    move-result v2

    .line 288
    .line 289
    if-eqz v2, :cond_9

    .line 290
    .line 291
    const-string v2, "&list="

    .line 292
    .line 293
    .line 294
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 298
    move-result-object v2

    .line 299
    .line 300
    .line 301
    invoke-virtual {v2, v5}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 302
    move-result-object v2

    .line 303
    .line 304
    .line 305
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    :cond_9
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 309
    move-result-object v2

    .line 310
    .line 311
    const-string v3, "startTimeSeconds"

    .line 312
    .line 313
    .line 314
    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    .line 315
    move-result v2

    .line 316
    .line 317
    if-eqz v2, :cond_a

    .line 318
    .line 319
    const-string v2, "&t="

    .line 320
    .line 321
    .line 322
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 326
    move-result-object p0

    .line 327
    .line 328
    .line 329
    invoke-virtual {p0, v3}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    .line 330
    move-result p0

    .line 331
    .line 332
    .line 333
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    :cond_a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 337
    move-result-object p0

    .line 338
    return-object p0

    .line 339
    .line 340
    :cond_b
    const-string v0, "watchPlaylistEndpoint"

    .line 341
    .line 342
    .line 343
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    .line 344
    move-result v1

    .line 345
    .line 346
    if-eqz v1, :cond_c

    .line 347
    .line 348
    .line 349
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 350
    move-result-object p0

    .line 351
    .line 352
    .line 353
    invoke-virtual {p0, v5}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 354
    move-result-object p0

    .line 355
    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 369
    move-result-object p0

    .line 370
    return-object p0

    .line 371
    .line 372
    :cond_c
    const-string v0, "commandMetadata"

    .line 373
    .line 374
    .line 375
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    .line 376
    move-result v1

    .line 377
    .line 378
    if-eqz v1, :cond_d

    .line 379
    .line 380
    .line 381
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 382
    move-result-object p0

    .line 383
    .line 384
    const-string v0, "webCommandMetadata"

    .line 385
    .line 386
    .line 387
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 388
    move-result-object p0

    .line 389
    .line 390
    .line 391
    invoke-virtual {p0, v3}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    .line 392
    move-result v0

    .line 393
    .line 394
    if-eqz v0, :cond_d

    .line 395
    .line 396
    .line 397
    invoke-virtual {p0, v3}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 398
    move-result-object p0

    .line 399
    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 404
    .line 405
    .line 406
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 413
    move-result-object p0

    .line 414
    return-object p0

    .line 415
    :cond_d
    const/4 p0, 0x0

    .line 416
    return-object p0
.end method

.method public static O(Lz9/d;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lz9/d;->d()I

    .line 4
    move-result v0

    .line 5
    .line 6
    const/16 v1, 0x194

    .line 7
    .line 8
    const-string v2, "\")"

    .line 9
    .line 10
    if-eq v0, v1, :cond_5

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lz9/d;->c()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 18
    move-result v1

    .line 19
    .line 20
    const/16 v3, 0x32

    .line 21
    .line 22
    if-lt v1, v3, :cond_4

    .line 23
    .line 24
    new-instance v1, Ljava/net/URL;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lz9/d;->b()Ljava/lang/String;

    .line 28
    move-result-object v3

    .line 29
    .line 30
    .line 31
    invoke-direct {v1, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 35
    move-result-object v3

    .line 36
    .line 37
    const-string v4, "www.youtube.com"

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 41
    move-result v3

    .line 42
    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    const-string v3, "/oops"

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 53
    move-result v3

    .line 54
    .line 55
    if-nez v3, :cond_0

    .line 56
    .line 57
    const-string v3, "/error"

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 61
    move-result v1

    .line 62
    .line 63
    if-nez v1, :cond_0

    .line 64
    goto :goto_0

    .line 65
    .line 66
    :cond_0
    new-instance p0, Laa/b;

    .line 67
    .line 68
    const-string v0, "Content unavailable"

    .line 69
    .line 70
    .line 71
    invoke-direct {p0, v0}, Laa/b;-><init>(Ljava/lang/String;)V

    .line 72
    throw p0

    .line 73
    .line 74
    :cond_1
    :goto_0
    const-string v1, "Content-Type"

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v1}, Lz9/d;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    move-result-object v1

    .line 79
    .line 80
    if-eqz v1, :cond_3

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 84
    move-result-object v1

    .line 85
    .line 86
    const-string v3, "text/html"

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 90
    move-result v1

    .line 91
    .line 92
    if-nez v1, :cond_2

    .line 93
    goto :goto_1

    .line 94
    .line 95
    :cond_2
    new-instance v0, Laa/h;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Lz9/d;->b()Ljava/lang/String;

    .line 99
    move-result-object p0

    .line 100
    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    const-string v3, "Got HTML document, expected JSON response (latest url was: \""

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    move-result-object p0

    .line 120
    .line 121
    .line 122
    invoke-direct {v0, p0}, Laa/h;-><init>(Ljava/lang/String;)V

    .line 123
    throw v0

    .line 124
    :cond_3
    :goto_1
    return-object v0

    .line 125
    .line 126
    :cond_4
    new-instance p0, Laa/h;

    .line 127
    .line 128
    const-string v0, "JSON response is too short"

    .line 129
    .line 130
    .line 131
    invoke-direct {p0, v0}, Laa/h;-><init>(Ljava/lang/String;)V

    .line 132
    throw p0

    .line 133
    .line 134
    :cond_5
    new-instance v0, Laa/b;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0}, Lz9/d;->d()I

    .line 138
    move-result v1

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0}, Lz9/d;->e()Ljava/lang/String;

    .line 142
    move-result-object p0

    .line 143
    .line 144
    new-instance v3, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .line 149
    const-string v4, "Not found (\""

    .line 150
    .line 151
    .line 152
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    const-string v1, " "

    .line 158
    .line 159
    .line 160
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    move-result-object p0

    .line 171
    .line 172
    .line 173
    invoke-direct {v0, p0}, Laa/b;-><init>(Ljava/lang/String;)V

    .line 174
    throw v0
.end method

.method public static P(Lorg/schabi/newpipe/extractor/localization/i;Lorg/schabi/newpipe/extractor/localization/a;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Laa/d;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->q0(Lorg/schabi/newpipe/extractor/localization/i;Lorg/schabi/newpipe/extractor/localization/a;)Lcom/grack/nanojson/JsonBuilder;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    const-string v0, "videoId"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0, p2}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    const-string p2, "contentCheckOk"

    .line 13
    const/4 v0, 0x1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2, v0}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Z)Lcom/grack/nanojson/JsonBuilder;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    const-string p2, "racyCheckOk"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p2, v0}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Z)Lcom/grack/nanojson/JsonBuilder;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/grack/nanojson/JsonBuilder;->done()Ljava/lang/Object;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Lcom/grack/nanojson/JsonWriter;->string(Ljava/lang/Object;)Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 37
    move-result-object p1

    .line 38
    .line 39
    .line 40
    invoke-static {}, Lx9/p;->a()Lz9/a;

    .line 41
    move-result-object p2

    .line 42
    .line 43
    const-string v0, "https://www.youtube.com/youtubei/v1/player?prettyPrint=false&$fields=microformat,playabilityStatus,storyboards,videoDetails"

    .line 44
    .line 45
    .line 46
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->Q()Ljava/util/Map;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2, v0, v1, p1, p0}, Lz9/a;->postWithContentTypeJson(Ljava/lang/String;Ljava/util/Map;[BLorg/schabi/newpipe/extractor/localization/i;)Lz9/d;

    .line 51
    move-result-object p0

    .line 52
    .line 53
    .line 54
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->O(Lz9/d;)Ljava/lang/String;

    .line 55
    move-result-object p0

    .line 56
    .line 57
    .line 58
    invoke-static {p0}, Lqa/e;->k(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 59
    move-result-object p0

    .line 60
    return-object p0
.end method

.method public static Q()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/d;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->x()Ljava/util/Map;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->s()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Lorg/schabi/newpipe/extractor/services/youtube/h0;->a(Ljava/lang/Object;)Ljava/util/List;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    const-string v2, "Cookie"

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    return-object v0
.end method

.method public static R()Z
    .locals 1

    .line 1
    sget-boolean v0, Lorg/schabi/newpipe/extractor/services/youtube/r0;->consentAccepted:Z

    return v0
.end method

.method public static S(Ljava/lang/String;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    :try_start_0
    new-instance v0, Ljava/net/URL;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    sget-object p0, Lorg/schabi/newpipe/extractor/services/youtube/r0;->GOOGLE_URLS:Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/localization/m;->a(Ljava/util/Set;)Ljava/util/stream/Stream;

    .line 15
    move-result-object p0

    .line 16
    .line 17
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/l0;

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, v0}, Lorg/schabi/newpipe/extractor/services/youtube/l0;-><init>(Ljava/net/URL;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p0, v1}, Lcom/google/android/gms/internal/ads/l;->a(Ljava/util/stream/Stream;Ljava/util/function/Predicate;)Z

    .line 24
    move-result p0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    return p0

    .line 26
    :catch_0
    const/4 p0, 0x0

    .line 27
    return p0
.end method

.method public static T()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Laa/d;
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/r0;->hardcodedClientVersionValid:Ljava/util/Optional;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/q;->a(Ljava/util/Optional;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/r0;->hardcodedClientVersionValid:Ljava/util/Optional;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/r;->a(Ljava/util/Optional;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Ljava/lang/Boolean;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 20
    move-result v0

    .line 21
    return v0

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-static {}, Lcom/grack/nanojson/JsonWriter;->string()Lcom/grack/nanojson/JsonStringWriter;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonStringWriter;->object()Lcom/grack/nanojson/JsonWriterBase;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    .line 32
    .line 33
    const-string v1, "context"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonStringWriter;->object(Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    .line 40
    .line 41
    const-string v1, "client"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonStringWriter;->object(Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    .line 48
    .line 49
    const-string v1, "hl"

    .line 50
    .line 51
    const-string v2, "en-GB"

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    .line 58
    .line 59
    const-string v1, "gl"

    .line 60
    .line 61
    const-string v2, "GB"

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    .line 65
    move-result-object v0

    .line 66
    .line 67
    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    .line 68
    .line 69
    const-string v1, "clientName"

    .line 70
    .line 71
    const-string v2, "WEB"

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    .line 75
    move-result-object v0

    .line 76
    .line 77
    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    .line 78
    .line 79
    const-string v1, "clientVersion"

    .line 80
    .line 81
    const-string v2, "2.20240718.01.00"

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    .line 85
    move-result-object v0

    .line 86
    .line 87
    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    .line 88
    .line 89
    const-string v1, "platform"

    .line 90
    .line 91
    const-string v3, "DESKTOP"

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v1, v3}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    .line 95
    move-result-object v0

    .line 96
    .line 97
    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    .line 98
    .line 99
    const-string v1, "utcOffsetMinutes"

    .line 100
    const/4 v3, 0x0

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v1, v3}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;I)Lcom/grack/nanojson/JsonWriterBase;

    .line 104
    move-result-object v0

    .line 105
    .line 106
    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonStringWriter;->end()Lcom/grack/nanojson/JsonWriterBase;

    .line 110
    move-result-object v0

    .line 111
    .line 112
    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    .line 113
    .line 114
    const-string v1, "request"

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonStringWriter;->object(Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    .line 118
    move-result-object v0

    .line 119
    .line 120
    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    .line 121
    .line 122
    const-string v1, "internalExperimentFlags"

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonStringWriter;->array(Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    .line 126
    move-result-object v0

    .line 127
    .line 128
    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonStringWriter;->end()Lcom/grack/nanojson/JsonWriterBase;

    .line 132
    move-result-object v0

    .line 133
    .line 134
    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    .line 135
    .line 136
    const-string v1, "useSsl"

    .line 137
    const/4 v4, 0x1

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v1, v4}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Z)Lcom/grack/nanojson/JsonWriterBase;

    .line 141
    move-result-object v0

    .line 142
    .line 143
    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonStringWriter;->end()Lcom/grack/nanojson/JsonWriterBase;

    .line 147
    move-result-object v0

    .line 148
    .line 149
    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    .line 150
    .line 151
    const-string v1, "user"

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonStringWriter;->object(Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    .line 155
    move-result-object v0

    .line 156
    .line 157
    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    .line 158
    .line 159
    const-string v1, "lockedSafetyMode"

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v1, v3}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Z)Lcom/grack/nanojson/JsonWriterBase;

    .line 163
    move-result-object v0

    .line 164
    .line 165
    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonStringWriter;->end()Lcom/grack/nanojson/JsonWriterBase;

    .line 169
    move-result-object v0

    .line 170
    .line 171
    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonStringWriter;->end()Lcom/grack/nanojson/JsonWriterBase;

    .line 175
    move-result-object v0

    .line 176
    .line 177
    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    .line 178
    .line 179
    const-string v1, "fetchLiveState"

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0, v1, v4}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Z)Lcom/grack/nanojson/JsonWriterBase;

    .line 183
    move-result-object v0

    .line 184
    .line 185
    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonStringWriter;->end()Lcom/grack/nanojson/JsonWriterBase;

    .line 189
    move-result-object v0

    .line 190
    .line 191
    check-cast v0, Lcom/grack/nanojson/JsonStringWriter;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonStringWriter;->done()Ljava/lang/String;

    .line 195
    move-result-object v0

    .line 196
    .line 197
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 201
    move-result-object v0

    .line 202
    .line 203
    const-string v1, "1"

    .line 204
    .line 205
    .line 206
    invoke-static {v1, v2}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->w(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    .line 207
    move-result-object v1

    .line 208
    .line 209
    .line 210
    invoke-static {}, Lx9/p;->a()Lz9/a;

    .line 211
    move-result-object v2

    .line 212
    .line 213
    const-string v5, "https://www.youtube.com/youtubei/v1/guide?prettyPrint=false"

    .line 214
    .line 215
    .line 216
    invoke-virtual {v2, v5, v1, v0}, Lz9/a;->postWithContentTypeJson(Ljava/lang/String;Ljava/util/Map;[B)Lz9/d;

    .line 217
    move-result-object v0

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0}, Lz9/d;->c()Ljava/lang/String;

    .line 221
    move-result-object v1

    .line 222
    .line 223
    .line 224
    invoke-virtual {v0}, Lz9/d;->d()I

    .line 225
    move-result v0

    .line 226
    .line 227
    .line 228
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 229
    move-result v1

    .line 230
    .line 231
    const/16 v2, 0x1388

    .line 232
    .line 233
    if-le v1, v2, :cond_1

    .line 234
    .line 235
    const/16 v1, 0xc8

    .line 236
    .line 237
    if-ne v0, v1, :cond_1

    .line 238
    move v3, v4

    .line 239
    .line 240
    .line 241
    :cond_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 242
    move-result-object v0

    .line 243
    .line 244
    .line 245
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/client/d;->a(Ljava/lang/Object;)Ljava/util/Optional;

    .line 246
    move-result-object v0

    .line 247
    .line 248
    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/r0;->hardcodedClientVersionValid:Ljava/util/Optional;

    .line 249
    .line 250
    .line 251
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/r;->a(Ljava/util/Optional;)Ljava/lang/Object;

    .line 252
    move-result-object v0

    .line 253
    .line 254
    check-cast v0, Ljava/lang/Boolean;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 258
    move-result v0

    .line 259
    return v0
.end method

.method public static U(Ljava/net/URL;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    const-string v0, "hooktube.com"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public static V(Ljava/net/URL;)Z
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/r0;->INVIDIOUS_URLS:Ljava/util/Set;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public static W(Lcom/grack/nanojson/JsonArray;)Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lqa/y;->n(Ljava/util/Collection;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    return v1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonArray;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object p0

    .line 13
    .line 14
    .line 15
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_3

    .line 19
    .line 20
    .line 21
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    check-cast v0, Lcom/grack/nanojson/JsonObject;

    .line 25
    .line 26
    const-string v2, "metadataBadgeRenderer"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    const-string v2, "style"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    const-string v2, "BADGE_STYLE_TYPE_VERIFIED"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    move-result v2

    .line 45
    .line 46
    if-nez v2, :cond_2

    .line 47
    .line 48
    const-string v2, "BADGE_STYLE_TYPE_VERIFIED_ARTIST"

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    move-result v0

    .line 53
    .line 54
    if-eqz v0, :cond_1

    .line 55
    :cond_2
    const/4 p0, 0x1

    .line 56
    return p0

    .line 57
    :cond_3
    return v1
.end method

.method public static X(Ljava/net/URL;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    const-string v0, "y2u.be"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public static Y(Ljava/lang/String;)Z
    .locals 1

    .line 1
    .line 2
    const-string v0, "RDCM"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public static Z(Ljava/lang/String;)Z
    .locals 1

    .line 1
    .line 2
    const-string v0, "RDGMEM"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public static synthetic a(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->j0(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static a0(Ljava/lang/String;)Z
    .locals 1

    .line 1
    .line 2
    const-string v0, "RD"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public static synthetic b(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->h0(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Z

    move-result p0

    return p0
.end method

.method public static b0(Ljava/lang/String;)Z
    .locals 1

    .line 1
    .line 2
    const-string v0, "RDAMVM"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    const-string v0, "RDCLAK"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 14
    move-result p0

    .line 15
    .line 16
    if-eqz p0, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 21
    :goto_1
    return p0
.end method

.method public static synthetic c(Lcom/grack/nanojson/JsonObject;)Ljava/util/stream/Stream;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->g0(Lcom/grack/nanojson/JsonObject;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static c0(Ljava/lang/String;)Z
    .locals 1

    .line 1
    .line 2
    const-string v0, "RDMM"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public static synthetic d(Lcom/grack/nanojson/JsonObject;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->k0(Lcom/grack/nanojson/JsonObject;)Z

    move-result p0

    return p0
.end method

.method public static d0(Ljava/net/URL;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    const-string v0, "www.youtube-nocookie.com"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    const-string v0, "youtu.be"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 18
    move-result p0

    .line 19
    .line 20
    if-eqz p0, :cond_0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 25
    :goto_1
    return p0
.end method

.method public static synthetic e(Lcom/grack/nanojson/JsonObject;)Lx9/c;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->l0(Lcom/grack/nanojson/JsonObject;)Lx9/c;

    move-result-object p0

    return-object p0
.end method

.method public static e0(Ljava/net/URL;)Z
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/r0;->YOUTUBE_URLS:Ljava/util/Set;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public static synthetic f(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->i0(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic f0(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Z
    .locals 2

    .line 1
    .line 2
    const-string v0, "service"

    .line 3
    .line 4
    const-string v1, ""

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public static synthetic g(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->f0(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Z

    move-result p0

    return p0
.end method

.method private static synthetic g0(Lcom/grack/nanojson/JsonObject;)Ljava/util/stream/Stream;
    .locals 1

    .line 1
    .line 2
    const-string v0, "params"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonArray;->stream()Ljava/util/stream/Stream;

    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static synthetic h(Ljava/net/URL;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->m0(Ljava/net/URL;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static synthetic h0(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Z
    .locals 2

    .line 1
    .line 2
    const-string v0, "key"

    .line 3
    .line 4
    const-string v1, ""

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method private static i(Ljava/lang/String;)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 7
    move-result v1

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-static {p0}, Lqa/y;->u(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 15
    .line 16
    .line 17
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 18
    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    return p0

    .line 20
    :catch_0
    :cond_1
    :goto_0
    return v0
.end method

.method private static synthetic i0(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    const-string v0, "value"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static j(Lorg/schabi/newpipe/extractor/localization/i;Lorg/schabi/newpipe/extractor/localization/a;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)[B
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->t0(Lorg/schabi/newpipe/extractor/localization/i;Lorg/schabi/newpipe/extractor/localization/a;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    const-string p1, "playbackContext"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonBuilder;->object(Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    .line 10
    move-result-object p0

    .line 11
    .line 12
    const-string p1, "contentPlaybackContext"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonBuilder;->object(Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    .line 16
    move-result-object p0

    .line 17
    .line 18
    const-string p1, "signatureTimestamp"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1, p3}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/Number;)Lcom/grack/nanojson/JsonBuilder;

    .line 22
    move-result-object p0

    .line 23
    .line 24
    new-instance p1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    const-string p3, "https://www.youtube.com/watch?v="

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    const-string p3, "referer"

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p3, p1}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    .line 45
    move-result-object p0

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonBuilder;->end()Lcom/grack/nanojson/JsonBuilder;

    .line 49
    move-result-object p0

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonBuilder;->end()Lcom/grack/nanojson/JsonBuilder;

    .line 53
    move-result-object p0

    .line 54
    .line 55
    const-string p1, "cpn"

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, p1, p4}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    .line 59
    move-result-object p0

    .line 60
    .line 61
    const-string p1, "videoId"

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    .line 65
    move-result-object p0

    .line 66
    .line 67
    const-string p1, "contentCheckOk"

    .line 68
    const/4 p2, 0x1

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Z)Lcom/grack/nanojson/JsonBuilder;

    .line 72
    move-result-object p0

    .line 73
    .line 74
    const-string p1, "racyCheckOk"

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, p1, p2}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Z)Lcom/grack/nanojson/JsonBuilder;

    .line 78
    move-result-object p0

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonBuilder;->done()Ljava/lang/Object;

    .line 82
    move-result-object p0

    .line 83
    .line 84
    .line 85
    invoke-static {p0}, Lcom/grack/nanojson/JsonWriter;->string(Ljava/lang/Object;)Ljava/lang/String;

    .line 86
    move-result-object p0

    .line 87
    .line 88
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 92
    move-result-object p0

    .line 93
    return-object p0
.end method

.method private static synthetic j0(Ljava/lang/String;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lqa/y;->m(Ljava/lang/String;)Z

    .line 4
    move-result p0

    .line 5
    .line 6
    xor-int/lit8 p0, p0, 0x1

    .line 7
    return p0
.end method

.method public static k(Ljava/lang/String;)Loa/c;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Ljava/net/URL;

    .line 4
    .line 5
    .line 6
    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    const-string p0, "xtags"

    .line 9
    .line 10
    .line 11
    invoke-static {v1, p0}, Lqa/y;->h(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object p0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    if-nez p0, :cond_0

    .line 15
    return-object v0

    .line 16
    .line 17
    :cond_0
    const-string v1, ":"

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 22
    array-length v1, p0

    .line 23
    const/4 v2, 0x0

    .line 24
    move v3, v2

    .line 25
    :goto_0
    const/4 v4, 0x2

    .line 26
    const/4 v5, 0x1

    .line 27
    .line 28
    if-ge v3, v1, :cond_2

    .line 29
    .line 30
    aget-object v6, p0, v3

    .line 31
    .line 32
    const-string v7, "="

    .line 33
    .line 34
    .line 35
    invoke-virtual {v6, v7, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 36
    move-result-object v6

    .line 37
    array-length v7, v6

    .line 38
    .line 39
    if-le v7, v5, :cond_1

    .line 40
    .line 41
    aget-object v7, v6, v2

    .line 42
    .line 43
    const-string v8, "acont"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    move-result v7

    .line 48
    .line 49
    if-eqz v7, :cond_1

    .line 50
    .line 51
    aget-object p0, v6, v5

    .line 52
    goto :goto_1

    .line 53
    .line 54
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    move-object p0, v0

    .line 57
    .line 58
    :goto_1
    if-nez p0, :cond_3

    .line 59
    return-object v0

    .line 60
    .line 61
    .line 62
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 63
    move-result v1

    .line 64
    const/4 v3, -0x1

    .line 65
    .line 66
    .line 67
    sparse-switch v1, :sswitch_data_0

    .line 68
    :goto_2
    move v2, v3

    .line 69
    goto :goto_3

    .line 70
    .line 71
    :sswitch_0
    const-string v1, "original"

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    move-result p0

    .line 76
    .line 77
    if-nez p0, :cond_4

    .line 78
    goto :goto_2

    .line 79
    :cond_4
    move v2, v4

    .line 80
    goto :goto_3

    .line 81
    .line 82
    :sswitch_1
    const-string v1, "dubbed"

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    move-result p0

    .line 87
    .line 88
    if-nez p0, :cond_5

    .line 89
    goto :goto_2

    .line 90
    :cond_5
    move v2, v5

    .line 91
    goto :goto_3

    .line 92
    .line 93
    :sswitch_2
    const-string v1, "descriptive"

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    move-result p0

    .line 98
    .line 99
    if-nez p0, :cond_6

    .line 100
    goto :goto_2

    .line 101
    .line 102
    .line 103
    :cond_6
    :goto_3
    packed-switch v2, :pswitch_data_0

    .line 104
    return-object v0

    .line 105
    .line 106
    :pswitch_0
    sget-object p0, Loa/c;->ORIGINAL:Loa/c;

    .line 107
    return-object p0

    .line 108
    .line 109
    :pswitch_1
    sget-object p0, Loa/c;->DUBBED:Loa/c;

    .line 110
    return-object p0

    .line 111
    .line 112
    :pswitch_2
    sget-object p0, Loa/c;->DESCRIPTIVE:Loa/c;

    .line 113
    return-object p0

    .line 114
    :catch_0
    return-object v0

    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    :sswitch_data_0
    .sparse-switch
        -0x66ca7b34 -> :sswitch_2
        -0x4ebc9b10 -> :sswitch_1
        0x523289d1 -> :sswitch_0
    .end sparse-switch

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
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static synthetic k0(Lcom/grack/nanojson/JsonObject;)Z
    .locals 1

    .line 1
    .line 2
    const-string v0, "url"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    .line 9
    invoke-static {p0}, Lqa/y;->m(Ljava/lang/String;)Z

    .line 10
    move-result p0

    .line 11
    .line 12
    xor-int/lit8 p0, p0, 0x1

    .line 13
    return p0
.end method

.method public static l(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    .line 6
    :cond_0
    const-string v0, "webcache.googleusercontent.com"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    const-string v0, "cache:"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 18
    move-result-object p0

    .line 19
    const/4 v0, 0x1

    .line 20
    .line 21
    aget-object p0, p0, v0

    .line 22
    :cond_1
    return-object p0
.end method

.method private static synthetic l0(Lcom/grack/nanojson/JsonObject;)Lx9/c;
    .locals 5

    .line 1
    .line 2
    const-string v0, "height"

    .line 3
    const/4 v1, -0x1

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;I)I

    .line 7
    move-result v0

    .line 8
    .line 9
    new-instance v2, Lx9/c;

    .line 10
    .line 11
    const-string v3, "url"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v3}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object v3

    .line 16
    .line 17
    .line 18
    invoke-static {v3}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->r(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object v3

    .line 20
    .line 21
    const-string v4, "width"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v4, v1}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;I)I

    .line 25
    move-result p0

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Lx9/c$a;->a(I)Lx9/c$a;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    .line 32
    invoke-direct {v2, v3, v0, p0, v1}, Lx9/c;-><init>(Ljava/lang/String;IILx9/c$a;)V

    .line 33
    return-object v2
.end method

.method private static m()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Laa/d;
        }
    .end annotation

    .line 1
    .line 2
    sget-boolean v0, Lorg/schabi/newpipe/extractor/services/youtube/r0;->clientVersionExtracted:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-static {}, Lx9/p;->a()Lz9/a;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    const-string v1, "https://www.youtube.com/results?search_query=&ucbcb=1"

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->A()Ljava/util/Map;

    .line 15
    move-result-object v2

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Lz9/a;->get(Ljava/lang/String;Ljava/util/Map;)Lz9/d;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lz9/d;->c()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->C(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    const-string v2, "responseContext"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    const-string v2, "serviceTrackingParams"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/grack/nanojson/JsonArray;->stream()Ljava/util/stream/Stream;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    const-class v2, Lcom/grack/nanojson/JsonObject;

    .line 46
    .line 47
    new-instance v3, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/a;

    .line 48
    .line 49
    .line 50
    invoke-direct {v3, v2}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/a;-><init>(Ljava/lang/Class;)V

    .line 51
    .line 52
    .line 53
    invoke-static {v1, v3}, Lx9/j;->a(Ljava/util/stream/Stream;Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 54
    move-result-object v1

    .line 55
    .line 56
    const-class v2, Lcom/grack/nanojson/JsonObject;

    .line 57
    .line 58
    new-instance v3, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/d;

    .line 59
    .line 60
    .line 61
    invoke-direct {v3, v2}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/d;-><init>(Ljava/lang/Class;)V

    .line 62
    .line 63
    .line 64
    invoke-static {v1, v3}, Lorg/schabi/newpipe/extractor/localization/n;->a(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 65
    move-result-object v1

    .line 66
    .line 67
    const-string v2, "CSI"

    .line 68
    .line 69
    const-string v3, "cver"

    .line 70
    .line 71
    .line 72
    invoke-static {v1, v2, v3}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->z(Ljava/util/stream/Stream;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    move-result-object v2

    .line 74
    .line 75
    sput-object v2, Lorg/schabi/newpipe/extractor/services/youtube/r0;->clientVersion:Ljava/lang/String;

    .line 76
    const/4 v3, 0x1

    .line 77
    .line 78
    if-nez v2, :cond_1

    .line 79
    .line 80
    :try_start_0
    sget-object v2, Lorg/schabi/newpipe/extractor/services/youtube/r0;->INNERTUBE_CONTEXT_CLIENT_VERSION_REGEXES:[Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    invoke-static {v0, v2, v3}, Lqa/y;->i(Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;

    .line 84
    move-result-object v0

    .line 85
    .line 86
    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/r0;->clientVersion:Ljava/lang/String;
    :try_end_0
    .catch Lqa/n$a; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .line 88
    :catch_0
    :cond_1
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/r0;->clientVersion:Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    invoke-static {v0}, Lqa/y;->m(Ljava/lang/String;)Z

    .line 92
    move-result v0

    .line 93
    .line 94
    if-eqz v0, :cond_2

    .line 95
    .line 96
    const-string v0, "ECATCHER"

    .line 97
    .line 98
    const-string v2, "client.version"

    .line 99
    .line 100
    .line 101
    invoke-static {v1, v0, v2}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->z(Ljava/util/stream/Stream;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 102
    move-result-object v0

    .line 103
    .line 104
    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/r0;->clientVersion:Ljava/lang/String;

    .line 105
    .line 106
    :cond_2
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/r0;->clientVersion:Ljava/lang/String;

    .line 107
    .line 108
    if-eqz v0, :cond_3

    .line 109
    .line 110
    sput-boolean v3, Lorg/schabi/newpipe/extractor/services/youtube/r0;->clientVersionExtracted:Z

    .line 111
    return-void

    .line 112
    .line 113
    :cond_3
    new-instance v0, Laa/h;

    .line 114
    .line 115
    const-string v1, "Could not extract YouTube WEB InnerTube client version from HTML search results page"

    .line 116
    .line 117
    .line 118
    invoke-direct {v0, v1}, Laa/h;-><init>(Ljava/lang/String;)V

    .line 119
    throw v0
.end method

.method private static synthetic m0(Ljava/net/URL;Ljava/lang/String;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method private static n()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Laa/d;
        }
    .end annotation

    .line 1
    .line 2
    sget-boolean v0, Lorg/schabi/newpipe/extractor/services/youtube/r0;->clientVersionExtracted:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    const-string v0, "https://www.youtube.com"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->I(Ljava/lang/String;)Ljava/util/Map;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lx9/p;->a()Lz9/a;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    const-string v2, "https://www.youtube.com/sw.js"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2, v0}, Lz9/a;->get(Ljava/lang/String;Ljava/util/Map;)Lz9/d;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lz9/d;->c()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    :try_start_0
    sget-object v1, Lorg/schabi/newpipe/extractor/services/youtube/r0;->INNERTUBE_CONTEXT_CLIENT_VERSION_REGEXES:[Ljava/lang/String;

    .line 28
    const/4 v2, 0x1

    .line 29
    .line 30
    .line 31
    invoke-static {v0, v1, v2}, Lqa/y;->i(Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/r0;->clientVersion:Ljava/lang/String;
    :try_end_0
    .catch Lqa/n$a; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    sput-boolean v2, Lorg/schabi/newpipe/extractor/services/youtube/r0;->clientVersionExtracted:Z

    .line 37
    return-void

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .line 40
    new-instance v1, Laa/h;

    .line 41
    .line 42
    const-string v2, "Could not extract YouTube WEB InnerTube client version from sw.js"

    .line 43
    .line 44
    .line 45
    invoke-direct {v1, v2, v0}, Laa/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    throw v1
.end method

.method public static n0(Ljava/lang/String;)Ljava/time/OffsetDateTime;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/n;->a(Ljava/lang/CharSequence;)Ljava/time/OffsetDateTime;

    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/time/format/DateTimeParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    .line 7
    .line 8
    :catch_0
    :try_start_1
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/s;->a(Ljava/lang/CharSequence;)Ljava/time/LocalDate;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/t;->a(Ljava/time/LocalDate;)Ljava/time/LocalDateTime;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lm4/l;->a()Ljava/time/ZoneOffset;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/services/youtube/u;->a(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    .line 21
    move-result-object p0
    :try_end_1
    .catch Ljava/time/format/DateTimeParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 22
    return-object p0

    .line 23
    :catch_1
    move-exception v0

    .line 24
    .line 25
    new-instance v1, Laa/h;

    .line 26
    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    const-string v3, "Could not parse date: \""

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string p0, "\""

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object p0

    .line 48
    .line 49
    .line 50
    invoke-direct {v1, p0, v0}, Laa/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    throw v1
.end method

.method public static o(Ljava/lang/String;)Lba/a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lqa/y;->m(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_4

    .line 7
    .line 8
    .line 9
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->b0(Ljava/lang/String;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    sget-object p0, Lba/a;->MIX_MUSIC:Lba/a;

    .line 15
    return-object p0

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->Y(Ljava/lang/String;)Z

    .line 19
    move-result v0

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    sget-object p0, Lba/a;->MIX_CHANNEL:Lba/a;

    .line 24
    return-object p0

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->Z(Ljava/lang/String;)Z

    .line 28
    move-result v0

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    sget-object p0, Lba/a;->MIX_GENRE:Lba/a;

    .line 33
    return-object p0

    .line 34
    .line 35
    .line 36
    :cond_2
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->a0(Ljava/lang/String;)Z

    .line 37
    move-result p0

    .line 38
    .line 39
    if-eqz p0, :cond_3

    .line 40
    .line 41
    sget-object p0, Lba/a;->MIX_STREAM:Lba/a;

    .line 42
    return-object p0

    .line 43
    .line 44
    :cond_3
    sget-object p0, Lba/a;->NORMAL:Lba/a;

    .line 45
    return-object p0

    .line 46
    .line 47
    :cond_4
    new-instance p0, Laa/h;

    .line 48
    .line 49
    const-string v0, "Could not extract playlist type from empty playlist id"

    .line 50
    .line 51
    .line 52
    invoke-direct {p0, v0}, Laa/h;-><init>(Ljava/lang/String;)V

    .line 53
    throw p0
.end method

.method public static o0(Ljava/lang/String;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;,
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, ":"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v1

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    const-string v0, "\\."

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    :goto_0
    const/16 v1, 0x18

    .line 22
    .line 23
    const/16 v2, 0x3c

    .line 24
    const/4 v3, 0x1

    .line 25
    .line 26
    .line 27
    filled-new-array {v1, v2, v2, v3}, [I

    .line 28
    move-result-object v1

    .line 29
    array-length v2, v0

    .line 30
    .line 31
    rsub-int/lit8 v2, v2, 0x4

    .line 32
    .line 33
    if-ltz v2, :cond_2

    .line 34
    const/4 p0, 0x0

    .line 35
    move v3, p0

    .line 36
    :goto_1
    array-length v4, v0

    .line 37
    .line 38
    if-ge p0, v4, :cond_1

    .line 39
    .line 40
    add-int v4, p0, v2

    .line 41
    .line 42
    aget v4, v1, v4

    .line 43
    .line 44
    aget-object v5, v0, p0

    .line 45
    .line 46
    .line 47
    invoke-static {v5}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->i(Ljava/lang/String;)I

    .line 48
    move-result v5

    .line 49
    add-int/2addr v3, v5

    .line 50
    mul-int/2addr v3, v4

    .line 51
    .line 52
    add-int/lit8 p0, p0, 0x1

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    return v3

    .line 55
    .line 56
    :cond_2
    new-instance v0, Laa/h;

    .line 57
    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    const-string v2, "Error duration string with unknown format: "

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object p0

    .line 74
    .line 75
    .line 76
    invoke-direct {v0, p0}, Laa/h;-><init>(Ljava/lang/String;)V

    .line 77
    throw v0
.end method

.method public static p(Ljava/lang/String;)Lba/a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-static {p0}, Lqa/y;->w(Ljava/lang/String;)Ljava/net/URL;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    const-string v0, "list"

    .line 7
    .line 8
    .line 9
    invoke-static {p0, v0}, Lqa/y;->h(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object p0

    .line 11
    .line 12
    .line 13
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->o(Ljava/lang/String;)Lba/a;

    .line 14
    move-result-object p0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return-object p0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    .line 18
    new-instance v0, Laa/h;

    .line 19
    .line 20
    const-string v1, "Could not extract playlist type from malformed url"

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, v1, p0}, Laa/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    throw v0
.end method

.method public static p0(Lorg/schabi/newpipe/extractor/localization/i;Lorg/schabi/newpipe/extractor/localization/a;)Lcom/grack/nanojson/JsonBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/schabi/newpipe/extractor/localization/i;",
            "Lorg/schabi/newpipe/extractor/localization/a;",
            ")",
            "Lcom/grack/nanojson/JsonBuilder<",
            "Lcom/grack/nanojson/JsonObject;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/grack/nanojson/JsonObject;->builder()Lcom/grack/nanojson/JsonBuilder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "context"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonBuilder;->object(Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    const-string v1, "client"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonBuilder;->object(Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    const-string v1, "clientName"

    .line 19
    .line 20
    const-string v2, "ANDROID"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    const-string v1, "clientVersion"

    .line 27
    .line 28
    const-string v2, "19.28.35"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    const-string v1, "platform"

    .line 35
    .line 36
    const-string v2, "MOBILE"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    const-string v1, "osName"

    .line 43
    .line 44
    const-string v2, "Android"

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    const-string v1, "osVersion"

    .line 51
    .line 52
    const-string v2, "14"

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    const-string v1, "androidSdkVersion"

    .line 59
    .line 60
    const/16 v2, 0x22

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;I)Lcom/grack/nanojson/JsonBuilder;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    const-string v1, "hl"

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/localization/i;->g()Ljava/lang/String;

    .line 70
    move-result-object p0

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1, p0}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    .line 74
    move-result-object p0

    .line 75
    .line 76
    const-string v0, "gl"

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/localization/a;->a()Ljava/lang/String;

    .line 80
    move-result-object p1

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v0, p1}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    .line 84
    move-result-object p0

    .line 85
    .line 86
    const-string p1, "utcOffsetMinutes"

    .line 87
    const/4 v0, 0x0

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, p1, v0}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;I)Lcom/grack/nanojson/JsonBuilder;

    .line 91
    move-result-object p0

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonBuilder;->end()Lcom/grack/nanojson/JsonBuilder;

    .line 95
    move-result-object p0

    .line 96
    .line 97
    const-string p1, "request"

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonBuilder;->object(Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    .line 101
    move-result-object p0

    .line 102
    .line 103
    const-string p1, "internalExperimentFlags"

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonBuilder;->array(Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    .line 107
    move-result-object p0

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonBuilder;->end()Lcom/grack/nanojson/JsonBuilder;

    .line 111
    move-result-object p0

    .line 112
    .line 113
    const-string p1, "useSsl"

    .line 114
    const/4 v1, 0x1

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, p1, v1}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Z)Lcom/grack/nanojson/JsonBuilder;

    .line 118
    move-result-object p0

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonBuilder;->end()Lcom/grack/nanojson/JsonBuilder;

    .line 122
    move-result-object p0

    .line 123
    .line 124
    const-string p1, "user"

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonBuilder;->object(Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    .line 128
    move-result-object p0

    .line 129
    .line 130
    const-string p1, "lockedSafetyMode"

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0, p1, v0}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Z)Lcom/grack/nanojson/JsonBuilder;

    .line 134
    move-result-object p0

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonBuilder;->end()Lcom/grack/nanojson/JsonBuilder;

    .line 138
    move-result-object p0

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonBuilder;->end()Lcom/grack/nanojson/JsonBuilder;

    .line 142
    move-result-object p0

    .line 143
    return-object p0
.end method

.method public static q(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lqa/y;->m(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_6

    .line 7
    .line 8
    .line 9
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->c0(Ljava/lang/String;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    const/4 v0, 0x4

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->b0(Ljava/lang/String;)Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    const/4 v0, 0x6

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->Y(Ljava/lang/String;)Z

    .line 34
    move-result v0

    .line 35
    .line 36
    if-nez v0, :cond_5

    .line 37
    .line 38
    .line 39
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->Z(Ljava/lang/String;)Z

    .line 40
    move-result v0

    .line 41
    .line 42
    if-nez v0, :cond_4

    .line 43
    .line 44
    .line 45
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->a0(Ljava/lang/String;)Z

    .line 46
    move-result v0

    .line 47
    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 52
    move-result v0

    .line 53
    .line 54
    const/16 v1, 0xd

    .line 55
    .line 56
    if-ne v0, v1, :cond_2

    .line 57
    const/4 v0, 0x2

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 61
    move-result-object p0

    .line 62
    return-object p0

    .line 63
    .line 64
    :cond_2
    new-instance v0, Laa/h;

    .line 65
    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    const-string v2, "Video id could not be determined from mix id: "

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object p0

    .line 82
    .line 83
    .line 84
    invoke-direct {v0, p0}, Laa/h;-><init>(Ljava/lang/String;)V

    .line 85
    throw v0

    .line 86
    .line 87
    :cond_3
    new-instance v0, Laa/h;

    .line 88
    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    const-string v2, "Video id could not be determined from playlist id: "

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    move-result-object p0

    .line 105
    .line 106
    .line 107
    invoke-direct {v0, p0}, Laa/h;-><init>(Ljava/lang/String;)V

    .line 108
    throw v0

    .line 109
    .line 110
    :cond_4
    new-instance v0, Laa/h;

    .line 111
    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .line 117
    const-string v2, "Video id could not be determined from genre mix id: "

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    move-result-object p0

    .line 128
    .line 129
    .line 130
    invoke-direct {v0, p0}, Laa/h;-><init>(Ljava/lang/String;)V

    .line 131
    throw v0

    .line 132
    .line 133
    :cond_5
    new-instance v0, Laa/h;

    .line 134
    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    const-string v2, "Video id could not be determined from channel mix id: "

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    move-result-object p0

    .line 151
    .line 152
    .line 153
    invoke-direct {v0, p0}, Laa/h;-><init>(Ljava/lang/String;)V

    .line 154
    throw v0

    .line 155
    .line 156
    :cond_6
    new-instance p0, Laa/h;

    .line 157
    .line 158
    const-string v0, "Video id could not be determined from empty playlist id"

    .line 159
    .line 160
    .line 161
    invoke-direct {p0, v0}, Laa/h;-><init>(Ljava/lang/String;)V

    .line 162
    throw p0
.end method

.method public static q0(Lorg/schabi/newpipe/extractor/localization/i;Lorg/schabi/newpipe/extractor/localization/a;)Lcom/grack/nanojson/JsonBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/schabi/newpipe/extractor/localization/i;",
            "Lorg/schabi/newpipe/extractor/localization/a;",
            ")",
            "Lcom/grack/nanojson/JsonBuilder<",
            "Lcom/grack/nanojson/JsonObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Laa/d;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-static {p0, p1, v0}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->r0(Lorg/schabi/newpipe/extractor/localization/i;Lorg/schabi/newpipe/extractor/localization/a;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public static r(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    const-string v0, "//"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    const/4 v0, 0x2

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 13
    move-result-object p0

    .line 14
    .line 15
    :cond_0
    const-string v0, "http://"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 19
    move-result v0

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-static {p0}, Lqa/y;->v(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_1
    const-string v0, "https://"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 32
    move-result v1

    .line 33
    .line 34
    if-nez v1, :cond_2

    .line 35
    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object p0

    .line 50
    :cond_2
    :goto_0
    return-object p0
.end method

.method public static r0(Lorg/schabi/newpipe/extractor/localization/i;Lorg/schabi/newpipe/extractor/localization/a;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/schabi/newpipe/extractor/localization/i;",
            "Lorg/schabi/newpipe/extractor/localization/a;",
            "Ljava/lang/String;",
            ")",
            "Lcom/grack/nanojson/JsonBuilder<",
            "Lcom/grack/nanojson/JsonObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Laa/d;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/grack/nanojson/JsonObject;->builder()Lcom/grack/nanojson/JsonBuilder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "context"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonBuilder;->object(Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    const-string v1, "client"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonBuilder;->object(Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    const-string v1, "hl"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/localization/i;->g()Ljava/lang/String;

    .line 22
    move-result-object p0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1, p0}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    .line 26
    move-result-object p0

    .line 27
    .line 28
    const-string v0, "gl"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/localization/a;->a()Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v0, p1}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    .line 36
    move-result-object p0

    .line 37
    .line 38
    const-string p1, "clientName"

    .line 39
    .line 40
    const-string v0, "WEB"

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1, v0}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    .line 44
    move-result-object p0

    .line 45
    .line 46
    const-string p1, "clientVersion"

    .line 47
    .line 48
    .line 49
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->y()Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1, v0}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    .line 54
    move-result-object p0

    .line 55
    .line 56
    const-string p1, "originalUrl"

    .line 57
    .line 58
    const-string v0, "https://www.youtube.com"

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, p1, v0}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    .line 62
    move-result-object p0

    .line 63
    .line 64
    const-string p1, "platform"

    .line 65
    .line 66
    const-string v0, "DESKTOP"

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, p1, v0}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    .line 70
    move-result-object p0

    .line 71
    .line 72
    const-string p1, "utcOffsetMinutes"

    .line 73
    const/4 v0, 0x0

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, p1, v0}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;I)Lcom/grack/nanojson/JsonBuilder;

    .line 77
    move-result-object p0

    .line 78
    .line 79
    if-eqz p2, :cond_0

    .line 80
    .line 81
    const-string p1, "visitorData"

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, p1, p2}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    .line 85
    .line 86
    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonBuilder;->end()Lcom/grack/nanojson/JsonBuilder;

    .line 88
    move-result-object p0

    .line 89
    .line 90
    const-string p1, "request"

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonBuilder;->object(Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    .line 94
    move-result-object p0

    .line 95
    .line 96
    const-string p1, "internalExperimentFlags"

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonBuilder;->array(Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    .line 100
    move-result-object p0

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonBuilder;->end()Lcom/grack/nanojson/JsonBuilder;

    .line 104
    move-result-object p0

    .line 105
    .line 106
    const-string p1, "useSsl"

    .line 107
    const/4 p2, 0x1

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, p1, p2}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Z)Lcom/grack/nanojson/JsonBuilder;

    .line 111
    move-result-object p0

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonBuilder;->end()Lcom/grack/nanojson/JsonBuilder;

    .line 115
    move-result-object p0

    .line 116
    .line 117
    const-string p1, "user"

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonBuilder;->object(Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    .line 121
    move-result-object p0

    .line 122
    .line 123
    const-string p1, "lockedSafetyMode"

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, p1, v0}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Z)Lcom/grack/nanojson/JsonBuilder;

    .line 127
    move-result-object p0

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonBuilder;->end()Lcom/grack/nanojson/JsonBuilder;

    .line 131
    move-result-object p0

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonBuilder;->end()Lcom/grack/nanojson/JsonBuilder;

    .line 135
    move-result-object p0

    .line 136
    return-object p0
.end method

.method public static s()Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->R()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string v0, "CAISAiAD"

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    const-string v0, "CAE="

    .line 12
    .line 13
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    const-string v2, "SOCS="

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method

.method public static s0(Lorg/schabi/newpipe/extractor/localization/i;Lorg/schabi/newpipe/extractor/localization/a;)Lcom/grack/nanojson/JsonBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/schabi/newpipe/extractor/localization/i;",
            "Lorg/schabi/newpipe/extractor/localization/a;",
            ")",
            "Lcom/grack/nanojson/JsonBuilder<",
            "Lcom/grack/nanojson/JsonObject;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/grack/nanojson/JsonObject;->builder()Lcom/grack/nanojson/JsonBuilder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "context"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonBuilder;->object(Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    const-string v1, "client"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonBuilder;->object(Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    const-string v1, "clientName"

    .line 19
    .line 20
    const-string v2, "IOS"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    const-string v1, "clientVersion"

    .line 27
    .line 28
    const-string v2, "19.28.1"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    const-string v1, "deviceMake"

    .line 35
    .line 36
    const-string v2, "Apple"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    const-string v1, "deviceModel"

    .line 43
    .line 44
    const-string v2, "iPhone16,2"

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    const-string v1, "platform"

    .line 51
    .line 52
    const-string v2, "MOBILE"

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    const-string v1, "osName"

    .line 59
    .line 60
    const-string v2, "iOS"

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    const-string v1, "osVersion"

    .line 67
    .line 68
    const-string v2, "17.5.1.21F90"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    .line 72
    move-result-object v0

    .line 73
    .line 74
    const-string v1, "hl"

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/localization/i;->g()Ljava/lang/String;

    .line 78
    move-result-object p0

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1, p0}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    .line 82
    move-result-object p0

    .line 83
    .line 84
    const-string v0, "gl"

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/localization/a;->a()Ljava/lang/String;

    .line 88
    move-result-object p1

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, v0, p1}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    .line 92
    move-result-object p0

    .line 93
    .line 94
    const-string p1, "utcOffsetMinutes"

    .line 95
    const/4 v0, 0x0

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, p1, v0}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;I)Lcom/grack/nanojson/JsonBuilder;

    .line 99
    move-result-object p0

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonBuilder;->end()Lcom/grack/nanojson/JsonBuilder;

    .line 103
    move-result-object p0

    .line 104
    .line 105
    const-string p1, "request"

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonBuilder;->object(Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    .line 109
    move-result-object p0

    .line 110
    .line 111
    const-string p1, "internalExperimentFlags"

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonBuilder;->array(Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    .line 115
    move-result-object p0

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonBuilder;->end()Lcom/grack/nanojson/JsonBuilder;

    .line 119
    move-result-object p0

    .line 120
    .line 121
    const-string p1, "useSsl"

    .line 122
    const/4 v1, 0x1

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0, p1, v1}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Z)Lcom/grack/nanojson/JsonBuilder;

    .line 126
    move-result-object p0

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonBuilder;->end()Lcom/grack/nanojson/JsonBuilder;

    .line 130
    move-result-object p0

    .line 131
    .line 132
    const-string p1, "user"

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonBuilder;->object(Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    .line 136
    move-result-object p0

    .line 137
    .line 138
    const-string p1, "lockedSafetyMode"

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0, p1, v0}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Z)Lcom/grack/nanojson/JsonBuilder;

    .line 142
    move-result-object p0

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonBuilder;->end()Lcom/grack/nanojson/JsonBuilder;

    .line 146
    move-result-object p0

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonBuilder;->end()Lcom/grack/nanojson/JsonBuilder;

    .line 150
    move-result-object p0

    .line 151
    return-object p0
.end method

.method public static t()Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    const/16 v0, 0x10

    .line 3
    .line 4
    sget-object v1, Lorg/schabi/newpipe/extractor/services/youtube/r0;->numberGenerator:Ljava/util/Random;

    .line 5
    .line 6
    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    .line 7
    .line 8
    .line 9
    invoke-static {v2, v0, v1}, Lqa/o;->a(Ljava/lang/String;ILjava/util/Random;)Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public static t0(Lorg/schabi/newpipe/extractor/localization/i;Lorg/schabi/newpipe/extractor/localization/a;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/schabi/newpipe/extractor/localization/i;",
            "Lorg/schabi/newpipe/extractor/localization/a;",
            "Ljava/lang/String;",
            ")",
            "Lcom/grack/nanojson/JsonBuilder<",
            "Lcom/grack/nanojson/JsonObject;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/grack/nanojson/JsonObject;->builder()Lcom/grack/nanojson/JsonBuilder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "context"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonBuilder;->object(Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    const-string v1, "client"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonBuilder;->object(Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    const-string v1, "clientName"

    .line 19
    .line 20
    const-string v2, "TVHTML5_SIMPLY_EMBEDDED_PLAYER"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    const-string v1, "clientVersion"

    .line 27
    .line 28
    const-string v2, "2.0"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    const-string v1, "clientScreen"

    .line 35
    .line 36
    const-string v2, "EMBED"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    const-string v1, "platform"

    .line 43
    .line 44
    const-string v2, "TV"

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    const-string v1, "hl"

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/localization/i;->g()Ljava/lang/String;

    .line 54
    move-result-object p0

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1, p0}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    .line 58
    move-result-object p0

    .line 59
    .line 60
    const-string v0, "gl"

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/localization/a;->a()Ljava/lang/String;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v0, p1}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    .line 68
    move-result-object p0

    .line 69
    .line 70
    const-string p1, "utcOffsetMinutes"

    .line 71
    const/4 v0, 0x0

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, p1, v0}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;I)Lcom/grack/nanojson/JsonBuilder;

    .line 75
    move-result-object p0

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonBuilder;->end()Lcom/grack/nanojson/JsonBuilder;

    .line 79
    move-result-object p0

    .line 80
    .line 81
    const-string p1, "thirdParty"

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonBuilder;->object(Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    .line 85
    move-result-object p0

    .line 86
    .line 87
    new-instance p1, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    const-string v1, "https://www.youtube.com/watch?v="

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    move-result-object p1

    .line 103
    .line 104
    const-string p2, "embedUrl"

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, p2, p1}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    .line 108
    move-result-object p0

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonBuilder;->end()Lcom/grack/nanojson/JsonBuilder;

    .line 112
    move-result-object p0

    .line 113
    .line 114
    const-string p1, "request"

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonBuilder;->object(Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    .line 118
    move-result-object p0

    .line 119
    .line 120
    const-string p1, "internalExperimentFlags"

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonBuilder;->array(Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    .line 124
    move-result-object p0

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonBuilder;->end()Lcom/grack/nanojson/JsonBuilder;

    .line 128
    move-result-object p0

    .line 129
    .line 130
    const-string p1, "useSsl"

    .line 131
    const/4 p2, 0x1

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0, p1, p2}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Z)Lcom/grack/nanojson/JsonBuilder;

    .line 135
    move-result-object p0

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonBuilder;->end()Lcom/grack/nanojson/JsonBuilder;

    .line 139
    move-result-object p0

    .line 140
    .line 141
    const-string p1, "user"

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonBuilder;->object(Ljava/lang/String;)Lcom/grack/nanojson/JsonBuilder;

    .line 145
    move-result-object p0

    .line 146
    .line 147
    const-string p1, "lockedSafetyMode"

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0, p1, v0}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Z)Lcom/grack/nanojson/JsonBuilder;

    .line 151
    move-result-object p0

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonBuilder;->end()Lcom/grack/nanojson/JsonBuilder;

    .line 155
    move-result-object p0

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonBuilder;->end()Lcom/grack/nanojson/JsonBuilder;

    .line 159
    move-result-object p0

    .line 160
    return-object p0
.end method

.method public static u()Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    const/16 v0, 0xc

    .line 3
    .line 4
    sget-object v1, Lorg/schabi/newpipe/extractor/services/youtube/r0;->numberGenerator:Ljava/util/Random;

    .line 5
    .line 6
    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    .line 7
    .line 8
    .line 9
    invoke-static {v2, v0, v1}, Lqa/o;->a(Ljava/lang/String;ILjava/util/Random;)Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public static v(Lorg/schabi/newpipe/extractor/localization/i;)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    if-eqz p0, :cond_0

    .line 3
    goto :goto_0

    .line 4
    .line 5
    :cond_0
    sget-object p0, Lorg/schabi/newpipe/extractor/localization/i;->DEFAULT:Lorg/schabi/newpipe/extractor/localization/i;

    .line 6
    .line 7
    .line 8
    :goto_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/localization/i;->d()Ljava/lang/String;

    .line 9
    move-result-object p0

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    const-string v1, "com.google.android.youtube/19.28.35 (Linux; U; Android 14; "

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string p0, ") gzip"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method

.method private static w(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/y;->a(Ljava/lang/Object;)Ljava/util/List;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    const-string v0, "X-YouTube-Client-Version"

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/services/youtube/z;->a(Ljava/lang/Object;)Ljava/util/List;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    const-string v1, "X-YouTube-Client-Name"

    .line 13
    .line 14
    .line 15
    invoke-static {v1, p0, v0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/a0;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public static x()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/d;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/HashMap;

    .line 3
    .line 4
    const-string v1, "https://www.youtube.com"

    .line 5
    .line 6
    .line 7
    invoke-static {v1}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->I(Ljava/lang/String;)Ljava/util/Map;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 12
    .line 13
    const-string v1, "1"

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->y()Ljava/lang/String;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v2}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->w(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 25
    return-object v0
.end method

.method public static y()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Laa/d;
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/r0;->clientVersion:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lqa/y;->m(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/r0;->clientVersion:Ljava/lang/String;

    .line 11
    return-object v0

    .line 12
    .line 13
    .line 14
    :cond_0
    :try_start_0
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->n()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    .line 18
    :catch_0
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->m()V

    .line 19
    .line 20
    :goto_0
    sget-boolean v0, Lorg/schabi/newpipe/extractor/services/youtube/r0;->clientVersionExtracted:Z

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/r0;->clientVersion:Ljava/lang/String;

    .line 25
    return-object v0

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/r0;->T()Z

    .line 29
    move-result v0

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    const-string v0, "2.20240718.01.00"

    .line 34
    .line 35
    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/r0;->clientVersion:Ljava/lang/String;

    .line 36
    return-object v0

    .line 37
    .line 38
    :cond_2
    new-instance v0, Laa/d;

    .line 39
    .line 40
    const-string v1, "Could not get YouTube WEB client version"

    .line 41
    .line 42
    .line 43
    invoke-direct {v0, v1}, Laa/d;-><init>(Ljava/lang/String;)V

    .line 44
    throw v0
.end method

.method private static z(Ljava/util/stream/Stream;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Stream<",
            "Lcom/grack/nanojson/JsonObject;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/m0;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/m0;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0, v0}, Lx9/j;->a(Ljava/util/stream/Stream;Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 9
    move-result-object p0

    .line 10
    .line 11
    new-instance p1, Lorg/schabi/newpipe/extractor/services/youtube/p0;

    .line 12
    .line 13
    .line 14
    invoke-direct {p1}, Lorg/schabi/newpipe/extractor/services/youtube/p0;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-static {p0, p1}, Lda/n;->a(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 18
    move-result-object p0

    .line 19
    .line 20
    const-class p1, Lcom/grack/nanojson/JsonObject;

    .line 21
    .line 22
    new-instance v0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/a;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, p1}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/a;-><init>(Ljava/lang/Class;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p0, v0}, Lx9/j;->a(Ljava/util/stream/Stream;Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 29
    move-result-object p0

    .line 30
    .line 31
    const-class p1, Lcom/grack/nanojson/JsonObject;

    .line 32
    .line 33
    new-instance v0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/d;

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, p1}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/d;-><init>(Ljava/lang/Class;)V

    .line 37
    .line 38
    .line 39
    invoke-static {p0, v0}, Lorg/schabi/newpipe/extractor/localization/n;->a(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 40
    move-result-object p0

    .line 41
    .line 42
    new-instance p1, Lorg/schabi/newpipe/extractor/services/youtube/q0;

    .line 43
    .line 44
    .line 45
    invoke-direct {p1, p2}, Lorg/schabi/newpipe/extractor/services/youtube/q0;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-static {p0, p1}, Lx9/j;->a(Ljava/util/stream/Stream;Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 49
    move-result-object p0

    .line 50
    .line 51
    new-instance p1, Lorg/schabi/newpipe/extractor/services/youtube/n0;

    .line 52
    .line 53
    .line 54
    invoke-direct {p1}, Lorg/schabi/newpipe/extractor/services/youtube/n0;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-static {p0, p1}, Lorg/schabi/newpipe/extractor/localization/n;->a(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 58
    move-result-object p0

    .line 59
    .line 60
    new-instance p1, Lorg/schabi/newpipe/extractor/services/youtube/o0;

    .line 61
    .line 62
    .line 63
    invoke-direct {p1}, Lorg/schabi/newpipe/extractor/services/youtube/o0;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-static {p0, p1}, Lx9/j;->a(Ljava/util/stream/Stream;Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 67
    move-result-object p0

    .line 68
    .line 69
    .line 70
    invoke-static {p0}, Lx9/k;->a(Ljava/util/stream/Stream;)Ljava/util/Optional;

    .line 71
    move-result-object p0

    .line 72
    const/4 p1, 0x0

    .line 73
    .line 74
    .line 75
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/g;->a(Ljava/util/Optional;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    move-result-object p0

    .line 77
    .line 78
    check-cast p0, Ljava/lang/String;

    .line 79
    return-object p0
.end method
