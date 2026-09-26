.class public Lka/c;
.super Loa/h;
.source "SourceFile"


# instance fields
.field private isAvailable:Z

.field private track:Lcom/grack/nanojson/JsonObject;


# direct methods
.method public constructor <init>(Lx9/s;Lorg/schabi/newpipe/extractor/linkhandler/a;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Loa/h;-><init>(Lx9/s;Lorg/schabi/newpipe/extractor/linkhandler/a;)V

    .line 4
    const/4 p1, 0x1

    .line 5
    .line 6
    iput-boolean p1, p0, Lka/c;->isAvailable:Z

    .line 7
    return-void
.end method

.method public static synthetic c0(Lcom/grack/nanojson/JsonObject;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lka/c;->k0(Lcom/grack/nanojson/JsonObject;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d0(Lka/c;ZLjava/util/List;Lcom/grack/nanojson/JsonObject;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lka/c;->l0(ZLjava/util/List;Lcom/grack/nanojson/JsonObject;)V

    return-void
.end method

.method private static e0(Lcom/grack/nanojson/JsonArray;)Z
    .locals 2

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
    new-instance v0, Lka/b;

    .line 29
    .line 30
    .line 31
    invoke-direct {v0}, Lka/b;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/l;->a(Ljava/util/stream/Stream;Ljava/util/function/Predicate;)Z

    .line 35
    move-result p0

    .line 36
    return p0
.end method

.method private f0(Lcom/grack/nanojson/JsonArray;ZLjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/grack/nanojson/JsonArray;",
            "Z",
            "Ljava/util/List<",
            "Loa/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/grack/nanojson/JsonArray;->stream()Ljava/util/stream/Stream;

    .line 4
    move-result-object p1

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
    invoke-static {p1, v1}, Lx9/j;->a(Ljava/util/stream/Stream;Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 15
    move-result-object p1

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
    invoke-static {p1, v1}, Lorg/schabi/newpipe/extractor/localization/n;->a(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    new-instance v0, Lka/a;

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, p0, p2, p3}, Lka/a;-><init>(Lka/c;ZLjava/util/List;)V

    .line 32
    .line 33
    .line 34
    invoke-static {p1, v0}, Lorg/schabi/newpipe/extractor/services/peertube/extractors/a;->a(Ljava/util/stream/Stream;Ljava/util/function/Consumer;)V

    .line 35
    return-void
.end method

.method private h0(Ljava/lang/String;)Ljava/lang/String;
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
    invoke-static {}, Lx9/p;->a()Lz9/a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lja/i;->b()Ljava/lang/String;

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
    const-string v3, "https://api-v2.soundcloud.com/tracks/"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string p1, "/download?client_id="

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p1}, Lz9/a;->get(Ljava/lang/String;)Lz9/d;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lz9/d;->c()Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    .line 44
    :try_start_0
    invoke-static {}, Lcom/grack/nanojson/JsonParser;->object()Lcom/grack/nanojson/JsonParser$JsonParserContext;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p1}, Lcom/grack/nanojson/JsonParser$JsonParserContext;->from(Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    check-cast p1, Lcom/grack/nanojson/JsonObject;
    :try_end_0
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    const-string v0, "redirectUri"

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    .line 60
    invoke-static {p1}, Lqa/y;->m(Ljava/lang/String;)Z

    .line 61
    move-result v0

    .line 62
    .line 63
    if-nez v0, :cond_0

    .line 64
    return-object p1

    .line 65
    :cond_0
    const/4 p1, 0x0

    .line 66
    return-object p1

    .line 67
    :catch_0
    move-exception p1

    .line 68
    .line 69
    new-instance v0, Laa/h;

    .line 70
    .line 71
    const-string v1, "Could not parse download URL"

    .line 72
    .line 73
    .line 74
    invoke-direct {v0, v1, p1}, Laa/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    throw v0
.end method

.method private j0(Ljava/lang/String;)Ljava/lang/String;
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
    invoke-static {}, Lja/i;->b()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string p1, "?client_id="

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lx9/p;->a()Lz9/a;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1}, Lz9/a;->get(Ljava/lang/String;)Lz9/d;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lz9/d;->c()Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    .line 39
    :try_start_0
    invoke-static {}, Lcom/grack/nanojson/JsonParser;->object()Lcom/grack/nanojson/JsonParser$JsonParserContext;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p1}, Lcom/grack/nanojson/JsonParser$JsonParserContext;->from(Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    check-cast p1, Lcom/grack/nanojson/JsonObject;
    :try_end_0
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    const-string v0, "url"

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 53
    return-object p1

    .line 54
    :catch_0
    move-exception p1

    .line 55
    .line 56
    new-instance v0, Laa/h;

    .line 57
    .line 58
    const-string v1, "Could not parse streamable URL"

    .line 59
    .line 60
    .line 61
    invoke-direct {v0, v1, p1}, Laa/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    throw v0
.end method

.method private static synthetic k0(Lcom/grack/nanojson/JsonObject;)Z
    .locals 2

    .line 1
    .line 2
    const-string v0, "preset"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "mp3"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const-string v0, "format"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 20
    move-result-object p0

    .line 21
    .line 22
    const-string v0, "protocol"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    move-result-object p0

    .line 27
    .line 28
    const-string v0, "progressive"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    move-result p0

    .line 33
    .line 34
    if-eqz p0, :cond_0

    .line 35
    const/4 p0, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 p0, 0x0

    .line 38
    :goto_0
    return p0
.end method

.method private synthetic l0(ZLjava/util/List;Lcom/grack/nanojson/JsonObject;)V
    .locals 4

    .line 1
    .line 2
    const-string v0, "url"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p3, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lqa/y;->m(Ljava/lang/String;)Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    return-void

    .line 14
    .line 15
    :cond_0
    :try_start_0
    const-string v1, "preset"

    .line 16
    .line 17
    const-string v2, " "

    .line 18
    .line 19
    .line 20
    invoke-virtual {p3, v1, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    const-string v2, "format"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p3, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 27
    move-result-object p3

    .line 28
    .line 29
    const-string v2, "protocol"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p3, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object p3

    .line 34
    .line 35
    new-instance v2, Loa/a$a;

    .line 36
    .line 37
    .line 38
    invoke-direct {v2}, Loa/a$a;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v1}, Loa/a$a;->i(Ljava/lang/String;)Loa/a$a;

    .line 42
    move-result-object v2

    .line 43
    .line 44
    const-string v3, "hls"

    .line 45
    .line 46
    .line 47
    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    move-result p3

    .line 49
    .line 50
    if-eqz p3, :cond_1

    .line 51
    .line 52
    sget-object v3, Loa/d;->HLS:Loa/d;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v3}, Loa/a$a;->h(Loa/d;)Loa/a$a;

    .line 56
    .line 57
    .line 58
    :cond_1
    invoke-direct {p0, v0}, Lka/c;->j0(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    move-result-object v0

    .line 60
    const/4 v3, 0x1

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v0, v3}, Loa/a$a;->g(Ljava/lang/String;Z)Loa/a$a;

    .line 64
    .line 65
    const-string v0, "mp3"

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 69
    move-result v0

    .line 70
    .line 71
    if-eqz v0, :cond_3

    .line 72
    .line 73
    if-eqz p1, :cond_2

    .line 74
    .line 75
    if-eqz p3, :cond_2

    .line 76
    return-void

    .line 77
    .line 78
    :cond_2
    sget-object p1, Lx9/m;->MP3:Lx9/m;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, p1}, Loa/a$a;->l(Lx9/m;)Loa/a$a;

    .line 82
    .line 83
    const/16 p1, 0x80

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2, p1}, Loa/a$a;->f(I)Loa/a$a;

    .line 87
    goto :goto_0

    .line 88
    .line 89
    :cond_3
    const-string p1, "opus"

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 93
    move-result p1

    .line 94
    .line 95
    if-eqz p1, :cond_4

    .line 96
    .line 97
    sget-object p1, Lx9/m;->OPUS:Lx9/m;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2, p1}, Loa/a$a;->l(Lx9/m;)Loa/a$a;

    .line 101
    .line 102
    const/16 p1, 0x40

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2, p1}, Loa/a$a;->f(I)Loa/a$a;

    .line 106
    .line 107
    sget-object p1, Loa/d;->HLS:Loa/d;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2, p1}, Loa/a$a;->h(Loa/d;)Loa/a$a;

    .line 111
    .line 112
    .line 113
    :goto_0
    invoke-virtual {v2}, Loa/a$a;->a()Loa/a;

    .line 114
    move-result-object p1

    .line 115
    .line 116
    .line 117
    invoke-static {p1, p2}, Loa/g;->a(Loa/g;Ljava/util/List;)Z

    .line 118
    move-result p3

    .line 119
    .line 120
    if-nez p3, :cond_4

    .line 121
    .line 122
    .line 123
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Laa/d; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    nop

    .line 125
    :catch_0
    :cond_4
    return-void
