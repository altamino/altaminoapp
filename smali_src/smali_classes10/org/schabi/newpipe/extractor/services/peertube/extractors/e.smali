.class public Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;
.super Loa/h;
.source "SourceFile"


# static fields
.field private static final ACCOUNT_HOST:Ljava/lang/String; = "account.host"

.field private static final ACCOUNT_NAME:Ljava/lang/String; = "account.name"

.field private static final FILES:Ljava/lang/String; = "files"

.field private static final FILE_DOWNLOAD_URL:Ljava/lang/String; = "fileDownloadUrl"

.field private static final FILE_URL:Ljava/lang/String; = "fileUrl"

.field private static final PLAYLIST_URL:Ljava/lang/String; = "playlistUrl"

.field private static final RESOLUTION_ID:Ljava/lang/String; = "resolution.id"

.field private static final STREAMING_PLAYLISTS:Ljava/lang/String; = "streamingPlaylists"


# instance fields
.field private final audioStreams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Loa/a;",
            ">;"
        }
    .end annotation
.end field

.field private final baseUrl:Ljava/lang/String;

.field private json:Lcom/grack/nanojson/JsonObject;

.field private final subtitles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Loa/q;",
            ">;"
        }
    .end annotation
.end field

.field private subtitlesException:Laa/h;

.field private final videoStreams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Loa/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lx9/s;Lorg/schabi/newpipe/extractor/linkhandler/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Loa/h;-><init>(Lx9/s;Lorg/schabi/newpipe/extractor/linkhandler/a;)V

    .line 4
    .line 5
    new-instance p1, Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->subtitles:Ljava/util/List;

    .line 11
    .line 12
    new-instance p1, Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->audioStreams:Ljava/util/List;

    .line 18
    .line 19
    new-instance p1, Ljava/util/ArrayList;

    .line 20
    .line 21
    .line 22
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->videoStreams:Ljava/util/List;

    .line 25
    const/4 p1, 0x0

    .line 26
    .line 27
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->subtitlesException:Laa/h;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lx9/b;->c()Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->baseUrl:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public static synthetic c0(Lcom/grack/nanojson/JsonObject;)Loa/s;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->p0(Lcom/grack/nanojson/JsonObject;)Loa/s;

    move-result-object p0

    return-object p0
.end method

