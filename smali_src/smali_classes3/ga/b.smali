.class public final Lga/b;
.super Lorg/schabi/newpipe/extractor/linkhandler/b;
.source "SourceFile"


# static fields
.field private static final INSTANCE:Lga/b;

.field private static final LIVE_STREAM_ID_PATTERN:Ljava/lang/String; = "streaming\\.media\\.ccc\\.de\\/(\\w+\\/\\w+)"

.field private static final LIVE_STREAM_PATH:Ljava/lang/String; = "https://streaming.media.ccc.de/"

.field private static final RECORDING_ID_PATTERN:Ljava/lang/String; = "(?:(?:(?:api\\.)?media\\.ccc\\.de/public/events/)|(?:media\\.ccc\\.de/v/))([^/?&#]*)"

.field public static final VIDEO_API_ENDPOINT:Ljava/lang/String; = "https://api.media.ccc.de/public/events/"

.field private static final VIDEO_PATH:Ljava/lang/String; = "https://media.ccc.de/v/"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lga/b;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lga/b;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lga/b;->INSTANCE:Lga/b;

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

.method public static i()Lga/b;
    .locals 1

    .line 1
    sget-object v0, Lga/b;->INSTANCE:Lga/b;

    return-object v0
.end method


# virtual methods
.method public e(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 1
    .line 2
    :try_start_0
    const-string v0, "streaming\\.media\\.ccc\\.de\\/(\\w+\\/\\w+)"

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Lqa/n;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0
    :try_end_0
    .catch Lqa/n$a; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    goto :goto_0

    .line 8
    :catch_0
    const/4 v0, 0x0

    .line 9
    .line 10
    :goto_0
    if-nez v0, :cond_0

    .line 11
    .line 12
    const-string v0, "(?:(?:(?:api\\.)?media\\.ccc\\.de/public/events/)|(?:media\\.ccc\\.de/v/))([^/?&#]*)"

    .line 13
    .line 14
    .line 15
    invoke-static {v0, p1}, Lqa/n;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    return-object p1

    .line 18
    :cond_0
    return-object v0
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
    .line 3
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/services/media_ccc/extractors/p;->f(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    const-string v1, "https://streaming.media.ccc.de/"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    return-object p1

    .line 25
    .line 26
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    const-string v1, "https://media.ccc.de/v/"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 42
    return-object p1
.end method

.method public h(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lga/b;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    move-result-object p1
    :try_end_0
    .catch Laa/h; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    const/4 v0, 0x1

    .line 9
    :catch_0
    :cond_0
    return v0
.end method
