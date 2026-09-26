.class public final Lha/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final COUNT_KEY:Ljava/lang/String; = "count"

.field public static final ITEMS_PER_PAGE:I = 0xc

.field public static final START_KEY:Ljava/lang/String; = "start"

.field public static final START_PATTERN:Ljava/lang/String; = "start=(\\d*)"


# direct methods
.method public static synthetic a(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Lx9/c;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lha/f;->h(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Lx9/c;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/grack/nanojson/JsonObject;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lha/f;->g(Lcom/grack/nanojson/JsonObject;)Z

    move-result p0

    return p0
.end method

.method public static c(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/grack/nanojson/JsonObject;",
            ")",
            "Ljava/util/List<",
            "Lx9/c;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "avatars"

    .line 3
    .line 4
    const-string v1, "avatar"

    .line 5
    .line 6
    .line 7
    invoke-static {p0, p1, v0, v1}, Lha/f;->e(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method private static d(Ljava/lang/String;Lcom/grack/nanojson/JsonArray;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
    new-instance v0, Lha/d;

    .line 29
    .line 30
    .line 31
    invoke-direct {v0}, Lha/d;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-static {p1, v0}, Lx9/j;->a(Ljava/util/stream/Stream;Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    new-instance v0, Lha/e;

    .line 38
    .line 39
    .line 40
    invoke-direct {v0, p0}, Lha/e;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-static {p1, v0}, Lorg/schabi/newpipe/extractor/localization/n;->a(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 44
    move-result-object p0

    .line 45
    .line 46
    .line 47
    invoke-static {}, Lda/d;->a()Ljava/util/stream/Collector;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    .line 51
    invoke-static {p0, p1}, Lda/e;->a(Ljava/util/stream/Stream;Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 52
    move-result-object p0

    .line 53
    .line 54
    check-cast p0, Ljava/util/List;

    .line 55
    return-object p0
.end method

.method private static e(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
    .line 3
    invoke-virtual {p1, p2}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    .line 7
    invoke-static {p2}, Lqa/y;->n(Ljava/util/Collection;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-static {p0, p2}, Lha/f;->d(Ljava/lang/String;Lcom/grack/nanojson/JsonArray;)Ljava/util/List;

    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p1, p3}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    const-string p2, "path"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object p2

    .line 26
    .line 27
    .line 28
    invoke-static {p2}, Lqa/y;->m(Ljava/lang/String;)Z

    .line 29
    move-result p3

    .line 30
    .line 31
    if-nez p3, :cond_1

    .line 32
    .line 33
    new-instance p3, Lx9/c;

    .line 34
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object p0

    .line 49
    .line 50
    const-string p2, "width"

    .line 51
    const/4 v0, -0x1

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, p2, v0}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;I)I

    .line 55
    move-result p1

    .line 56
    .line 57
    sget-object p2, Lx9/c$a;->UNKNOWN:Lx9/c$a;

    .line 58
    .line 59
    .line 60
    invoke-direct {p3, p0, v0, p1, p2}, Lx9/c;-><init>(Ljava/lang/String;IILx9/c$a;)V

    .line 61
    .line 62
    .line 63
    invoke-static {p3}, Lha/c;->a(Ljava/lang/Object;)Ljava/util/List;

    .line 64
    move-result-object p0

    .line 65
    return-object p0

    .line 66
    .line 67
    .line 68
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 69
    move-result-object p0

    .line 70
    return-object p0
.end method

.method public static f(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/grack/nanojson/JsonObject;",
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
    const-string v1, "thumbnailPath"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-static {v1}, Lqa/y;->m(Ljava/lang/String;)Z

    .line 16
    move-result v2

    .line 17
    const/4 v3, -0x1

    .line 18
    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    new-instance v2, Lx9/c;

    .line 22
    .line 23
    new-instance v4, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    sget-object v4, Lx9/c$a;->LOW:Lx9/c$a;

    .line 39
    .line 40
    .line 41
    invoke-direct {v2, v1, v3, v3, v4}, Lx9/c;-><init>(Ljava/lang/String;IILx9/c$a;)V

    .line 42
    .line 43
    .line 44
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    :cond_0
    const-string v1, "previewPath"

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    .line 53
    invoke-static {p1}, Lqa/y;->m(Ljava/lang/String;)Z

    .line 54
    move-result v1

    .line 55
    .line 56
    if-nez v1, :cond_1

    .line 57
    .line 58
    new-instance v1, Lx9/c;

    .line 59
    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object p0

    .line 74
    .line 75
    sget-object p1, Lx9/c$a;->MEDIUM:Lx9/c$a;

    .line 76
    .line 77
    .line 78
    invoke-direct {v1, p0, v3, v3, p1}, Lx9/c;-><init>(Ljava/lang/String;IILx9/c$a;)V

    .line 79
    .line 80
    .line 81
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 85
    move-result-object p0

    .line 86
    return-object p0
.end method

.method private static synthetic g(Lcom/grack/nanojson/JsonObject;)Z
    .locals 1

    .line 1
    .line 2
    const-string v0, "path"

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

.method private static synthetic h(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Lx9/c;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lx9/c;

    .line 3
    .line 4
    const-string v1, "path"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

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
    .line 16
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object p0

    .line 24
    .line 25
    const-string v1, "width"

    .line 26
    const/4 v2, -0x1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v1, v2}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;I)I

    .line 30
    move-result p1

    .line 31
    .line 32
    sget-object v1, Lx9/c$a;->UNKNOWN:Lx9/c$a;

    .line 33
    .line 34
    .line 35
    invoke-direct {v0, p0, v2, p1, v1}, Lx9/c;-><init>(Ljava/lang/String;IILx9/c$a;)V

    .line 36
    return-object v0
.end method

.method public static i(Ljava/lang/String;)Ljava/time/OffsetDateTime;
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
    invoke-static {p0}, Lha/b;->a(Ljava/lang/CharSequence;)Ljava/time/Instant;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lm4/l;->a()Ljava/time/ZoneOffset;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/localization/c;->a(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/OffsetDateTime;

    .line 12
    move-result-object p0
    :try_end_0
    .catch Ljava/time/format/DateTimeParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return-object p0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    .line 16
    new-instance v1, Laa/h;

    .line 17
    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    const-string v3, "Could not parse date: \""

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string p0, "\""

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object p0

    .line 39
    .line 40
    .line 41
    invoke-direct {v1, p0, v0}, Laa/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    throw v1
.end method

.method public static j(Lcom/grack/nanojson/JsonObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/b;
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "error"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    .line 9
    invoke-static {p0}, Lqa/y;->k(Ljava/lang/String;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    return-void

    .line 14
    .line 15
    :cond_0
    new-instance v0, Laa/b;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, p0}, Laa/b;-><init>(Ljava/lang/String;)V

    .line 19
    throw v0
.end method
