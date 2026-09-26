.class public Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/r;
.super Loa/h;
.source "SourceFile"


# instance fields
.field private conferenceData:Lcom/grack/nanojson/JsonObject;

.field private data:Lcom/grack/nanojson/JsonObject;


# direct methods
.method public constructor <init>(Lx9/s;Lorg/schabi/newpipe/extractor/linkhandler/a;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Loa/h;-><init>(Lx9/s;Lorg/schabi/newpipe/extractor/linkhandler/a;)V

    .line 4
    return-void
.end method

.method public static synthetic c0(Ljava/lang/String;)Laa/h;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/r;->d0(Ljava/lang/String;)Laa/h;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic d0(Ljava/lang/String;)Laa/h;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Laa/h;

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    const-string v2, "Cannot convert this language to a locale: "

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p0}, Laa/h;-><init>(Ljava/lang/String;)V

    .line 23
    return-object v0
.end method


# virtual methods
.method public A()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/r;->data:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "length"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    .line 8
    move-result v0

    .line 9
    int-to-long v0, v0

    .line 10
    return-wide v0
.end method

.method public H()Loa/o;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Loa/o;->VIDEO_STREAM:Loa/o;

    .line 3
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
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/r;->data:Lcom/grack/nanojson/JsonObject;

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

    .line 1
    .line 2
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/r;->data:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "release_date"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
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

    .line 1
    .line 2
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/r;->data:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/p;->e(Lcom/grack/nanojson/JsonObject;)Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
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
    new-instance v0, Lorg/schabi/newpipe/extractor/localization/e;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/r;->O()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-static {v1}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/p;->g(Ljava/lang/String;)Ljava/time/OffsetDateTime;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/localization/e;-><init>(Ljava/time/OffsetDateTime;)V

    .line 14
    return-object v0
.end method

.method public T()Ljava/util/List;
    .locals 2
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
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/r;->conferenceData:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "logo_url"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/p;->a(Ljava/lang/String;)Ljava/util/List;

    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public U()Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/r;->data:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "conference_url"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    const-string v1, "https://(api\\.)?media\\.ccc\\.de/public/conferences/"

    .line 11
    .line 12
    const-string v2, ""

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method public W()Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/r;->U()Ljava/lang/String;

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
    const-string v2, "https://media.ccc.de/c/"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
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
    .locals 9
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
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/r;->data:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "recordings"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    new-instance v1, Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    const/4 v2, 0x0

    .line 15
    move v3, v2

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonArray;->size()I

    .line 19
    move-result v4

    .line 20
    .line 21
    if-ge v3, v4, :cond_3

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v3}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    .line 25
    move-result-object v4

    .line 26
    .line 27
    const-string v5, "mime_type"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v4, v5}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object v5

    .line 32
    .line 33
    const-string v6, "video"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 37
    move-result v6

    .line 38
    .line 39
    if-eqz v6, :cond_2

    .line 40
    .line 41
    const-string v6, "webm"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 45
    move-result v6

    .line 46
    .line 47
    if-eqz v6, :cond_0

    .line 48
    .line 49
    sget-object v5, Lx9/m;->WEBM:Lx9/m;

    .line 50
    goto :goto_1

    .line 51
    .line 52
    :cond_0
    const-string v6, "mp4"

    .line 53
    .line 54
    .line 55
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 56
    move-result v5

    .line 57
    .line 58
    if-eqz v5, :cond_1

    .line 59
    .line 60
    sget-object v5, Lx9/m;->MPEG_4:Lx9/m;

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    const/4 v5, 0x0

    .line 63
    .line 64
    :goto_1
    new-instance v6, Loa/s$a;

    .line 65
    .line 66
    .line 67
    invoke-direct {v6}, Loa/s$a;-><init>()V

    .line 68
    .line 69
    const-string v7, "filename"

    .line 70
    .line 71
    const-string v8, " "

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4, v7, v8}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    move-result-object v7

    .line 76
    .line 77
    .line 78
    invoke-virtual {v6, v7}, Loa/s$a;->d(Ljava/lang/String;)Loa/s$a;

    .line 79
    move-result-object v6

    .line 80
    .line 81
    const-string v7, "recording_url"

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4, v7}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    move-result-object v7

    .line 86
    const/4 v8, 0x1

    .line 87
    .line 88
    .line 89
    invoke-virtual {v6, v7, v8}, Loa/s$a;->b(Ljava/lang/String;Z)Loa/s$a;

    .line 90
    move-result-object v6

    .line 91
    .line 92
    .line 93
    invoke-virtual {v6, v2}, Loa/s$a;->e(Z)Loa/s$a;

    .line 94
    move-result-object v6

    .line 95
    .line 96
    .line 97
    invoke-virtual {v6, v5}, Loa/s$a;->h(Lx9/m;)Loa/s$a;

    .line 98
    move-result-object v5

    .line 99
    .line 100
    const-string v6, "height"

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4, v6}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    .line 104
    move-result v4

    .line 105
    .line 106
    new-instance v6, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    const-string v4, "p"

    .line 115
    .line 116
    .line 117
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    move-result-object v4

    .line 122
    .line 123
    .line 124
    invoke-virtual {v5, v4}, Loa/s$a;->i(Ljava/lang/String;)Loa/s$a;

    .line 125
    move-result-object v4

    .line 126
    .line 127
    .line 128
    invoke-virtual {v4}, Loa/s$a;->a()Loa/s;

    .line 129
    move-result-object v4

    .line 130
    .line 131
    .line 132
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    .line 134
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 135
    goto :goto_0

    .line 136
    :cond_3
    return-object v1
