.class public final Lga/a;
.super Lorg/schabi/newpipe/extractor/linkhandler/d;
.source "SourceFile"


# static fields
.field public static final CONFERENCE_API_ENDPOINT:Ljava/lang/String; = "https://api.media.ccc.de/public/conferences/"

.field public static final CONFERENCE_PATH:Ljava/lang/String; = "https://media.ccc.de/c/"

.field private static final ID_PATTERN:Ljava/lang/String; = "(?:(?:(?:api\\.)?media\\.ccc\\.de/public/conferences/)|(?:media\\.ccc\\.de/[bc]/))([^/?&#]*)"

.field private static final INSTANCE:Lga/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lga/a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lga/a;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lga/a;->INSTANCE:Lga/a;

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

.method public static n()Lga/a;
    .locals 1

    .line 1
    sget-object v0, Lga/a;->INSTANCE:Lga/a;

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
    const-string v0, "(?:(?:(?:api\\.)?media\\.ccc\\.de/public/conferences/)|(?:media\\.ccc\\.de/[bc]/))([^/?&#]*)"

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Lqa/n;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
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
    invoke-virtual {p0, p1}, Lga/a;->e(Ljava/lang/String;)Ljava/lang/String;

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
    new-instance p2, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string p3, "https://media.ccc.de/c/"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method
