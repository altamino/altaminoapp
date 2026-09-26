.class public Lorg/bouncycastle/asn1/x9/e;
.super Lorg/bouncycastle/asn1/s;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/x9/g;


# instance fields
.field private id:Lorg/bouncycastle/asn1/u;

.field private parameters:Lorg/bouncycastle/asn1/z;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lorg/bouncycastle/asn1/x9/e;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 5

    .line 2
    invoke-direct {p0}, Lorg/bouncycastle/asn1/s;-><init>()V

    sget-object v0, Lorg/bouncycastle/asn1/x9/g;->characteristic_two_field:Lorg/bouncycastle/asn1/u;

    iput-object v0, p0, Lorg/bouncycastle/asn1/x9/e;->id:Lorg/bouncycastle/asn1/u;

    new-instance v0, Lorg/bouncycastle/asn1/g;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/g;-><init>(I)V

    new-instance v2, Lorg/bouncycastle/asn1/p;

    int-to-long v3, p1

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/asn1/p;-><init>(J)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/g;->a(Lorg/bouncycastle/asn1/f;)V

    const-string p1, "inconsistent k values"

    if-nez p3, :cond_1

    if-nez p4, :cond_0

    sget-object p1, Lorg/bouncycastle/asn1/x9/g;->tpBasis:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/g;->a(Lorg/bouncycastle/asn1/f;)V

    new-instance p1, Lorg/bouncycastle/asn1/p;

    int-to-long p2, p2

    invoke-direct {p1, p2, p3}, Lorg/bouncycastle/asn1/p;-><init>(J)V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/g;->a(Lorg/bouncycastle/asn1/f;)V

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    if-le p3, p2, :cond_2

    if-le p4, p3, :cond_2

    sget-object p1, Lorg/bouncycastle/asn1/x9/g;->ppBasis:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/g;->a(Lorg/bouncycastle/asn1/f;)V

    new-instance p1, Lorg/bouncycastle/asn1/g;

    invoke-direct {p1, v1}, Lorg/bouncycastle/asn1/g;-><init>(I)V

    new-instance v1, Lorg/bouncycastle/asn1/p;

    int-to-long v2, p2

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/p;-><init>(J)V

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/g;->a(Lorg/bouncycastle/asn1/f;)V

    new-instance p2, Lorg/bouncycastle/asn1/p;

    int-to-long v1, p3

    invoke-direct {p2, v1, v2}, Lorg/bouncycastle/asn1/p;-><init>(J)V

    invoke-virtual {p1, p2}, Lorg/bouncycastle/asn1/g;->a(Lorg/bouncycastle/asn1/f;)V

    new-instance p2, Lorg/bouncycastle/asn1/p;

    int-to-long p3, p4

    invoke-direct {p2, p3, p4}, Lorg/bouncycastle/asn1/p;-><init>(J)V

    invoke-virtual {p1, p2}, Lorg/bouncycastle/asn1/g;->a(Lorg/bouncycastle/asn1/f;)V

    new-instance p2, Lorg/bouncycastle/asn1/v1;

    invoke-direct {p2, p1}, Lorg/bouncycastle/asn1/v1;-><init>(Lorg/bouncycastle/asn1/g;)V

    invoke-virtual {v0, p2}, Lorg/bouncycastle/asn1/g;->a(Lorg/bouncycastle/asn1/f;)V

    :goto_0
    new-instance p1, Lorg/bouncycastle/asn1/v1;

    invoke-direct {p1, v0}, Lorg/bouncycastle/asn1/v1;-><init>(Lorg/bouncycastle/asn1/g;)V

    iput-object p1, p0, Lorg/bouncycastle/asn1/x9/e;->parameters:Lorg/bouncycastle/asn1/z;

    return-void

    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lorg/bouncycastle/asn1/s;-><init>()V

    sget-object v0, Lorg/bouncycastle/asn1/x9/g;->prime_field:Lorg/bouncycastle/asn1/u;

    iput-object v0, p0, Lorg/bouncycastle/asn1/x9/e;->id:Lorg/bouncycastle/asn1/u;

    new-instance v0, Lorg/bouncycastle/asn1/p;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/p;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x9/e;->parameters:Lorg/bouncycastle/asn1/z;

    return-void
.end method


# virtual methods
.method public g()Lorg/bouncycastle/asn1/z;
    .locals 2

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/g;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/g;-><init>(I)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x9/e;->id:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/g;->a(Lorg/bouncycastle/asn1/f;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x9/e;->parameters:Lorg/bouncycastle/asn1/z;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/g;->a(Lorg/bouncycastle/asn1/f;)V

    new-instance v1, Lorg/bouncycastle/asn1/v1;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/v1;-><init>(Lorg/bouncycastle/asn1/g;)V

    return-object v1
.end method

.method public j()Lorg/bouncycastle/asn1/u;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/asn1/x9/e;->id:Lorg/bouncycastle/asn1/u;

    return-object v0
.end method

.method public m()Lorg/bouncycastle/asn1/z;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/asn1/x9/e;->parameters:Lorg/bouncycastle/asn1/z;

    return-object v0
.end method