.end method

.method public Z()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/r;->data:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "view_count"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    .line 8
    move-result v0

    .line 9
    int-to-long v0, v0

    .line 10
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
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/r;->data:Lcom/grack/nanojson/JsonObject;

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

.method public j()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/r;->data:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "frontend_link"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public o(Lz9/a;)V
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
    invoke-virtual {p0}, Lx9/b;->g()Ljava/lang/String;

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
    const-string v2, "https://api.media.ccc.de/public/events/"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    :try_start_0
    invoke-static {}, Lcom/grack/nanojson/JsonParser;->object()Lcom/grack/nanojson/JsonParser$JsonParserContext;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lz9/a;->get(Ljava/lang/String;)Lz9/d;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Lz9/d;->c()Ljava/lang/String;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonParser$JsonParserContext;->from(Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    check-cast v1, Lcom/grack/nanojson/JsonObject;

    .line 40
    .line 41
    iput-object v1, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/r;->data:Lcom/grack/nanojson/JsonObject;

    .line 42
    .line 43
    .line 44
    invoke-static {}, Lcom/grack/nanojson/JsonParser;->object()Lcom/grack/nanojson/JsonParser$JsonParserContext;

    .line 45
    move-result-object v1

    .line 46
    .line 47
    iget-object v2, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/r;->data:Lcom/grack/nanojson/JsonObject;

    .line 48
    .line 49
    const-string v3, "conference_url"

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    move-result-object v2

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v2}, Lz9/a;->get(Ljava/lang/String;)Lz9/d;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Lz9/d;->c()Ljava/lang/String;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, p1}, Lcom/grack/nanojson/JsonParser$JsonParserContext;->from(Ljava/lang/String;)Ljava/lang/Object;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    check-cast p1, Lcom/grack/nanojson/JsonObject;

    .line 68
    .line 69
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/r;->conferenceData:Lcom/grack/nanojson/JsonObject;
    :try_end_0
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    return-void

    .line 71
    :catch_0
    move-exception p1

    .line 72
    .line 73
    new-instance v1, Laa/d;

    .line 74
    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    const-string v3, "Could not parse json returned by URL: "

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    move-result-object v0

    .line 91
    .line 92
    .line 93
    invoke-direct {v1, v0, p1}, Laa/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    throw v1
.end method

