.class public final Lda/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BASE_API_URL:Ljava/lang/String; = "https://bandcamp.com/api"

.field public static final BASE_URL:Ljava/lang/String; = "https://bandcamp.com"

.field private static final IMAGES_DOMAIN_AND_PATH:Ljava/lang/String; = "https://f4.bcbits.com/img/"

.field private static final IMAGE_URL_APPENDIX_AND_EXTENSION_REGEX:Ljava/lang/String; = "_\\d+\\.\\w+"

.field private static final IMAGE_URL_SUFFIXES_AND_RESOLUTIONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lqa/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    .line 2
    const/16 v0, 0xe

    .line 3
    .line 4
    new-array v0, v0, [Lqa/b;

    .line 5
    .line 6
    new-instance v1, Lqa/b;

    .line 7
    .line 8
    sget-object v2, Lx9/c$a;->HIGH:Lx9/c$a;

    .line 9
    .line 10
    const-string v3, "10.jpg"

    .line 11
    const/4 v4, -0x1

    .line 12
    .line 13
    const/16 v5, 0x4b0

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, v3, v4, v5, v2}, Lqa/b;-><init>(Ljava/lang/String;IILx9/c$a;)V

    .line 17
    const/4 v3, 0x0

    .line 18
    .line 19
    aput-object v1, v0, v3

    .line 20
    .line 21
    new-instance v1, Lqa/b;

    .line 22
    .line 23
    sget-object v3, Lx9/c$a;->LOW:Lx9/c$a;

    .line 24
    .line 25
    const-string v5, "101.jpg"

    .line 26
    .line 27
    const/16 v6, 0x5a

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, v5, v6, v4, v3}, Lqa/b;-><init>(Ljava/lang/String;IILx9/c$a;)V

    .line 31
    const/4 v5, 0x1

    .line 32
    .line 33
    aput-object v1, v0, v5

    .line 34
    .line 35
    new-instance v1, Lqa/b;

    .line 36
    .line 37
    sget-object v5, Lx9/c$a;->MEDIUM:Lx9/c$a;

    .line 38
    .line 39
    const-string v6, "170.jpg"

    .line 40
    .line 41
    const/16 v7, 0x1a6

    .line 42
    .line 43
    .line 44
    invoke-direct {v1, v6, v7, v4, v5}, Lqa/b;-><init>(Ljava/lang/String;IILx9/c$a;)V

    .line 45
    const/4 v6, 0x2

    .line 46
    .line 47
    aput-object v1, v0, v6

    .line 48
    .line 49
    new-instance v1, Lqa/b;

    .line 50
    .line 51
    const-string v6, "171.jpg"

    .line 52
    .line 53
    const/16 v7, 0x286

    .line 54
    .line 55
    .line 56
    invoke-direct {v1, v6, v7, v4, v5}, Lqa/b;-><init>(Ljava/lang/String;IILx9/c$a;)V

    .line 57
    const/4 v6, 0x3

    .line 58
    .line 59
    aput-object v1, v0, v6

    .line 60
    .line 61
    new-instance v1, Lqa/b;

    .line 62
    .line 63
    const-string v6, "20.jpg"

    .line 64
    .line 65
    const/16 v7, 0x400

    .line 66
    .line 67
    .line 68
    invoke-direct {v1, v6, v4, v7, v2}, Lqa/b;-><init>(Ljava/lang/String;IILx9/c$a;)V

    .line 69
    const/4 v2, 0x4

    .line 70
    .line 71
    aput-object v1, v0, v2

    .line 72
    .line 73
    new-instance v1, Lqa/b;

    .line 74
    .line 75
    const-string v2, "200.jpg"

    .line 76
    .line 77
    const/16 v6, 0x1a4

    .line 78
    .line 79
    .line 80
    invoke-direct {v1, v2, v6, v4, v5}, Lqa/b;-><init>(Ljava/lang/String;IILx9/c$a;)V

    .line 81
    const/4 v2, 0x5

    .line 82
    .line 83
    aput-object v1, v0, v2

    .line 84
    .line 85
    new-instance v1, Lqa/b;

    .line 86
    .line 87
    const-string v2, "201.jpg"

    .line 88
    .line 89
    const/16 v6, 0x118

    .line 90
    .line 91
    .line 92
    invoke-direct {v1, v2, v6, v4, v5}, Lqa/b;-><init>(Ljava/lang/String;IILx9/c$a;)V

    .line 93
    const/4 v2, 0x6

    .line 94
    .line 95
    aput-object v1, v0, v2

    .line 96
    .line 97
    new-instance v1, Lqa/b;

    .line 98
    .line 99
    const-string v2, "202.jpg"

    .line 100
    .line 101
    const/16 v6, 0x8c

    .line 102
    .line 103
    .line 104
    invoke-direct {v1, v2, v6, v4, v3}, Lqa/b;-><init>(Ljava/lang/String;IILx9/c$a;)V

    .line 105
    const/4 v2, 0x7

    .line 106
    .line 107
    aput-object v1, v0, v2

    .line 108
    .line 109
    new-instance v1, Lqa/b;

    .line 110
    .line 111
    const-string v2, "204.jpg"

    .line 112
    .line 113
    const/16 v6, 0x168

    .line 114
    .line 115
    .line 116
    invoke-direct {v1, v2, v6, v4, v5}, Lqa/b;-><init>(Ljava/lang/String;IILx9/c$a;)V

    .line 117
    .line 118
    const/16 v2, 0x8

    .line 119
    .line 120
    aput-object v1, v0, v2

    .line 121
    .line 122
    new-instance v1, Lqa/b;

    .line 123
    .line 124
    const-string v2, "205.jpg"

    .line 125
    .line 126
    const/16 v6, 0xf0

    .line 127
    .line 128
    .line 129
    invoke-direct {v1, v2, v6, v4, v5}, Lqa/b;-><init>(Ljava/lang/String;IILx9/c$a;)V

    .line 130
    .line 131
    const/16 v2, 0x9

    .line 132
    .line 133
    aput-object v1, v0, v2

    .line 134
    .line 135
    new-instance v1, Lqa/b;

    .line 136
    .line 137
    const-string v2, "206.jpg"

    .line 138
    .line 139
    const/16 v6, 0xb4

    .line 140
    .line 141
    .line 142
    invoke-direct {v1, v2, v6, v4, v5}, Lqa/b;-><init>(Ljava/lang/String;IILx9/c$a;)V

    .line 143
    .line 144
    const/16 v2, 0xa

    .line 145
    .line 146
    aput-object v1, v0, v2

    .line 147
    .line 148
    new-instance v1, Lqa/b;

    .line 149
    .line 150
    const-string v2, "207.jpg"

    .line 151
    .line 152
    const/16 v6, 0x78

    .line 153
    .line 154
    .line 155
    invoke-direct {v1, v2, v6, v4, v3}, Lqa/b;-><init>(Ljava/lang/String;IILx9/c$a;)V

    .line 156
    .line 157
    const/16 v2, 0xb

    .line 158
    .line 159
    aput-object v1, v0, v2

    .line 160
    .line 161
    new-instance v1, Lqa/b;

    .line 162
    .line 163
    const-string v2, "43.jpg"

    .line 164
    .line 165
    const/16 v6, 0x64

    .line 166
    .line 167
    .line 168
    invoke-direct {v1, v2, v6, v4, v3}, Lqa/b;-><init>(Ljava/lang/String;IILx9/c$a;)V

    .line 169
    .line 170
    const/16 v2, 0xc

    .line 171
    .line 172
    aput-object v1, v0, v2

    .line 173
    .line 174
    new-instance v1, Lqa/b;

    .line 175
    .line 176
    const-string v2, "44.jpg"

    .line 177
    .line 178
    const/16 v3, 0xc8

    .line 179
    .line 180
    .line 181
    invoke-direct {v1, v2, v3, v4, v5}, Lqa/b;-><init>(Ljava/lang/String;IILx9/c$a;)V

    .line 182
    .line 183
    const/16 v2, 0xd

    .line 184
    .line 185
    aput-object v1, v0, v2

    .line 186
    .line 187
    .line 188
    invoke-static {v0}, Lnet/pubnative/lite/sdk/vpaid/h;->a([Ljava/lang/Object;)Ljava/util/List;

    .line 189
    move-result-object v0

    .line 190
    .line 191
    sput-object v0, Lda/g;->IMAGE_URL_SUFFIXES_AND_RESOLUTIONS:Ljava/util/List;

    .line 192
    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Lqa/b;)Lx9/c;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lda/g;->i(Ljava/lang/String;Lqa/b;)Lx9/c;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;
    .locals 6
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
    .line 7
    invoke-static {}, Lx9/p;->a()Lz9/a;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    const-string v2, "https://bandcamp.com/api/mobile/22/band_details"

    .line 11
    .line 12
    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 14
    move-result-object v3

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/grack/nanojson/JsonWriter;->string()Lcom/grack/nanojson/JsonStringWriter;

    .line 18
    move-result-object v4

    .line 19
    .line 20
    .line 21
    invoke-virtual {v4}, Lcom/grack/nanojson/JsonStringWriter;->object()Lcom/grack/nanojson/JsonWriterBase;

    .line 22
    move-result-object v4

    .line 23
    .line 24
    check-cast v4, Lcom/grack/nanojson/JsonStringWriter;

    .line 25
    .line 26
    const-string v5, "band_id"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4, v5, p0}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    .line 30
    move-result-object p0

    .line 31
    .line 32
    check-cast p0, Lcom/grack/nanojson/JsonStringWriter;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonStringWriter;->end()Lcom/grack/nanojson/JsonWriterBase;

    .line 36
    move-result-object p0

    .line 37
    .line 38
    check-cast p0, Lcom/grack/nanojson/JsonStringWriter;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonStringWriter;->done()Ljava/lang/String;

    .line 42
    move-result-object p0

    .line 43
    .line 44
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 48
    move-result-object p0

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v2, v3, p0}, Lz9/a;->postWithContentTypeJson(Ljava/lang/String;Ljava/util/Map;[B)Lz9/d;

    .line 52
    move-result-object p0

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lz9/d;->c()Ljava/lang/String;

    .line 56
    move-result-object p0

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p0}, Lcom/grack/nanojson/JsonParser$JsonParserContext;->from(Ljava/lang/String;)Ljava/lang/Object;

    .line 60
    move-result-object p0

    .line 61
    .line 62
    check-cast p0, Lcom/grack/nanojson/JsonObject;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Laa/j; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    return-object p0

    .line 64
    :catch_0
    move-exception p0

    .line 65
    goto :goto_0

    .line 66
    :catch_1
    move-exception p0

    .line 67
    goto :goto_0

    .line 68
    :catch_2
    move-exception p0

    .line 69
    .line 70
    :goto_0
    new-instance v0, Laa/h;

    .line 71
    .line 72
    const-string v1, "Could not download band details"

    .line 73
    .line 74
    .line 75
    invoke-direct {v0, v1, p0}, Laa/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    throw v0
