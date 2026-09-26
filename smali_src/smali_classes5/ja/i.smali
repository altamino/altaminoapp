.class public final Lja/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ALBUMS_AND_ARTWORKS_IMAGE_SUFFIXES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lqa/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final ON_URL_PATTERN:Ljava/util/regex/Pattern;

.field public static final SOUNDCLOUD_API_V2_URL:Ljava/lang/String; = "https://api-v2.soundcloud.com/"

.field private static final VISUALS_IMAGE_SUFFIXES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lqa/b;",
            ">;"
        }
    .end annotation
.end field

.field private static clientId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    .line 2
    const/16 v0, 0xf

    .line 3
    .line 4
    new-array v0, v0, [Lqa/b;

    .line 5
    .line 6
    new-instance v1, Lqa/b;

    .line 7
    .line 8
    sget-object v2, Lx9/c$a;->LOW:Lx9/c$a;

    .line 9
    .line 10
    const-string v3, "mini"

    .line 11
    .line 12
    const/16 v4, 0x10

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v3, v4, v4, v2}, Lqa/b;-><init>(Ljava/lang/String;IILx9/c$a;)V

    .line 16
    const/4 v3, 0x0

    .line 17
    .line 18
    aput-object v1, v0, v3

    .line 19
    .line 20
    new-instance v1, Lqa/b;

    .line 21
    .line 22
    const-string v3, "t20x20"

    .line 23
    .line 24
    const/16 v4, 0x14

    .line 25
    .line 26
    .line 27
    invoke-direct {v1, v3, v4, v4, v2}, Lqa/b;-><init>(Ljava/lang/String;IILx9/c$a;)V

    .line 28
    const/4 v3, 0x1

    .line 29
    .line 30
    aput-object v1, v0, v3

    .line 31
    .line 32
    new-instance v1, Lqa/b;

    .line 33
    .line 34
    const-string v3, "small"

    .line 35
    .line 36
    const/16 v4, 0x20

    .line 37
    .line 38
    .line 39
    invoke-direct {v1, v3, v4, v4, v2}, Lqa/b;-><init>(Ljava/lang/String;IILx9/c$a;)V

    .line 40
    const/4 v3, 0x2

    .line 41
    .line 42
    aput-object v1, v0, v3

    .line 43
    .line 44
    new-instance v1, Lqa/b;

    .line 45
    .line 46
    const-string v3, "badge"

    .line 47
    .line 48
    const/16 v4, 0x2f

    .line 49
    .line 50
    .line 51
    invoke-direct {v1, v3, v4, v4, v2}, Lqa/b;-><init>(Ljava/lang/String;IILx9/c$a;)V

    .line 52
    const/4 v3, 0x3

    .line 53
    .line 54
    aput-object v1, v0, v3

    .line 55
    .line 56
    new-instance v1, Lqa/b;

    .line 57
    .line 58
    const-string v3, "t50x50"

    .line 59
    .line 60
    const/16 v4, 0x32

    .line 61
    .line 62
    .line 63
    invoke-direct {v1, v3, v4, v4, v2}, Lqa/b;-><init>(Ljava/lang/String;IILx9/c$a;)V

    .line 64
    const/4 v3, 0x4

    .line 65
    .line 66
    aput-object v1, v0, v3

    .line 67
    .line 68
    new-instance v1, Lqa/b;

    .line 69
    .line 70
    const-string v3, "t60x60"

    .line 71
    .line 72
    const/16 v4, 0x3c

    .line 73
    .line 74
    .line 75
    invoke-direct {v1, v3, v4, v4, v2}, Lqa/b;-><init>(Ljava/lang/String;IILx9/c$a;)V

    .line 76
    const/4 v3, 0x5

    .line 77
    .line 78
    aput-object v1, v0, v3

    .line 79
    .line 80
    new-instance v1, Lqa/b;

    .line 81
    .line 82
    const-string v3, "t67x67"

    .line 83
    .line 84
    const/16 v4, 0x43

    .line 85
    .line 86
    .line 87
    invoke-direct {v1, v3, v4, v4, v2}, Lqa/b;-><init>(Ljava/lang/String;IILx9/c$a;)V

    .line 88
    const/4 v3, 0x6

    .line 89
    .line 90
    aput-object v1, v0, v3

    .line 91
    .line 92
    new-instance v1, Lqa/b;

    .line 93
    .line 94
    const-string v3, "t80x80"

    .line 95
    .line 96
    const/16 v4, 0x50

    .line 97
    .line 98
    .line 99
    invoke-direct {v1, v3, v4, v4, v2}, Lqa/b;-><init>(Ljava/lang/String;IILx9/c$a;)V

    .line 100
    const/4 v3, 0x7

    .line 101
    .line 102
    aput-object v1, v0, v3

    .line 103
    .line 104
    new-instance v1, Lqa/b;

    .line 105
    .line 106
    const-string v3, "large"

    .line 107
    .line 108
    const/16 v4, 0x64

    .line 109
    .line 110
    .line 111
    invoke-direct {v1, v3, v4, v4, v2}, Lqa/b;-><init>(Ljava/lang/String;IILx9/c$a;)V

    .line 112
    .line 113
    const/16 v3, 0x8

    .line 114
    .line 115
    aput-object v1, v0, v3

    .line 116
    .line 117
    new-instance v1, Lqa/b;

    .line 118
    .line 119
    const-string v3, "t120x120"

    .line 120
    .line 121
    const/16 v4, 0x78

    .line 122
    .line 123
    .line 124
    invoke-direct {v1, v3, v4, v4, v2}, Lqa/b;-><init>(Ljava/lang/String;IILx9/c$a;)V

    .line 125
    .line 126
    const/16 v2, 0x9

    .line 127
    .line 128
    aput-object v1, v0, v2

    .line 129
    .line 130
    new-instance v1, Lqa/b;

    .line 131
    .line 132
    sget-object v2, Lx9/c$a;->MEDIUM:Lx9/c$a;

    .line 133
    .line 134
    const-string v3, "t200x200"

    .line 135
    .line 136
    const/16 v4, 0xc8

    .line 137
    .line 138
    .line 139
    invoke-direct {v1, v3, v4, v4, v2}, Lqa/b;-><init>(Ljava/lang/String;IILx9/c$a;)V

    .line 140
    .line 141
    const/16 v3, 0xa

    .line 142
    .line 143
    aput-object v1, v0, v3

    .line 144
    .line 145
    new-instance v1, Lqa/b;

    .line 146
    .line 147
    const-string v3, "t240x240"

    .line 148
    .line 149
    const/16 v4, 0xf0

    .line 150
    .line 151
    .line 152
    invoke-direct {v1, v3, v4, v4, v2}, Lqa/b;-><init>(Ljava/lang/String;IILx9/c$a;)V

    .line 153
    .line 154
    const/16 v3, 0xb

    .line 155
    .line 156
    aput-object v1, v0, v3

    .line 157
    .line 158
    new-instance v1, Lqa/b;

    .line 159
    .line 160
    const-string v3, "t250x250"

    .line 161
    .line 162
    const/16 v4, 0xfa

    .line 163
    .line 164
    .line 165
    invoke-direct {v1, v3, v4, v4, v2}, Lqa/b;-><init>(Ljava/lang/String;IILx9/c$a;)V

    .line 166
    .line 167
    const/16 v3, 0xc

    .line 168
    .line 169
    aput-object v1, v0, v3

    .line 170
    .line 171
    new-instance v1, Lqa/b;

    .line 172
    .line 173
    const-string v3, "t300x300"

    .line 174
    .line 175
    const/16 v4, 0x12c

    .line 176
    .line 177
    .line 178
    invoke-direct {v1, v3, v4, v4, v2}, Lqa/b;-><init>(Ljava/lang/String;IILx9/c$a;)V

    .line 179
    .line 180
    const/16 v3, 0xd

    .line 181
    .line 182
    aput-object v1, v0, v3

    .line 183
    .line 184
    new-instance v1, Lqa/b;

    .line 185
    .line 186
    const-string v3, "t500x500"

    .line 187
    .line 188
    const/16 v4, 0x1f4

    .line 189
    .line 190
    .line 191
    invoke-direct {v1, v3, v4, v4, v2}, Lqa/b;-><init>(Ljava/lang/String;IILx9/c$a;)V

    .line 192
    .line 193
    const/16 v3, 0xe

    .line 194
    .line 195
    aput-object v1, v0, v3

    .line 196
    .line 197
    .line 198
    invoke-static {v0}, Lnet/pubnative/lite/sdk/vpaid/h;->a([Ljava/lang/Object;)Ljava/util/List;

    .line 199
    move-result-object v0

    .line 200
    .line 201
    sput-object v0, Lja/i;->ALBUMS_AND_ARTWORKS_IMAGE_SUFFIXES:Ljava/util/List;

    .line 202
    .line 203
    new-instance v0, Lqa/b;

    .line 204
    .line 205
    const/16 v1, 0x4d8

    .line 206
    .line 207
    const/16 v3, 0x104

    .line 208
    .line 209
    const-string v4, "t1240x260"

    .line 210
    .line 211
    .line 212
    invoke-direct {v0, v4, v1, v3, v2}, Lqa/b;-><init>(Ljava/lang/String;IILx9/c$a;)V

    .line 213
    .line 214
    new-instance v1, Lqa/b;

    .line 215
    .line 216
    const/16 v3, 0x9b0

    .line 217
    .line 218
    const/16 v4, 0x208

    .line 219
    .line 220
    const-string v5, "t2480x520"

    .line 221
    .line 222
    .line 223
    invoke-direct {v1, v5, v3, v4, v2}, Lqa/b;-><init>(Ljava/lang/String;IILx9/c$a;)V

    .line 224
    .line 225
    .line 226
    invoke-static {v0, v1}, Lja/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    .line 227
    move-result-object v0

    .line 228
    .line 229
    sput-object v0, Lja/i;->VISUALS_IMAGE_SUFFIXES:Ljava/util/List;

    .line 230
    .line 231
    const-string v0, "^https?://on.soundcloud.com/[0-9a-zA-Z]+$"

    .line 232
    .line 233
    .line 234
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 235
    move-result-object v0

    .line 236
    .line 237
    sput-object v0, Lja/i;->ON_URL_PATTERN:Ljava/util/regex/Pattern;

    .line 238
    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Lqa/b;)Lx9/c;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lja/i;->l(Ljava/lang/String;Lqa/b;)Lx9/c;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized b()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/d;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    const-class v0, Lja/i;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    sget-object v1, Lja/i;->clientId:Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    invoke-static {v1}, Lqa/y;->m(Ljava/lang/String;)Z

    .line 9
    move-result v1

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    sget-object v1, Lja/i;->clientId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit v0

    .line 15
    return-object v1

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    goto :goto_0

    .line 18
    .line 19
    .line 20
    :cond_0
    :try_start_1
    invoke-static {}, Lx9/p;->a()Lz9/a;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    const-string v2, "https://soundcloud.com"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Lz9/a;->get(Ljava/lang/String;)Lz9/d;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Lz9/d;->c()Ljava/lang/String;

    .line 31
    move-result-object v2

    .line 32
    .line 33
    .line 34
    invoke-static {v2}, Lorg/jsoup/Jsoup;->parse(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    .line 35
    move-result-object v2

    .line 36
    .line 37
    const-string v3, "script[src*=\"sndcdn.com/assets/\"][src$=\".js\"]"

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v3}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 41
    move-result-object v2

    .line 42
    .line 43
    .line 44
    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 45
    .line 46
    const-string v3, "Range"

    .line 47
    .line 48
    const-string v4, "bytes=0-50000"

    .line 49
    .line 50
    .line 51
    invoke-static {v4}, Lja/e;->a(Ljava/lang/Object;)Ljava/util/List;

    .line 52
    move-result-object v4

    .line 53
    .line 54
    .line 55
    invoke-static {v3, v4}, Lja/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 56
    move-result-object v3

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 60
    move-result-object v2

    .line 61
    .line 62
    .line 63
    :catch_0
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    move-result v4

    .line 65
    .line 66
    if-eqz v4, :cond_2

    .line 67
    .line 68
    .line 69
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    move-result-object v4

    .line 71
    .line 72
    check-cast v4, Lorg/jsoup/nodes/Element;

    .line 73
    .line 74
    const-string v5, "src"

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4, v5}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    move-result-object v4

    .line 79
    .line 80
    .line 81
    invoke-static {v4}, Lqa/y;->m(Ljava/lang/String;)Z

    .line 82
    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    .line 84
    if-nez v5, :cond_1

    .line 85
    .line 86
    :try_start_2
    const-string v5, ",client_id:\"(.*?)\""

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v4, v3}, Lz9/a;->get(Ljava/lang/String;Ljava/util/Map;)Lz9/d;

    .line 90
    move-result-object v4

    .line 91
    .line 92
    .line 93
    invoke-virtual {v4}, Lz9/d;->c()Ljava/lang/String;

    .line 94
    move-result-object v4

    .line 95
    .line 96
    .line 97
    invoke-static {v5, v4}, Lqa/n;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 98
    move-result-object v4

    .line 99
    .line 100
    sput-object v4, Lja/i;->clientId:Ljava/lang/String;
    :try_end_2
    .catch Lqa/n$a; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 101
    monitor-exit v0

    .line 102
    return-object v4

    .line 103
    .line 104
    :cond_2
    :try_start_3
    new-instance v1, Laa/d;

    .line 105
    .line 106
    const-string v2, "Couldn\'t extract client id"

    .line 107
    .line 108
    .line 109
    invoke-direct {v1, v2}, Laa/d;-><init>(Ljava/lang/String;)V

    .line 110
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 111
    :goto_0
    monitor-exit v0

    .line 112
    throw v1
