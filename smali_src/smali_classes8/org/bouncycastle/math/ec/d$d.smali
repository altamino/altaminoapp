.class public Lorg/bouncycastle/math/ec/d$d;
.super Lorg/bouncycastle/math/ec/d$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/math/ec/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field q:Ljava/math/BigInteger;

.field r:Ljava/math/BigInteger;

.field x:Ljava/math/BigInteger;


# direct methods
.method constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/math/ec/d$b;-><init>()V

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p3, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/math/ec/d$d;->q:Ljava/math/BigInteger;

    iput-object p2, p0, Lorg/bouncycastle/math/ec/d$d;->r:Ljava/math/BigInteger;

    iput-object p3, p0, Lorg/bouncycastle/math/ec/d$d;->x:Ljava/math/BigInteger;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "x value invalid in Fp field element"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static n(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x60

    if-lt v0, v1, :cond_0

    add-int/lit8 v1, v0, -0x40

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    sget-object v1, Lorg/bouncycastle/math/ec/b;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a(Lorg/bouncycastle/math/ec/d;)Lorg/bouncycastle/math/ec/d;
    .locals 4

    .line 1
    new-instance v0, Lorg/bouncycastle/math/ec/d$d;

    iget-object v1, p0, Lorg/bouncycastle/math/ec/d$d;->q:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/bouncycastle/math/ec/d$d;->r:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/bouncycastle/math/ec/d$d;->x:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/d;->m()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Lorg/bouncycastle/math/ec/d$d;->o(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lorg/bouncycastle/math/ec/d$d;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public c(Lorg/bouncycastle/math/ec/d;)Lorg/bouncycastle/math/ec/d;
    .locals 4

    .line 1
    new-instance v0, Lorg/bouncycastle/math/ec/d$d;

    iget-object v1, p0, Lorg/bouncycastle/math/ec/d$d;->q:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/bouncycastle/math/ec/d$d;->r:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/bouncycastle/math/ec/d$d;->x:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/d;->m()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/math/ec/d$d;->p(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Lorg/bouncycastle/math/ec/d$d;->q(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lorg/bouncycastle/math/ec/d$d;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/math/ec/d$d;->q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/bouncycastle/math/ec/d$d;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/bouncycastle/math/ec/d$d;

    iget-object v1, p0, Lorg/bouncycastle/math/ec/d$d;->q:Ljava/math/BigInteger;

    iget-object v3, p1, Lorg/bouncycastle/math/ec/d$d;->q:Ljava/math/BigInteger;

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/math/ec/d$d;->x:Ljava/math/BigInteger;

    iget-object p1, p1, Lorg/bouncycastle/math/ec/d$d;->x:Ljava/math/BigInteger;

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public f()Lorg/bouncycastle/math/ec/d;
    .locals 4

    .line 1
    new-instance v0, Lorg/bouncycastle/math/ec/d$d;

    iget-object v1, p0, Lorg/bouncycastle/math/ec/d$d;->q:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/bouncycastle/math/ec/d$d;->r:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/bouncycastle/math/ec/d$d;->x:Ljava/math/BigInteger;

    invoke-virtual {p0, v3}, Lorg/bouncycastle/math/ec/d$d;->p(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/math/ec/d$d;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/math/ec/d$d;->q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/math/ec/d$d;->x:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public i(Lorg/bouncycastle/math/ec/d;)Lorg/bouncycastle/math/ec/d;
    .locals 4

    .line 1
    new-instance v0, Lorg/bouncycastle/math/ec/d$d;

    iget-object v1, p0, Lorg/bouncycastle/math/ec/d$d;->q:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/bouncycastle/math/ec/d$d;->r:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/bouncycastle/math/ec/d$d;->x:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/d;->m()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Lorg/bouncycastle/math/ec/d$d;->q(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lorg/bouncycastle/math/ec/d$d;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public j()Lorg/bouncycastle/math/ec/d;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/math/ec/d$d;->x:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/math/ec/d$d;

    iget-object v1, p0, Lorg/bouncycastle/math/ec/d$d;->q:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/bouncycastle/math/ec/d$d;->r:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/bouncycastle/math/ec/d$d;->x:Ljava/math/BigInteger;

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/math/ec/d$d;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    :goto_0
    return-object v0
.end method

.method public k()Lorg/bouncycastle/math/ec/d;
    .locals 4

    .line 1
    new-instance v0, Lorg/bouncycastle/math/ec/d$d;

    iget-object v1, p0, Lorg/bouncycastle/math/ec/d$d;->q:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/bouncycastle/math/ec/d$d;->r:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/bouncycastle/math/ec/d$d;->x:Ljava/math/BigInteger;

    invoke-virtual {p0, v3, v3}, Lorg/bouncycastle/math/ec/d$d;->q(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/math/ec/d$d;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public m()Ljava/math/BigInteger;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/math/ec/d$d;->x:Ljava/math/BigInteger;

    return-object v0
.end method

.method protected o(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iget-object p2, p0, Lorg/bouncycastle/math/ec/d$d;->q:Ljava/math/BigInteger;

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p2

    if-ltz p2, :cond_0

    iget-object p2, p0, Lorg/bouncycastle/math/ec/d$d;->q:Ljava/math/BigInteger;

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method protected p(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/math/ec/d$d;->q:Ljava/math/BigInteger;

    invoke-static {v0, p1}, Lorg/bouncycastle/util/b;->d(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method

.method protected q(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/math/ec/d$d;->r(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method

.method protected r(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/math/ec/d$d;->r:Ljava/math/BigInteger;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p1

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/math/ec/d$d;->q:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    iget-object v2, p0, Lorg/bouncycastle/math/ec/d$d;->r:Ljava/math/BigInteger;

    sget-object v3, Lorg/bouncycastle/math/ec/b;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    :goto_1
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    add-int/lit8 v4, v1, 0x1

    if-le v3, v4, :cond_3

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    if-nez v2, :cond_2

    iget-object v4, p0, Lorg/bouncycastle/math/ec/d$d;->r:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    :cond_2
    invoke-virtual {v3, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_1

    :cond_3
    :goto_2
    iget-object v1, p0, Lorg/bouncycastle/math/ec/d$d;->q:Ljava/math/BigInteger;

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-ltz v1, :cond_4

    iget-object v1, p0, Lorg/bouncycastle/math/ec/d$d;->q:Ljava/math/BigInteger;

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_2

    :cond_4
    if-eqz v0, :cond_6

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/bouncycastle/math/ec/d$d;->q:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lorg/bouncycastle/math/ec/d$d;->q:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    :cond_6
    :goto_3
    return-object p1
.end method
