.class public final Lea/a;
.super Lorg/schabi/newpipe/extractor/linkhandler/d;
.source "SourceFile"


# static fields
.field private static final INSTANCE:Lea/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lea/a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lea/a;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lea/a;->INSTANCE:Lea/a;

    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/linkhandler/d;-><init>()V

    .line 4
    return-void
.end method

.method public static n()Lea/a;
    .locals 1

    .line 1
    sget-object v0, Lea/a;->INSTANCE:Lea/a;

    return-object v0
.end method


# virtual methods
.method public e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-static {}, Lx9/p;->a()Lz9/a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Lqa/y;->v(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lz9/a;->get(Ljava/lang/String;)Lz9/d;

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
    const-string v0, "data-band"

    .line 19
    .line 20
    .line 21
    invoke-static {p1, v0}, Lqa/e;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    const-string v0, "id"

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getLong(Ljava/lang/String;)J

    .line 28
    move-result-wide v0

    .line 29
    .line 30
    .line 31
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 32
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Laa/j; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    return-object p1

    .line 34
    :catch_0
    move-exception p1

    .line 35
    goto :goto_0

    .line 36
    :catch_1
    move-exception p1

    .line 37
    goto :goto_0

    .line 38
    :catch_2
    move-exception p1

    .line 39
    goto :goto_0

    .line 40
    :catch_3
    move-exception p1

    .line 41
    .line 42
    :goto_0
    new-instance v0, Laa/h;

    .line 43
    .line 44
    const-string v1, "Download failed"

    .line 45
    .line 46
    .line 47
    invoke-direct {v0, v1, p1}, Laa/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    throw v0
.end method

.method public h(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    const-string v0, "/"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    array-length v1, v0

    .line 12
    const/4 v2, 0x4

    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x3

    .line 15
    .line 16
    if-eq v1, v4, :cond_0

    .line 17
    array-length v1, v0

    .line 18
    .line 19
    if-eq v1, v2, :cond_0

    .line 20
    return v3

    .line 21
    :cond_0
    array-length v1, v0

    .line 22
    .line 23
    if-ne v1, v2, :cond_1

    .line 24
    .line 25
    aget-object v1, v0, v4

    .line 26
    .line 27
    const-string v2, "releases"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    move-result v1

    .line 32
    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    aget-object v1, v0, v4

    .line 36
    .line 37
    const-string v2, "music"

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    move-result v1

    .line 42
    .line 43
    if-nez v1, :cond_1

    .line 44
    .line 45
    aget-object v1, v0, v4

    .line 46
    .line 47
    const-string v2, "album"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    move-result v1

    .line 52
    .line 53
    if-nez v1, :cond_1

    .line 54
    .line 55
    aget-object v1, v0, v4

    .line 56
    .line 57
    const-string v2, "track"

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    move-result v1

    .line 62
    .line 63
    if-nez v1, :cond_1

    .line 64
    return v3

    .line 65
    :cond_1
    const/4 v1, 0x2

    .line 66
    .line 67
    aget-object v0, v0, v1

    .line 68
    .line 69
    const-string v1, "daily.bandcamp.com"

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    move-result v0

    .line 74
    .line 75
    if-eqz v0, :cond_2

    .line 76
    return v3

    .line 77
    .line 78
    .line 79
    :cond_2
    invoke-static {p1}, Lda/g;->g(Ljava/lang/String;)Z

    .line 80
    move-result p1

    .line 81
    return p1
.end method

.method public l(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lda/g;->b(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    const-string p2, "error"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/grack/nanojson/JsonObject;->getBoolean(Ljava/lang/String;)Z

    .line 10
    move-result p2

    .line 11
    .line 12
    if-nez p2, :cond_0

    .line 13
    .line 14
    const-string p2, "bandcamp_url"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Lqa/y;->v(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    return-object p1

    .line 24
    .line 25
    :cond_0
    new-instance p1, Laa/h;

    .line 26
    .line 27
    const-string p2, "JSON does not contain a channel URL (invalid id?) or is otherwise invalid"

    .line 28
    .line 29
    .line 30
    invoke-direct {p1, p2}, Laa/h;-><init>(Ljava/lang/String;)V

    .line 31
    throw p1
.end method
