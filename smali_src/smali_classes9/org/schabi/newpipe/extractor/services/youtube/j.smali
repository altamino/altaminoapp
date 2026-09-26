.class final Lorg/schabi/newpipe/extractor/services/youtube/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BASE_JS_PLAYER_URL_FORMAT:Ljava/lang/String; = "https://www.youtube.com/s/player/%s/player_ias.vflset/en_GB/base.js"

.field private static final EMBEDDED_WATCH_PAGE_JS_BASE_PLAYER_URL_PATTERN:Ljava/util/regex/Pattern;

.field private static final HTTPS:Ljava/lang/String; = "https:"

.field private static final IFRAME_RES_JS_BASE_PLAYER_HASH_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    const-string v0, "player\\\\/([a-z0-9]{8})\\\\/"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/j;->IFRAME_RES_JS_BASE_PLAYER_HASH_PATTERN:Ljava/util/regex/Pattern;

    .line 9
    .line 10
    const-string v0, "\"jsUrl\":\"(/s/player/[A-Za-z0-9]+/player_ias\\.vflset/[A-Za-z_-]+/base\\.js)\""

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/j;->EMBEDDED_WATCH_PAGE_JS_BASE_PLAYER_URL_PATTERN:Ljava/util/regex/Pattern;

    .line 17
    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    const-string v0, "//"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    const-string v1, "https:"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    .line 28
    :cond_0
    const-string v0, "/"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 32
    move-result v0

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    const-string v1, "https://www.youtube.com"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object p0

    .line 52
    :cond_1
    return-object p0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
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
    invoke-static {}, Lx9/p;->a()Lz9/a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget-object v1, Lorg/schabi/newpipe/extractor/localization/i;->DEFAULT:Lorg/schabi/newpipe/extractor/localization/i;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p0, v1}, Lz9/a;->get(Ljava/lang/String;Lorg/schabi/newpipe/extractor/localization/i;)Lz9/d;

    .line 10
    move-result-object p0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lz9/d;->c()Ljava/lang/String;

    .line 14
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return-object p0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    .line 18
    new-instance v0, Laa/h;

    .line 19
    .line 20
    const-string v1, "Could not get JavaScript base player\'s code"

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, v1, p0}, Laa/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    throw v0
.end method

.method static c(Ljava/lang/String;)Ljava/lang/String;
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
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/j;->e()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/j;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    new-instance v1, Ljava/net/URL;

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/j;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    return-object p0

    .line 19
    .line 20
    .line 21
    :catch_0
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/j;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object p0

    .line 23
    .line 24
    .line 25
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/j;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    move-result-object p0

    .line 27
    .line 28
    :try_start_1
    new-instance v0, Ljava/net/URL;

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 32
    .line 33
    .line 34
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/j;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object p0

    .line 36
    return-object p0

    .line 37
    :catch_1
    move-exception p0

    .line 38
    .line 39
    new-instance v0, Laa/h;

    .line 40
    .line 41
    const-string v1, "The extracted and built JavaScript URL is invalid"

    .line 42
    .line 43
    .line 44
    invoke-direct {v0, v1, p0}, Laa/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    throw v0
.end method

