.class public abstract Lorg/bouncycastle/math/ec/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/math/ec/f$a;,
        Lorg/bouncycastle/math/ec/f$b;,
        Lorg/bouncycastle/math/ec/f$c;,
        Lorg/bouncycastle/math/ec/f$d;
    }
.end annotation


# static fields
.field protected static final EMPTY_ZS:[Lorg/bouncycastle/math/ec/d;


# instance fields
.field protected curve:Lorg/bouncycastle/math/ec/c;

.field protected preCompTable:Ljava/util/Hashtable;

.field protected x:Lorg/bouncycastle/math/ec/d;

.field protected y:Lorg/bouncycastle/math/ec/d;

.field protected zs:[Lorg/bouncycastle/math/ec/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/bouncycastle/math/ec/d;

    sput-object v0, Lorg/bouncycastle/math/ec/f;->EMPTY_ZS:[Lorg/bouncycastle/math/ec/d;

    return-void
.end method

.method protected constructor <init>(Lorg/bouncycastle/math/ec/c;Lorg/bouncycastle/math/ec/d;Lorg/bouncycastle/math/ec/d;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lorg/bouncycastle/math/ec/f;->i(Lorg/bouncycastle/math/ec/c;)[Lorg/bouncycastle/math/ec/d;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bouncycastle/math/ec/f;-><init>(Lorg/bouncycastle/math/ec/c;Lorg/bouncycastle/math/ec/d;Lorg/bouncycastle/math/ec/d;[Lorg/bouncycastle/math/ec/d;)V

    return-void
.end method

.method protected constructor <init>(Lorg/bouncycastle/math/ec/c;Lorg/bouncycastle/math/ec/d;Lorg/bouncycastle/math/ec/d;[Lorg/bouncycastle/math/ec/d;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/math/ec/f;->preCompTable:Ljava/util/Hashtable;

    iput-object p1, p0, Lorg/bouncycastle/math/ec/f;->curve:Lorg/bouncycastle/math/ec/c;

    iput-object p2, p0, Lorg/bouncycastle/math/ec/f;->x:Lorg/bouncycastle/math/ec/d;

    iput-object p3, p0, Lorg/bouncycastle/math/ec/f;->y:Lorg/bouncycastle/math/ec/d;

    iput-object p4, p0, Lorg/bouncycastle/math/ec/f;->zs:[Lorg/bouncycastle/math/ec/d;

    return-void
.end method

.method protected static i(Lorg/bouncycastle/math/ec/c;)[Lorg/bouncycastle/math/ec/d;
    .locals 6

    .line 1
    const/4 v0, 0x0

    if-nez p0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/c;->h()I

    move-result v1

    :goto_0
    if-eqz v1, :cond_5

    const/4 v2, 0x5

    if-eq v1, v2, :cond_5

    sget-object v2, Lorg/bouncycastle/math/ec/b;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v2}, Lorg/bouncycastle/math/ec/c;->e(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/d;

    move-result-object v2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    const/4 v4, 0x2

    if-eq v1, v4, :cond_4

    const/4 v5, 0x3

    if-eq v1, v5, :cond_3

    const/4 v5, 0x4

    if-eq v1, v5, :cond_2

    const/4 p0, 0x6

    if-ne v1, p0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown coordinate system"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-array v1, v4, [Lorg/bouncycastle/math/ec/d;

    aput-object v2, v1, v0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/c;->f()Lorg/bouncycastle/math/ec/d;

    move-result-object p0

    aput-object p0, v1, v3

    return-object v1

    :cond_3
    new-array p0, v5, [Lorg/bouncycastle/math/ec/d;

    aput-object v2, p0, v0

    aput-object v2, p0, v3

    aput-object v2, p0, v4

    return-object p0

    :cond_4
    :goto_1
    new-array p0, v3, [Lorg/bouncycastle/math/ec/d;

    aput-object v2, p0, v0

    return-object p0

    :cond_5
    sget-object p0, Lorg/bouncycastle/math/ec/f;->EMPTY_ZS:[Lorg/bouncycastle/math/ec/d;

    return-object p0
.end method


# virtual methods
.method protected a()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/f;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "point not in normal form"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected b(Lorg/bouncycastle/math/ec/d;Lorg/bouncycastle/math/ec/d;)Lorg/bouncycastle/math/ec/f;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/f;->f()Lorg/bouncycastle/math/ec/c;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/f;->j()Lorg/bouncycastle/math/ec/d;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/bouncycastle/math/ec/d;->i(Lorg/bouncycastle/math/ec/d;)Lorg/bouncycastle/math/ec/d;

    move-result-object p1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/f;->k()Lorg/bouncycastle/math/ec/d;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/bouncycastle/math/ec/d;->i(Lorg/bouncycastle/math/ec/d;)Lorg/bouncycastle/math/ec/d;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/math/ec/c;->c(Lorg/bouncycastle/math/ec/d;Lorg/bouncycastle/math/ec/d;)Lorg/bouncycastle/math/ec/f;

    move-result-object p1

    return-object p1
.end method

.method public c(Lorg/bouncycastle/math/ec/f;)Z
    .locals 8

    .line 1
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/f;->f()Lorg/bouncycastle/math/ec/c;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/f;->f()Lorg/bouncycastle/math/ec/c;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v1, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v0

    :goto_0
    if-nez v2, :cond_2

    move v5, v3

    goto :goto_1

    :cond_2
    move v5, v0

    :goto_1
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/f;->o()Z

    move-result v6

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/f;->o()Z

    move-result v7

    if-nez v6, :cond_9

    if-eqz v7, :cond_3

    goto :goto_4

    :cond_3
    if-eqz v4, :cond_4

    if-eqz v5, :cond_4

    :goto_2
    move-object v1, p0

    goto :goto_3

    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/f;->q()Lorg/bouncycastle/math/ec/f;

    move-result-object p1

    goto :goto_2

    :cond_5
    if-eqz v5, :cond_6

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/f;->q()Lorg/bouncycastle/math/ec/f;

    move-result-object v1

    goto :goto_3

    :cond_6
    invoke-virtual {v1, v2}, Lorg/bouncycastle/math/ec/c;->d(Lorg/bouncycastle/math/ec/c;)Z

    move-result v2

    if-nez v2, :cond_7

    return v0

    :cond_7
    const/4 v2, 0x2

    new-array v2, v2, [Lorg/bouncycastle/math/ec/f;

    aput-object p0, v2, v0

    invoke-virtual {v1, p1}, Lorg/bouncycastle/math/ec/c;->l(Lorg/bouncycastle/math/ec/f;)Lorg/bouncycastle/math/ec/f;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lorg/bouncycastle/math/ec/c;->m([Lorg/bouncycastle/math/ec/f;)V

    aget-object v1, v2, v0

    aget-object p1, v2, v3

    :goto_3
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/f;->l()Lorg/bouncycastle/math/ec/d;

    move-result-object v2

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/f;->l()Lorg/bouncycastle/math/ec/d;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/f;->m()Lorg/bouncycastle/math/ec/d;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/f;->m()Lorg/bouncycastle/math/ec/d;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    move v0, v3

    :cond_8
    return v0

    :cond_9
    :goto_4
    if-eqz v6, :cond_b

    if-eqz v7, :cond_b

    if-nez v4, :cond_a

    if-nez v5, :cond_a

    invoke-virtual {v1, v2}, Lorg/bouncycastle/math/ec/c;->d(Lorg/bouncycastle/math/ec/c;)Z

    move-result p1

    if-eqz p1, :cond_b

    :cond_a
    move v0, v3

    :cond_b
    return v0
.end method

.method public d()Lorg/bouncycastle/math/ec/d;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/f;->a()V

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/f;->m()Lorg/bouncycastle/math/ec/d;

    move-result-object v0

    return-object v0
.end method

.method protected abstract e()Z
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/math/ec/f;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lorg/bouncycastle/math/ec/f;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/math/ec/f;->c(Lorg/bouncycastle/math/ec/f;)Z

    move-result p1

    return p1
.end method

.method public f()Lorg/bouncycastle/math/ec/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/math/ec/f;->curve:Lorg/bouncycastle/math/ec/c;

    return-object v0
.end method

.method protected g()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/math/ec/f;->curve:Lorg/bouncycastle/math/ec/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/c;->h()I

    move-result v0

    :goto_0
    return v0
.end method

.method public h(Z)[B
    .locals 5

    .line 1
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/f;->o()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    new-array p1, v1, [B

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/f;->q()Lorg/bouncycastle/math/ec/f;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/f;->l()Lorg/bouncycastle/math/ec/d;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/d;->d()[B

    move-result-object v2

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    array-length p1, v2

    add-int/2addr p1, v1

    new-array p1, p1, [B

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/f;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    int-to-byte v0, v0

    aput-byte v0, p1, v3

    array-length v0, v2

    invoke-static {v2, v3, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_2
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/f;->m()Lorg/bouncycastle/math/ec/d;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/d;->d()[B

    move-result-object p1

    array-length v0, v2

    array-length v4, p1

    add-int/2addr v0, v4

    add-int/2addr v0, v1

    new-array v0, v0, [B

    const/4 v4, 0x4

    aput-byte v4, v0, v3

    array-length v4, v2

    invoke-static {v2, v3, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    add-int/2addr v2, v1

    array-length v1, p1

    invoke-static {p1, v3, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/f;->f()Lorg/bouncycastle/math/ec/c;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/c;->hashCode()I

    move-result v0

    not-int v0, v0

    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/f;->o()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/f;->q()Lorg/bouncycastle/math/ec/f;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/f;->l()Lorg/bouncycastle/math/ec/d;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    mul-int/lit8 v2, v2, 0x11

    xor-int/2addr v0, v2

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/f;->m()Lorg/bouncycastle/math/ec/d;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit16 v1, v1, 0x101

    xor-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public final j()Lorg/bouncycastle/math/ec/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/math/ec/f;->x:Lorg/bouncycastle/math/ec/d;

    return-object v0
.end method

.method public final k()Lorg/bouncycastle/math/ec/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/math/ec/f;->y:Lorg/bouncycastle/math/ec/d;

    return-object v0
.end method

.method public l()Lorg/bouncycastle/math/ec/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/math/ec/f;->x:Lorg/bouncycastle/math/ec/d;

    return-object v0
.end method

.method public m()Lorg/bouncycastle/math/ec/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/math/ec/f;->y:Lorg/bouncycastle/math/ec/d;

    return-object v0
.end method

.method public n(I)Lorg/bouncycastle/math/ec/d;
    .locals 2

    .line 1
    if-ltz p1, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/f;->zs:[Lorg/bouncycastle/math/ec/d;

    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    aget-object p1, v0, p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public o()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/math/ec/f;->x:Lorg/bouncycastle/math/ec/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/math/ec/f;->y:Lorg/bouncycastle/math/ec/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/math/ec/f;->zs:[Lorg/bouncycastle/math/ec/d;

    array-length v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_1

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/d;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public p()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/f;->g()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/f;->o()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/math/ec/f;->zs:[Lorg/bouncycastle/math/ec/d;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/d;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public q()Lorg/bouncycastle/math/ec/f;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/f;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/f;->g()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/f;->n(I)Lorg/bouncycastle/math/ec/d;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/d;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p0

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/math/ec/f;->curve:Lorg/bouncycastle/math/ec/c;

    if-eqz v1, :cond_2

    invoke-static {}, Lx8/b;->b()Ljava/security/SecureRandom;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/math/ec/f;->curve:Lorg/bouncycastle/math/ec/c;

    invoke-virtual {v2, v1}, Lorg/bouncycastle/math/ec/c;->o(Ljava/security/SecureRandom;)Lorg/bouncycastle/math/ec/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/math/ec/d;->i(Lorg/bouncycastle/math/ec/d;)Lorg/bouncycastle/math/ec/d;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/d;->f()Lorg/bouncycastle/math/ec/d;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/math/ec/d;->i(Lorg/bouncycastle/math/ec/d;)Lorg/bouncycastle/math/ec/d;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/f;->r(Lorg/bouncycastle/math/ec/d;)Lorg/bouncycastle/math/ec/f;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Detached points must be in affine coordinates"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-object p0
.end method

.method r(Lorg/bouncycastle/math/ec/d;)Lorg/bouncycastle/math/ec/f;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/f;->g()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "not a projective coordinate system"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/d;->k()Lorg/bouncycastle/math/ec/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bouncycastle/math/ec/d;->i(Lorg/bouncycastle/math/ec/d;)Lorg/bouncycastle/math/ec/d;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/bouncycastle/math/ec/f;->b(Lorg/bouncycastle/math/ec/d;Lorg/bouncycastle/math/ec/d;)Lorg/bouncycastle/math/ec/f;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p1}, Lorg/bouncycastle/math/ec/f;->b(Lorg/bouncycastle/math/ec/d;Lorg/bouncycastle/math/ec/d;)Lorg/bouncycastle/math/ec/f;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/f;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "INF"

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/f;->j()Lorg/bouncycastle/math/ec/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/f;->k()Lorg/bouncycastle/math/ec/d;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/math/ec/f;->zs:[Lorg/bouncycastle/math/ec/d;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/bouncycastle/math/ec/f;->zs:[Lorg/bouncycastle/math/ec/d;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