.end method

.method public static c(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lx9/c;",
            ">;"
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
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    .line 13
    :cond_0
    const-string v0, "-large."

    .line 14
    .line 15
    const-string v1, "-%s."

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 20
    .line 21
    sget-object v0, Lja/i;->ALBUMS_AND_ARTWORKS_IMAGE_SUFFIXES:Ljava/util/List;

    .line 22
    .line 23
    .line 24
    invoke-static {p0, v0}, Lja/i;->d(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method private static d(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lqa/b;",
            ">;)",
            "Ljava/util/List<",
            "Lx9/c;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/k;->a(Ljava/util/List;)Ljava/util/stream/Stream;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    new-instance v0, Lja/h;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p0}, Lja/h;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1, v0}, Lorg/schabi/newpipe/extractor/localization/n;->a(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 13
    move-result-object p0

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lda/d;->a()Ljava/util/stream/Collector;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    .line 20
    invoke-static {p0, p1}, Lda/e;->a(Ljava/util/stream/Stream;Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 21
    move-result-object p0

    .line 22
    .line 23
    check-cast p0, Ljava/util/List;

    .line 24
    return-object p0
.end method

.method public static e(Lcom/grack/nanojson/JsonObject;)Ljava/util/List;
    .locals 1
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
    const-string v0, "artwork_url"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lja/i;->c(Ljava/lang/String;)Ljava/util/List;

    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    .line 15
    :cond_0
    const-string v0, "user"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 19
    move-result-object p0

    .line 20
    .line 21
    const-string v0, "avatar_url"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 26
    .line 27
    if-eqz p0, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-static {p0}, Lja/i;->c(Ljava/lang/String;)Ljava/util/List;

    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    .line 34
    :cond_1
    new-instance p0, Laa/h;

    .line 35
    .line 36
    const-string v0, "Could not get track or track user\'s thumbnails"

    .line 37
    .line 38
    .line 39
    invoke-direct {p0, v0}, Laa/h;-><init>(Ljava/lang/String;)V

    .line 40
    throw p0
.end method

.method public static f(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    const-string v0, "user"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    const-string v0, "avatar_url"

    .line 9
    .line 10
    const-string v1, ""

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 15
    .line 16
    .line 17
    invoke-static {p0}, Lqa/y;->v(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method private static g(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    :try_start_0
    const-string v0, "next_href"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    const-string v0, "client_id="

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lja/i;->b()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string p0, "&client_id="

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :cond_0
    return-object p0

    .line 40
    .line 41
    :catch_0
    const-string p0, ""

    .line 42
    return-object p0
.end method

.method public static h(Loa/m;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/j;,
            Laa/h;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-static {p0, p1, v0}, Lja/i;->i(Loa/m;Ljava/lang/String;Z)Ljava/lang/String;

    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public static i(Loa/m;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Laa/j;,
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lx9/p;->a()Lz9/a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget-object v1, Lx9/r;->SoundCloud:Lja/j;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Lx9/s;->d()Lorg/schabi/newpipe/extractor/localization/i;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1, v1}, Lz9/a;->get(Ljava/lang/String;Lorg/schabi/newpipe/extractor/localization/i;)Lz9/d;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lz9/d;->d()I

    .line 18
    move-result v0

    .line 19
    .line 20
    const/16 v1, 0x190

    .line 21
    .line 22
    if-ge v0, v1, :cond_3

    .line 23
    .line 24
    .line 25
    :try_start_0
    invoke-static {}, Lcom/grack/nanojson/JsonParser;->object()Lcom/grack/nanojson/JsonParser$JsonParserContext;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lz9/d;->c()Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lcom/grack/nanojson/JsonParser$JsonParserContext;->from(Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    check-cast p1, Lcom/grack/nanojson/JsonObject;
    :try_end_0
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    const-string v0, "collection"

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonArray;->iterator()Ljava/util/Iterator;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    .line 49
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    move-result v1

    .line 51
    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    .line 55
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    move-result-object v1

    .line 57
    .line 58
    instance-of v2, v1, Lcom/grack/nanojson/JsonObject;

    .line 59
    .line 60
    if-eqz v2, :cond_0

    .line 61
    .line 62
    check-cast v1, Lcom/grack/nanojson/JsonObject;

    .line 63
    .line 64
    new-instance v2, Lka/d;

    .line 65
    .line 66
    if-eqz p2, :cond_1

    .line 67
    .line 68
    const-string v3, "track"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 72
    move-result-object v1

    .line 73
    .line 74
    .line 75
    :cond_1
    invoke-direct {v2, v1}, Lka/d;-><init>(Lcom/grack/nanojson/JsonObject;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v2}, Loa/m;->h(Loa/l;)V

    .line 79
    goto :goto_0

    .line 80
    .line 81
    .line 82
    :cond_2
    invoke-static {p1}, Lja/i;->g(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    .line 83
    move-result-object p0

    .line 84
    return-object p0

    .line 85
    :catch_0
    move-exception p0

    .line 86
    .line 87
    new-instance p1, Laa/h;

    .line 88
    .line 89
    const-string p2, "Could not parse json response"

    .line 90
    .line 91
    .line 92
    invoke-direct {p1, p2, p0}, Laa/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    throw p1

    .line 94
    .line 95
    :cond_3
    new-instance p0, Ljava/io/IOException;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Lz9/d;->d()I

    .line 99
    move-result p1

    .line 100
    .line 101
    new-instance p2, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    const-string v0, "Could not get streams from API, HTTP "

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    move-result-object p1

    .line 117
    .line 118
    .line 119
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 120
    throw p0
.end method

.method public static j(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    const-string v0, "user"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    const-string v0, "username"

    .line 9
    .line 10
    const-string v1, ""

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public static k(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    const-string v0, "user"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    const-string v0, "permalink_url"

    .line 9
    .line 10
    const-string v1, ""

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 15
    .line 16
    .line 17
    invoke-static {p0}, Lqa/y;->v(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method private static synthetic l(Ljava/lang/String;Lqa/b;)Lx9/c;
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lx9/c;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lqa/b;->c()Ljava/lang/String;

    .line 9
    move-result-object v2

    .line 10
    const/4 v3, 0x0

    .line 11
    .line 12
    aput-object v2, v1, v3

    .line 13
    .line 14
    .line 15
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    move-result-object p0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lqa/b;->a()I

    .line 20
    move-result v1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lqa/b;->d()I

    .line 24
    move-result v2

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lqa/b;->b()Lx9/c$a;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, p0, v1, v2, p1}, Lx9/c;-><init>(Ljava/lang/String;IILx9/c$a;)V

    .line 32
    return-object v0
.end method

.method public static m(Ljava/lang/String;)Ljava/time/OffsetDateTime;
    .locals 5
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
    :catch_0
    move-exception v0

    .line 7
    .line 8
    :try_start_1
    const-string v1, "yyyy/MM/dd HH:mm:ss +0000"

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Lja/a;->a(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-static {p0, v1}, Lja/b;->a(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/OffsetDateTime;

    .line 16
    move-result-object p0
    :try_end_1
    .catch Ljava/time/format/DateTimeParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 17
    return-object p0

    .line 18
    :catch_1
    move-exception v1

    .line 19
    .line 20
    new-instance v2, Laa/h;

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lja/c;->a(Ljava/time/format/DateTimeParseException;)Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    const-string v4, "Could not parse date: \""

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string p0, "\", "

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object p0

    .line 50
    .line 51
    .line 52
    invoke-direct {v2, p0, v1}, Laa/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    throw v2
.end method

.method public static n(Lz9/a;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;
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
    invoke-static {p1}, Lqa/y;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lja/i;->b()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    const-string v2, "https://api-v2.soundcloud.com/resolve?url="

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string p1, "&client_id="

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    :try_start_0
    sget-object v0, Lx9/r;->SoundCloud:Lja/j;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lx9/s;->d()Lorg/schabi/newpipe/extractor/localization/i;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, p1, v0}, Lz9/a;->get(Ljava/lang/String;Lorg/schabi/newpipe/extractor/localization/i;)Lz9/d;

    .line 43
    move-result-object p0

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lz9/d;->c()Ljava/lang/String;

    .line 47
    move-result-object p0

    .line 48
    .line 49
    .line 50
    invoke-static {}, Lcom/grack/nanojson/JsonParser;->object()Lcom/grack/nanojson/JsonParser$JsonParserContext;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, p0}, Lcom/grack/nanojson/JsonParser$JsonParserContext;->from(Ljava/lang/String;)Ljava/lang/Object;

    .line 55
    move-result-object p0

    .line 56
    .line 57
    check-cast p0, Lcom/grack/nanojson/JsonObject;
    :try_end_0
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    return-object p0

    .line 59
    :catch_0
    move-exception p0

    .line 60
    .line 61
    new-instance p1, Laa/h;

    .line 62
    .line 63
    const-string v0, "Could not parse json response"

    .line 64
    .line 65
    .line 66
    invoke-direct {p1, v0, p0}, Laa/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    throw p1
.end method

.method public static o(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lja/i;->ON_URL_PATTERN:Ljava/util/regex/Pattern;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-static {}, Lx9/p;->a()Lz9/a;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p0}, Lz9/a;->head(Ljava/lang/String;)Lz9/d;

    .line 21
    move-result-object p0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lz9/d;->b()Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 26
    .line 27
    const-string v0, "\\?"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 32
    .line 33
    aget-object p0, p0, v1
    :try_end_0
    .catch Laa/d; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception p0

    .line 36
    .line 37
    new-instance v0, Laa/h;

    .line 38
    .line 39
    const-string v1, "Could not follow on.soundcloud.com redirect"

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, v1, p0}, Laa/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    throw v0

    .line 44
    .line 45
    .line 46
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 47
    move-result v0

    .line 48
    .line 49
    add-int/lit8 v0, v0, -0x1

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 53
    move-result v0

    .line 54
    .line 55
    const/16 v2, 0x2f

    .line 56
    .line 57
    if-ne v0, v2, :cond_1

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 61
    move-result v0

    .line 62
    .line 63
    add-int/lit8 v0, v0, -0x1

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 67
    move-result-object p0

    .line 68
    .line 69
    .line 70
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 71
    move-result-object p0

    .line 72
    .line 73
    .line 74
    invoke-static {p0}, Lqa/y;->t(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    move-result-object p0

    .line 76
    .line 77
    .line 78
    :try_start_1
    invoke-static {p0}, Lqa/y;->w(Ljava/lang/String;)Ljava/net/URL;

    .line 79
    move-result-object p0
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_3

    .line 80
    .line 81
    .line 82
    :try_start_2
    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 83
    move-result-object p0

    .line 84
    .line 85
    .line 86
    invoke-static {p0}, Lqa/y;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    move-result-object p0

    .line 88
    .line 89
    .line 90
    invoke-static {}, Lja/i;->b()Ljava/lang/String;

    .line 91
    move-result-object v0

    .line 92
    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    const-string v2, "https://api-widget.soundcloud.com/resolve?url="

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    const-string p0, "&format=json&client_id="

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    move-result-object p0

    .line 117
    .line 118
    .line 119
    invoke-static {}, Lx9/p;->a()Lz9/a;

    .line 120
    move-result-object v0

    .line 121
    .line 122
    sget-object v1, Lx9/r;->SoundCloud:Lja/j;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1}, Lx9/s;->d()Lorg/schabi/newpipe/extractor/localization/i;

    .line 126
    move-result-object v1

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, p0, v1}, Lz9/a;->get(Ljava/lang/String;Lorg/schabi/newpipe/extractor/localization/i;)Lz9/d;

    .line 130
    move-result-object p0

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0}, Lz9/d;->c()Ljava/lang/String;

    .line 134
    move-result-object p0

    .line 135
    .line 136
    .line 137
    invoke-static {}, Lcom/grack/nanojson/JsonParser;->object()Lcom/grack/nanojson/JsonParser$JsonParserContext;

    .line 138
    move-result-object v0

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, p0}, Lcom/grack/nanojson/JsonParser$JsonParserContext;->from(Ljava/lang/String;)Ljava/lang/Object;

    .line 142
    move-result-object p0

    .line 143
    .line 144
    check-cast p0, Lcom/grack/nanojson/JsonObject;

    .line 145
    .line 146
    const-string v0, "id"

    .line 147
    .line 148
    .line 149
    invoke-static {p0, v0}, Lqa/e;->j(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/Object;

    .line 150
    move-result-object p0

    .line 151
    .line 152
    .line 153
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 154
    move-result-object p0
    :try_end_2
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Laa/d; {:try_start_2 .. :try_end_2} :catch_1

    .line 155
    return-object p0

    .line 156
    :catch_1
    move-exception p0

    .line 157
    goto :goto_1

    .line 158
    :catch_2
    move-exception p0

    .line 159
    goto :goto_2

    .line 160
    .line 161
    :goto_1
    new-instance v0, Laa/h;

    .line 162
    .line 163
    const-string v1, "Could not resolve id with embedded player. ClientId not extracted"

    .line 164
    .line 165
    .line 166
    invoke-direct {v0, v1, p0}, Laa/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 167
    throw v0

    .line 168
    .line 169
    :goto_2
    new-instance v0, Laa/h;

    .line 170
    .line 171
    const-string v1, "Could not parse JSON response"

    .line 172
    .line 173
    .line 174
    invoke-direct {v0, v1, p0}, Laa/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 175
    throw v0

    .line 176
    .line 177
    :catch_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 178
    .line 179
    const-string v0, "The given URL is not valid"

    .line 180
    .line 181
    .line 182
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 183
    throw p0
.end method

.method public static p(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Laa/j;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lx9/p;->a()Lz9/a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Lqa/y;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    const-string v2, "https://w.soundcloud.com/player/?url="

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 26
    .line 27
    sget-object v1, Lx9/r;->SoundCloud:Lja/j;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Lx9/s;->d()Lorg/schabi/newpipe/extractor/localization/i;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p0, v1}, Lz9/a;->get(Ljava/lang/String;Lorg/schabi/newpipe/extractor/localization/i;)Lz9/d;

    .line 35
    move-result-object p0

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lz9/d;->c()Ljava/lang/String;

    .line 39
    move-result-object p0

    .line 40
    .line 41
    .line 42
    invoke-static {p0}, Lorg/jsoup/Jsoup;->parse(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    .line 43
    move-result-object p0

    .line 44
    .line 45
    const-string v0, "link[rel=\"canonical\"]"

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 49
    move-result-object p0

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lorg/jsoup/select/Elements;->first()Lorg/jsoup/nodes/Element;

    .line 53
    move-result-object p0

    .line 54
    .line 55
    const-string v0, "abs:href"

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    move-result-object p0

    .line 60
    return-object p0
.end method