.end method

.method public static c(JZ)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    const/16 p2, 0x61

    .line 5
    .line 6
    .line 7
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 8
    move-result-object p2

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    const-string p2, ""

    .line 12
    .line 13
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    const-string v1, "https://f4.bcbits.com/img/"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string p0, "_10.jpg"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method

.method private static d(Ljava/lang/String;)Ljava/util/List;
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
    sget-object v0, Lda/g;->IMAGE_URL_SUFFIXES_AND_RESOLUTIONS:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/k;->a(Ljava/util/List;)Ljava/util/stream/Stream;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    new-instance v1, Lda/f;

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, p0}, Lda/f;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/localization/n;->a(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 15
    move-result-object p0

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lda/d;->a()Ljava/util/stream/Collector;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-static {p0, v0}, Lda/e;->a(Ljava/util/stream/Stream;Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 23
    move-result-object p0

    .line 24
    .line 25
    check-cast p0, Ljava/util/List;

    .line 26
    return-object p0
.end method

.method public static e(JZ)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ)",
            "Ljava/util/List<",
            "Lx9/c;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    cmp-long v0, p0, v0

    .line 5
    .line 6
    if-nez v0, :cond_0

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
    if-eqz p2, :cond_1

    .line 14
    .line 15
    const/16 p2, 0x61

    .line 16
    .line 17
    .line 18
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 19
    move-result-object p2

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_1
    const-string p2, ""

    .line 23
    .line 24
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    const-string v1, "https://f4.bcbits.com/img/"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string p0, "_"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object p0

    .line 48
    .line 49
    .line 50
    invoke-static {p0}, Lda/g;->d(Ljava/lang/String;)Ljava/util/List;

    .line 51
    move-result-object p0

    .line 52
    return-object p0
.end method

.method public static f(Ljava/lang/String;)Ljava/util/List;
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
    const-string v0, "_\\d+\\.\\w+"

    .line 14
    .line 15
    const-string v1, "_"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 20
    .line 21
    .line 22
    invoke-static {p0}, Lda/g;->d(Ljava/lang/String;)Ljava/util/List;

    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public static g(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "https?://.+\\.bandcamp\\.com(/.*)?"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    const-string v1, "https?://bandcamp\\.com(/.*)?"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 24
    move-result v0

    .line 25
    const/4 v1, 0x0

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    return v1

    .line 29
    .line 30
    .line 31
    :cond_1
    :try_start_0
    invoke-static {}, Lx9/p;->a()Lz9/a;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    invoke-static {p0}, Lqa/y;->v(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    move-result-object p0

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p0}, Lz9/a;->get(Ljava/lang/String;)Lz9/d;

    .line 40
    move-result-object p0

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lz9/d;->c()Ljava/lang/String;

    .line 44
    move-result-object p0

    .line 45
    .line 46
    .line 47
    invoke-static {p0}, Lorg/jsoup/Jsoup;->parse(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    .line 48
    move-result-object p0

    .line 49
    .line 50
    const-string v0, "cart-wrapper"

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->getElementsByClass(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 54
    move-result-object p0

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 58
    move-result-object p0

    .line 59
    .line 60
    check-cast p0, Lorg/jsoup/nodes/Element;

    .line 61
    .line 62
    const-string v0, "a"

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 66
    move-result-object p0

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 70
    move-result-object p0

    .line 71
    .line 72
    check-cast p0, Lorg/jsoup/nodes/Element;

    .line 73
    .line 74
    const-string v0, "href"

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    move-result-object p0

    .line 79
    .line 80
    const-string v0, "https://bandcamp.com/cart"

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Laa/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    return p0

    .line 86
    .line 87
    :catch_0
    new-instance p0, Laa/h;

    .line 88
    .line 89
    const-string v0, "Could not determine whether URL is custom domain (not available? network error?)"

    .line 90
    .line 91
    .line 92
    invoke-direct {p0, v0}, Laa/h;-><init>(Ljava/lang/String;)V

    .line 93
    throw p0

    .line 94
    :catch_1
    return v1
.end method

.method public static h(Ljava/lang/String;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    const-string v0, "https?://bandcamp\\.com/\\?show=\\d+"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private static synthetic i(Ljava/lang/String;Lqa/b;)Lx9/c;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lx9/c;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lqa/b;->c()Ljava/lang/String;

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
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lqa/b;->a()I

    .line 25
    move-result v1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lqa/b;->d()I

    .line 29
    move-result v2

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lqa/b;->b()Lx9/c$a;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, p0, v1, v2, p1}, Lx9/c;-><init>(Ljava/lang/String;IILx9/c$a;)V

    .line 37
    return-object v0
.end method

.method public static j(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/localization/e;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    :try_start_0
    const-string v0, "dd MMM yyyy HH:mm:ss zzz"

    .line 3
    .line 4
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lda/a;->a(Ljava/lang/String;Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v0}, Lda/b;->a(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/ZonedDateTime;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    new-instance v1, Lorg/schabi/newpipe/extractor/localization/e;

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lda/c;->a(Ljava/time/ZonedDateTime;)Ljava/time/OffsetDateTime;

    .line 18
    move-result-object v0

    .line 19
    const/4 v2, 0x0

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, v0, v2}, Lorg/schabi/newpipe/extractor/localization/e;-><init>(Ljava/time/OffsetDateTime;Z)V
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    return-object v1

    .line 24
    :catch_0
    move-exception v0

    .line 25
    .line 26
    new-instance v1, Laa/h;

    .line 27
    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    const-string v3, "Could not parse date \'"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string p0, "\'"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object p0

    .line 49
    .line 50
    .line 51
    invoke-direct {v1, p0, v0}, Laa/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    throw v1
.end method
