.class public Lorg/bouncycastle/crypto/params/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private g:Ljava/math/BigInteger;

.field private p:Ljava/math/BigInteger;

.field private q:Ljava/math/BigInteger;

.field private validation:Lorg/bouncycastle/crypto/params/e;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lorg/bouncycastle/crypto/params/d;->g:Ljava/math/BigInteger;

    iput-object p1, p0, Lorg/bouncycastle/crypto/params/d;->p:Ljava/math/BigInteger;

    iput-object p2, p0, Lorg/bouncycastle/crypto/params/d;->q:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/crypto/params/e;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lorg/bouncycastle/crypto/params/d;->g:Ljava/math/BigInteger;

    iput-object p1, p0, Lorg/bouncycastle/crypto/params/d;->p:Ljava/math/BigInteger;

    iput-object p2, p0, Lorg/bouncycastle/crypto/params/d;->q:Ljava/math/BigInteger;

    iput-object p4, p0, Lorg/bouncycastle/crypto/params/d;->validation:Lorg/bouncycastle/crypto/params/e;

    return-void
.end method


# virtual methods
.method public a()Ljava/math/BigInteger;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/d;->g:Ljava/math/BigInteger;

    return-object v0
.end method

.method public b()Ljava/math/BigInteger;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/d;->p:Ljava/math/BigInteger;

    return-object v0
.end method

.method public c()Ljava/math/BigInteger;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/d;->q:Ljava/math/BigInteger;

    return-object v0
.end method

.method public d()Lorg/bouncycastle/crypto/params/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/d;->validation:Lorg/bouncycastle/crypto/params/e;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/bouncycastle/crypto/params/d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/bouncycastle/crypto/params/d;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/d;->b()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/crypto/params/d;->p:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/d;->c()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/crypto/params/d;->q:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/d;->a()Ljava/math/BigInteger;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/d;->g:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/d;->b()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/d;->c()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/d;->a()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