.method static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "https://www.youtube.com/embed/"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lx9/p;->a()Lz9/a;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    sget-object v1, Lorg/schabi/newpipe/extractor/localization/i;->DEFAULT:Lorg/schabi/newpipe/extractor/localization/i;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p0, v1}, Lz9/a;->get(Ljava/lang/String;Lorg/schabi/newpipe/extractor/localization/i;)Lz9/d;

    .line 27
    move-result-object p0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lz9/d;->c()Ljava/lang/String;

    .line 31
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 32
    .line 33
    .line 34
    invoke-static {p0}, Lorg/jsoup/Jsoup;->parse(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    const-string v1, "script"

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    const-string v1, "name"

    .line 44
    .line 45
    const-string v2, "player/base"

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1, v2}, Lorg/jsoup/select/Elements;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    .line 56
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    move-result v1

    .line 58
    .line 59
    if-eqz v1, :cond_1

    .line 60
    .line 61
    .line 62
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    move-result-object v1

    .line 64
    .line 65
    check-cast v1, Lorg/jsoup/nodes/Element;

    .line 66
    .line 67
    const-string v2, "src"

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    move-result-object v1

    .line 72
    .line 73
    const-string v2, "base.js"

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 77
    move-result v2

    .line 78
    .line 79
    if-eqz v2, :cond_0

    .line 80
    return-object v1

    .line 81
    .line 82
    :cond_1
    :try_start_1
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/j;->EMBEDDED_WATCH_PAGE_JS_BASE_PLAYER_URL_PATTERN:Ljava/util/regex/Pattern;

    .line 83
    .line 84
    .line 85
    invoke-static {v0, p0}, Lqa/n;->p(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    move-result-object p0
    :try_end_1
    .catch Lqa/n$a; {:try_start_1 .. :try_end_1} :catch_0

    .line 87
    return-object p0

    .line 88
    :catch_0
    move-exception p0

    .line 89
    .line 90
    new-instance v0, Laa/h;

    .line 91
    .line 92
    const-string v1, "Embedded watch page didn\'t provide JavaScript base player\'s URL"

    .line 93
    .line 94
    .line 95
    invoke-direct {v0, v1, p0}, Laa/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    throw v0

    .line 97
    :catch_1
    move-exception p0

    .line 98
    .line 99
    new-instance v0, Laa/h;

    .line 100
    .line 101
    const-string v1, "Could not fetch embedded watch page"

    .line 102
    .line 103
    .line 104
    invoke-direct {v0, v1, p0}, Laa/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    throw v0
.end method

.method static e()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    :try_start_0
    const-string v0, "https://www.youtube.com/iframe_api"

    .line 3
    .line 4
    .line 5
    invoke-static {}, Lx9/p;->a()Lz9/a;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    sget-object v2, Lorg/schabi/newpipe/extractor/localization/i;->DEFAULT:Lorg/schabi/newpipe/extractor/localization/i;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v0, v2}, Lz9/a;->get(Ljava/lang/String;Lorg/schabi/newpipe/extractor/localization/i;)Lz9/d;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lz9/d;->c()Ljava/lang/String;

    .line 16
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 17
    .line 18
    :try_start_1
    sget-object v1, Lorg/schabi/newpipe/extractor/services/youtube/j;->IFRAME_RES_JS_BASE_PLAYER_HASH_PATTERN:Ljava/util/regex/Pattern;

    .line 19
    .line 20
    .line 21
    invoke-static {v1, v0}, Lqa/n;->p(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    const-string v1, "https://www.youtube.com/s/player/%s/player_ias.vflset/en_GB/base.js"

    .line 25
    const/4 v2, 0x1

    .line 26
    .line 27
    new-array v2, v2, [Ljava/lang/Object;

    .line 28
    const/4 v3, 0x0

    .line 29
    .line 30
    aput-object v0, v2, v3

    .line 31
    .line 32
    .line 33
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    move-result-object v0
    :try_end_1
    .catch Lqa/n$a; {:try_start_1 .. :try_end_1} :catch_0

    .line 35
    return-object v0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .line 38
    new-instance v1, Laa/h;

    .line 39
    .line 40
    const-string v2, "IFrame resource didn\'t provide JavaScript base player\'s hash"

    .line 41
    .line 42
    .line 43
    invoke-direct {v1, v2, v0}, Laa/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    throw v1

    .line 45
    :catch_1
    move-exception v0

    .line 46
    .line 47
    new-instance v1, Laa/h;

    .line 48
    .line 49
    const-string v2, "Could not fetch IFrame resource"

    .line 50
    .line 51
    .line 52
    invoke-direct {v1, v2, v0}, Laa/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    throw v1
.end method
