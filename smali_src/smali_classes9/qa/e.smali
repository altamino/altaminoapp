.class public final Lqa/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    const-class v0, Lcom/grack/nanojson/JsonArray;

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1, v0}, Lqa/e;->c(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Lcom/grack/nanojson/JsonArray;

    .line 9
    return-object p0
.end method

.method public static b(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    const-class v0, Ljava/lang/Boolean;

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1, v0}, Lqa/e;->c(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Ljava/lang/Boolean;

    .line 9
    return-object p0
.end method

.method private static c(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/grack/nanojson/JsonObject;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
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
    invoke-static {p0, p1}, Lqa/e;->j(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    .line 17
    :cond_0
    new-instance p0, Laa/h;

    .line 18
    .line 19
    new-instance p2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    const-string v0, "Wrong data type at path "

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    .line 37
    invoke-direct {p0, p1}, Laa/h;-><init>(Ljava/lang/String;)V

    .line 38
    throw p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/grack/nanojson/JsonParserException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lorg/jsoup/Jsoup;->parse(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Element;->getElementsByAttribute(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 8
    move-result-object p0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lorg/jsoup/select/Elements;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/grack/nanojson/JsonParser;->object()Lcom/grack/nanojson/JsonParser$JsonParserContext;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p0}, Lcom/grack/nanojson/JsonParser$JsonParserContext;->from(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    move-result-object p0

    .line 21
    .line 22
    check-cast p0, Lcom/grack/nanojson/JsonObject;

    .line 23
    return-object p0
.end method

.method public static e(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/Number;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    const-class v0, Ljava/lang/Number;

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1, v0}, Lqa/e;->c(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Ljava/lang/Number;

    .line 9
    return-object p0
.end method

.method public static f(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    const-class v0, Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1, v0}, Lqa/e;->c(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Lcom/grack/nanojson/JsonObject;

    .line 9
    return-object p0
.end method

.method private static g(Lcom/grack/nanojson/JsonObject;Ljava/util/List;)Lcom/grack/nanojson/JsonObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/grack/nanojson/JsonObject;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/grack/nanojson/JsonObject;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 20
    move-result-object p0

    .line 21
    .line 22
    if-nez p0, :cond_0

    .line 23
    :cond_1
    return-object p0
.end method

.method public static h(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    const-class v0, Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1, v0}, Lqa/e;->c(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Ljava/lang/String;

    .line 9
    return-object p0
.end method

.method public static i(Lcom/grack/nanojson/JsonArray;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/grack/nanojson/JsonArray;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
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
    new-instance v0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/a;

    .line 7
    .line 8
    const-class v1, Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/a;-><init>(Ljava/lang/Class;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p0, v0}, Lx9/j;->a(Ljava/util/stream/Stream;Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 15
    move-result-object p0

    .line 16
    .line 17
    new-instance v0, Lqa/d;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v1}, Lqa/d;-><init>(Ljava/lang/Class;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p0, v0}, Lorg/schabi/newpipe/extractor/localization/n;->a(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 24
    move-result-object p0

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lda/m;->a()Ljava/util/stream/Collector;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-static {p0, v0}, Lda/e;->a(Ljava/util/stream/Stream;Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 32
    move-result-object p0

    .line 33
    .line 34
    check-cast p0, Ljava/util/List;

    .line 35
    return-object p0
.end method

.method public static j(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "\\."

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    move-result v1

    .line 15
    .line 16
    add-int/lit8 v1, v1, -0x1

    .line 17
    const/4 v2, 0x0

    .line 18
    .line 19
    .line 20
    invoke-interface {v0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-static {p0, v1}, Lqa/e;->g(Lcom/grack/nanojson/JsonObject;Ljava/util/List;)Lcom/grack/nanojson/JsonObject;

    .line 25
    move-result-object p0

    .line 26
    .line 27
    const-string v1, "Unable to get "

    .line 28
    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 33
    move-result v2

    .line 34
    .line 35
    add-int/lit8 v2, v2, -0x1

    .line 36
    .line 37
    .line 38
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    move-result-object p0

    .line 44
    .line 45
    if-eqz p0, :cond_0

    .line 46
    return-object p0

    .line 47
    .line 48
    :cond_0
    new-instance p0, Laa/h;

    .line 49
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    .line 66
    invoke-direct {p0, p1}, Laa/h;-><init>(Ljava/lang/String;)V

    .line 67
    throw p0

    .line 68
    .line 69
    :cond_1
    new-instance p0, Laa/h;

    .line 70
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object p1

    .line 85
    .line 86
    .line 87
    invoke-direct {p0, p1}, Laa/h;-><init>(Ljava/lang/String;)V

    .line 88
    throw p0
.end method

.method public static k(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;
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
    invoke-static {}, Lcom/grack/nanojson/JsonParser;->object()Lcom/grack/nanojson/JsonParser$JsonParserContext;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p0}, Lcom/grack/nanojson/JsonParser$JsonParserContext;->from(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 9
    .line 10
    check-cast p0, Lcom/grack/nanojson/JsonObject;
    :try_end_0
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return-object p0

    .line 12
    :catch_0
    move-exception p0

    .line 13
    .line 14
    new-instance v0, Laa/h;

    .line 15
    .line 16
    const-string v1, "Could not parse JSON"

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v1, p0}, Laa/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    throw v0
.end method
