.class public Ll9/y$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll9/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private bdsState:Ll9/a;

.field private index:I

.field private maxIndex:I

.field private final params:Ll9/x;

.field private privateKey:[B

.field private publicSeed:[B

.field private root:[B

.field private secretKeyPRF:[B

.field private secretKeySeed:[B


# direct methods
.method public constructor <init>(Ll9/x;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ll9/y$b;->index:I

    const/4 v0, -0x1

    iput v0, p0, Ll9/y$b;->maxIndex:I

    const/4 v0, 0x0

    iput-object v0, p0, Ll9/y$b;->secretKeySeed:[B

    iput-object v0, p0, Ll9/y$b;->secretKeyPRF:[B

    iput-object v0, p0, Ll9/y$b;->publicSeed:[B

    iput-object v0, p0, Ll9/y$b;->root:[B

    iput-object v0, p0, Ll9/y$b;->bdsState:Ll9/a;

    iput-object v0, p0, Ll9/y$b;->privateKey:[B

    iput-object p1, p0, Ll9/y$b;->params:Ll9/x;

    return-void
.end method

.method static synthetic a(Ll9/y$b;)Ll9/x;
    .locals 0

    .line 1
    iget-object p0, p0, Ll9/y$b;->params:Ll9/x;

    return-object p0
.end method

.method static synthetic b(Ll9/y$b;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Ll9/y$b;->privateKey:[B

    return-object p0
.end method

.method static synthetic c(Ll9/y$b;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Ll9/y$b;->secretKeySeed:[B

    return-object p0
.end method

.method static synthetic d(Ll9/y$b;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Ll9/y$b;->secretKeyPRF:[B

    return-object p0
.end method

.method static synthetic e(Ll9/y$b;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Ll9/y$b;->publicSeed:[B

    return-object p0
.end method

.method static synthetic f(Ll9/y$b;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Ll9/y$b;->root:[B

    return-object p0
.end method

.method static synthetic g(Ll9/y$b;)Ll9/a;
    .locals 0

    .line 1
    iget-object p0, p0, Ll9/y$b;->bdsState:Ll9/a;

    return-object p0
.end method

.method static synthetic h(Ll9/y$b;)I
    .locals 0

    .line 1
    iget p0, p0, Ll9/y$b;->index:I

    return p0
.end method

.method static synthetic i(Ll9/y$b;)I
    .locals 0

    .line 1
    iget p0, p0, Ll9/y$b;->maxIndex:I

    return p0
.end method


# virtual methods
.method public j()Ll9/y;
    .locals 2

    .line 1
    new-instance v0, Ll9/y;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ll9/y;-><init>(Ll9/y$b;Ll9/y$a;)V

    return-object v0
.end method

.method public k(Ll9/a;)Ll9/y$b;
    .locals 0

    .line 1
    iput-object p1, p0, Ll9/y$b;->bdsState:Ll9/a;

    return-object p0
.end method

.method public l(I)Ll9/y$b;
    .locals 0

    .line 1
    iput p1, p0, Ll9/y$b;->index:I

    return-object p0
.end method

.method public m(I)Ll9/y$b;
    .locals 0

    .line 1
    iput p1, p0, Ll9/y$b;->maxIndex:I

    return-object p0
.end method

.method public n([B)Ll9/y$b;
    .locals 0

    .line 1
    invoke-static {p1}, Ll9/a0;->c([B)[B

    move-result-object p1

    iput-object p1, p0, Ll9/y$b;->publicSeed:[B

    return-object p0
.end method

.method public o([B)Ll9/y$b;
    .locals 0

    .line 1
    invoke-static {p1}, Ll9/a0;->c([B)[B

    move-result-object p1

    iput-object p1, p0, Ll9/y$b;->root:[B

    return-object p0
.end method

.method public p([B)Ll9/y$b;
    .locals 0

    .line 1
    invoke-static {p1}, Ll9/a0;->c([B)[B

    move-result-object p1

    iput-object p1, p0, Ll9/y$b;->secretKeyPRF:[B

    return-object p0
.end method

.method public q([B)Ll9/y$b;
    .locals 0

    .line 1
    invoke-static {p1}, Ll9/a0;->c([B)[B

    move-result-object p1

    iput-object p1, p0, Ll9/y$b;->secretKeySeed:[B

    return-object p0
.end method
