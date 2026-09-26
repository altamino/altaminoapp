.class public Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/m;
.super Loa/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/m$a;
    }
.end annotation


# static fields
.field private static final STREAMS:Ljava/lang/String; = "streams"

.field private static final URL:Ljava/lang/String; = "url"

.field private static final URLS:Ljava/lang/String; = "urls"


# instance fields
.field private conference:Lcom/grack/nanojson/JsonObject;

.field private group:Ljava/lang/String;

.field private room:Lcom/grack/nanojson/JsonObject;


# direct methods
.method public constructor <init>(Lx9/s;Lorg/schabi/newpipe/extractor/linkhandler/a;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Loa/h;-><init>(Lx9/s;Lorg/schabi/newpipe/extractor/linkhandler/a;)V

    .line 4
    const/4 p1, 0x0

    .line 5
    .line 6
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/m;->conference:Lcom/grack/nanojson/JsonObject;

    .line 7
    .line 8
    const-string p2, ""

    .line 9
    .line 10
    iput-object p2, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/m;->group:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/m;->room:Lcom/grack/nanojson/JsonObject;

    .line 13
    return-void
.end method

.method public static synthetic c0(Lcom/grack/nanojson/JsonObject;Ljava/util/Map$Entry;)Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/m$a;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/m;->u0(Lcom/grack/nanojson/JsonObject;Ljava/util/Map$Entry;)Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/m$a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d0(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/m;->s0(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e0(Lcom/grack/nanojson/JsonObject;)Ljava/util/stream/Stream;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/m;->v0(Lcom/grack/nanojson/JsonObject;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f0(Ljava/util/Map$Entry;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/m;->t0(Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic g0(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/m;->p0(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h0(Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/m$a;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/m;->w0(Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/m$a;)Z

    move-result p0

    return p0
.end method

.method public static synthetic i0(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/m;->r0(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j0(Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/m$a;)Loa/s;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/m;->x0(Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/m$a;)Loa/s;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k0(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/m;->q0(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Z

    move-result p0

    return p0
.end method

.method public static synthetic l0(Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/m$a;)Loa/a;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/m;->o0(Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/m$a;)Loa/a;

    move-result-object p0

    return-object p0
.end method

.method private m0(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/m;->room:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "streams"

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
    new-instance v1, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/e;

    .line 37
    .line 38
    .line 39
    invoke-direct {v1}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/e;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/localization/n;->a(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    new-instance v1, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/f;

    .line 46
    .line 47
    .line 48
    invoke-direct {v1, p1}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/f;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-static {v0, v1}, Lx9/j;->a(Ljava/util/stream/Stream;Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    new-instance v1, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/g;

    .line 55
    .line 56
    .line 57
    invoke-direct {v1, p1}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/g;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/localization/n;->a(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    .line 64
    invoke-static {p1}, Lx9/k;->a(Ljava/util/stream/Stream;)Ljava/util/Optional;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    const-string v0, ""

    .line 68
    .line 69
    .line 70
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/g;->a(Ljava/util/Optional;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    move-result-object p1

    .line 72
    .line 73
    check-cast p1, Ljava/lang/String;

    .line 74
    return-object p1
.end method

.method private n0(Ljava/lang/String;Ljava/util/function/Function;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Loa/g;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/function/Function<",
            "Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/m$a;",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/m;->room:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "streams"

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
    new-instance v1, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/j;

    .line 37
    .line 38
    .line 39
    invoke-direct {v1, p1}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/j;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v1}, Lx9/j;->a(Ljava/util/stream/Stream;Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    new-instance v0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/k;

    .line 46
    .line 47
    .line 48
    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/k;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-static {p1, v0}, Lda/n;->a(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    new-instance v0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/l;

    .line 55
    .line 56
    .line 57
    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/l;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-static {p1, v0}, Lx9/j;->a(Ljava/util/stream/Stream;Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    .line 64
    invoke-static {p1, p2}, Lorg/schabi/newpipe/extractor/localization/n;->a(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    .line 68
    invoke-static {}, Lda/m;->a()Ljava/util/stream/Collector;

    .line 69
    move-result-object p2

    .line 70
    .line 71
    .line 72
    invoke-static {p1, p2}, Lda/e;->a(Ljava/util/stream/Stream;Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 73
    move-result-object p1

    .line 74
    .line 75
    check-cast p1, Ljava/util/List;

    .line 76
    return-object p1
.end method

.method private static synthetic o0(Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/m$a;)Loa/a;
    .locals 4

    .line 1
    .line 2
    new-instance v0, Loa/a$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Loa/a$a;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/m$a;->urlValue:Lcom/grack/nanojson/JsonObject;

    .line 8
    .line 9
    const-string v2, "tech"

    .line 10
    .line 11
    const-string v3, " "

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2, v3}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Loa/a$a;->i(Ljava/lang/String;)Loa/a$a;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/m$a;->urlValue:Lcom/grack/nanojson/JsonObject;

    .line 22
    .line 23
    const-string v2, "url"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    const/4 v2, 0x1

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Loa/a$a;->g(Ljava/lang/String;Z)Loa/a$a;

    .line 32
    move-result-object v0

    .line 33
    const/4 v1, -0x1

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Loa/a$a;->f(I)Loa/a$a;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    const-string v1, "hls"

    .line 40
    .line 41
    iget-object v2, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/m$a;->urlKey:Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    move-result v1

    .line 46
    .line 47
    if-eqz v1, :cond_0

    .line 48
    .line 49
    sget-object p0, Loa/d;->HLS:Loa/d;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, p0}, Loa/a$a;->h(Loa/d;)Loa/a$a;

    .line 53
    move-result-object p0

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Loa/a$a;->a()Loa/a;

    .line 57
    move-result-object p0

    .line 58
    return-object p0

    .line 59
    .line 60
    :cond_0
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/m$a;->urlKey:Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    invoke-static {p0}, Lx9/m;->b(Ljava/lang/String;)Lx9/m;

    .line 64
    move-result-object p0

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p0}, Loa/a$a;->l(Lx9/m;)Loa/a$a;

    .line 68
    move-result-object p0

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Loa/a$a;->a()Loa/a;

    .line 72
    move-result-object p0

    .line 73
    return-object p0
.end method

.method private static synthetic p0(Lcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .locals 1

    .line 1
    .line 2
    const-string v0, "urls"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private static synthetic q0(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1, p0}, Lcom/grack/nanojson/JsonObject;->has(Ljava/lang/String;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static synthetic r0(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1, p0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    const-string p1, "url"

    .line 7
    .line 8
    const-string v0, ""

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method private static synthetic s0(Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)Z
    .locals 1

    .line 1
    .line 2
    const-string v0, "type"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private static synthetic t0(Ljava/util/Map$Entry;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    instance-of p0, p0, Lcom/grack/nanojson/JsonObject;

    .line 7
    return p0
.end method

.method private static synthetic u0(Lcom/grack/nanojson/JsonObject;Ljava/util/Map$Entry;)Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/m$a;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/m$a;

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    check-cast v1, Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    check-cast p1, Lcom/grack/nanojson/JsonObject;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, p0, v1, p1}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/m$a;-><init>(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Lcom/grack/nanojson/JsonObject;)V

    .line 18
    return-object v0
.end method

.method private static synthetic v0(Lcom/grack/nanojson/JsonObject;)Ljava/util/stream/Stream;
    .locals 2

    .line 1
    .line 2
    const-string v0, "urls"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonObject;->entrySet()Ljava/util/Set;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/localization/m;->a(Ljava/util/Set;)Ljava/util/stream/Stream;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    new-instance v1, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/b;

    .line 17
    .line 18
    .line 19
    invoke-direct {v1}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/b;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Lx9/j;->a(Ljava/util/stream/Stream;Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    new-instance v1, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/c;

    .line 26
    .line 27
    .line 28
    invoke-direct {v1, p0}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/c;-><init>(Lcom/grack/nanojson/JsonObject;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/localization/n;->a(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.method private static synthetic w0(Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/m$a;)Z
    .locals 1

    .line 1
    .line 2
    const-string v0, "dash"

    .line 3
    .line 4
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/m$a;->urlKey:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result p0

    .line 9
    .line 10
    xor-int/lit8 p0, p0, 0x1

    .line 11
    return p0
.end method

.method private static synthetic x0(Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/m$a;)Loa/s;
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/m$a;->streamJsonObj:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "videoSize"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    new-instance v1, Loa/s$a;

    .line 11
    .line 12
    .line 13
    invoke-direct {v1}, Loa/s$a;-><init>()V

    .line 14
    .line 15
    iget-object v2, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/m$a;->urlValue:Lcom/grack/nanojson/JsonObject;

    .line 16
    .line 17
    const-string v3, "tech"

    .line 18
    .line 19
    const-string v4, " "

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v3, v4}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Loa/s$a;->d(Ljava/lang/String;)Loa/s$a;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    iget-object v2, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/m$a;->urlValue:Lcom/grack/nanojson/JsonObject;

    .line 30
    .line 31
    const-string v3, "url"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object v2

    .line 36
    const/4 v3, 0x1

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2, v3}, Loa/s$a;->b(Ljava/lang/String;Z)Loa/s$a;

    .line 40
    move-result-object v1

    .line 41
    const/4 v2, 0x0

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2}, Loa/s$a;->e(Z)Loa/s$a;

    .line 45
    move-result-object v1

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonArray;->getInt(I)I

    .line 49
    move-result v2

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v3}, Lcom/grack/nanojson/JsonArray;->getInt(I)I

    .line 53
    move-result v0

    .line 54
    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v2, "x"

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object v0

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v0}, Loa/s$a;->i(Ljava/lang/String;)Loa/s$a;

    .line 77
    move-result-object v0

    .line 78
    .line 79
    const-string v1, "hls"

    .line 80
    .line 81
    iget-object v2, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/m$a;->urlKey:Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    move-result v1

    .line 86
    .line 87
    if-eqz v1, :cond_0

    .line 88
    .line 89
    sget-object p0, Loa/d;->HLS:Loa/d;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, p0}, Loa/s$a;->c(Loa/d;)Loa/s$a;

    .line 93
    move-result-object p0

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Loa/s$a;->a()Loa/s;

    .line 97
    move-result-object p0

    .line 98
    return-object p0

    .line 99
    .line 100
    :cond_0
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/m$a;->urlKey:Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    invoke-static {p0}, Lx9/m;->b(Ljava/lang/String;)Lx9/m;

    .line 104
    move-result-object p0

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, p0}, Loa/s$a;->h(Lx9/m;)Loa/s$a;

    .line 108
    move-result-object p0

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Loa/s$a;->a()Loa/s;

    .line 112
    move-result-object p0

    .line 113
    return-object p0
.end method


# virtual methods
.method public H()Loa/o;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Loa/o;->LIVE_STREAM:Loa/o;

    .line 3
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
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/m;->room:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/p;->c(Lcom/grack/nanojson/JsonObject;)Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
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
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/m;->conference:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "conference"

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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/m;->conference:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "slug"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

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
    const-string v2, "https://streaming.media.ccc.de/"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
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
            Ljava/io/IOException;,
            Laa/d;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/i;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/i;-><init>()V

    .line 6
    .line 7
    const-string v1, "video"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v1, v0}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/m;->n0(Ljava/lang/String;Ljava/util/function/Function;)Ljava/util/List;

    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public Z()J
    .locals 2

    .line 1
    const-wide/16 v0, -0x1

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
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/m;->room:Lcom/grack/nanojson/JsonObject;

    .line 3
    .line 4
    const-string v1, "display"

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
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Laa/d;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lx9/b;->f()Lorg/schabi/newpipe/extractor/localization/i;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v0}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/p;->b(Lz9/a;Lorg/schabi/newpipe/extractor/localization/i;)Lcom/grack/nanojson/JsonArray;

    .line 8
    move-result-object p1

    .line 9
    const/4 v0, 0x0

    .line 10
    move v1, v0

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-virtual {p1}, Lcom/grack/nanojson/JsonArray;->size()I

    .line 14
    move-result v2

    .line 15
    .line 16
    if-ge v1, v2, :cond_3

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v1}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    const-string v3, "groups"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v3}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 26
    move-result-object v3

    .line 27
    move v4, v0

    .line 28
    .line 29
    .line 30
    :goto_1
    invoke-virtual {v3}, Lcom/grack/nanojson/JsonArray;->size()I

    .line 31
    move-result v5

    .line 32
    .line 33
    if-ge v4, v5, :cond_2

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, v4}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    .line 37
    move-result-object v5

    .line 38
    .line 39
    const-string v6, "group"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v5, v6}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    move-result-object v5

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v4}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    .line 47
    move-result-object v6

    .line 48
    .line 49
    const-string v7, "rooms"

    .line 50
    .line 51
    .line 52
    invoke-virtual {v6, v7}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 53
    move-result-object v6

    .line 54
    move v7, v0

    .line 55
    .line 56
    .line 57
    :goto_2
    invoke-virtual {v6}, Lcom/grack/nanojson/JsonArray;->size()I

    .line 58
    move-result v8

    .line 59
    .line 60
    if-ge v7, v8, :cond_1

    .line 61
    .line 62
    .line 63
    invoke-virtual {v6, v7}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    .line 64
    move-result-object v8

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lx9/b;->g()Ljava/lang/String;

    .line 68
    move-result-object v9

    .line 69
    .line 70
    const-string v10, "slug"

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, v10}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    move-result-object v11

    .line 75
    .line 76
    .line 77
    invoke-virtual {v8, v10}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    move-result-object v10

    .line 79
    .line 80
    new-instance v12, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    const-string v11, "/"

    .line 89
    .line 90
    .line 91
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    move-result-object v10

    .line 99
    .line 100
    .line 101
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    move-result v9

    .line 103
    .line 104
    if-eqz v9, :cond_0

    .line 105
    .line 106
    iput-object v2, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/m;->conference:Lcom/grack/nanojson/JsonObject;

    .line 107
    .line 108
    iput-object v5, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/m;->group:Ljava/lang/String;

    .line 109
    .line 110
    iput-object v8, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/m;->room:Lcom/grack/nanojson/JsonObject;

    .line 111
    return-void

    .line 112
    .line 113
    :cond_0
    add-int/lit8 v7, v7, 0x1

    .line 114
    goto :goto_2

    .line 115
    .line 116
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 117
    goto :goto_1

    .line 118
    .line 119
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 120
    goto :goto_0

    .line 121
    .line 122
    :cond_3
    new-instance p1, Laa/d;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0}, Lx9/b;->g()Ljava/lang/String;

    .line 126
    move-result-object v0

    .line 127
    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    const-string v2, "Could not find room matching id: \'"

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    const-string v0, "\'"

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    move-result-object v0

    .line 149
    .line 150
    .line 151
    invoke-direct {p1, v0}, Laa/d;-><init>(Ljava/lang/String;)V

    .line 152
    throw p1
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
            Ljava/io/IOException;,
            Laa/d;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/h;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/h;-><init>()V

    .line 6
    .line 7
    const-string v1, "audio"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v1, v0}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/m;->n0(Ljava/lang/String;Ljava/util/function/Function;)Ljava/util/List;

    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/m;->group:Ljava/lang/String;

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "dash"

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/m;->m0(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public t()Loa/e;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Loa/e;

    .line 3
    .line 4
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/m;->conference:Lcom/grack/nanojson/JsonObject;

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
    .line 12
    iget-object v2, p0, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/m;->group:Ljava/lang/String;

    .line 13
    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v1, " - "

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 33
    const/4 v2, 0x3

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, v1, v2}, Loa/e;-><init>(Ljava/lang/String;I)V

    .line 37
    return-object v0
.end method

.method public x()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    const-string v0, "hls"

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/m;->m0(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
