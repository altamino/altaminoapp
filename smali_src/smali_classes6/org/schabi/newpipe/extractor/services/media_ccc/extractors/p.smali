.class public final Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LIVE_STREAM_ID_PATTERN:Ljava/util/regex/Pattern;

.field private static liveStreams:Lcom/grack/nanojson/JsonArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    const-string v0, "\\w+/\\w+"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sput-object v0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/p;->LIVE_STREAM_ID_PATTERN:Ljava/util/regex/Pattern;

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    sput-object v0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/p;->liveStreams:Lcom/grack/nanojson/JsonArray;

    .line 12
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/util/List;
    .locals 3
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
    new-instance v0, Lx9/c;

    .line 14
    .line 15
    sget-object v1, Lx9/c$a;->UNKNOWN:Lx9/c$a;

    .line 16
    const/4 v2, -0x1

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, p0, v2, v2, v1}, Lx9/c;-><init>(Ljava/lang/String;IILx9/c$a;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/o;->a(Ljava/lang/Object;)Ljava/util/List;

    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public static b(Lz9/a;Lorg/schabi/newpipe/extractor/localization/i;)Lcom/grack/nanojson/JsonArray;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/d;
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/p;->liveStreams:Lcom/grack/nanojson/JsonArray;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    :try_start_0
    const-string v0, "https://streaming.media.ccc.de/streams/v2.json"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0, p1}, Lz9/a;->get(Ljava/lang/String;Lorg/schabi/newpipe/extractor/localization/i;)Lz9/d;

    .line 10
    move-result-object p0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lz9/d;->c()Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/grack/nanojson/JsonParser;->array()Lcom/grack/nanojson/JsonParser$JsonParserContext;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p0}, Lcom/grack/nanojson/JsonParser$JsonParserContext;->from(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    move-result-object p0

    .line 23
    .line 24
    check-cast p0, Lcom/grack/nanojson/JsonArray;

    .line 25
    .line 26
    sput-object p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/p;->liveStreams:Lcom/grack/nanojson/JsonArray;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Laa/j; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    goto :goto_2

    .line 28
    :catch_0
    move-exception p0

    .line 29
    goto :goto_0

    .line 30
    :catch_1
    move-exception p0

    .line 31
    goto :goto_1

    .line 32
    :catch_2
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    .line 35
    :goto_0
    new-instance p1, Laa/d;

    .line 36
    .line 37
    const-string v0, "Could not parse JSON."

    .line 38
    .line 39
    .line 40
    invoke-direct {p1, v0, p0}, Laa/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    throw p1

    .line 42
    .line 43
    :goto_1
    new-instance p1, Laa/d;

    .line 44
    .line 45
    const-string v0, "Could not get live stream JSON."

    .line 46
    .line 47
    .line 48
    invoke-direct {p1, v0, p0}, Laa/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    throw p1

    .line 50
    .line 51
    :cond_0
    :goto_2
    sget-object p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/p;->liveStreams:Lcom/grack/nanojson/JsonArray;

    .line 52
    return-object p0
.end method

.method public static c(Lcom/grack/nanojson/JsonObject;)Ljava/util/List;
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

    .line 1
    .line 2
    const-string v0, "thumb"

    .line 3
    .line 4
    const-string v1, "poster"

    .line 5
    .line 6
    .line 7
    invoke-static {p0, v0, v1}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/p;->d(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method private static d(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/grack/nanojson/JsonObject;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lx9/c;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    const/4 v1, 0x2

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lqa/y;->m(Ljava/lang/String;)Z

    .line 14
    move-result v1

    .line 15
    const/4 v2, -0x1

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    new-instance v1, Lx9/c;

    .line 20
    .line 21
    sget-object v3, Lx9/c$a;->MEDIUM:Lx9/c$a;

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, p1, v2, v2, v3}, Lx9/c;-><init>(Ljava/lang/String;IILx9/c$a;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-virtual {p0, p2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 32
    .line 33
    .line 34
    invoke-static {p0}, Lqa/y;->m(Ljava/lang/String;)Z

    .line 35
    move-result p1

    .line 36
    .line 37
    if-nez p1, :cond_1

    .line 38
    .line 39
    new-instance p1, Lx9/c;

    .line 40
    .line 41
    sget-object p2, Lx9/c$a;->HIGH:Lx9/c$a;

    .line 42
    .line 43
    .line 44
    invoke-direct {p1, p0, v2, v2, p2}, Lx9/c;-><init>(Ljava/lang/String;IILx9/c$a;)V

    .line 45
    .line 46
    .line 47
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 51
    move-result-object p0

    .line 52
    return-object p0
.end method

.method public static e(Lcom/grack/nanojson/JsonObject;)Ljava/util/List;
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

    .line 1
    .line 2
    const-string v0, "thumb_url"

    .line 3
    .line 4
    const-string v1, "poster_url"

    .line 5
    .line 6
    .line 7
    invoke-static {p0, v0, v1}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/p;->d(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static f(Ljava/lang/String;)Z
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/p;->LIVE_STREAM_ID_PATTERN:Ljava/util/regex/Pattern;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public static g(Ljava/lang/String;)Ljava/time/OffsetDateTime;
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
    :catch_0
    move-exception v0

    .line 7
    .line 8
    new-instance v1, Laa/h;

    .line 9
    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    const-string v3, "Could not parse date: \""

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
    const-string p0, "\""

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
    invoke-direct {v1, p0, v0}, Laa/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    throw v1
.end method
