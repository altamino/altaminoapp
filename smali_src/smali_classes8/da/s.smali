.class public Lda/s;
.super Loa/h;
.source "SourceFile"


# instance fields
.field private albumJson:Lcom/grack/nanojson/JsonObject;

.field private current:Lcom/grack/nanojson/JsonObject;

.field private document:Lorg/jsoup/nodes/Document;


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

.method public static synthetic c0(Lorg/jsoup/nodes/Element;)Ljava/util/stream/Stream;
    .locals 0

    .line 1
    invoke-static {p0}, Lda/s;->g0(Lorg/jsoup/nodes/Element;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d0(Lorg/jsoup/nodes/Element;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lda/s;->h0(Lorg/jsoup/nodes/Element;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e0(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    :try_start_0
    const-string v0, "data-tralbum"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lqa/e;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 6
    move-result-object p0
    :try_end_0
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object p0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    goto :goto_0

    .line 10
    :catch_1
    move-exception p0

    .line 11
    goto :goto_1

    .line 12
    .line 13
    :goto_0
    new-instance v0, Laa/h;

    .line 14
    .line 15
    const-string v1, "JSON does not exist"

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1, p0}, Laa/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    throw v0

    .line 20
    .line 21
    :goto_1
    new-instance v0, Laa/h;

    .line 22
    .line 23
    const-string v1, "Faulty JSON; page likely does not contain album data"

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v1, p0}, Laa/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    throw v0
.end method

.method private static synthetic g0(Lorg/jsoup/nodes/Element;)Ljava/util/stream/Stream;
    .locals 1

    .line 1
    .line 2
    const-string v0, "tag"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->getElementsByClass(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private static synthetic h0(Lorg/jsoup/nodes/Element;)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    const-string v0, "src"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method


# virtual methods
.method public A()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lda/s;->albumJson:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "trackinfo"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    const-string v1, "duration"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getDouble(Ljava/lang/String;)D

    .line 19
    move-result-wide v0

    .line 20
    double-to-long v0, v0

    .line 21
    return-wide v0
.end method

.method public B()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lda/s;->current:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "license_type"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;)I

    .line 8
    move-result v0

    .line 9
    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    :pswitch_0
    const-string v0, "Unknown"

    .line 14
    return-object v0

    .line 15
    .line 16
    :pswitch_1
    const-string v0, "CC BY-SA 3.0"

    .line 17
    return-object v0

    .line 18
    .line 19
    :pswitch_2
    const-string v0, "CC BY 3.0"

    .line 20
    return-object v0

    .line 21
    .line 22
    :pswitch_3
    const-string v0, "CC BY-ND 3.0"

    .line 23
    return-object v0

    .line 24
    .line 25
    :pswitch_4
    const-string v0, "CC BY-NC 3.0"

    .line 26
    return-object v0

    .line 27
    .line 28
    :pswitch_5
    const-string v0, "CC BY-NC-SA 3.0"

    .line 29
    return-object v0

    .line 30
    .line 31
    :pswitch_6
    const-string v0, "CC BY-NC-ND 3.0"

    .line 32
    return-object v0

    .line 33
    .line 34
    :pswitch_7
    const-string v0, "All rights reserved \u00a9"

    .line 35
    return-object v0

    .line 36
    nop

    .line 37
    .line 38
    .line 39
    .line 40
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
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
    invoke-virtual {p0}, Lda/s;->f0()Lba/e;

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
    .locals 3
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
    iget-object v0, p0, Lda/s;->document:Lorg/jsoup/nodes/Document;

    .line 3
    .line 4
    const-string v1, "itemprop"

    .line 5
    .line 6
    const-string v2, "keywords"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lorg/jsoup/nodes/Element;->getElementsByAttributeValue(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    new-instance v1, Lda/h;

    .line 17
    .line 18
    .line 19
    invoke-direct {v1}, Lda/h;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/localization/n;->a(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lda/m;->a()Ljava/util/stream/Collector;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1}, Lda/e;->a(Ljava/util/stream/Stream;Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    check-cast v0, Ljava/util/List;

    .line 34
    return-object v0
.end method

.method public O()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lda/s;->current:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "publish_date"

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
    iget-object v0, p0, Lda/s;->albumJson:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "art_id"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->isNull(Ljava/lang/String;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lda/s;->albumJson:Lcom/grack/nanojson/JsonObject;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getLong(Ljava/lang/String;)J

    .line 21
    move-result-wide v0

    .line 22
    const/4 v2, 0x1

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v1, v2}, Lda/g;->e(JZ)Ljava/util/List;

    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method

.method public S()Lorg/schabi/newpipe/extractor/localization/e;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lda/s;->O()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lda/g;->j(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/localization/e;

    .line 8
    move-result-object v0

    .line 9
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
    iget-object v0, p0, Lda/s;->document:Lorg/jsoup/nodes/Document;

    .line 3
    .line 4
    const-string v1, "band-photo"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Element;->getElementsByClass(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    new-instance v1, Lda/q;

    .line 15
    .line 16
    .line 17
    invoke-direct {v1}, Lda/q;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/localization/n;->a(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lx9/k;->a(Ljava/util/stream/Stream;)Ljava/util/Optional;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    const-string v1, ""

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/g;->a(Ljava/util/Optional;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    check-cast v0, Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Lda/g;->f(Ljava/lang/String;)Ljava/util/List;

    .line 37
    move-result-object v0

    .line 38
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
    iget-object v0, p0, Lda/s;->albumJson:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "artist"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public W()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lda/s;->n()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "/"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    const/4 v2, 0x2

    .line 12
    .line 13
    aget-object v0, v0, v2

    .line 14
    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    const-string v3, "https://"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
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

.method public f0()Lba/e;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lba/e;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lx9/b;->l()I

    .line 6
    move-result v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lba/e;-><init>(I)V

    .line 10
    .line 11
    iget-object v1, p0, Lda/s;->document:Lorg/jsoup/nodes/Document;

    .line 12
    .line 13
    const-string v2, "recommended-album"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/Element;->getElementsByClass(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    new-instance v2, Lda/o;

    .line 24
    .line 25
    .line 26
    invoke-direct {v2}, Lda/o;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-static {v1, v2}, Lorg/schabi/newpipe/extractor/localization/n;->a(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    new-instance v2, Lda/p;

    .line 33
    .line 34
    .line 35
    invoke-direct {v2, v0}, Lda/p;-><init>(Lba/e;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v1, v2}, Lda/l;->a(Ljava/util/stream/Stream;Ljava/util/function/Consumer;)V

    .line 39
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
    iget-object v0, p0, Lda/s;->current:Lcom/grack/nanojson/JsonObject;

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

.method public n()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lda/s;->albumJson:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "url"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lqa/y;->v(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public o(Lz9/a;)V
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
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lz9/a;->get(Ljava/lang/String;)Lz9/d;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lz9/d;->c()Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Lorg/jsoup/Jsoup;->parse(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    iput-object v0, p0, Lda/s;->document:Lorg/jsoup/nodes/Document;

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lda/s;->e0(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    iput-object p1, p0, Lda/s;->albumJson:Lcom/grack/nanojson/JsonObject;

    .line 29
    .line 30
    const-string v0, "current"

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    iput-object p1, p0, Lda/s;->current:Lcom/grack/nanojson/JsonObject;

    .line 37
    .line 38
    iget-object p1, p0, Lda/s;->albumJson:Lcom/grack/nanojson/JsonObject;

    .line 39
    .line 40
    const-string v0, "trackinfo"

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/grack/nanojson/JsonArray;->size()I

    .line 48
    move-result p1

    .line 49
    const/4 v1, 0x1

    .line 50
    .line 51
    if-gt p1, v1, :cond_1

    .line 52
    .line 53
    iget-object p1, p0, Lda/s;->albumJson:Lcom/grack/nanojson/JsonObject;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 57
    move-result-object p1

    .line 58
    const/4 v0, 0x0

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    .line 62
    move-result-object p1

    .line 63
    .line 64
    const-string v0, "file"

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->isNull(Ljava/lang/String;)Z

    .line 68
    move-result p1

    .line 69
    .line 70
    if-nez p1, :cond_0

    .line 71
    return-void

    .line 72
    .line 73
    :cond_0
    new-instance p1, Laa/g;

    .line 74
    .line 75
    const-string v0, "This track is not available without being purchased"

    .line 76
    .line 77
    .line 78
    invoke-direct {p1, v0}, Laa/g;-><init>(Ljava/lang/String;)V

    .line 79
    throw p1

    .line 80
    .line 81
    :cond_1
    new-instance p1, Laa/d;

    .line 82
    .line 83
    const-string v0, "Page is actually an album, not a track"

    .line 84
    .line 85
    .line 86
    invoke-direct {p1, v0}, Laa/d;-><init>(Ljava/lang/String;)V

    .line 87
    throw p1
.end method

.method public q()Ljava/util/List;
    .locals 4
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
    new-instance v0, Loa/a$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Loa/a$a;-><init>()V

    .line 6
    .line 7
    const-string v1, "mp3-128"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Loa/a$a;->i(Ljava/lang/String;)Loa/a$a;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iget-object v2, p0, Lda/s;->albumJson:Lcom/grack/nanojson/JsonObject;

    .line 14
    .line 15
    const-string v3, "trackinfo"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 19
    move-result-object v2

    .line 20
    const/4 v3, 0x0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    const-string v3, "file"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 35
    const/4 v2, 0x1

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Loa/a$a;->g(Ljava/lang/String;Z)Loa/a$a;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    sget-object v1, Lx9/m;->MP3:Lx9/m;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Loa/a$a;->l(Lx9/m;)Loa/a$a;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    const/16 v1, 0x80

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Loa/a$a;->f(I)Loa/a$a;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Loa/a$a;->a()Loa/a;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    .line 58
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 59
    move-result-object v0

    .line 60
    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lda/s;->document:Lorg/jsoup/nodes/Document;

    .line 3
    .line 4
    const-string v1, "tralbum-tags"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Element;->getElementsByClass(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    new-instance v1, Lda/r;

    .line 15
    .line 16
    .line 17
    invoke-direct {v1}, Lda/r;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1}, Lda/n;->a(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    new-instance v1, Lda/h;

    .line 24
    .line 25
    .line 26
    invoke-direct {v1}, Lda/h;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/localization/n;->a(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Lx9/k;->a(Ljava/util/stream/Stream;)Ljava/util/Optional;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    const-string v1, ""

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/g;->a(Ljava/util/Optional;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    check-cast v0, Ljava/lang/String;

    .line 43
    return-object v0
.end method

.method public t()Loa/e;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lda/s;->current:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "about"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    iget-object v1, p0, Lda/s;->current:Lcom/grack/nanojson/JsonObject;

    .line 11
    .line 12
    const-string v2, "lyrics"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    iget-object v2, p0, Lda/s;->current:Lcom/grack/nanojson/JsonObject;

    .line 19
    .line 20
    const-string v3, "credits"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    .line 27
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    const-string v1, "\n\n"

    .line 31
    .line 32
    .line 33
    invoke-static {v1, v0}, Lqa/y;->s(Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    new-instance v1, Loa/e;

    .line 37
    const/4 v2, 0x3

    .line 38
    .line 39
    .line 40
    invoke-direct {v1, v0, v2}, Loa/e;-><init>(Ljava/lang/String;I)V

    .line 41
    return-object v1
.end method
