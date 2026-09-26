.class public Le9/m;
.super Lorg/bouncycastle/asn1/s;
.source "SourceFile"


# instance fields
.field private final bdsState:[B

.field private final index:I

.field private final maxIndex:I

.field private final publicSeed:[B

.field private final root:[B

.field private final secretKeyPRF:[B

.field private final secretKeySeed:[B

.field private final version:I


# direct methods
.method public constructor <init>(I[B[B[B[B[B)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/asn1/s;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Le9/m;->version:I

    iput p1, p0, Le9/m;->index:I

    invoke-static {p2}, Lorg/bouncycastle/util/a;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Le9/m;->secretKeySeed:[B

    invoke-static {p3}, Lorg/bouncycastle/util/a;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Le9/m;->secretKeyPRF:[B

    invoke-static {p4}, Lorg/bouncycastle/util/a;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Le9/m;->publicSeed:[B

    invoke-static {p5}, Lorg/bouncycastle/util/a;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Le9/m;->root:[B

    invoke-static {p6}, Lorg/bouncycastle/util/a;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Le9/m;->bdsState:[B

    const/4 p1, -0x1

    iput p1, p0, Le9/m;->maxIndex:I

    return-void
.end method

.method public constructor <init>(I[B[B[B[B[BI)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/bouncycastle/asn1/s;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Le9/m;->version:I

    iput p1, p0, Le9/m;->index:I

    invoke-static {p2}, Lorg/bouncycastle/util/a;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Le9/m;->secretKeySeed:[B

    invoke-static {p3}, Lorg/bouncycastle/util/a;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Le9/m;->secretKeyPRF:[B

    invoke-static {p4}, Lorg/bouncycastle/util/a;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Le9/m;->publicSeed:[B

    invoke-static {p5}, Lorg/bouncycastle/util/a;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Le9/m;->root:[B

    invoke-static {p6}, Lorg/bouncycastle/util/a;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Le9/m;->bdsState:[B

    iput p7, p0, Le9/m;->maxIndex:I

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/c0;)V
    .locals 8

    .line 3
    invoke-direct {p0}, Lorg/bouncycastle/asn1/s;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/c0;->z(I)Lorg/bouncycastle/asn1/f;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/p;->x(Ljava/lang/Object;)Lorg/bouncycastle/asn1/p;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/p;->A(I)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/p;->A(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown version of sequence"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/p;->C()I

    move-result v1

    iput v1, p0, Le9/m;->version:I

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/c0;->size()I

    move-result v1

    const/4 v2, 0x3

    const/4 v4, 0x2

    if-eq v1, v4, :cond_3

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/c0;->size()I

    move-result v1

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "key sequence wrong size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/c0;->z(I)Lorg/bouncycastle/asn1/f;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/c0;->y(Ljava/lang/Object;)Lorg/bouncycastle/asn1/c0;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/c0;->z(I)Lorg/bouncycastle/asn1/f;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/asn1/p;->x(Ljava/lang/Object;)Lorg/bouncycastle/asn1/p;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/p;->C()I

    move-result v5

    iput v5, p0, Le9/m;->index:I

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/c0;->z(I)Lorg/bouncycastle/asn1/f;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/asn1/v;->x(Ljava/lang/Object;)Lorg/bouncycastle/asn1/v;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/v;->z()[B

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/util/a;->e([B)[B

    move-result-object v5

    iput-object v5, p0, Le9/m;->secretKeySeed:[B

    invoke-virtual {v1, v4}, Lorg/bouncycastle/asn1/c0;->z(I)Lorg/bouncycastle/asn1/f;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/asn1/v;->x(Ljava/lang/Object;)Lorg/bouncycastle/asn1/v;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/v;->z()[B

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/util/a;->e([B)[B

    move-result-object v5

    iput-object v5, p0, Le9/m;->secretKeyPRF:[B

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/c0;->z(I)Lorg/bouncycastle/asn1/f;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/asn1/v;->x(Ljava/lang/Object;)Lorg/bouncycastle/asn1/v;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/v;->z()[B

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/util/a;->e([B)[B

    move-result-object v5

    iput-object v5, p0, Le9/m;->publicSeed:[B

    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Lorg/bouncycastle/asn1/c0;->z(I)Lorg/bouncycastle/asn1/f;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/asn1/v;->x(Ljava/lang/Object;)Lorg/bouncycastle/asn1/v;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/v;->z()[B

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/util/a;->e([B)[B

    move-result-object v5

    iput-object v5, p0, Le9/m;->root:[B

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/c0;->size()I

    move-result v5

    const/4 v6, 0x6

    const/4 v7, 0x5

    if-ne v5, v6, :cond_5

    invoke-virtual {v1, v7}, Lorg/bouncycastle/asn1/c0;->z(I)Lorg/bouncycastle/asn1/f;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/h0;->C(Ljava/lang/Object;)Lorg/bouncycastle/asn1/h0;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/h0;->F()I

    move-result v5

    if-nez v5, :cond_4

    invoke-static {v1, v0}, Lorg/bouncycastle/asn1/p;->y(Lorg/bouncycastle/asn1/h0;Z)Lorg/bouncycastle/asn1/p;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/p;->C()I

    move-result v0

    :goto_2
    iput v0, p0, Le9/m;->maxIndex:I

    goto :goto_3

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown tag in XMSSPrivateKey"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/c0;->size()I

    move-result v0

    if-ne v0, v7, :cond_7

    const/4 v0, -0x1

    goto :goto_2

    :goto_3
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/c0;->size()I

    move-result v0

    if-ne v0, v2, :cond_6

    invoke-virtual {p1, v4}, Lorg/bouncycastle/asn1/c0;->z(I)Lorg/bouncycastle/asn1/f;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/h0;->C(Ljava/lang/Object;)Lorg/bouncycastle/asn1/h0;

    move-result-object p1

    invoke-static {p1, v3}, Lorg/bouncycastle/asn1/v;->y(Lorg/bouncycastle/asn1/h0;Z)Lorg/bouncycastle/asn1/v;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/v;->z()[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/util/a;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Le9/m;->bdsState:[B

    goto :goto_4

    :cond_6
    const/4 p1, 0x0

    iput-object p1, p0, Le9/m;->bdsState:[B

    :goto_4
    return-void

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "keySeq should be 5 or 6 in length"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static p(Ljava/lang/Object;)Le9/m;
    .locals 1

    .line 1
    instance-of v0, p0, Le9/m;

    if-eqz v0, :cond_0

    check-cast p0, Le9/m;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Le9/m;

    invoke-static {p0}, Lorg/bouncycastle/asn1/c0;->y(Ljava/lang/Object;)Lorg/bouncycastle/asn1/c0;

    move-result-object p0

    invoke-direct {v0, p0}, Le9/m;-><init>(Lorg/bouncycastle/asn1/c0;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public g()Lorg/bouncycastle/asn1/z;
    .locals 7

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/g;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/g;-><init>()V

    iget v1, p0, Le9/m;->maxIndex:I

    if-ltz v1, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/p;

    const-wide/16 v2, 0x1

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/p;-><init>(J)V

    :goto_0
    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/g;->a(Lorg/bouncycastle/asn1/f;)V

    goto :goto_1

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/p;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/p;-><init>(J)V

    goto :goto_0

    :goto_1
    new-instance v1, Lorg/bouncycastle/asn1/g;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/g;-><init>()V

    new-instance v2, Lorg/bouncycastle/asn1/p;

    iget v3, p0, Le9/m;->index:I

    int-to-long v3, v3

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/asn1/p;-><init>(J)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/g;->a(Lorg/bouncycastle/asn1/f;)V

    new-instance v2, Lorg/bouncycastle/asn1/r1;

    iget-object v3, p0, Le9/m;->secretKeySeed:[B

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/r1;-><init>([B)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/g;->a(Lorg/bouncycastle/asn1/f;)V

    new-instance v2, Lorg/bouncycastle/asn1/r1;

    iget-object v3, p0, Le9/m;->secretKeyPRF:[B

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/r1;-><init>([B)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/g;->a(Lorg/bouncycastle/asn1/f;)V

    new-instance v2, Lorg/bouncycastle/asn1/r1;

    iget-object v3, p0, Le9/m;->publicSeed:[B

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/r1;-><init>([B)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/g;->a(Lorg/bouncycastle/asn1/f;)V

    new-instance v2, Lorg/bouncycastle/asn1/r1;

    iget-object v3, p0, Le9/m;->root:[B

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/r1;-><init>([B)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/g;->a(Lorg/bouncycastle/asn1/f;)V

    iget v2, p0, Le9/m;->maxIndex:I

    const/4 v3, 0x0

    if-ltz v2, :cond_1

    new-instance v2, Lorg/bouncycastle/asn1/y1;

    new-instance v4, Lorg/bouncycastle/asn1/p;

    iget v5, p0, Le9/m;->maxIndex:I

    int-to-long v5, v5

    invoke-direct {v4, v5, v6}, Lorg/bouncycastle/asn1/p;-><init>(J)V

    invoke-direct {v2, v3, v3, v4}, Lorg/bouncycastle/asn1/y1;-><init>(ZILorg/bouncycastle/asn1/f;)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/g;->a(Lorg/bouncycastle/asn1/f;)V

    :cond_1
    new-instance v2, Lorg/bouncycastle/asn1/v1;

    invoke-direct {v2, v1}, Lorg/bouncycastle/asn1/v1;-><init>(Lorg/bouncycastle/asn1/g;)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/g;->a(Lorg/bouncycastle/asn1/f;)V

    new-instance v1, Lorg/bouncycastle/asn1/y1;

    new-instance v2, Lorg/bouncycastle/asn1/r1;

    iget-object v4, p0, Le9/m;->bdsState:[B

    invoke-direct {v2, v4}, Lorg/bouncycastle/asn1/r1;-><init>([B)V

    const/4 v4, 0x1

    invoke-direct {v1, v4, v3, v2}, Lorg/bouncycastle/asn1/y1;-><init>(ZILorg/bouncycastle/asn1/f;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/g;->a(Lorg/bouncycastle/asn1/f;)V

    new-instance v1, Lorg/bouncycastle/asn1/v1;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/v1;-><init>(Lorg/bouncycastle/asn1/g;)V

    return-object v1
.end method

.method public j()[B
    .locals 1

    .line 1
    iget-object v0, p0, Le9/m;->bdsState:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->e([B)[B

    move-result-object v0

    return-object v0
.end method

.method public m()I
    .locals 1

    .line 1
    iget v0, p0, Le9/m;->index:I

    return v0
.end method

.method public q()I
    .locals 1

    .line 1
    iget v0, p0, Le9/m;->maxIndex:I

    return v0
.end method

.method public r()[B
    .locals 1

    .line 1
    iget-object v0, p0, Le9/m;->publicSeed:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->e([B)[B

    move-result-object v0

    return-object v0
.end method

.method public s()[B
    .locals 1

    .line 1
    iget-object v0, p0, Le9/m;->root:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->e([B)[B

    move-result-object v0

    return-object v0
.end method

.method public t()[B
    .locals 1

    .line 1
    iget-object v0, p0, Le9/m;->secretKeyPRF:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->e([B)[B

    move-result-object v0

    return-object v0
.end method

.method public u()[B
    .locals 1

    .line 1
    iget-object v0, p0, Le9/m;->secretKeySeed:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->e([B)[B

    move-result-object v0

    return-object v0
.end method

.method public v()I
    .locals 1

    .line 1
    iget v0, p0, Le9/m;->version:I

    return v0
.end method
