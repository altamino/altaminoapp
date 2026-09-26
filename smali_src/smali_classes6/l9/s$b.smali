.class public Ll9/s$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll9/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private bdsState:Ll9/b;

.field private index:J

.field private maxIndex:J

.field private final params:Ll9/r;

.field private privateKey:[B

.field private publicSeed:[B

.field private root:[B

.field private secretKeyPRF:[B

.field private secretKeySeed:[B

.field private xmss:Ll9/x;


# direct methods
.method public constructor <init>(Ll9/r;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ll9/s$b;->index:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ll9/s$b;->maxIndex:J

    const/4 v0, 0x0

    iput-object v0, p0, Ll9/s$b;->secretKeySeed:[B

    iput-object v0, p0, Ll9/s$b;->secretKeyPRF:[B

    iput-object v0, p0, Ll9/s$b;->publicSeed:[B

    iput-object v0, p0, Ll9/s$b;->root:[B

    iput-object v0, p0, Ll9/s$b;->bdsState:Ll9/b;

    iput-object v0, p0, Ll9/s$b;->privateKey:[B

    iput-object v0, p0, Ll9/s$b;->xmss:Ll9/x;

    iput-object p1, p0, Ll9/s$b;->params:Ll9/r;

    return-void
.end method

.method static synthetic a(Ll9/s$b;)Ll9/r;
    .locals 0

    .line 1
    iget-object p0, p0, Ll9/s$b;->params:Ll9/r;

    return-object p0
.end method

.method static synthetic b(Ll9/s$b;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Ll9/s$b;->privateKey:[B

    return-object p0
.end method

.method static synthetic c(Ll9/s$b;)Ll9/x;
    .locals 0

    .line 1
    iget-object p0, p0, Ll9/s$b;->xmss:Ll9/x;

    return-object p0
.end method

.method static synthetic d(Ll9/s$b;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Ll9/s$b;->index:J

    return-wide v0
.end method

.method static synthetic e(Ll9/s$b;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Ll9/s$b;->secretKeySeed:[B

    return-object p0
.end method

.method static synthetic f(Ll9/s$b;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Ll9/s$b;->secretKeyPRF:[B

    return-object p0
.end method

.method static synthetic g(Ll9/s$b;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Ll9/s$b;->publicSeed:[B

    return-object p0
.end method

.method static synthetic h(Ll9/s$b;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Ll9/s$b;->root:[B

    return-object p0
.end method

.method static synthetic i(Ll9/s$b;)Ll9/b;
    .locals 0

    .line 1
    iget-object p0, p0, Ll9/s$b;->bdsState:Ll9/b;

    return-object p0
.end method

.method static synthetic j(Ll9/s$b;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Ll9/s$b;->maxIndex:J

    return-wide v0
.end method


# virtual methods
.method public k()Ll9/s;
    .locals 2

    .line 1
    new-instance v0, Ll9/s;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ll9/s;-><init>(Ll9/s$b;Ll9/s$a;)V

    return-object v0
.end method

.method public l(Ll9/b;)Ll9/s$b;
    .locals 6

    .line 1
    invoke-virtual {p1}, Ll9/b;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ll9/b;

    iget-object v1, p0, Ll9/s$b;->params:Ll9/r;

    invoke-virtual {v1}, Ll9/r;->a()I

    move-result v1

    const-wide/16 v2, 0x1

    shl-long v4, v2, v1

    sub-long/2addr v4, v2

    invoke-direct {v0, p1, v4, v5}, Ll9/b;-><init>(Ll9/b;J)V

    iput-object v0, p0, Ll9/s$b;->bdsState:Ll9/b;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Ll9/s$b;->bdsState:Ll9/b;

    :goto_0
    return-object p0
.end method

.method public m(J)Ll9/s$b;
    .locals 0

    .line 1
    iput-wide p1, p0, Ll9/s$b;->index:J

    return-object p0
.end method

.method public n(J)Ll9/s$b;
    .locals 0

    .line 1
    iput-wide p1, p0, Ll9/s$b;->maxIndex:J

    return-object p0
.end method

.method public o([B)Ll9/s$b;
    .locals 0

    .line 1
    invoke-static {p1}, Ll9/a0;->c([B)[B

    move-result-object p1

    iput-object p1, p0, Ll9/s$b;->publicSeed:[B

    return-object p0
.end method

.method public p([B)Ll9/s$b;
    .locals 0

    .line 1
    invoke-static {p1}, Ll9/a0;->c([B)[B

    move-result-object p1

    iput-object p1, p0, Ll9/s$b;->root:[B

    return-object p0
.end method

.method public q([B)Ll9/s$b;
    .locals 0

    .line 1
    invoke-static {p1}, Ll9/a0;->c([B)[B

    move-result-object p1

    iput-object p1, p0, Ll9/s$b;->secretKeyPRF:[B

    return-object p0
.end method

.method public r([B)Ll9/s$b;
    .locals 0

    .line 1
    invoke-static {p1}, Ll9/a0;->c([B)[B

    move-result-object p1

    iput-object p1, p0, Ll9/s$b;->secretKeySeed:[B

    return-object p0
.end method
