.class public Lda/j;
.super Lda/s;
.source "SourceFile"


# static fields
.field private static final MP3_128:Ljava/lang/String; = "mp3-128"

.field private static final OPUS_LO:Ljava/lang/String; = "opus-lo"


# instance fields
.field private showInfo:Lcom/grack/nanojson/JsonObject;


# direct methods
.method public constructor <init>(Lx9/s;Lorg/schabi/newpipe/extractor/linkhandler/a;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lda/s;-><init>(Lx9/s;Lorg/schabi/newpipe/extractor/linkhandler/a;)V

    .line 4
    return-void
.end method

.method public static synthetic i0()Laa/h;
    .locals 1

    .line 1
    invoke-static {}, Lda/j;->j0()Laa/h;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic j0()Laa/h;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Laa/h;

    .line 3
    .line 4
    const-string v1, "Could not get uploader name"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Laa/h;-><init>(Ljava/lang/String;)V

    .line 8
    return-object v0
.end method

.method static k0(I)Lcom/grack/nanojson/JsonObject;
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
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    const-string v3, "https://bandcamp.com/api/bcweekly/1/get?id="

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p0}, Lz9/a;->get(Ljava/lang/String;)Lz9/d;

    .line 29
    move-result-object p0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lz9/d;->c()Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p0}, Lcom/grack/nanojson/JsonParser$JsonParserContext;->from(Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    move-result-object p0

    .line 38
    .line 39
    check-cast p0, Lcom/grack/nanojson/JsonObject;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Laa/j; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    return-object p0

    .line 41
    :catch_0
    move-exception p0

    .line 42
    goto :goto_0

    .line 43
    :catch_1
    move-exception p0

    .line 44
    goto :goto_0

    .line 45
    :catch_2
    move-exception p0

    .line 46
    .line 47
    :goto_0
    new-instance v0, Laa/h;

    .line 48
    .line 49
    const-string v1, "could not get show data"

    .line 50
    .line 51
    .line 52
    invoke-direct {v0, v1, p0}, Laa/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    throw v0
.end method


# virtual methods
.method public A()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lda/j;->showInfo:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "audio_duration"

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
    .locals 1

    .line 1
    const-string v0, ""

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
    invoke-virtual {p0}, Lda/j;->f0()Lba/e;

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
    iget-object v0, p0, Lda/j;->showInfo:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "tracks"

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
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonArray;->size()I

    .line 14
    move-result v2

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonArray;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result v2

    .line 26
    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v2

    .line 32
    .line 33
    check-cast v2, Lcom/grack/nanojson/JsonObject;

    .line 34
    .line 35
    new-instance v3, Loa/n;

    .line 36
    .line 37
    const-string v4, "title"

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v4}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    move-result-object v4

    .line 42
    .line 43
    const-string v5, "timecode"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v5}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    .line 47
    move-result v5

    .line 48
    .line 49
    .line 50
    invoke-direct {v3, v4, v5}, Loa/n;-><init>(Ljava/lang/String;I)V

    .line 51
    .line 52
    const-string v4, "track_art_id"

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v4}, Lcom/grack/nanojson/JsonObject;->getLong(Ljava/lang/String;)J

    .line 56
    move-result-wide v4

    .line 57
    const/4 v6, 0x1

    .line 58
    .line 59
    .line 60
    invoke-static {v4, v5, v6}, Lda/g;->c(JZ)Ljava/lang/String;

    .line 61
    move-result-object v4

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, v4}, Loa/n;->b(Ljava/lang/String;)V

    .line 65
    .line 66
    const-string v4, "artist"

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, v4}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    move-result-object v2

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3, v2}, Loa/n;->a(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    goto :goto_0

    .line 78
    :cond_0
    return-object v1
.end method

.method public N()Ljava/util/List;
    .locals 1
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
    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public O()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lda/j;->showInfo:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "published_date"

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
    .locals 3
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
    iget-object v0, p0, Lda/j;->showInfo:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "show_image_id"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getLong(Ljava/lang/String;)J

    .line 8
    move-result-wide v0

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Lda/g;->e(JZ)Ljava/util/List;

    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public T()Ljava/util/List;
    .locals 4
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
    new-instance v0, Lx9/c;

    .line 3
    .line 4
    const/16 v1, 0x200

    .line 5
    .line 6
    sget-object v2, Lx9/c$a;->MEDIUM:Lx9/c$a;

    .line 7
    .line 8
    const-string v3, "https://bandcamp.com/img/buttons/bandcamp-button-circle-whitecolor-512.png"

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v3, v1, v1, v2}, Lx9/c;-><init>(Ljava/lang/String;IILx9/c$a;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 15
    move-result-object v0

    .line 16
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
    iget-object v0, p0, Lda/j;->showInfo:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "image_caption"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lorg/jsoup/Jsoup;->parse(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    const-string v1, "a"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Element;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    new-instance v1, Lda/h;

    .line 25
    .line 26
    .line 27
    invoke-direct {v1}, Lda/h;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/localization/n;->a(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lx9/k;->a(Ljava/util/stream/Stream;)Ljava/util/Optional;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    new-instance v1, Lda/i;

    .line 38
    .line 39
    .line 40
    invoke-direct {v1}, Lda/i;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/localization/f;->a(Ljava/util/Optional;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    check-cast v0, Ljava/lang/String;

    .line 47
    return-object v0
.end method

.method public W()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/c;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Laa/c;

    .line 3
    .line 4
    const-string v1, "Fan pages are not supported"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Laa/c;-><init>(Ljava/lang/String;)V

    .line 8
    throw v0
.end method

.method public f0()Lba/e;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
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
    iget-object v0, p0, Lda/j;->showInfo:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "subtitle"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lx9/b;->h()Lorg/schabi/newpipe/extractor/linkhandler/a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/linkhandler/a;->d()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public o(Lz9/a;)V
    .locals 0
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
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 8
    move-result p1

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lda/j;->k0(I)Lcom/grack/nanojson/JsonObject;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    iput-object p1, p0, Lda/j;->showInfo:Lcom/grack/nanojson/JsonObject;

    .line 15
    return-void
.end method

.method public q()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Loa/a;",
            ">;"
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
    iget-object v1, p0, Lda/j;->showInfo:Lcom/grack/nanojson/JsonObject;

    .line 8
    .line 9
    const-string v2, "audio_stream"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    const-string v2, "mp3-128"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    .line 19
    move-result v3

    .line 20
    const/4 v4, 0x1

    .line 21
    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    new-instance v3, Loa/a$a;

    .line 25
    .line 26
    .line 27
    invoke-direct {v3}, Loa/a$a;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, v2}, Loa/a$a;->i(Ljava/lang/String;)Loa/a$a;

    .line 31
    move-result-object v3

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object v2

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v2, v4}, Loa/a$a;->g(Ljava/lang/String;Z)Loa/a$a;

    .line 39
    move-result-object v2

    .line 40
    .line 41
    sget-object v3, Lx9/m;->MP3:Lx9/m;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v3}, Loa/a$a;->l(Lx9/m;)Loa/a$a;

    .line 45
    move-result-object v2

    .line 46
    .line 47
    const/16 v3, 0x80

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v3}, Loa/a$a;->f(I)Loa/a$a;

    .line 51
    move-result-object v2

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Loa/a$a;->a()Loa/a;

    .line 55
    move-result-object v2

    .line 56
    .line 57
    .line 58
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    :cond_0
    const-string v2, "opus-lo"

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    .line 64
    move-result v3

    .line 65
    .line 66
    if-eqz v3, :cond_1

    .line 67
    .line 68
    new-instance v3, Loa/a$a;

    .line 69
    .line 70
    .line 71
    invoke-direct {v3}, Loa/a$a;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, v2}, Loa/a$a;->i(Ljava/lang/String;)Loa/a$a;

    .line 75
    move-result-object v3

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    move-result-object v1

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3, v1, v4}, Loa/a$a;->g(Ljava/lang/String;Z)Loa/a$a;

    .line 83
    move-result-object v1

    .line 84
    .line 85
    sget-object v2, Lx9/m;->OPUS:Lx9/m;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v2}, Loa/a$a;->l(Lx9/m;)Loa/a$a;

    .line 89
    move-result-object v1

    .line 90
    .line 91
    const/16 v2, 0x64

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v2}, Loa/a$a;->f(I)Loa/a$a;

    .line 95
    move-result-object v1

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1}, Loa/a$a;->a()Loa/a;

    .line 99
    move-result-object v1

    .line 100
    .line 101
    .line 102
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_1
    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    return-object v0
.end method

.method public t()Loa/e;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Loa/e;

    .line 3
    .line 4
    iget-object v1, p0, Lda/j;->showInfo:Lcom/grack/nanojson/JsonObject;

    .line 5
    .line 6
    const-string v2, "desc"

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
