.class public Lorg/bouncycastle/pqc/math/linearalgebra/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final RANDOM_IRREDUCIBLE_POLYNOMIAL:C = 'I'


# instance fields
.field private coefficients:[I

.field private degree:I

.field private field:Lorg/bouncycastle/pqc/math/linearalgebra/b;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/math/linearalgebra/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/j;->field:Lorg/bouncycastle/pqc/math/linearalgebra/b;

    const/4 p1, -0x1

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/j;->degree:I

    const/4 p1, 0x1

    new-array p1, p1, [I

    iput-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/j;->coefficients:[I

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/math/linearalgebra/b;I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/j;->field:Lorg/bouncycastle/pqc/math/linearalgebra/b;

    iput p2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/j;->degree:I

    add-int/lit8 p1, p2, 0x1

    new-array p1, p1, [I

    iput-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/j;->coefficients:[I

    const/4 v0, 0x1

    aput v0, p1, p2

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/math/linearalgebra/b;ICLjava/security/SecureRandom;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/j;->field:Lorg/bouncycastle/pqc/math/linearalgebra/b;

    const/16 p1, 0x49

    if-ne p3, p1, :cond_0

    invoke-direct {p0, p2, p4}, Lorg/bouncycastle/pqc/math/linearalgebra/j;->e(ILjava/security/SecureRandom;)[I

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/j;->coefficients:[I

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/j;->d()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, " Error: type "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p3, " is not defined for GF2smallmPolynomial"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/math/linearalgebra/b;[B)V
    .locals 9

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/j;->field:Lorg/bouncycastle/pqc/math/linearalgebra/b;

    const/16 v0, 0x8

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/b;->d()I

    move-result v3

    if-le v3, v0, :cond_0

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    :cond_0
    array-length p1, p2

    rem-int/2addr p1, v2

    const-string v3, " Error: byte array is not encoded polynomial over given finite field GF2m"

    if-nez p1, :cond_6

    array-length p1, p2

    div-int/2addr p1, v2

    new-array p1, p1, [I

    iput-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/j;->coefficients:[I

    const/4 p1, 0x0

    move v2, p1

    move v4, v2

    :goto_1
    iget-object v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/j;->coefficients:[I

    array-length v6, v5

    if-ge v2, v6, :cond_3

    move v5, p1

    :goto_2
    if-ge v5, v0, :cond_1

    iget-object v6, p0, Lorg/bouncycastle/pqc/math/linearalgebra/j;->coefficients:[I

    aget v7, v6, v2

    add-int/lit8 v8, v4, 0x1

    aget-byte v4, p2, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v5

    xor-int/2addr v4, v7

    aput v4, v6, v2

    add-int/lit8 v5, v5, 0x8

    move v4, v8

    goto :goto_2

    :cond_1
    iget-object v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/j;->field:Lorg/bouncycastle/pqc/math/linearalgebra/b;

    iget-object v6, p0, Lorg/bouncycastle/pqc/math/linearalgebra/j;->coefficients:[I

    aget v6, v6, v2

    invoke-virtual {v5, v6}, Lorg/bouncycastle/pqc/math/linearalgebra/b;->i(I)Z

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    array-length p1, v5

    if-eq p1, v1, :cond_5

    array-length p1, v5

    sub-int/2addr p1, v1

    aget p1, v5, p1

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_3
    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/j;->d()V

    return-void

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/math/linearalgebra/b;[I)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/j;->field:Lorg/bouncycastle/pqc/math/linearalgebra/b;

    invoke-static {p2}, Lorg/bouncycastle/pqc/math/linearalgebra/j;->v([I)[I

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/j;->coefficients:[I

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/j;->d()V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/math/linearalgebra/c;)V
    .locals 1

    .line 6
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/c;->a()Lorg/bouncycastle/pqc/math/linearalgebra/b;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/c;->b()[I

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/j;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/b;[I)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/math/linearalgebra/j;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/j;->field:Lorg/bouncycastle/pqc/math/linearalgebra/b;

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/j;->field:Lorg/bouncycastle/pqc/math/linearalgebra/b;

    iget v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/j;->degree:I

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/j;->degree:I

    iget-object p1, p1, Lorg/bouncycastle/pqc/math/linearalgebra/j;->coefficients:[I

    invoke-static {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/e;->a([I)[I

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/j;->coefficients:[I

    return-void
.end method

.method private a([I[I)[I
    .locals 4

    .line 1
    array-length v0, p1

    array-length v1, p2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    array-length v0, p2

    new-array v0, v0, [I

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    array-length v0, p1

    new-array v0, v0, [I

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, p2

    :goto_0
    array-length p2, p1

    add-int/lit8 p2, p2, -0x1

    :goto_1
    if-ltz p2, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/j;->field:Lorg/bouncycastle/pqc/math/linearalgebra/b;

    aget v2, v0, p2

    aget v3, p1, p2

    invoke-virtual {v1, v2, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/b;->a(II)I

    move-result v1

    aput v1, v0, p2

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method private static c([I)I
    .locals 2

    .line 1
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    aget v1, p0, v0

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/j;->coefficients:[I

    array-length v0, v0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/j;->degree:I

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/j;->degree:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/j;->coefficients:[I

    aget v1, v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private e(ILjava/security/SecureRandom;)[I
    .locals 4

    .line 1
    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x1

    aput v1, v0, p1

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/j;->field:Lorg/bouncycastle/pqc/math/linearalgebra/b;

    invoke-virtual {v2, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/b;->g(Ljava/security/SecureRandom;)I

    move-result v2

    const/4 v3, 0x0

    aput v2, v0, v3

    :goto_0
    if-ge v1, p1, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/j;->field:Lorg/bouncycastle/pqc/math/linearalgebra/b;

    invoke-virtual {v2, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/b;->f(Ljava/security/SecureRandom;)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/j;->m([I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p2, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/m;->a(Ljava/security/SecureRandom;I)I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/j;->field:Lorg/bouncycastle/pqc/math/linearalgebra/b;

    invoke-virtual {v1, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/b;->g(Ljava/security/SecureRandom;)I

    move-result v1

    aput v1, v0, v3

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/j;->field:Lorg/bouncycastle/pqc/math/linearalgebra/b;

    invoke-virtual {v2, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/b;->f(Ljava/security/SecureRandom;)I

    move-result v2

    aput v2, v0, v1

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method private g([I[I)[I
    .locals 4

    .line 1
    invoke-static {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/j;->c([I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-object p2

    :cond_0
    :goto_0
    invoke-static {p2}, Lorg/bouncycastle/pqc/math/linearalgebra/j;->c([I)I

    move-result v0

    if-eq v0, v1, :cond_1

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/j;->o([I[I)[I

    move-result-object p1

    array-length v0, p2

    new-array v2, v0, [I

    const/4 v3, 0x0

    invoke-static {p2, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p2, p1

    new-array v0, p2, [I

    invoke-static {p1, v3, v0, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p2, v0

    move-object p1, v2

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/j;->field:Lorg/bouncycastle/pqc/math/linearalgebra/b;

    invoke-static {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/j;->k([I)I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/b;->h(I)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/j;->s([II)[I

    move-result-object p1

    return-object p1
.end method

.method private static k([I)I
    .locals 2

    .line 1
    invoke-static {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/j;->c([I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    aget p0, p0, v0

    return p0
.end method

.method private static l([I[I)Z
    .locals 5

    .line 1
    invoke-static {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/j;->c([I)I

    move-result v0

    invoke-static {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/j;->c([I)I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    move v1, v2

    :goto_0
    if-gt v1, v0, :cond_2

    aget v3, p0, v1

    aget v4, p1, v1

    if-eq v3, v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private m([I)Z
    .locals 8

    .line 1
    const/4 v0, 0x0

    aget v1, p1, v0

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/j;->c([I)I

    move-result v1

    const/4 v2, 0x1

    shr-int/2addr v1, v2

    filled-new-array {v0, v2}, [I

    move-result-object v3

    filled-new-array {v0, v2}, [I

    move-result-object v4

    iget-object v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/j;->field:Lorg/bouncycastle/pqc/math/linearalgebra/b;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/math/linearalgebra/b;->d()I

    move-result v5

    move v6, v0

    :goto_0
    if-ge v6, v1, :cond_3

    add-int/lit8 v7, v5, -0x1

    :goto_1
    if-ltz v7, :cond_1

    invoke-direct {p0, v3, v3, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/j;->p([I[I[I)[I

    move-result-object v3

    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    :cond_1
    invoke-static {v3}, Lorg/bouncycastle/pqc/math/linearalgebra/j;->v([I)[I

    move-result-object v3

    invoke-direct {p0, v3, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/j;->a([I[I)[I

    move-result-object v7

    invoke-direct {p0, v7, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/j;->g([I[I)[I

    move-result-object v7

    invoke-static {v7}, Lorg/bouncycastle/pqc/math/linearalgebra/j;->c([I)I

    move-result v7

    if-eqz v7, :cond_2

    return v0

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method private o([I[I)[I
    .locals 5

    .line 1
    invoke-static {p2}, Lorg/bouncycastle/pqc/math/linearalgebra/j;->c([I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    array-length v1, p1

    new-array v2, v1, [I

    invoke-static {p2}, Lorg/bouncycastle/pqc/math/linearalgebra/j;->k([I)I

    move-result v3

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/j;->field:Lorg/bouncycastle/pqc/math/linearalgebra/b;

    invoke-virtual {v4, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/b;->h(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {p1, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    invoke-static {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/j;->c([I)I

    move-result p1

    if-gt v0, p1, :cond_0

    iget-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/j;->field:Lorg/bouncycastle/pqc/math/linearalgebra/b;

    invoke-static {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/j;->k([I)I

    move-result v1

    invoke-virtual {p1, v1, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/b;->j(II)I

    move-result p1

    invoke-static {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/j;->c([I)I

    move-result v1

    sub-int/2addr v1, v0

    invoke-static {p2, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/j;->t([II)[I

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/j;->s([II)[I

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/j;->a([I[I)[I

    move-result-object v2

    goto :goto_0

    :cond_0
    return-object v2

    :cond_1
    new-instance p1, Ljava/lang/ArithmeticException;

    const-string p2, "Division by zero"

    invoke-direct {p1, p2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private p([I[I[I)[I
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/j;->u([I[I)[I

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lorg/bouncycastle/pqc/math/linearalgebra/j;->o([I[I)[I

    move-result-object p1

    return-object p1
.end method

.method private s([II)[I
    .locals 4

    .line 1
    invoke-static {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/j;->c([I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    if-ne p2, v2, :cond_1

    invoke-static {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/e;->a([I)[I

    move-result-object p1

    return-object p1

    :cond_1
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [I

    :goto_0
    if-ltz v0, :cond_2

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/j;->field:Lorg/bouncycastle/pqc/math/linearalgebra/b;

    aget v3, p1, v0

    invoke-virtual {v2, v3, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/b;->j(II)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-object v1

    :cond_3
    :goto_1
    new-array p1, v2, [I

    return-object p1
.end method

.method private static t([II)[I
    .locals 4

    .line 1
    invoke-static {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/j;->c([I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    new-array p0, v2, [I

    return-object p0

    :cond_0
    add-int v1, v0, p1

    add-int/2addr v1, v2

    new-array v1, v1, [I

    const/4 v3, 0x0

    add-int/2addr v0, v2

    invoke-static {p0, v3, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method private u([I[I)[I
    .locals 8

    .line 1
    invoke-static {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/j;->c([I)I

    move-result v0

    invoke-static {p2}, Lorg/bouncycastle/pqc/math/linearalgebra/j;->c([I)I

    move-result v1

    if-ge v0, v1, :cond_0

    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/j;->v([I)[I

    move-result-object p1

    invoke-static {p2}, Lorg/bouncycastle/pqc/math/linearalgebra/j;->v([I)[I

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    aget p2, p2, v2

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/j;->s([II)[I

    move-result-object p1

    return-object p1

    :cond_1
    array-length v0, p1

    array-length v3, p2

    add-int v4, v0, v3

    sub-int/2addr v4, v1

    new-array v4, v4, [I

    if-eq v3, v0, :cond_2

    new-array v1, v3, [I

    sub-int/2addr v0, v3

    new-array v4, v0, [I

    invoke-static {p1, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1, v3, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, v1, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/j;->u([I[I)[I

    move-result-object p1

    invoke-direct {p0, v4, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/j;->u([I[I)[I

    move-result-object p2

    invoke-static {p2, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/j;->t([II)[I

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/j;->a([I[I)[I

    move-result-object p1

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v0, 0x1

    ushr-int/lit8 v1, v3, 0x1

    sub-int/2addr v0, v1

    new-array v3, v1, [I

    new-array v4, v1, [I

    new-array v5, v0, [I

    new-array v6, v0, [I

    invoke-static {p1, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1, v1, v5, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p2, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p2, v1, v6, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, v3, v5}, Lorg/bouncycastle/pqc/math/linearalgebra/j;->a([I[I)[I

    move-result-object p1

    invoke-direct {p0, v4, v6}, Lorg/bouncycastle/pqc/math/linearalgebra/j;->a([I[I)[I

    move-result-object p2

    invoke-direct {p0, v3, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/j;->u([I[I)[I

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/j;->u([I[I)[I

    move-result-object p1

    :try_start_0
    invoke-direct {p0, v5, v6}, Lorg/bouncycastle/pqc/math/linearalgebra/j;->u([I[I)[I

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/j;->a([I[I)[I

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/j;->a([I[I)[I

    move-result-object p1

    invoke-static {p2, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/j;->t([II)[I

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/j;->a([I[I)[I

    move-result-object p1

    invoke-static {p1, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/j;->t([II)[I

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/j;->a([I[I)[I

    move-result-object p1

    :goto_0
    return-object p1

    :catchall_0
    move-exception p1

    throw p1
.end method

.method private static v([I)[I
    .locals 3

    .line 1
    invoke-static {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/j;->c([I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    new-array p0, v2, [I

    return-object p0

    :cond_0
    array-length v1, p0

    add-int/2addr v0, v2

    if-ne v1, v0, :cond_1

    invoke-static {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/e;->a([I)[I

    move-result-object p0

    return-object p0

    :cond_1
    new-array v1, v0, [I

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method


# virtual methods
.method public b(Lorg/bouncycastle/pqc/math/linearalgebra/j;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/j;->coefficients:[I

    iget-object p1, p1, Lorg/bouncycastle/pqc/math/linearalgebra/j;->coefficients:[I

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/j;->a([I[I)[I

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/j;->coefficients:[I

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/j;->d()V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p1, Lorg/bouncycastle/pqc/math/linearalgebra/j;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lorg/bouncycastle/pqc/math/linearalgebra/j;

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/j;->field:Lorg/bouncycastle/pqc/math/linearalgebra/b;

    iget-object v2, p1, Lorg/bouncycastle/pqc/math/linearalgebra/j;->field:Lorg/bouncycastle/pqc/math/linearalgebra/b;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/b;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/j;->degree:I

    iget v2, p1, Lorg/bouncycastle/pqc/math/linearalgebra/j;->degree:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/j;->coefficients:[I

    iget-object p1, p1, Lorg/bouncycastle/pqc/math/linearalgebra/j;->coefficients:[I

    invoke-static {v1, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/j;->l([I[I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method public f(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/j;->coefficients:[I

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/j;->degree:I

    aget v0, v0, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/j;->field:Lorg/bouncycastle/pqc/math/linearalgebra/b;

    invoke-virtual {v2, v0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/b;->j(II)I

    move-result v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/j;->coefficients:[I

    aget v2, v2, v1

    xor-int/2addr v0, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public h(I)I
    .locals 1

    .line 1
    if-ltz p1, :cond_1

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/j;->degree:I

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/j;->coefficients:[I

    aget p1, v0, p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/j;->field:Lorg/bouncycastle/pqc/math/linearalgebra/b;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/b;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/j;->coefficients:[I

    array-length v3, v2

    if-ge v1, v3, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    aget v2, v2, v1

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public i()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/j;->coefficients:[I

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    return v1
.end method

.method public j()[B
    .locals 8

    .line 1
    const/16 v0, 0x8

    const/4 v1, 0x1

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/j;->field:Lorg/bouncycastle/pqc/math/linearalgebra/b;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/b;->d()I

    move-result v2

    if-le v2, v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/j;->coefficients:[I

    array-length v2, v2

    mul-int/2addr v2, v1

    new-array v1, v2, [B

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_1
    iget-object v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/j;->coefficients:[I

    array-length v5, v5

    if-ge v3, v5, :cond_2

    move v5, v2

    :goto_2
    if-ge v5, v0, :cond_1

    add-int/lit8 v6, v4, 0x1

    iget-object v7, p0, Lorg/bouncycastle/pqc/math/linearalgebra/j;->coefficients:[I

    aget v7, v7, v3

    ushr-int/2addr v7, v5

    int-to-byte v7, v7

    aput-byte v7, v1, v4

    add-int/lit8 v5, v5, 0x8

    move v4, v6

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-object v1
.end method

.method public n(Lorg/bouncycastle/pqc/math/linearalgebra/j;)Lorg/bouncycastle/pqc/math/linearalgebra/j;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/j;->coefficients:[I

    iget-object p1, p1, Lorg/bouncycastle/pqc/math/linearalgebra/j;->coefficients:[I

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/j;->o([I[I)[I

    move-result-object p1

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/j;

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/j;->field:Lorg/bouncycastle/pqc/math/linearalgebra/b;

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/j;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/b;[I)V

    return-object v0
.end method

.method public q(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/j;->field:Lorg/bouncycastle/pqc/math/linearalgebra/b;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/b;->i(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/j;->coefficients:[I

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/j;->s([II)[I

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/j;->coefficients:[I

    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/j;->d()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/ArithmeticException;

    const-string v0, "Not an element of the finite field this polynomial is defined over."

    invoke-direct {p1, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public r(I)Lorg/bouncycastle/pqc/math/linearalgebra/j;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/j;->field:Lorg/bouncycastle/pqc/math/linearalgebra/b;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/b;->i(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/j;->coefficients:[I

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/j;->s([II)[I

    move-result-object p1

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/j;

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/j;->field:Lorg/bouncycastle/pqc/math/linearalgebra/b;

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/j;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/b;[I)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/ArithmeticException;

    const-string v0, "Not an element of the finite field this polynomial is defined over."

    invoke-direct {p1, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Polynomial over "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/j;->field:Lorg/bouncycastle/pqc/math/linearalgebra/b;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/j;->coefficients:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/j;->field:Lorg/bouncycastle/pqc/math/linearalgebra/b;

    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/j;->coefficients:[I

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/b;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Y^"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "+"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
