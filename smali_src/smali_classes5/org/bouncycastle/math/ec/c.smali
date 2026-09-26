.class public abstract Lorg/bouncycastle/math/ec/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/math/ec/c$a;,
        Lorg/bouncycastle/math/ec/c$b;,
        Lorg/bouncycastle/math/ec/c$c;,
        Lorg/bouncycastle/math/ec/c$d;
    }
.end annotation


# static fields
.field public static final COORD_AFFINE:I = 0x0

.field public static final COORD_HOMOGENEOUS:I = 0x1

.field public static final COORD_JACOBIAN:I = 0x2

.field public static final COORD_JACOBIAN_CHUDNOVSKY:I = 0x3

.field public static final COORD_JACOBIAN_MODIFIED:I = 0x4

.field public static final COORD_LAMBDA_AFFINE:I = 0x5

.field public static final COORD_LAMBDA_PROJECTIVE:I = 0x6

.field public static final COORD_SKEWED:I = 0x7


# instance fields
.field protected a:Lorg/bouncycastle/math/ec/d;

.field protected b:Lorg/bouncycastle/math/ec/d;

.field protected cofactor:Ljava/math/BigInteger;

.field protected coord:I

.field protected endomorphism:Lc9/a;

.field protected field:Lorg/bouncycastle/math/field/a;

.field protected multiplier:Lorg/bouncycastle/math/ec/e;

.field protected order:Ljava/math/BigInteger;


# direct methods
.method protected constructor <init>(Lorg/bouncycastle/math/field/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/math/ec/c;->coord:I

    iput-object p1, p0, Lorg/bouncycastle/math/ec/c;->field:Lorg/bouncycastle/math/field/a;

    return-void
.end method


# virtual methods
.method protected a([Lorg/bouncycastle/math/ec/f;II)V
    .locals 2

    .line 1
    if-eqz p1, :cond_4

    if-ltz p2, :cond_3

    if-ltz p3, :cond_3

    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    add-int v1, p2, v0

    aget-object v1, p1, v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/f;->f()Lorg/bouncycastle/math/ec/c;

    move-result-object v1

    if-ne p0, v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'points\' entries must be null or on this curve"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid range specified for \'points\'"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'points\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/bouncycastle/math/ec/c;->e(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/d;

    move-result-object p1

    invoke-virtual {p0, p2}, Lorg/bouncycastle/math/ec/c;->e(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/d;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/math/ec/c;->c(Lorg/bouncycastle/math/ec/d;Lorg/bouncycastle/math/ec/d;)Lorg/bouncycastle/math/ec/f;

    move-result-object p1

    return-object p1
.end method

.method protected abstract c(Lorg/bouncycastle/math/ec/d;Lorg/bouncycastle/math/ec/d;)Lorg/bouncycastle/math/ec/f;
.end method

.method public d(Lorg/bouncycastle/math/ec/c;)Z
    .locals 2

    .line 1
    if-eq p0, p1, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/c;->i()Lorg/bouncycastle/math/field/a;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/c;->i()Lorg/bouncycastle/math/field/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/c;->f()Lorg/bouncycastle/math/ec/d;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/d;->m()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/c;->f()Lorg/bouncycastle/math/ec/d;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/d;->m()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/c;->g()Lorg/bouncycastle/math/ec/d;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/d;->m()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/c;->g()Lorg/bouncycastle/math/ec/d;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/d;->m()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public abstract e(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/d;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lorg/bouncycastle/math/ec/c;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/bouncycastle/math/ec/c;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/math/ec/c;->d(Lorg/bouncycastle/math/ec/c;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public f()Lorg/bouncycastle/math/ec/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/math/ec/c;->a:Lorg/bouncycastle/math/ec/d;

    return-object v0
.end method

.method public g()Lorg/bouncycastle/math/ec/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/math/ec/c;->b:Lorg/bouncycastle/math/ec/d;

    return-object v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/bouncycastle/math/ec/c;->coord:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/c;->i()Lorg/bouncycastle/math/field/a;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/c;->f()Lorg/bouncycastle/math/ec/d;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/d;->m()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lorg/bouncycastle/util/d;->b(II)I

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/c;->g()Lorg/bouncycastle/math/ec/d;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/d;->m()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lorg/bouncycastle/util/d;->b(II)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public i()Lorg/bouncycastle/math/field/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/math/ec/c;->field:Lorg/bouncycastle/math/field/a;

    return-object v0
.end method

.method public abstract j()I
.end method

.method public abstract k()Lorg/bouncycastle/math/ec/f;
.end method

.method public l(Lorg/bouncycastle/math/ec/f;)Lorg/bouncycastle/math/ec/f;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/f;->f()Lorg/bouncycastle/math/ec/c;

    move-result-object v0

    if-ne p0, v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/f;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/c;->k()Lorg/bouncycastle/math/ec/f;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/f;->q()Lorg/bouncycastle/math/ec/f;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/f;->l()Lorg/bouncycastle/math/ec/d;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/d;->m()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/f;->m()Lorg/bouncycastle/math/ec/d;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/d;->m()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/bouncycastle/math/ec/c;->b(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/f;

    move-result-object p1

    return-object p1
.end method

.method public m([Lorg/bouncycastle/math/ec/f;)V
    .locals 3

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0, v1}, Lorg/bouncycastle/math/ec/c;->n([Lorg/bouncycastle/math/ec/f;IILorg/bouncycastle/math/ec/d;)V

    return-void
.end method

.method public n([Lorg/bouncycastle/math/ec/f;IILorg/bouncycastle/math/ec/d;)V
    .locals 8

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/math/ec/c;->a([Lorg/bouncycastle/math/ec/f;II)V

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/c;->h()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x5

    if-eq v0, v1, :cond_5

    new-array v0, p3, [Lorg/bouncycastle/math/ec/d;

    new-array v1, p3, [I

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, p3, :cond_2

    add-int v5, p2, v3

    aget-object v6, p1, v5

    if-eqz v6, :cond_1

    if-nez p4, :cond_0

    invoke-virtual {v6}, Lorg/bouncycastle/math/ec/f;->p()Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    invoke-virtual {v6, v2}, Lorg/bouncycastle/math/ec/f;->n(I)Lorg/bouncycastle/math/ec/d;

    move-result-object v6

    aput-object v6, v0, v4

    add-int/lit8 v6, v4, 0x1

    aput v5, v1, v4

    move v4, v6

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-nez v4, :cond_3

    return-void

    :cond_3
    invoke-static {v0, v2, v4, p4}, Lorg/bouncycastle/math/ec/a;->e([Lorg/bouncycastle/math/ec/d;IILorg/bouncycastle/math/ec/d;)V

    :goto_1
    if-ge v2, v4, :cond_4

    aget p2, v1, v2

    aget-object p3, p1, p2

    aget-object p4, v0, v2

    invoke-virtual {p3, p4}, Lorg/bouncycastle/math/ec/f;->r(Lorg/bouncycastle/math/ec/d;)Lorg/bouncycastle/math/ec/f;

    move-result-object p3

    aput-object p3, p1, p2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-void

    :cond_5
    if-nez p4, :cond_6

    return-void

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'iso\' not valid for affine coordinates"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract o(Ljava/security/SecureRandom;)Lorg/bouncycastle/math/ec/d;
.end method
