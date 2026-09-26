.class public Lb9/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private G:Lorg/bouncycastle/math/ec/f;

.field private curve:Lorg/bouncycastle/math/ec/c;

.field private h:Ljava/math/BigInteger;

.field private n:Ljava/math/BigInteger;

.field private seed:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/math/ec/c;Lorg/bouncycastle/math/ec/f;Ljava/math/BigInteger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb9/a;->curve:Lorg/bouncycastle/math/ec/c;

    invoke-virtual {p2}, Lorg/bouncycastle/math/ec/f;->q()Lorg/bouncycastle/math/ec/f;

    move-result-object p1

    iput-object p1, p0, Lb9/a;->G:Lorg/bouncycastle/math/ec/f;

    iput-object p3, p0, Lb9/a;->n:Ljava/math/BigInteger;

    const-wide/16 p1, 0x1

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lb9/a;->h:Ljava/math/BigInteger;

    const/4 p1, 0x0

    iput-object p1, p0, Lb9/a;->seed:[B

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/math/ec/c;Lorg/bouncycastle/math/ec/f;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb9/a;->curve:Lorg/bouncycastle/math/ec/c;

    invoke-virtual {p2}, Lorg/bouncycastle/math/ec/f;->q()Lorg/bouncycastle/math/ec/f;

    move-result-object p1

    iput-object p1, p0, Lb9/a;->G:Lorg/bouncycastle/math/ec/f;

    iput-object p3, p0, Lb9/a;->n:Ljava/math/BigInteger;

    iput-object p4, p0, Lb9/a;->h:Ljava/math/BigInteger;

    const/4 p1, 0x0

    iput-object p1, p0, Lb9/a;->seed:[B

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/math/ec/c;Lorg/bouncycastle/math/ec/f;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb9/a;->curve:Lorg/bouncycastle/math/ec/c;

    invoke-virtual {p2}, Lorg/bouncycastle/math/ec/f;->q()Lorg/bouncycastle/math/ec/f;

    move-result-object p1

    iput-object p1, p0, Lb9/a;->G:Lorg/bouncycastle/math/ec/f;

    iput-object p3, p0, Lb9/a;->n:Ljava/math/BigInteger;

    iput-object p4, p0, Lb9/a;->h:Ljava/math/BigInteger;

    iput-object p5, p0, Lb9/a;->seed:[B

    return-void
.end method


# virtual methods
.method public a()Lorg/bouncycastle/math/ec/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lb9/a;->curve:Lorg/bouncycastle/math/ec/c;

    return-object v0
.end method

.method public b()Lorg/bouncycastle/math/ec/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lb9/a;->G:Lorg/bouncycastle/math/ec/f;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lb9/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lb9/a;

    invoke-virtual {p0}, Lb9/a;->a()Lorg/bouncycastle/math/ec/c;

    move-result-object v0

    invoke-virtual {p1}, Lb9/a;->a()Lorg/bouncycastle/math/ec/c;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/bouncycastle/math/ec/c;->d(Lorg/bouncycastle/math/ec/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lb9/a;->b()Lorg/bouncycastle/math/ec/f;

    move-result-object v0

    invoke-virtual {p1}, Lb9/a;->b()Lorg/bouncycastle/math/ec/f;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/bouncycastle/math/ec/f;->c(Lorg/bouncycastle/math/ec/f;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lb9/a;->a()Lorg/bouncycastle/math/ec/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/c;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lb9/a;->b()Lorg/bouncycastle/math/ec/f;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/f;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