.method public q()Ljava/util/List;
    .locals 8
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
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/r;->data:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "recordings"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    new-instance v1, Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    const/4 v2, 0x0

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonArray;->size()I

    .line 18
    move-result v3

    .line 19
    .line 20
    if-ge v2, v3, :cond_5

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    .line 24
    move-result-object v3

    .line 25
    .line 26
    const-string v4, "mime_type"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, v4}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object v4

    .line 31
    .line 32
    const-string v5, "audio"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 36
    move-result v5

    .line 37
    .line 38
    if-eqz v5, :cond_4

    .line 39
    .line 40
    const-string v5, "opus"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 44
    move-result v5

    .line 45
    .line 46
    if-eqz v5, :cond_0

    .line 47
    .line 48
    sget-object v4, Lx9/m;->OPUS:Lx9/m;

    .line 49
    goto :goto_1

    .line 50
    .line 51
    :cond_0
    const-string v5, "mpeg"

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 55
    move-result v5

    .line 56
    .line 57
    if-eqz v5, :cond_1

    .line 58
    .line 59
    sget-object v4, Lx9/m;->MP3:Lx9/m;

    .line 60
    goto :goto_1

    .line 61
    .line 62
    :cond_1
    const-string v5, "ogg"

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 66
    move-result v4

    .line 67
    .line 68
    if-eqz v4, :cond_2

    .line 69
    .line 70
    sget-object v4, Lx9/m;->OGG:Lx9/m;

    .line 71
    goto :goto_1

    .line 72
    :cond_2
    const/4 v4, 0x0

    .line 73
    .line 74
    :goto_1
    new-instance v5, Loa/a$a;

    .line 75
    .line 76
    .line 77
    invoke-direct {v5}, Loa/a$a;-><init>()V

    .line 78
    .line 79
    const-string v6, "filename"

    .line 80
    .line 81
    const-string v7, " "

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3, v6, v7}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    move-result-object v6

    .line 86
    .line 87
    .line 88
    invoke-virtual {v5, v6}, Loa/a$a;->i(Ljava/lang/String;)Loa/a$a;

    .line 89
    move-result-object v5

    .line 90
    .line 91
    const-string v6, "recording_url"

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3, v6}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    move-result-object v6

    .line 96
    const/4 v7, 0x1

    .line 97
    .line 98
    .line 99
    invoke-virtual {v5, v6, v7}, Loa/a$a;->g(Ljava/lang/String;Z)Loa/a$a;

    .line 100
    move-result-object v5

    .line 101
    .line 102
    .line 103
    invoke-virtual {v5, v4}, Loa/a$a;->l(Lx9/m;)Loa/a$a;

    .line 104
    move-result-object v4

    .line 105
    const/4 v5, -0x1

    .line 106
    .line 107
    .line 108
    invoke-virtual {v4, v5}, Loa/a$a;->f(I)Loa/a$a;

    .line 109
    move-result-object v4

    .line 110
    .line 111
    const-string v5, "language"

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3, v5}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 115
    move-result-object v3

    .line 116
    .line 117
    if-eqz v3, :cond_3

    .line 118
    .line 119
    const-string v5, "-"

    .line 120
    .line 121
    .line 122
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 123
    move-result v5

    .line 124
    .line 125
    if-nez v5, :cond_3

    .line 126
    .line 127
    .line 128
    invoke-static {v3}, Lqa/f;->a(Ljava/lang/String;)Ljava/util/Optional;

    .line 129
    move-result-object v5

    .line 130
    .line 131
    new-instance v6, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/q;

    .line 132
    .line 133
    .line 134
    invoke-direct {v6, v3}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/q;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-static {v5, v6}, Lorg/schabi/newpipe/extractor/localization/f;->a(Ljava/util/Optional;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 138
    move-result-object v3

    .line 139
    .line 140
    check-cast v3, Ljava/util/Locale;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v4, v3}, Loa/a$a;->b(Ljava/util/Locale;)Loa/a$a;

    .line 144
    .line 145
    .line 146
    :cond_3
    invoke-virtual {v4}, Loa/a$a;->a()Loa/a;

    .line 147
    move-result-object v3

    .line 148
    .line 149
    .line 150
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    .line 152
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 153
    .line 154
    goto/16 :goto_0

    .line 155
    :cond_5
    return-object v1
.end method

.method public t()Loa/e;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Loa/e;

    .line 3
    .line 4
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/r;->data:Lcom/grack/nanojson/JsonObject;

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

.method public z()Ljava/util/Locale;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/r;->data:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "original_language"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/localization/i;->f(Ljava/lang/String;)Ljava/util/Locale;

    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method
