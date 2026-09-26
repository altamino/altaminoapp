.class public Lv8/b;
.super Lorg/bouncycastle/asn1/s;
.source "SourceFile"


# instance fields
.field private attributes:Lorg/bouncycastle/asn1/d0;

.field private privateKey:Lorg/bouncycastle/asn1/v;

.field private privateKeyAlgorithm:Lw8/a;

.field private publicKey:Lorg/bouncycastle/asn1/c;

.field private version:Lorg/bouncycastle/asn1/p;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/c0;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/asn1/s;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/c0;->A()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/p;->x(Ljava/lang/Object;)Lorg/bouncycastle/asn1/p;

    move-result-object v0

    iput-object v0, p0, Lv8/b;->version:Lorg/bouncycastle/asn1/p;

    invoke-static {v0}, Lv8/b;->r(Lorg/bouncycastle/asn1/p;)I

    move-result v0

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lw8/a;->m(Ljava/lang/Object;)Lw8/a;

    move-result-object v1

    iput-object v1, p0, Lv8/b;->privateKeyAlgorithm:Lw8/a;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/v;->x(Ljava/lang/Object;)Lorg/bouncycastle/asn1/v;

    move-result-object v1

    iput-object v1, p0, Lv8/b;->privateKey:Lorg/bouncycastle/asn1/v;

    const/4 v1, -0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/h0;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/h0;->F()I

    move-result v3

    if-le v3, v1, :cond_3

    const/4 v1, 0x0

    if-eqz v3, :cond_2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    if-lt v0, v4, :cond_0

    invoke-static {v2, v1}, Lorg/bouncycastle/asn1/h1;->H(Lorg/bouncycastle/asn1/h0;Z)Lorg/bouncycastle/asn1/h1;

    move-result-object v1

    iput-object v1, p0, Lv8/b;->publicKey:Lorg/bouncycastle/asn1/c;

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'publicKey\' requires version v2(1) or later"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown optional field in private key info"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {v2, v1}, Lorg/bouncycastle/asn1/d0;->x(Lorg/bouncycastle/asn1/h0;Z)Lorg/bouncycastle/asn1/d0;

    move-result-object v1

    iput-object v1, p0, Lv8/b;->attributes:Lorg/bouncycastle/asn1/d0;

    :goto_1
    move v1, v3

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid optional field in private key info"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return-void
.end method

.method public constructor <init>(Lw8/a;Lorg/bouncycastle/asn1/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lv8/b;-><init>(Lw8/a;Lorg/bouncycastle/asn1/f;Lorg/bouncycastle/asn1/d0;[B)V

    return-void
.end method

.method public constructor <init>(Lw8/a;Lorg/bouncycastle/asn1/f;Lorg/bouncycastle/asn1/d0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lv8/b;-><init>(Lw8/a;Lorg/bouncycastle/asn1/f;Lorg/bouncycastle/asn1/d0;[B)V

    return-void
.end method

.method public constructor <init>(Lw8/a;Lorg/bouncycastle/asn1/f;Lorg/bouncycastle/asn1/d0;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Lorg/bouncycastle/asn1/s;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/p;

    if-eqz p4, :cond_0

    sget-object v1, Lorg/bouncycastle/util/b;->ONE:Ljava/math/BigInteger;

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/bouncycastle/util/b;->ZERO:Ljava/math/BigInteger;

    :goto_0
    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/p;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lv8/b;->version:Lorg/bouncycastle/asn1/p;

    iput-object p1, p0, Lv8/b;->privateKeyAlgorithm:Lw8/a;

    new-instance p1, Lorg/bouncycastle/asn1/r1;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/r1;-><init>(Lorg/bouncycastle/asn1/f;)V

    iput-object p1, p0, Lv8/b;->privateKey:Lorg/bouncycastle/asn1/v;

    iput-object p3, p0, Lv8/b;->attributes:Lorg/bouncycastle/asn1/d0;

    if-nez p4, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    new-instance p1, Lorg/bouncycastle/asn1/h1;

    invoke-direct {p1, p4}, Lorg/bouncycastle/asn1/h1;-><init>([B)V

    :goto_1
    iput-object p1, p0, Lv8/b;->publicKey:Lorg/bouncycastle/asn1/c;

    return-void
.end method

.method public static m(Ljava/lang/Object;)Lv8/b;
    .locals 1

    .line 1
    instance-of v0, p0, Lv8/b;

    if-eqz v0, :cond_0

    check-cast p0, Lv8/b;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lv8/b;

    invoke-static {p0}, Lorg/bouncycastle/asn1/c0;->y(Ljava/lang/Object;)Lorg/bouncycastle/asn1/c0;

    move-result-object p0

    invoke-direct {v0, p0}, Lv8/b;-><init>(Lorg/bouncycastle/asn1/c0;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static r(Lorg/bouncycastle/asn1/p;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/p;->C()I

    move-result p0

    if-ltz p0, :cond_0

    const/4 v0, 0x1

    if-gt p0, v0, :cond_0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid version for private key info"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public g()Lorg/bouncycastle/asn1/z;
    .locals 5

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/g;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/g;-><init>(I)V

    iget-object v1, p0, Lv8/b;->version:Lorg/bouncycastle/asn1/p;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/g;->a(Lorg/bouncycastle/asn1/f;)V

    iget-object v1, p0, Lv8/b;->privateKeyAlgorithm:Lw8/a;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/g;->a(Lorg/bouncycastle/asn1/f;)V

    iget-object v1, p0, Lv8/b;->privateKey:Lorg/bouncycastle/asn1/v;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/g;->a(Lorg/bouncycastle/asn1/f;)V

    iget-object v1, p0, Lv8/b;->attributes:Lorg/bouncycastle/asn1/d0;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v3, Lorg/bouncycastle/asn1/y1;

    invoke-direct {v3, v2, v2, v1}, Lorg/bouncycastle/asn1/y1;-><init>(ZILorg/bouncycastle/asn1/f;)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/g;->a(Lorg/bouncycastle/asn1/f;)V

    :cond_0
    iget-object v1, p0, Lv8/b;->publicKey:Lorg/bouncycastle/asn1/c;

    if-eqz v1, :cond_1

    new-instance v3, Lorg/bouncycastle/asn1/y1;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4, v1}, Lorg/bouncycastle/asn1/y1;-><init>(ZILorg/bouncycastle/asn1/f;)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/g;->a(Lorg/bouncycastle/asn1/f;)V

    :cond_1
    new-instance v1, Lorg/bouncycastle/asn1/v1;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/v1;-><init>(Lorg/bouncycastle/asn1/g;)V

    return-object v1
.end method

.method public j()Lorg/bouncycastle/asn1/d0;
    .locals 1

    .line 1
    iget-object v0, p0, Lv8/b;->attributes:Lorg/bouncycastle/asn1/d0;

    return-object v0
.end method

.method public p()Lw8/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lv8/b;->privateKeyAlgorithm:Lw8/a;

    return-object v0
.end method

.method public q()Lorg/bouncycastle/asn1/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lv8/b;->publicKey:Lorg/bouncycastle/asn1/c;

    return-object v0
.end method

.method public s()Lorg/bouncycastle/asn1/f;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lv8/b;->privateKey:Lorg/bouncycastle/asn1/v;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/v;->z()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/z;->t([B)Lorg/bouncycastle/asn1/z;

    move-result-object v0

    return-object v0
.end method
