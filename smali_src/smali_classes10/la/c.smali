.class public final Lla/c;
.super Lorg/schabi/newpipe/extractor/linkhandler/b;
.source "SourceFile"


# static fields
.field private static final API_URL_PATTERN:Ljava/lang/String; = "^https?://api-v2\\.soundcloud.com/(tracks|albums|sets|reposts|followers|following)/([0-9a-z_-]+)/"

.field private static final INSTANCE:Lla/c;

.field private static final URL_PATTERN:Ljava/lang/String; = "^https?://(www\\.|m\\.|on\\.)?soundcloud.com/[0-9a-z_-]+/(?!(tracks|albums|sets|reposts|followers|following)/?$)[0-9a-z_-]+/?([#?].*)?$"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lla/c;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lla/c;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lla/c;->INSTANCE:Lla/c;

    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/linkhandler/b;-><init>()V

    .line 4
    return-void
.end method

.method public static i()Lla/c;
    .locals 1

    .line 1
    sget-object v0, Lla/c;->INSTANCE:Lla/c;

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
    const-string v0, "^https?://api-v2\\.soundcloud.com/(tracks|albums|sets|reposts|followers|following)/([0-9a-z_-]+)/"

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Lqa/n;->g(Ljava/lang/String;Ljava/lang/String;)Z

    .line 6
    move-result v1

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-static {v0, p1}, Lqa/n;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    .line 15
    :cond_0
    const-string v0, "^https?://(www\\.|m\\.|on\\.)?soundcloud.com/[0-9a-z_-]+/(?!(tracks|albums|sets|reposts|followers|following)/?$)[0-9a-z_-]+/?([#?].*)?$"

    .line 16
    .line 17
    .line 18
    invoke-static {v0, p1}, Lqa/y;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :try_start_0
    invoke-static {p1}, Lja/i;->o(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    return-object p1

    .line 24
    :catch_0
    move-exception p1

    .line 25
    .line 26
    new-instance v0, Laa/h;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, v1, p1}, Laa/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    throw v0
.end method

.method public f(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;,
            Ljava/lang/UnsupportedOperationException;
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
    const-string v1, "https://api.soundcloud.com/tracks/"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Lja/i;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return-object p1

    .line 23
    :catch_0
    move-exception p1

    .line 24
    .line 25
    new-instance v0, Laa/h;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, v1, p1}, Laa/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    throw v0
.end method

.method public h(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "^https?://(www\\.|m\\.|on\\.)?soundcloud.com/[0-9a-z_-]+/(?!(tracks|albums|sets|reposts|followers|following)/?$)[0-9a-z_-]+/?([#?].*)?$"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-static {v0, p1}, Lqa/n;->g(Ljava/lang/String;Ljava/lang/String;)Z

    .line 10
    move-result p1

    .line 11
    return p1
.end method