.method private d0(Lcom/grack/nanojson/JsonObject;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "."

    .line 3
    .line 4
    .line 5
    invoke-virtual {p5, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    add-int/2addr v0, v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lx9/m;->b(Ljava/lang/String;)Lx9/m;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string p3, "-"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v3

    .line 37
    .line 38
    iget-object v4, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->audioStreams:Ljava/util/List;

    .line 39
    .line 40
    new-instance v5, Loa/a$a;

    .line 41
    .line 42
    .line 43
    invoke-direct {v5}, Loa/a$a;-><init>()V

    .line 44
    .line 45
    sget-object v6, Loa/d;->PROGRESSIVE_HTTP:Loa/d;

    .line 46
    .line 47
    new-instance v7, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object v6

    .line 70
    .line 71
    .line 72
    invoke-virtual {v5, v6}, Loa/a$a;->i(Ljava/lang/String;)Loa/a$a;

    .line 73
    move-result-object v5

    .line 74
    .line 75
    .line 76
    invoke-virtual {v5, p5, v1}, Loa/a$a;->g(Ljava/lang/String;Z)Loa/a$a;

    .line 77
    move-result-object v5

    .line 78
    .line 79
    .line 80
    invoke-virtual {v5, v2}, Loa/a$a;->l(Lx9/m;)Loa/a$a;

    .line 81
    move-result-object v5

    .line 82
    const/4 v6, -0x1

    .line 83
    .line 84
    .line 85
    invoke-virtual {v5, v6}, Loa/a$a;->f(I)Loa/a$a;

    .line 86
    move-result-object v5

    .line 87
    .line 88
    .line 89
    invoke-virtual {v5}, Loa/a$a;->a()Loa/a;

    .line 90
    move-result-object v5

    .line 91
    .line 92
    .line 93
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    invoke-static {p6}, Lqa/y;->m(Ljava/lang/String;)Z

    .line 97
    move-result v4

    .line 98
    .line 99
    if-nez v4, :cond_1

    .line 100
    .line 101
    if-eqz p2, :cond_0

    .line 102
    .line 103
    .line 104
    invoke-direct {p0, p1, p4, v0, p5}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->i0(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 105
    move-result-object p2

    .line 106
    goto :goto_0

    .line 107
    .line 108
    .line 109
    :cond_0
    invoke-direct {p0, p1, p6}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->j0(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    .line 110
    move-result-object p2

    .line 111
    .line 112
    :goto_0
    new-instance p5, Loa/a$a;

    .line 113
    .line 114
    .line 115
    invoke-direct {p5}, Loa/a$a;-><init>()V

    .line 116
    .line 117
    sget-object v0, Loa/d;->HLS:Loa/d;

    .line 118
    .line 119
    new-instance v4, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    move-result-object v4

    .line 136
    .line 137
    .line 138
    invoke-virtual {p5, v4}, Loa/a$a;->i(Ljava/lang/String;)Loa/a$a;

    .line 139
    move-result-object p5

    .line 140
    .line 141
    .line 142
    invoke-virtual {p5, p2, v1}, Loa/a$a;->g(Ljava/lang/String;Z)Loa/a$a;

    .line 143
    move-result-object p2

    .line 144
    .line 145
    .line 146
    invoke-virtual {p2, v0}, Loa/a$a;->h(Loa/d;)Loa/a$a;

    .line 147
    move-result-object p2

    .line 148
    .line 149
    .line 150
    invoke-virtual {p2, v2}, Loa/a$a;->l(Lx9/m;)Loa/a$a;

    .line 151
    move-result-object p2

    .line 152
    .line 153
    .line 154
    invoke-virtual {p2, v6}, Loa/a$a;->f(I)Loa/a$a;

    .line 155
    move-result-object p2

    .line 156
    .line 157
    .line 158
    invoke-virtual {p2, p6}, Loa/a$a;->k(Ljava/lang/String;)Loa/a$a;

    .line 159
    move-result-object p2

    .line 160
    .line 161
    .line 162
    invoke-virtual {p2}, Loa/a$a;->a()Loa/a;

    .line 163
    move-result-object p2

    .line 164
    .line 165
    iget-object p5, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->audioStreams:Ljava/util/List;

    .line 166
    .line 167
    .line 168
    invoke-static {p2, p5}, Loa/g;->a(Loa/g;Ljava/util/List;)Z

    .line 169
    move-result p5

    .line 170
    .line 171
    if-nez p5, :cond_1

    .line 172
    .line 173
    iget-object p5, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->audioStreams:Ljava/util/List;

    .line 174
    .line 175
    .line 176
    invoke-interface {p5, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    .line 178
    :cond_1
    const-string p2, "torrentUrl"

    .line 179
    .line 180
    .line 181
    invoke-static {p1, p2}, Lqa/e;->h(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    .line 182
    move-result-object p1

    .line 183
    .line 184
    .line 185
    invoke-static {p1}, Lqa/y;->m(Ljava/lang/String;)Z

    .line 186
    move-result p2

    .line 187
    .line 188
    if-nez p2, :cond_2

    .line 189
    .line 190
    iget-object p2, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->audioStreams:Ljava/util/List;

    .line 191
    .line 192
    new-instance p5, Loa/a$a;

    .line 193
    .line 194
    .line 195
    invoke-direct {p5}, Loa/a$a;-><init>()V

    .line 196
    .line 197
    sget-object p6, Loa/d;->TORRENT:Loa/d;

    .line 198
    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    move-result-object p3

    .line 222
    .line 223
    .line 224
    invoke-virtual {p5, p3}, Loa/a$a;->i(Ljava/lang/String;)Loa/a$a;

    .line 225
    move-result-object p3

    .line 226
    .line 227
    .line 228
    invoke-virtual {p3, p1, v1}, Loa/a$a;->g(Ljava/lang/String;Z)Loa/a$a;

    .line 229
    move-result-object p1

    .line 230
    .line 231
    .line 232
    invoke-virtual {p1, p6}, Loa/a$a;->h(Loa/d;)Loa/a$a;

    .line 233
    move-result-object p1

    .line 234
    .line 235
    .line 236
    invoke-virtual {p1, v2}, Loa/a$a;->l(Lx9/m;)Loa/a$a;

    .line 237
    move-result-object p1

    .line 238
    .line 239
    .line 240
    invoke-virtual {p1, v6}, Loa/a$a;->f(I)Loa/a$a;

    .line 241
    move-result-object p1

    .line 242
    .line 243
    .line 244
    invoke-virtual {p1}, Loa/a$a;->a()Loa/a;

    .line 245
    move-result-object p1

    .line 246
    .line 247
    .line 248
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    :cond_2
    return-void
.end method

.method private e0(Lcom/grack/nanojson/JsonObject;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "."

    .line 3
    .line 4
    .line 5
    invoke-virtual {p5, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    add-int/2addr v0, v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lx9/m;->b(Ljava/lang/String;)Lx9/m;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v4, "-"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v3

    .line 37
    .line 38
    iget-object v5, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->videoStreams:Ljava/util/List;

    .line 39
    .line 40
    new-instance v6, Loa/s$a;

    .line 41
    .line 42
    .line 43
    invoke-direct {v6}, Loa/s$a;-><init>()V

    .line 44
    .line 45
    sget-object v7, Loa/d;->PROGRESSIVE_HTTP:Loa/d;

    .line 46
    .line 47
    new-instance v8, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object v7

    .line 70
    .line 71
    .line 72
    invoke-virtual {v6, v7}, Loa/s$a;->d(Ljava/lang/String;)Loa/s$a;

    .line 73
    move-result-object v6

    .line 74
    .line 75
    .line 76
    invoke-virtual {v6, p5, v1}, Loa/s$a;->b(Ljava/lang/String;Z)Loa/s$a;

    .line 77
    move-result-object v6

    .line 78
    const/4 v7, 0x0

    .line 79
    .line 80
    .line 81
    invoke-virtual {v6, v7}, Loa/s$a;->e(Z)Loa/s$a;

    .line 82
    move-result-object v6

    .line 83
    .line 84
    .line 85
    invoke-virtual {v6, p3}, Loa/s$a;->i(Ljava/lang/String;)Loa/s$a;

    .line 86
    move-result-object v6

    .line 87
    .line 88
    .line 89
    invoke-virtual {v6, v2}, Loa/s$a;->h(Lx9/m;)Loa/s$a;

    .line 90
    move-result-object v6

    .line 91
    .line 92
    .line 93
    invoke-virtual {v6}, Loa/s$a;->a()Loa/s;

    .line 94
    move-result-object v6

    .line 95
    .line 96
    .line 97
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    invoke-static {p6}, Lqa/y;->m(Ljava/lang/String;)Z

    .line 101
    move-result v5

    .line 102
    .line 103
    if-nez v5, :cond_1

    .line 104
    .line 105
    if-eqz p2, :cond_0

    .line 106
    .line 107
    .line 108
    invoke-direct {p0, p1, p4, v0, p5}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->i0(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 109
    move-result-object p2

    .line 110
    goto :goto_0

    .line 111
    .line 112
    .line 113
    :cond_0
    invoke-direct {p0, p1, p6}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->j0(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    .line 114
    move-result-object p2

    .line 115
    .line 116
    :goto_0
    new-instance p5, Loa/s$a;

    .line 117
    .line 118
    .line 119
    invoke-direct {p5}, Loa/s$a;-><init>()V

    .line 120
    .line 121
    sget-object v0, Loa/d;->HLS:Loa/d;

    .line 122
    .line 123
    new-instance v5, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    move-result-object v5

    .line 140
    .line 141
    .line 142
    invoke-virtual {p5, v5}, Loa/s$a;->d(Ljava/lang/String;)Loa/s$a;

    .line 143
    move-result-object p5

    .line 144
    .line 145
    .line 146
    invoke-virtual {p5, p2, v1}, Loa/s$a;->b(Ljava/lang/String;Z)Loa/s$a;

    .line 147
    move-result-object p2

    .line 148
    .line 149
    .line 150
    invoke-virtual {p2, v7}, Loa/s$a;->e(Z)Loa/s$a;

    .line 151
    move-result-object p2

    .line 152
    .line 153
    .line 154
    invoke-virtual {p2, v0}, Loa/s$a;->c(Loa/d;)Loa/s$a;

    .line 155
    move-result-object p2

    .line 156
    .line 157
    .line 158
    invoke-virtual {p2, p3}, Loa/s$a;->i(Ljava/lang/String;)Loa/s$a;

    .line 159
    move-result-object p2

    .line 160
    .line 161
    .line 162
    invoke-virtual {p2, v2}, Loa/s$a;->h(Lx9/m;)Loa/s$a;

    .line 163
    move-result-object p2

    .line 164
    .line 165
    .line 166
    invoke-virtual {p2, p6}, Loa/s$a;->g(Ljava/lang/String;)Loa/s$a;

    .line 167
    move-result-object p2

    .line 168
    .line 169
    .line 170
    invoke-virtual {p2}, Loa/s$a;->a()Loa/s;

    .line 171
    move-result-object p2

    .line 172
    .line 173
    iget-object p5, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->videoStreams:Ljava/util/List;

    .line 174
    .line 175
    .line 176
    invoke-static {p2, p5}, Loa/g;->a(Loa/g;Ljava/util/List;)Z

    .line 177
    move-result p5

    .line 178
    .line 179
    if-nez p5, :cond_1

    .line 180
    .line 181
    iget-object p5, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->videoStreams:Ljava/util/List;

    .line 182
    .line 183
    .line 184
    invoke-interface {p5, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    .line 186
    :cond_1
    const-string p2, "torrentUrl"

    .line 187
    .line 188
    .line 189
    invoke-static {p1, p2}, Lqa/e;->h(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    .line 190
    move-result-object p1

    .line 191
    .line 192
    .line 193
    invoke-static {p1}, Lqa/y;->m(Ljava/lang/String;)Z

    .line 194
    move-result p2

    .line 195
    .line 196
    if-nez p2, :cond_2

    .line 197
    .line 198
    iget-object p2, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->videoStreams:Ljava/util/List;

    .line 199
    .line 200
    new-instance p5, Loa/s$a;

    .line 201
    .line 202
    .line 203
    invoke-direct {p5}, Loa/s$a;-><init>()V

    .line 204
    .line 205
    sget-object p6, Loa/d;->TORRENT:Loa/d;

    .line 206
    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    move-result-object p4

    .line 230
    .line 231
    .line 232
    invoke-virtual {p5, p4}, Loa/s$a;->d(Ljava/lang/String;)Loa/s$a;

    .line 233
    move-result-object p4

    .line 234
    .line 235
    .line 236
    invoke-virtual {p4, p1, v1}, Loa/s$a;->b(Ljava/lang/String;Z)Loa/s$a;

    .line 237
    move-result-object p1

    .line 238
    .line 239
    .line 240
    invoke-virtual {p1, v7}, Loa/s$a;->e(Z)Loa/s$a;

    .line 241
    move-result-object p1

    .line 242
    .line 243
    .line 244
    invoke-virtual {p1, p6}, Loa/s$a;->c(Loa/d;)Loa/s$a;

    .line 245
    move-result-object p1

    .line 246
    .line 247
    .line 248
    invoke-virtual {p1, p3}, Loa/s$a;->i(Ljava/lang/String;)Loa/s$a;

    .line 249
    move-result-object p1

    .line 250
    .line 251
    .line 252
    invoke-virtual {p1, v2}, Loa/s$a;->h(Lx9/m;)Loa/s$a;

    .line 253
    move-result-object p1

    .line 254
    .line 255
    .line 256
    invoke-virtual {p1}, Loa/s$a;->a()Loa/s;

    .line 257
    move-result-object p1

    .line 258
    .line 259
    .line 260
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    :cond_2
    return-void
.end method

.method private f0(Loa/m;Lcom/grack/nanojson/JsonObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    :try_start_0
    const-string v0, "data"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lqa/e;->j(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object p2

    .line 7
    .line 8
    check-cast p2, Lcom/grack/nanojson/JsonArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/grack/nanojson/JsonArray;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object p2

    .line 13
    .line 14
    .line 15
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    instance-of v1, v0, Lcom/grack/nanojson/JsonObject;

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    check-cast v0, Lcom/grack/nanojson/JsonObject;

    .line 29
    .line 30
    new-instance v1, Lorg/schabi/newpipe/extractor/services/peertube/extractors/f;

    .line 31
    .line 32
    iget-object v2, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->baseUrl:Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    invoke-direct {v1, v0, v2}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/f;-><init>(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/f;->getUrl()Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lx9/b;->n()Ljava/lang/String;

    .line 43
    move-result-object v2

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    move-result v0

    .line 48
    .line 49
    if-nez v0, :cond_0

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v1}, Loa/m;->h(Loa/l;)V

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    return-void

    .line 55
    :catch_0
    move-exception p1

    .line 56
    .line 57
    new-instance p2, Laa/h;

    .line 58
    .line 59
    const-string v0, "Could not extract related videos"

    .line 60
    .line 61
    .line 62
    invoke-direct {p2, v0, p1}, Laa/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    throw p2
.end method

.method private g0()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->json:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "streamingPlaylists"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonArray;->stream()Ljava/util/stream/Stream;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    const-class v1, Lcom/grack/nanojson/JsonObject;

    .line 15
    .line 16
    new-instance v2, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/a;

    .line 17
    .line 18
    .line 19
    invoke-direct {v2, v1}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/a;-><init>(Ljava/lang/Class;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v2}, Lx9/j;->a(Ljava/util/stream/Stream;Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    const-class v1, Lcom/grack/nanojson/JsonObject;

    .line 26
    .line 27
    new-instance v2, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/d;

    .line 28
    .line 29
    .line 30
    invoke-direct {v2, v1}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/d;-><init>(Ljava/lang/Class;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v2}, Lorg/schabi/newpipe/extractor/localization/n;->a(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    new-instance v1, Lorg/schabi/newpipe/extractor/services/peertube/extractors/c;

    .line 37
    .line 38
    .line 39
    invoke-direct {v1}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/c;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/localization/n;->a(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->videoStreams:Ljava/util/List;

    .line 46
    .line 47
    .line 48
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    new-instance v2, Lorg/schabi/newpipe/extractor/services/peertube/extractors/d;

    .line 51
    .line 52
    .line 53
    invoke-direct {v2, v1}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/d;-><init>(Ljava/util/List;)V

    .line 54
    .line 55
    .line 56
    invoke-static {v0, v2}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/a;->a(Ljava/util/stream/Stream;Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .line 60
    new-instance v1, Laa/h;

    .line 61
    .line 62
    const-string v2, "Could not get video streams"

    .line 63
    .line 64
    .line 65
    invoke-direct {v1, v2, v0}, Laa/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    throw v1
.end method

.method private h0(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;,
            Ljava/io/IOException;,
            Laa/j;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->baseUrl:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lx9/b;->g()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v0, "/api/v1/videos/"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v0, "/"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lx9/b;->d()Lz9/a;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p1}, Lz9/a;->get(Ljava/lang/String;)Lz9/d;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lz9/d;->d()I

    .line 48
    move-result v0

    .line 49
    .line 50
    const/16 v1, 0x190

    .line 51
    .line 52
    if-ne v0, v1, :cond_0

    .line 53
    const/4 p1, 0x0

    .line 54
    return-object p1

    .line 55
    .line 56
    .line 57
    :cond_0
    invoke-virtual {p1}, Lz9/d;->d()I

    .line 58
    move-result v0

    .line 59
    .line 60
    const/16 v1, 0xc8

    .line 61
    .line 62
    if-ne v0, v1, :cond_1

    .line 63
    .line 64
    .line 65
    :try_start_0
    invoke-static {}, Lcom/grack/nanojson/JsonParser;->object()Lcom/grack/nanojson/JsonParser$JsonParserContext;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Lz9/d;->c()Ljava/lang/String;

    .line 70
    move-result-object p1

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, p1}, Lcom/grack/nanojson/JsonParser$JsonParserContext;->from(Ljava/lang/String;)Ljava/lang/Object;

    .line 74
    move-result-object p1

    .line 75
    .line 76
    check-cast p1, Lcom/grack/nanojson/JsonObject;
    :try_end_0
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    return-object p1

    .line 78
    :catch_0
    move-exception p1

    .line 79
    .line 80
    new-instance v0, Laa/h;

    .line 81
    .line 82
    const-string v1, "Could not parse json data for segments"

    .line 83
    .line 84
    .line 85
    invoke-direct {v0, v1, p1}, Laa/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    throw v0

    .line 87
    .line 88
    :cond_1
    new-instance v0, Laa/h;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Lz9/d;->d()I

    .line 92
    move-result p1

    .line 93
    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    const-string v2, "Could not get segments from API. Response code: "

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    move-result-object p1

    .line 110
    .line 111
    .line 112
    invoke-direct {v0, p1}, Laa/h;-><init>(Ljava/lang/String;)V

    .line 113
    throw v0

    .line 114
    .line 115
    :cond_2
    new-instance p1, Laa/h;

    .line 116
    .line 117
    const-string v0, "Could not get segments from API."

    .line 118
    .line 119
    .line 120
    invoke-direct {p1, v0}, Laa/h;-><init>(Ljava/lang/String;)V

    .line 121
    throw p1
.end method

.method private i0(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "fileDownloadUrl"

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result p2

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    const-string p2, "fileUrl"

    .line 11
    .line 12
    .line 13
    invoke-static {p1, p2}, Lqa/e;->h(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object p4

    .line 15
    .line 16
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    const-string p2, "-fragmented."

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    const-string p2, ".m3u8"

    .line 34
    .line 35
    .line 36
    invoke-virtual {p4, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    return-object p1
.end method

.method private j0(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "resolution.id"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lqa/e;->e(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/Number;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    const-string v0, "master"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method private l0(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->baseUrl:Ljava/lang/String;

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v0, "/api/v1/search/videos"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    const-string v2, "start=0&count=8&sort=-createdAt"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    move-result v2

    .line 38
    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    .line 42
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    move-result-object v2

    .line 44
    .line 45
    check-cast v2, Ljava/lang/String;

    .line 46
    .line 47
    const-string v3, "&tagsOneOf="

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-static {v2}, Lqa/y;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    move-result-object v2

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    goto :goto_0

    .line 59
    .line 60
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v0, "?"

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object p1

    .line 79
    return-object p1
.end method

.method private m0()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->json:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "files"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    const-string v2, ""

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v0, v2}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->o0(Lcom/grack/nanojson/JsonArray;Ljava/lang/String;)V

    .line 14
    .line 15
    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->json:Lcom/grack/nanojson/JsonObject;

    .line 16
    .line 17
    const-string v2, "streamingPlaylists"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonArray;->stream()Ljava/util/stream/Stream;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    const-class v2, Lcom/grack/nanojson/JsonObject;

    .line 28
    .line 29
    new-instance v3, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/a;

    .line 30
    .line 31
    .line 32
    invoke-direct {v3, v2}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/a;-><init>(Ljava/lang/Class;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v3}, Lx9/j;->a(Ljava/util/stream/Stream;Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    const-class v2, Lcom/grack/nanojson/JsonObject;

    .line 39
    .line 40
    new-instance v3, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/d;

    .line 41
    .line 42
    .line 43
    invoke-direct {v3, v2}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/d;-><init>(Ljava/lang/Class;)V

    .line 44
    .line 45
    .line 46
    invoke-static {v0, v3}, Lorg/schabi/newpipe/extractor/localization/n;->a(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    .line 50
    invoke-static {}, Lda/m;->a()Ljava/util/stream/Collector;

    .line 51
    move-result-object v2

    .line 52
    .line 53
    .line 54
    invoke-static {v0, v2}, Lda/e;->a(Ljava/util/stream/Stream;Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    check-cast v0, Ljava/util/List;

    .line 58
    .line 59
    .line 60
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    .line 64
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    move-result v2

    .line 66
    .line 67
    if-eqz v2, :cond_0

    .line 68
    .line 69
    .line 70
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    move-result-object v2

    .line 72
    .line 73
    check-cast v2, Lcom/grack/nanojson/JsonObject;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 77
    move-result-object v3

    .line 78
    .line 79
    const-string v4, "playlistUrl"

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, v4}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    move-result-object v2

    .line 84
    .line 85
    .line 86
    invoke-direct {p0, v3, v2}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->o0(Lcom/grack/nanojson/JsonArray;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    goto :goto_1

    .line 90
    :cond_0
    return-void

    .line 91
    .line 92
    :goto_1
    new-instance v1, Laa/h;

    .line 93
    .line 94
    const-string v2, "Could not get streams"

    .line 95
    .line 96
    .line 97
    invoke-direct {v1, v2, v0}, Laa/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    throw v1
.end method

.method private n0(Loa/m;Ljava/lang/String;)V
    .locals 1
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
    invoke-virtual {p0}, Lx9/b;->d()Lz9/a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p2}, Lz9/a;->get(Ljava/lang/String;)Lz9/d;

    .line 8
    move-result-object p2

    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Lz9/d;->c()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lqa/y;->k(Ljava/lang/String;)Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    .line 23
    :try_start_0
    invoke-static {}, Lcom/grack/nanojson/JsonParser;->object()Lcom/grack/nanojson/JsonParser$JsonParserContext;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Lz9/d;->c()Ljava/lang/String;

    .line 28
    move-result-object p2

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p2}, Lcom/grack/nanojson/JsonParser$JsonParserContext;->from(Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    move-result-object p2

    .line 33
    .line 34
    check-cast p2, Lcom/grack/nanojson/JsonObject;
    :try_end_0
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception p1

    .line 37
    .line 38
    new-instance p2, Laa/h;

    .line 39
    .line 40
    const-string v0, "Could not parse json data for related videos"

    .line 41
    .line 42
    .line 43
    invoke-direct {p2, v0, p1}, Laa/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    throw p2

    .line 45
    :cond_0
    const/4 p2, 0x0

    .line 46
    .line 47
    :goto_0
    if-eqz p2, :cond_1

    .line 48
    .line 49
    .line 50
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->f0(Loa/m;Lcom/grack/nanojson/JsonObject;)V

    .line 51
    :cond_1
    return-void
.end method

.method private o0(Lcom/grack/nanojson/JsonArray;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "fileUrl"

    .line 3
    .line 4
    .line 5
    :try_start_0
    invoke-static {p2}, Lqa/y;->m(Ljava/lang/String;)Z

    .line 6
    move-result v1

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    const-string v1, "-master.m3u8"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    const/4 v1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception p1

    .line 20
    .line 21
    goto/16 :goto_4

    .line 22
    :cond_0
    const/4 v1, 0x0

    .line 23
    .line 24
    .line 25
    :goto_0
    invoke-virtual {p1}, Lcom/grack/nanojson/JsonArray;->stream()Ljava/util/stream/Stream;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    const-class v2, Lcom/grack/nanojson/JsonObject;

    .line 29
    .line 30
    new-instance v3, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/a;

    .line 31
    .line 32
    .line 33
    invoke-direct {v3, v2}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/a;-><init>(Ljava/lang/Class;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p1, v3}, Lx9/j;->a(Ljava/util/stream/Stream;Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    const-class v2, Lcom/grack/nanojson/JsonObject;

    .line 40
    .line 41
    new-instance v3, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/d;

    .line 42
    .line 43
    .line 44
    invoke-direct {v3, v2}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/d;-><init>(Ljava/lang/Class;)V

    .line 45
    .line 46
    .line 47
    invoke-static {p1, v3}, Lorg/schabi/newpipe/extractor/localization/n;->a(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    .line 51
    invoke-static {}, Lda/m;->a()Ljava/util/stream/Collector;

    .line 52
    move-result-object v2

    .line 53
    .line 54
    .line 55
    invoke-static {p1, v2}, Lda/e;->a(Ljava/util/stream/Stream;Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    check-cast p1, Ljava/util/List;

    .line 59
    .line 60
    .line 61
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 62
    move-result-object p1

    .line 63
    .line 64
    .line 65
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    move-result v2

    .line 67
    .line 68
    if-eqz v2, :cond_5

    .line 69
    .line 70
    .line 71
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    move-result-object v2

    .line 73
    move-object v3, v2

    .line 74
    .line 75
    check-cast v3, Lcom/grack/nanojson/JsonObject;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    .line 79
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .line 81
    const-string v4, "fileDownloadUrl"

    .line 82
    .line 83
    if-eqz v2, :cond_1

    .line 84
    move-object v2, v0

    .line 85
    goto :goto_2

    .line 86
    :cond_1
    move-object v2, v4

    .line 87
    .line 88
    .line 89
    :goto_2
    :try_start_1
    invoke-static {v3, v2}, Lqa/e;->h(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    move-result-object v7

    .line 91
    .line 92
    .line 93
    invoke-static {v7}, Lqa/y;->m(Ljava/lang/String;)Z

    .line 94
    move-result v2

    .line 95
    .line 96
    if-eqz v2, :cond_2

    .line 97
    return-void

    .line 98
    .line 99
    :cond_2
    const-string v2, "resolution.label"

    .line 100
    .line 101
    .line 102
    invoke-static {v3, v2}, Lqa/e;->h(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    move-result-object v5

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    .line 107
    move-result v2

    .line 108
    .line 109
    if-eqz v2, :cond_3

    .line 110
    move-object v6, v0

    .line 111
    goto :goto_3

    .line 112
    :cond_3
    move-object v6, v4

    .line 113
    .line 114
    .line 115
    :goto_3
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 116
    move-result-object v2

    .line 117
    .line 118
    const-string v4, "audio"

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 122
    move-result v2

    .line 123
    .line 124
    if-eqz v2, :cond_4

    .line 125
    move-object v2, p0

    .line 126
    move v4, v1

    .line 127
    move-object v8, p2

    .line 128
    .line 129
    .line 130
    invoke-direct/range {v2 .. v8}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->d0(Lcom/grack/nanojson/JsonObject;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    goto :goto_1

    .line 132
    :cond_4
    move-object v2, p0

    .line 133
    move v4, v1

    .line 134
    move-object v8, p2

    .line 135
    .line 136
    .line 137
    invoke-direct/range {v2 .. v8}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->e0(Lcom/grack/nanojson/JsonObject;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 138
    goto :goto_1

    .line 139
    :cond_5
    return-void

    .line 140
    .line 141
    :goto_4
    new-instance p2, Laa/h;

    .line 142
    .line 143
    const-string v0, "Could not get streams from array"

    .line 144
    .line 145
    .line 146
    invoke-direct {p2, v0, p1}, Laa/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 147
    throw p2
.end method

.method private static synthetic p0(Lcom/grack/nanojson/JsonObject;)Loa/s;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Loa/s$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Loa/s$a;-><init>()V

    .line 6
    .line 7
    const-string v1, "id"

    .line 8
    const/4 v2, -0x1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v1, v2}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;I)I

    .line 12
    move-result v1

    .line 13
    .line 14
    .line 15
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Loa/s$a;->d(Ljava/lang/String;)Loa/s$a;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    const-string v1, "playlistUrl"

    .line 23
    .line 24
    const-string v2, ""

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v1, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object p0

    .line 29
    const/4 v1, 0x1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p0, v1}, Loa/s$a;->b(Ljava/lang/String;Z)Loa/s$a;

    .line 33
    move-result-object p0

    .line 34
    const/4 v0, 0x0

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0}, Loa/s$a;->e(Z)Loa/s$a;

    .line 38
    move-result-object p0

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v2}, Loa/s$a;->i(Ljava/lang/String;)Loa/s$a;

    .line 42
    move-result-object p0

    .line 43
    .line 44
    sget-object v0, Lx9/m;->MPEG_4:Lx9/m;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v0}, Loa/s$a;->h(Lx9/m;)Loa/s$a;

    .line 48
    move-result-object p0

    .line 49
    .line 50
    sget-object v0, Loa/d;->HLS:Loa/d;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v0}, Loa/s$a;->c(Loa/d;)Loa/s$a;

    .line 54
    move-result-object p0

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Loa/s$a;->a()Loa/s;

    .line 58
    move-result-object p0

    .line 59
    return-object p0
.end method

.method private q0()V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->subtitles:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    .line 11
    :try_start_0
    invoke-virtual {p0}, Lx9/b;->d()Lz9/a;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->baseUrl:Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lx9/b;->g()Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v1, "/api/v1/videos/"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v1, "/captions"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lz9/a;->get(Ljava/lang/String;)Lz9/d;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    .line 50
    invoke-static {}, Lcom/grack/nanojson/JsonParser;->object()Lcom/grack/nanojson/JsonParser$JsonParserContext;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lz9/d;->c()Ljava/lang/String;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v0}, Lcom/grack/nanojson/JsonParser$JsonParserContext;->from(Ljava/lang/String;)Ljava/lang/Object;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    check-cast v0, Lcom/grack/nanojson/JsonObject;

    .line 62
    .line 63
    const-string v1, "data"

    .line 64
    .line 65
    .line 66
    invoke-static {v0, v1}, Lqa/e;->a(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonArray;->iterator()Ljava/util/Iterator;

    .line 71
    move-result-object v0

    .line 72
    .line 73
    .line 74
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    move-result v1

    .line 76
    .line 77
    if-eqz v1, :cond_1

    .line 78
    .line 79
    .line 80
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    move-result-object v1

    .line 82
    .line 83
    instance-of v2, v1, Lcom/grack/nanojson/JsonObject;

    .line 84
    .line 85
    if-eqz v2, :cond_0

    .line 86
    .line 87
    check-cast v1, Lcom/grack/nanojson/JsonObject;

    .line 88
    .line 89
    iget-object v2, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->baseUrl:Ljava/lang/String;

    .line 90
    .line 91
    const-string v3, "captionPath"

    .line 92
    .line 93
    .line 94
    invoke-static {v1, v3}, Lqa/e;->h(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    .line 95
    move-result-object v3

    .line 96
    .line 97
    new-instance v4, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    move-result-object v2

    .line 111
    .line 112
    const-string v3, "language.id"

    .line 113
    .line 114
    .line 115
    invoke-static {v1, v3}, Lqa/e;->h(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    .line 116
    move-result-object v1

    .line 117
    .line 118
    const-string v3, "."

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 122
    move-result v3

    .line 123
    const/4 v4, 0x1

    .line 124
    add-int/2addr v3, v4

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 128
    move-result-object v3

    .line 129
    .line 130
    .line 131
    invoke-static {v3}, Lx9/m;->b(Ljava/lang/String;)Lx9/m;

    .line 132
    move-result-object v3

    .line 133
    .line 134
    if-eqz v3, :cond_0

    .line 135
    .line 136
    .line 137
    invoke-static {v1}, Lqa/y;->m(Ljava/lang/String;)Z

    .line 138
    move-result v5

    .line 139
    .line 140
    if-nez v5, :cond_0

    .line 141
    .line 142
    iget-object v5, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->subtitles:Ljava/util/List;

    .line 143
    .line 144
    new-instance v6, Loa/q$a;

    .line 145
    .line 146
    .line 147
    invoke-direct {v6}, Loa/q$a;-><init>()V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v6, v2, v4}, Loa/q$a;->c(Ljava/lang/String;Z)Loa/q$a;

    .line 151
    move-result-object v2

    .line 152
    .line 153
    .line 154
    invoke-virtual {v2, v3}, Loa/q$a;->e(Lx9/m;)Loa/q$a;

    .line 155
    move-result-object v2

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2, v1}, Loa/q$a;->d(Ljava/lang/String;)Loa/q$a;

    .line 159
    move-result-object v1

    .line 160
    const/4 v2, 0x0

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1, v2}, Loa/q$a;->b(Z)Loa/q$a;

    .line 164
    move-result-object v1

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1}, Loa/q$a;->a()Loa/q;

    .line 168
    move-result-object v1

    .line 169
    .line 170
    .line 171
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    goto :goto_0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .line 175
    new-instance v1, Laa/h;

    .line 176
    .line 177
    const-string v2, "Could not get subtitles"

    .line 178
    .line 179
    .line 180
    invoke-direct {v1, v2, v0}, Laa/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 181
    .line 182
    iput-object v1, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->subtitlesException:Laa/h;

    .line 183
    :cond_1
    return-void
.end method

.method private r0(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/d;
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "Could not extract PeerTube stream data"

    .line 3
    .line 4
    .line 5
    :try_start_0
    invoke-static {}, Lcom/grack/nanojson/JsonParser;->object()Lcom/grack/nanojson/JsonParser$JsonParserContext;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1, p1}, Lcom/grack/nanojson/JsonParser$JsonParserContext;->from(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    check-cast p1, Lcom/grack/nanojson/JsonObject;

    .line 13
    .line 14
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->json:Lcom/grack/nanojson/JsonObject;
    :try_end_0
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Lha/f;->j(Lcom/grack/nanojson/JsonObject;)V

    .line 20
    return-void

    .line 21
    .line 22
    :cond_0
    new-instance p1, Laa/d;

    .line 23
    .line 24
    .line 25
    invoke-direct {p1, v0}, Laa/d;-><init>(Ljava/lang/String;)V

    .line 26
    throw p1

    .line 27
    :catch_0
    move-exception p1

    .line 28
    .line 29
    new-instance v1, Laa/d;

    .line 30
    .line 31
    .line 32
    invoke-direct {v1, v0, p1}, Laa/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    throw v1
.end method


# virtual methods
.method public A()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->json:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "duration"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getLong(Ljava/lang/String;)J

    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public B()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->json:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "licence.label"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lqa/e;->h(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public C()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->json:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "likes"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getLong(Ljava/lang/String;)J

    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public E()Loa/h$a;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->json:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "privacy"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    const-string v1, "id"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    .line 17
    if-eq v0, v1, :cond_3

    .line 18
    const/4 v1, 0x2

    .line 19
    .line 20
    if-eq v0, v1, :cond_2

    .line 21
    const/4 v1, 0x3

    .line 22
    .line 23
    if-eq v0, v1, :cond_1

    .line 24
    const/4 v1, 0x4

    .line 25
    .line 26
    if-eq v0, v1, :cond_0

    .line 27
    .line 28
    sget-object v0, Loa/h$a;->OTHER:Loa/h$a;

    .line 29
    return-object v0

    .line 30
    .line 31
    :cond_0
    sget-object v0, Loa/h$a;->INTERNAL:Loa/h$a;

    .line 32
    return-object v0

    .line 33
    .line 34
    :cond_1
    sget-object v0, Loa/h$a;->PRIVATE:Loa/h$a;

    .line 35
    return-object v0

    .line 36
    .line 37
    :cond_2
    sget-object v0, Loa/h$a;->UNLISTED:Loa/h$a;

    .line 38
    return-object v0

    .line 39
    .line 40
    :cond_3
    sget-object v0, Loa/h$a;->PUBLIC:Loa/h$a;

    .line 41
    return-object v0
.end method

.method public bridge synthetic F()Lx9/h;
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
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->k0()Loa/m;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public G()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Loa/n;",
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
    const-string v0, "chapters"

    .line 3
    .line 4
    new-instance v1, Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    :try_start_0
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->h0(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 11
    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Laa/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    .line 17
    move-result v3

    .line 18
    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 23
    move-result-object v0

    .line 24
    const/4 v2, 0x0

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonArray;->size()I

    .line 28
    move-result v3

    .line 29
    .line 30
    if-ge v2, v3, :cond_0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    .line 34
    move-result-object v3

    .line 35
    .line 36
    new-instance v4, Loa/n;

    .line 37
    .line 38
    const-string v5, "title"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v5}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    move-result-object v5

    .line 43
    .line 44
    const-string v6, "timecode"

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3, v6}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    .line 48
    move-result v3

    .line 49
    .line 50
    .line 51
    invoke-direct {v4, v5, v3}, Loa/n;-><init>(Ljava/lang/String;I)V

    .line 52
    .line 53
    .line 54
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    add-int/lit8 v2, v2, 0x1

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    return-object v1

    .line 59
    :catch_0
    move-exception v0

    .line 60
    goto :goto_1

    .line 61
    :catch_1
    move-exception v0

    .line 62
    .line 63
    :goto_1
    new-instance v1, Laa/h;

    .line 64
    .line 65
    const-string v2, "Could not get stream segments"

    .line 66
    .line 67
    .line 68
    invoke-direct {v1, v2, v0}, Laa/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    throw v1
.end method

.method public H()Loa/o;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->json:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "isLive"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getBoolean(Ljava/lang/String;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    sget-object v0, Loa/o;->LIVE_STREAM:Loa/o;

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    sget-object v0, Loa/o;->VIDEO_STREAM:Loa/o;

    .line 16
    :goto_0
    return-object v0
.end method

.method public I()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lx9/c;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->baseUrl:Ljava/lang/String;

    .line 3
    .line 4
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->json:Lcom/grack/nanojson/JsonObject;

    .line 5
    .line 6
    const-string v2, "channel"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lha/f;->c(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Ljava/util/List;

    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public J()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->json:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "channel.displayName"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lqa/e;->h(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public K()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->json:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "channel.url"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lqa/e;->h(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public L()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Loa/q;",
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
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->subtitlesException:Laa/h;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->subtitles:Ljava/util/List;

    .line 7
    return-object v0

    .line 8
    :cond_0
    throw v0
.end method

.method public M()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->json:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "support"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lqa/e;->h(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0
    :try_end_0
    .catch Laa/h; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return-object v0

    .line 10
    .line 11
    :catch_0
    const-string v0, ""

    .line 12
    return-object v0
.end method

.method public N()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->json:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "tags"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lqa/e;->i(Lcom/grack/nanojson/JsonArray;)Ljava/util/List;

    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public O()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->json:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "publishedAt"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lqa/e;->h(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public P()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->baseUrl:Ljava/lang/String;

    .line 3
    .line 4
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->json:Lcom/grack/nanojson/JsonObject;

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lha/f;->f(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public Q()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "((#|&|\\?)start=\\d{0,3}h?\\d{0,3}m?\\d{1,3}s?)"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Loa/h;->R(Ljava/lang/String;)J

    .line 6
    move-result-wide v0

    .line 7
    .line 8
    const-wide/16 v2, -0x2

    .line 9
    .line 10
    cmp-long v2, v0, v2

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    const-wide/16 v0, 0x0

    .line 15
    :cond_0
    return-wide v0
.end method

.method public S()Lorg/schabi/newpipe/extractor/localization/e;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->O()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    .line 10
    :cond_0
    new-instance v1, Lorg/schabi/newpipe/extractor/localization/e;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lha/f;->i(Ljava/lang/String;)Ljava/time/OffsetDateTime;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, v0}, Lorg/schabi/newpipe/extractor/localization/e;-><init>(Ljava/time/OffsetDateTime;)V

    .line 18
    return-object v1
.end method

.method public T()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lx9/c;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->baseUrl:Ljava/lang/String;

    .line 3
    .line 4
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->json:Lcom/grack/nanojson/JsonObject;

    .line 5
    .line 6
    const-string v2, "account"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lha/f;->c(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Ljava/util/List;

    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public U()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->json:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "account.displayName"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lqa/e;->h(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public W()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->json:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "account.name"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lqa/e;->h(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->json:Lcom/grack/nanojson/JsonObject;

    .line 11
    .line 12
    const-string v2, "account.host"

    .line 13
    .line 14
    .line 15
    invoke-static {v1, v2}, Lqa/e;->h(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lx9/b;->k()Lx9/s;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Lx9/s;->a()Lorg/schabi/newpipe/extractor/linkhandler/d;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    const-string v4, "accounts/"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v0, "@"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->baseUrl:Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v0, v1}, Lorg/schabi/newpipe/extractor/linkhandler/d;->i(Ljava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/c;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/linkhandler/a;->d()Ljava/lang/String;

    .line 59
    move-result-object v0

    .line 60
    return-object v0
.end method

.method public X()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Loa/s;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public Y()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Loa/s;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/d;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lx9/b;->a()V

    .line 4
    .line 5
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->videoStreams:Ljava/util/List;

    .line 6
    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->H()Loa/o;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    sget-object v1, Loa/o;->VIDEO_STREAM:Loa/o;

    .line 18
    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->m0()V

    .line 23
    goto :goto_0

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->g0()V

    .line 27
    .line 28
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->videoStreams:Ljava/util/List;

    .line 29
    return-object v0
.end method

.method public Z()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->json:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "views"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getLong(Ljava/lang/String;)J

    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public i()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->json:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "name"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lqa/e;->h(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public k0()Loa/m;
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
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->N()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 8
    move-result v1

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->baseUrl:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->json:Lcom/grack/nanojson/JsonObject;

    .line 15
    .line 16
    const-string v2, "account.name"

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v2}, Lqa/e;->h(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    iget-object v2, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->json:Lcom/grack/nanojson/JsonObject;

    .line 23
    .line 24
    const-string v3, "account.host"

    .line 25
    .line 26
    .line 27
    invoke-static {v2, v3}, Lqa/e;->h(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    new-instance v3, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v0, "/api/v1/accounts/"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v0, "@"

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v0, "/videos?start=0&count=8"

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 62
    goto :goto_0

    .line 63
    .line 64
    .line 65
    :cond_0
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->l0(Ljava/util/List;)Ljava/lang/String;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    .line 69
    :goto_0
    invoke-static {v0}, Lqa/y;->k(Ljava/lang/String;)Z

    .line 70
    move-result v1

    .line 71
    .line 72
    if-eqz v1, :cond_1

    .line 73
    const/4 v0, 0x0

    .line 74
    return-object v0

    .line 75
    .line 76
    :cond_1
    new-instance v1, Loa/m;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lx9/b;->l()I

    .line 80
    move-result v2

    .line 81
    .line 82
    .line 83
    invoke-direct {v1, v2}, Loa/m;-><init>(I)V

    .line 84
    .line 85
    .line 86
    invoke-direct {p0, v1, v0}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->n0(Loa/m;Ljava/lang/String;)V

    .line 87
    return-object v1
.end method

.method public o(Lz9/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Laa/d;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->baseUrl:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lx9/b;->g()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v0, "/api/v1/videos/"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Lz9/a;->get(Ljava/lang/String;)Lz9/d;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lz9/d;->c()Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    .line 39
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->r0(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->q0()V

    .line 43
    return-void

    .line 44
    .line 45
    :cond_0
    new-instance p1, Laa/d;

    .line 46
    .line 47
    const-string v0, "Could not extract PeerTube channel data"

    .line 48
    .line 49
    .line 50
    invoke-direct {p1, v0}, Laa/d;-><init>(Ljava/lang/String;)V

    .line 51
    throw p1
.end method

.method public p()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->json:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "nsfw"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lqa/e;->b(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/Boolean;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const/16 v0, 0x12

    .line 17
    return v0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    return v0
.end method

.method public q()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Loa/a;",
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
    .line 3
    invoke-virtual {p0}, Lx9/b;->a()V

    .line 4
    .line 5
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->audioStreams:Ljava/util/List;

    .line 6
    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->videoStreams:Ljava/util/List;

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 17
    move-result v0

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->H()Loa/o;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    sget-object v1, Loa/o;->VIDEO_STREAM:Loa/o;

    .line 26
    .line 27
    if-ne v0, v1, :cond_0

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->m0()V

    .line 31
    .line 32
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->audioStreams:Ljava/util/List;

    .line 33
    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->json:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "category.label"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lqa/e;->h(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public t()Loa/e;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "description"

    .line 3
    .line 4
    :try_start_0
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->json:Lcom/grack/nanojson/JsonObject;

    .line 5
    .line 6
    .line 7
    invoke-static {v1, v0}, Lqa/e;->h(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v1
    :try_end_0
    .catch Laa/h; {:try_start_0 .. :try_end_0} :catch_1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 12
    move-result v2

    .line 13
    .line 14
    const/16 v3, 0xfa

    .line 15
    .line 16
    if-ne v2, v3, :cond_0

    .line 17
    .line 18
    const/16 v2, 0xf7

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    const-string v3, "..."

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result v2

    .line 29
    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lx9/p;->a()Lz9/a;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    :try_start_1
    iget-object v3, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->baseUrl:Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lx9/b;->g()Ljava/lang/String;

    .line 40
    move-result-object v4

    .line 41
    .line 42
    new-instance v5, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v3, "/api/v1/videos/"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string v3, "/description"

    .line 59
    .line 60
    .line 61
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object v3

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, v3}, Lz9/a;->get(Ljava/lang/String;)Lz9/d;

    .line 69
    move-result-object v2

    .line 70
    .line 71
    .line 72
    invoke-static {}, Lcom/grack/nanojson/JsonParser;->object()Lcom/grack/nanojson/JsonParser$JsonParserContext;

    .line 73
    move-result-object v3

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2}, Lz9/d;->c()Ljava/lang/String;

    .line 77
    move-result-object v2

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3, v2}, Lcom/grack/nanojson/JsonParser$JsonParserContext;->from(Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    move-result-object v2

    .line 82
    .line 83
    check-cast v2, Lcom/grack/nanojson/JsonObject;

    .line 84
    .line 85
    .line 86
    invoke-static {v2, v0}, Lqa/e;->h(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Laa/j; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_1 .. :try_end_1} :catch_0

    .line 88
    .line 89
    :catch_0
    :cond_0
    new-instance v0, Loa/e;

    .line 90
    const/4 v2, 0x2

    .line 91
    .line 92
    .line 93
    invoke-direct {v0, v1, v2}, Loa/e;-><init>(Ljava/lang/String;I)V

    .line 94
    return-object v0

    .line 95
    .line 96
    :catch_1
    sget-object v0, Loa/e;->EMPTY_DESCRIPTION:Loa/e;

    .line 97
    return-object v0
.end method

.method public u()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->json:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "dislikes"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getLong(Ljava/lang/String;)J

    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public w()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Loa/f;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/d;
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "storyboards"

    .line 3
    .line 4
    new-instance v1, Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    :try_start_0
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->h0(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 11
    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Laa/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, v0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    .line 17
    move-result v3

    .line 18
    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonArray;->iterator()Ljava/util/Iterator;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    move-result v2

    .line 32
    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    instance-of v3, v2, Lcom/grack/nanojson/JsonObject;

    .line 40
    .line 41
    if-eqz v3, :cond_0

    .line 42
    .line 43
    check-cast v2, Lcom/grack/nanojson/JsonObject;

    .line 44
    .line 45
    const-string v3, "storyboardPath"

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    move-result-object v3

    .line 50
    .line 51
    const-string v4, "spriteWidth"

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v4}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    .line 55
    move-result v7

    .line 56
    .line 57
    const-string v4, "spriteHeight"

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v4}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    .line 61
    move-result v8

    .line 62
    .line 63
    const-string v4, "totalWidth"

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v4}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    .line 67
    move-result v4

    .line 68
    .line 69
    const-string v5, "totalHeight"

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v5}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    .line 73
    move-result v5

    .line 74
    .line 75
    div-int v11, v4, v7

    .line 76
    .line 77
    div-int v12, v5, v8

    .line 78
    .line 79
    mul-int v9, v11, v12

    .line 80
    .line 81
    const-string v4, "spriteDuration"

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, v4}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    .line 85
    move-result v2

    .line 86
    .line 87
    mul-int/lit16 v10, v2, 0x3e8

    .line 88
    .line 89
    new-instance v2, Loa/f;

    .line 90
    .line 91
    iget-object v4, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->baseUrl:Ljava/lang/String;

    .line 92
    .line 93
    new-instance v5, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    move-result-object v3

    .line 107
    .line 108
    .line 109
    invoke-static {v3}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/b;->a(Ljava/lang/Object;)Ljava/util/List;

    .line 110
    move-result-object v6

    .line 111
    move-object v5, v2

    .line 112
    .line 113
    .line 114
    invoke-direct/range {v5 .. v12}, Loa/f;-><init>(Ljava/util/List;IIIIII)V

    .line 115
    .line 116
    .line 117
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    goto :goto_0

    .line 119
    :cond_1
    return-object v1

    .line 120
    :catch_0
    move-exception v0

    .line 121
    goto :goto_1

    .line 122
    :catch_1
    move-exception v0

    .line 123
    .line 124
    :goto_1
    new-instance v1, Laa/d;

    .line 125
    .line 126
    const-string v2, "Could not get frames"

    .line 127
    .line 128
    .line 129
    invoke-direct {v1, v2, v0}, Laa/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 130
    throw v1
.end method

.method public x()Ljava/lang/String;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lx9/b;->a()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->H()Loa/o;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    sget-object v1, Loa/o;->VIDEO_STREAM:Loa/o;

    .line 10
    .line 11
    const-string v2, ""

    .line 12
    .line 13
    const-string v3, "playlistUrl"

    .line 14
    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->json:Lcom/grack/nanojson/JsonObject;

    .line 18
    .line 19
    const-string v1, "files"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Lqa/y;->o(Ljava/util/Map;)Z

    .line 27
    move-result v0

    .line 28
    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->json:Lcom/grack/nanojson/JsonObject;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v3, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    return-object v0

    .line 41
    .line 42
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->json:Lcom/grack/nanojson/JsonObject;

    .line 43
    .line 44
    const-string v1, "streamingPlaylists"

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 48
    move-result-object v0

    .line 49
    const/4 v1, 0x0

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v3, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    move-result-object v0

    .line 58
    return-object v0
.end method

.method public y()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->json:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "account.host"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lqa/e;->h(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public z()Ljava/util/Locale;
    .locals 3

    .line 1
    .line 2
    :try_start_0
    new-instance v0, Ljava/util/Locale;

    .line 3
    .line 4
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/peertube/extractors/e;->json:Lcom/grack/nanojson/JsonObject;

    .line 5
    .line 6
    const-string v2, "language.id"

    .line 7
    .line 8
    .line 9
    invoke-static {v1, v2}, Lqa/e;->h(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Laa/h; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    return-object v0

    .line 15
    :catch_0
    const/4 v0, 0x0

    .line 16
    return-object v0
.end method
