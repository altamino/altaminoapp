.class public final Lia/c;
.super Lorg/schabi/newpipe/extractor/linkhandler/b;
.source "SourceFile"


# static fields
.field private static final ID_PATTERN:Ljava/lang/String; = "(/w/|(/videos/(watch/|embed/)?))(?!p/)([^/?&#]*)"

.field private static final INSTANCE:Lia/c;

.field public static final VIDEO_API_ENDPOINT:Ljava/lang/String; = "/api/v1/videos/"

.field private static final VIDEO_PATH:Ljava/lang/String; = "/videos/watch/"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lia/c;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lia/c;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lia/c;->INSTANCE:Lia/c;

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

.method public static i()Lia/c;
    .locals 1

    .line 1
    sget-object v0, Lia/c;->INSTANCE:Lia/c;

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
    const-string v0, "(/w/|(/videos/(watch/|embed/)?))(?!p/)([^/?&#]*)"

    .line 3
    const/4 v1, 0x4

    .line 4
    .line 5
    .line 6
    invoke-static {v0, p1, v1}, Lqa/n;->m(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method public f(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/h;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lx9/r;->PeerTube:Lha/g;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lha/g;->m()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1, v0}, Lia/c;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string p2, "/videos/watch/"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method public h(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Laa/e;
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "/playlist/"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    return v1

    .line 11
    .line 12
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lia/c;->e(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Laa/h; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    const/4 p1, 0x1

    .line 20
    return p1

    .line 21
    :catch_0
    return v1
.end method