.end method


# virtual methods
.method public A()J
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lka/c;->track:Lcom/grack/nanojson/JsonObject;

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
    .line 10
    const-wide/16 v2, 0x3e8

    .line 11
    div-long/2addr v0, v2

    .line 12
    return-wide v0
.end method

.method public B()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lka/c;->track:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "license"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public C()J
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lka/c;->track:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "likes_count"

    .line 5
    .line 6
    const-wide/16 v2, -0x1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1, v2, v3}, Lcom/grack/nanojson/JsonObject;->getLong(Ljava/lang/String;J)J

    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method public E()Loa/h$a;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lka/c;->track:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "sharing"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    const-string v1, "public"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    sget-object v0, Loa/h$a;->PUBLIC:Loa/h$a;

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    sget-object v0, Loa/h$a;->PRIVATE:Loa/h$a;

    .line 22
    :goto_0
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
    invoke-virtual {p0}, Lka/c;->i0()Loa/m;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public H()Loa/o;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Loa/o;->AUDIO_STREAM:Loa/o;

    .line 3
    return-object v0
.end method

.method public N()Ljava/util/List;
    .locals 12
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
    iget-object v0, p0, Lka/c;->track:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "tag_list"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    const-string v1, " "

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    new-instance v2, Ljava/util/ArrayList;

    .line 17
    .line 18
    .line 19
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    new-instance v3, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    array-length v4, v0

    .line 26
    const/4 v5, 0x0

    .line 27
    move v6, v5

    .line 28
    move v7, v6

    .line 29
    .line 30
    :goto_0
    if-ge v6, v4, :cond_4

    .line 31
    .line 32
    aget-object v8, v0, v6

    .line 33
    .line 34
    const-string v9, "\""

    .line 35
    .line 36
    .line 37
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 38
    move-result v10

    .line 39
    .line 40
    const-string v11, ""

    .line 41
    .line 42
    if-eqz v10, :cond_0

    .line 43
    .line 44
    .line 45
    invoke-virtual {v8, v9, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 46
    move-result-object v7

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    const/4 v7, 0x1

    .line 51
    goto :goto_1

    .line 52
    .line 53
    :cond_0
    if-eqz v7, :cond_2

    .line 54
    .line 55
    .line 56
    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 57
    move-result v10

    .line 58
    .line 59
    if-eqz v10, :cond_1

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v8, v9, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 66
    move-result-object v7

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object v7

    .line 74
    .line 75
    .line 76
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    move v7, v5

    .line 78
    goto :goto_1

    .line 79
    .line 80
    .line 81
    :cond_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    goto :goto_1

    .line 86
    .line 87
    .line 88
    :cond_2
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 89
    move-result v9

    .line 90
    .line 91
    if-nez v9, :cond_3

    .line 92
    .line 93
    .line 94
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    :cond_3
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 97
    goto :goto_0

    .line 98
    :cond_4
    return-object v2
.end method

.method public O()Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lka/c;->track:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "created_at"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    const-string v1, "T"

    .line 11
    .line 12
    const-string v2, " "

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    const-string v1, "Z"

    .line 19
    .line 20
    const-string v2, ""

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method public P()Ljava/util/List;
    .locals 1
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
    iget-object v0, p0, Lka/c;->track:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lja/i;->e(Lcom/grack/nanojson/JsonObject;)Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public Q()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "(#t=\\d{0,3}h?\\d{0,3}m?\\d{1,3}s?)"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Loa/h;->R(Ljava/lang/String;)J

    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public S()Lorg/schabi/newpipe/extractor/localization/e;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lorg/schabi/newpipe/extractor/localization/e;

    .line 3
    .line 4
    iget-object v1, p0, Lka/c;->track:Lcom/grack/nanojson/JsonObject;

    .line 5
    .line 6
    const-string v2, "created_at"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Lja/i;->m(Ljava/lang/String;)Ljava/time/OffsetDateTime;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/localization/e;-><init>(Ljava/time/OffsetDateTime;)V

    .line 18
    return-object v0
.end method

.method public T()Ljava/util/List;
    .locals 1
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
    iget-object v0, p0, Lka/c;->track:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lja/i;->f(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lja/i;->c(Ljava/lang/String;)Ljava/util/List;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public U()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lka/c;->track:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lja/i;->j(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public W()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lka/c;->track:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lja/i;->k(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
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

.method public Z()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lka/c;->track:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "playback_count"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getLong(Ljava/lang/String;)J

    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public b0()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lka/c;->track:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "user"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    const-string v1, "verified"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getBoolean(Ljava/lang/String;)Z

    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lka/c;->track:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "id"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    .line 8
    move-result v0

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public g0(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Loa/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lka/c;->track:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "downloadable"

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
    iget-object v0, p0, Lka/c;->track:Lcom/grack/nanojson/JsonObject;

    .line 13
    .line 14
    const-string v1, "has_downloads_left"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getBoolean(Ljava/lang/String;)Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    .line 23
    :try_start_0
    invoke-virtual {p0}, Lka/c;->g()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, v0}, Lka/c;->h0(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lqa/y;->m(Ljava/lang/String;)Z

    .line 32
    move-result v1

    .line 33
    .line 34
    if-nez v1, :cond_0

    .line 35
    .line 36
    new-instance v1, Loa/a$a;

    .line 37
    .line 38
    .line 39
    invoke-direct {v1}, Loa/a$a;-><init>()V

    .line 40
    .line 41
    const-string v2, "original-format"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2}, Loa/a$a;->i(Ljava/lang/String;)Loa/a$a;

    .line 45
    move-result-object v1

    .line 46
    const/4 v2, 0x1

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v0, v2}, Loa/a$a;->g(Ljava/lang/String;Z)Loa/a$a;

    .line 50
    move-result-object v0

    .line 51
    const/4 v1, -0x1

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Loa/a$a;->f(I)Loa/a$a;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Loa/a$a;->a()Loa/a;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    .line 62
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :catch_0
    :cond_0
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lka/c;->track:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "title"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public i0()Loa/m;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Laa/d;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Loa/m;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lx9/b;->l()I

    .line 6
    move-result v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Loa/m;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lka/c;->g()Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-static {v1}, Lqa/y;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lja/i;->b()Ljava/lang/String;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    .line 24
    invoke-static {v2}, Lqa/y;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    const-string v4, "https://api-v2.soundcloud.com/tracks/"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v1, "/related?client_id="

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    .line 53
    invoke-static {v0, v1}, Lja/i;->h(Loa/m;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    return-object v0
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
    .line 3
    invoke-virtual {p0}, Lx9/b;->n()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v0}, Lja/i;->n(Lz9/a;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    iput-object p1, p0, Lka/c;->track:Lcom/grack/nanojson/JsonObject;

    .line 11
    .line 12
    const-string v0, "policy"

    .line 13
    .line 14
    const-string v1, ""

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    const-string v0, "ALLOW"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result v0

    .line 25
    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    const-string v0, "MONETIZE"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    move-result v0

    .line 33
    .line 34
    if-nez v0, :cond_2

    .line 35
    const/4 v0, 0x0

    .line 36
    .line 37
    iput-boolean v0, p0, Lka/c;->isAvailable:Z

    .line 38
    .line 39
    const-string v0, "SNIP"

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    move-result v0

    .line 44
    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    const-string v0, "BLOCK"

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    move-result v0

    .line 52
    .line 53
    if-eqz v0, :cond_0

    .line 54
    .line 55
    new-instance p1, Laa/f;

    .line 56
    .line 57
    const-string v0, "This track is not available in user\'s country"

    .line 58
    .line 59
    .line 60
    invoke-direct {p1, v0}, Laa/f;-><init>(Ljava/lang/String;)V

    .line 61
    throw p1

    .line 62
    .line 63
    :cond_0
    new-instance v0, Laa/b;

    .line 64
    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    const-string v2, "Content not available: policy "

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object p1

    .line 81
    .line 82
    .line 83
    invoke-direct {v0, p1}, Laa/b;-><init>(Ljava/lang/String;)V

    .line 84
    throw v0

    .line 85
    .line 86
    :cond_1
    new-instance p1, Laa/k;

    .line 87
    .line 88
    .line 89
    invoke-direct {p1}, Laa/k;-><init>()V

    .line 90
    throw p1

    .line 91
    :cond_2
    return-void
.end method

.method public q()Ljava/util/List;
    .locals 3
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
            Laa/d;
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
    iget-object v1, p0, Lka/c;->track:Lcom/grack/nanojson/JsonObject;

    .line 8
    .line 9
    const-string v2, "streamable"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getBoolean(Ljava/lang/String;)Z

    .line 13
    move-result v1

    .line 14
    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    iget-boolean v1, p0, Lka/c;->isAvailable:Z

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    goto :goto_2

    .line 21
    .line 22
    :cond_0
    :try_start_0
    iget-object v1, p0, Lka/c;->track:Lcom/grack/nanojson/JsonObject;

    .line 23
    .line 24
    const-string v2, "media"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    const-string v2, "transcodings"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    .line 37
    invoke-static {v1}, Lqa/y;->n(Ljava/util/Collection;)Z

    .line 38
    move-result v2

    .line 39
    .line 40
    if-nez v2, :cond_1

    .line 41
    .line 42
    .line 43
    invoke-static {v1}, Lka/c;->e0(Lcom/grack/nanojson/JsonArray;)Z

    .line 44
    move-result v2

    .line 45
    .line 46
    .line 47
    invoke-direct {p0, v1, v2, v0}, Lka/c;->f0(Lcom/grack/nanojson/JsonArray;ZLjava/util/List;)V

    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    goto :goto_1

    .line 51
    .line 52
    .line 53
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lka/c;->g0(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    return-object v0

    .line 55
    .line 56
    :goto_1
    new-instance v1, Laa/d;

    .line 57
    .line 58
    const-string v2, "Could not get audio streams"

    .line 59
    .line 60
    .line 61
    invoke-direct {v1, v2, v0}, Laa/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    throw v1

    .line 63
    :cond_2
    :goto_2
    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lka/c;->track:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "genre"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public t()Loa/e;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Loa/e;

    .line 3
    .line 4
    iget-object v1, p0, Lka/c;->track:Lcom/grack/nanojson/JsonObject;

    .line 5
    .line 6
    const-string v2, "description"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x3

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1, v2}, Loa/e;-><init>(Ljava/lang/String;I)V

    .line 15
    return-object v0
.end method
