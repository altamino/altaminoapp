.class public Lorg/bouncycastle/pqc/math/linearalgebra/a;
.super Lorg/bouncycastle/pqc/math/linearalgebra/h;
.source "SourceFile"


# instance fields
.field private length:I

.field private matrix:[[I


# direct methods
.method public constructor <init>(IC)V
    .locals 1

    .line 1
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/a;-><init>(ICLjava/security/SecureRandom;)V

    return-void
.end method

.method public constructor <init>(ICLjava/security/SecureRandom;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/h;-><init>()V

    if-lez p1, :cond_5

    const/16 v0, 0x49

    if-eq p2, v0, :cond_4

    const/16 v0, 0x4c

    if-eq p2, v0, :cond_3

    const/16 v0, 0x52

    if-eq p2, v0, :cond_2

    const/16 v0, 0x55

    if-eq p2, v0, :cond_1

    const/16 p3, 0x5a

    if-ne p2, p3, :cond_0

    invoke-direct {p0, p1, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/a;->g(II)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/ArithmeticException;

    const-string p2, "Unknown matrix type."

    invoke-direct {p1, p2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-direct {p0, p1, p3}, Lorg/bouncycastle/pqc/math/linearalgebra/a;->e(ILjava/security/SecureRandom;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p3}, Lorg/bouncycastle/pqc/math/linearalgebra/a;->d(ILjava/security/SecureRandom;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, p3}, Lorg/bouncycastle/pqc/math/linearalgebra/a;->c(ILjava/security/SecureRandom;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/a;->f(I)V

    :goto_0
    return-void

    :cond_5
    new-instance p1, Ljava/lang/ArithmeticException;

    const-string p2, "Size of matrix is non-positive."

    invoke-direct {p1, p2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>(II)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/h;-><init>()V

    if-lez p2, :cond_0

    if-lez p1, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/a;->g(II)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/ArithmeticException;

    const-string p2, "size of matrix is non-positive"

    invoke-direct {p1, p2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(I[[I)V
    .locals 5

    .line 4
    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/h;-><init>()V

    const/4 v0, 0x0

    aget-object v1, p2, v0

    array-length v2, v1

    add-int/lit8 v3, p1, 0x1f

    shr-int/lit8 v3, v3, 0x5

    if-ne v2, v3, :cond_2

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/h;->numColumns:I

    array-length v2, p2

    iput v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/h;->numRows:I

    array-length v1, v1

    iput v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/a;->length:I

    and-int/lit8 p1, p1, 0x1f

    const/4 v1, 0x1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    shl-int p1, v1, p1

    sub-int/2addr p1, v1

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/h;->numRows:I

    if-ge v0, v2, :cond_1

    aget-object v2, p2, v0

    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/a;->length:I

    sub-int/2addr v3, v1

    aget v4, v2, v3

    and-int/2addr v4, p1

    aput v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput-object p2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/a;->matrix:[[I

    return-void

    :cond_2
    new-instance p1, Ljava/lang/ArithmeticException;

    const-string p2, "Int array does not match given number of columns."

    invoke-direct {p1, p2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/math/linearalgebra/a;)V
    .locals 3

    .line 5
    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/h;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/h;->a()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/h;->numColumns:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/h;->b()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/h;->numRows:I

    iget v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/a;->length:I

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/a;->length:I

    iget-object v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/a;->matrix:[[I

    array-length v0, v0

    new-array v0, v0, [[I

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/a;->matrix:[[I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/a;->matrix:[[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    iget-object v2, p1, Lorg/bouncycastle/pqc/math/linearalgebra/a;->matrix:[[I

    aget-object v2, v2, v0

    invoke-static {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/e;->a([I)[I

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 9

    .line 6
    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/h;-><init>()V

    array-length v0, p1

    const/16 v1, 0x9

    const-string v2, "given array is not an encoded matrix over GF(2)"

    if-lt v0, v1, :cond_4

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/g;->e([BI)I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/h;->numRows:I

    const/4 v1, 0x4

    invoke-static {p1, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/g;->e([BI)I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/h;->numColumns:I

    add-int/lit8 v3, v1, 0x7

    ushr-int/lit8 v3, v3, 0x3

    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/h;->numRows:I

    mul-int/2addr v3, v4

    if-lez v4, :cond_3

    array-length v5, p1

    const/16 v6, 0x8

    sub-int/2addr v5, v6

    if-ne v3, v5, :cond_3

    add-int/lit8 v1, v1, 0x1f

    ushr-int/lit8 v1, v1, 0x5

    iput v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/a;->length:I

    filled-new-array {v4, v1}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    iput-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/a;->matrix:[[I

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/h;->numColumns:I

    shr-int/lit8 v2, v1, 0x5

    and-int/lit8 v1, v1, 0x1f

    move v3, v0

    :goto_0
    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/h;->numRows:I

    if-ge v3, v4, :cond_2

    move v4, v0

    :goto_1
    if-ge v4, v2, :cond_0

    iget-object v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/a;->matrix:[[I

    aget-object v5, v5, v3

    invoke-static {p1, v6}, Lorg/bouncycastle/pqc/math/linearalgebra/g;->e([BI)I

    move-result v7

    aput v7, v5, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v6, v6, 0x4

    goto :goto_1

    :cond_0
    move v4, v0

    :goto_2
    if-ge v4, v1, :cond_1

    iget-object v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/a;->matrix:[[I

    aget-object v5, v5, v3

    aget v7, v5, v2

    add-int/lit8 v8, v6, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v6, v4

    xor-int/2addr v6, v7

    aput v6, v5, v2

    add-int/lit8 v4, v4, 0x8

    move v6, v8

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    new-instance p1, Ljava/lang/ArithmeticException;

    invoke-direct {p1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/ArithmeticException;

    invoke-direct {p1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private c(ILjava/security/SecureRandom;)V
    .locals 7

    .line 1
    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/h;->numRows:I

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/h;->numColumns:I

    add-int/lit8 v0, p1, 0x1f

    ushr-int/lit8 v0, v0, 0x5

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/a;->length:I

    filled-new-array {p1, v0}, [I

    move-result-object p1

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[I

    iput-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/a;->matrix:[[I

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/h;->numRows:I

    if-ge v0, v1, :cond_2

    ushr-int/lit8 v1, v0, 0x5

    and-int/lit8 v2, v0, 0x1f

    rsub-int/lit8 v3, v2, 0x1f

    const/4 v4, 0x1

    shl-int v2, v4, v2

    move v4, p1

    :goto_1
    if-ge v4, v1, :cond_0

    iget-object v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/a;->matrix:[[I

    aget-object v5, v5, v0

    invoke-virtual {p2}, Ljava/util/Random;->nextInt()I

    move-result v6

    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/a;->matrix:[[I

    aget-object v4, v4, v0

    invoke-virtual {p2}, Ljava/util/Random;->nextInt()I

    move-result v5

    ushr-int v3, v5, v3

    or-int/2addr v2, v3

    aput v2, v4, v1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/a;->length:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/a;->matrix:[[I

    aget-object v2, v2, v0

    aput p1, v2, v1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private d(ILjava/security/SecureRandom;)V
    .locals 6

    .line 1
    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/h;->numRows:I

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/h;->numColumns:I

    add-int/lit8 v0, p1, 0x1f

    ushr-int/lit8 v0, v0, 0x5

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/a;->length:I

    filled-new-array {p1, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/a;->matrix:[[I

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/a;

    const/16 v1, 0x4c

    invoke-direct {v0, p1, v1, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/a;-><init>(ICLjava/security/SecureRandom;)V

    new-instance v1, Lorg/bouncycastle/pqc/math/linearalgebra/a;

    const/16 v2, 0x55

    invoke-direct {v1, p1, v2, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/a;-><init>(ICLjava/security/SecureRandom;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/a;->i(Lorg/bouncycastle/pqc/math/linearalgebra/h;)Lorg/bouncycastle/pqc/math/linearalgebra/h;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/a;

    new-instance v1, Lorg/bouncycastle/pqc/math/linearalgebra/i;

    invoke-direct {v1, p1, p2}, Lorg/bouncycastle/pqc/math/linearalgebra/i;-><init>(ILjava/security/SecureRandom;)V

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/i;->b()[I

    move-result-object p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_0

    iget-object v3, v0, Lorg/bouncycastle/pqc/math/linearalgebra/a;->matrix:[[I

    aget-object v3, v3, v2

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/a;->matrix:[[I

    aget v5, p2, v2

    aget-object v4, v4, v5

    iget v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/a;->length:I

    invoke-static {v3, v1, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private e(ILjava/security/SecureRandom;)V
    .locals 8

    .line 1
    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/h;->numRows:I

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/h;->numColumns:I

    add-int/lit8 v0, p1, 0x1f

    ushr-int/lit8 v0, v0, 0x5

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/a;->length:I

    filled-new-array {p1, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/a;->matrix:[[I

    and-int/lit8 p1, p1, 0x1f

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    shl-int p1, v0, p1

    sub-int/2addr p1, v0

    :goto_0
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/h;->numRows:I

    if-ge v2, v3, :cond_3

    ushr-int/lit8 v3, v2, 0x5

    and-int/lit8 v4, v2, 0x1f

    shl-int v5, v0, v4

    move v6, v1

    :goto_2
    if-ge v6, v3, :cond_1

    iget-object v7, p0, Lorg/bouncycastle/pqc/math/linearalgebra/a;->matrix:[[I

    aget-object v7, v7, v2

    aput v1, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    iget-object v6, p0, Lorg/bouncycastle/pqc/math/linearalgebra/a;->matrix:[[I

    aget-object v6, v6, v2

    invoke-virtual {p2}, Ljava/util/Random;->nextInt()I

    move-result v7

    shl-int v4, v7, v4

    or-int/2addr v4, v5

    aput v4, v6, v3

    :goto_3
    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/a;->length:I

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/a;->matrix:[[I

    aget-object v4, v4, v2

    invoke-virtual {p2}, Ljava/util/Random;->nextInt()I

    move-result v5

    aput v5, v4, v3

    goto :goto_3

    :cond_2
    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/a;->matrix:[[I

    aget-object v3, v3, v2

    add-int/lit8 v4, v4, -0x1

    aget v5, v3, v4

    and-int/2addr v5, p1

    aput v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private f(I)V
    .locals 4

    .line 1
    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/h;->numRows:I

    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/h;->numColumns:I

    add-int/lit8 v0, p1, 0x1f

    ushr-int/lit8 v0, v0, 0x5

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/a;->length:I

    filled-new-array {p1, v0}, [I

    move-result-object p1

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[I

    iput-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/a;->matrix:[[I

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/h;->numRows:I

    if-ge v0, v1, :cond_1

    move v1, p1

    :goto_1
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/a;->length:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/a;->matrix:[[I

    aget-object v2, v2, v0

    aput p1, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/h;->numRows:I

    if-ge p1, v0, :cond_2

    and-int/lit8 v0, p1, 0x1f

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/a;->matrix:[[I

    aget-object v1, v1, p1

    ushr-int/lit8 v2, p1, 0x5

    const/4 v3, 0x1

    shl-int v0, v3, v0

    aput v0, v1, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private g(II)V
    .locals 2

    .line 1
    iput p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/h;->numRows:I

    iput p2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/h;->numColumns:I

    add-int/lit8 p2, p2, 0x1f

    ushr-int/lit8 p2, p2, 0x5

    iput p2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/a;->length:I

    filled-new-array {p1, p2}, [I

    move-result-object p1

    sget-object p2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p2, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[I

    iput-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/a;->matrix:[[I

    const/4 p1, 0x0

    move p2, p1

    :goto_0
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/h;->numRows:I

    if-ge p2, v0, :cond_1

    move v0, p1

    :goto_1
    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/a;->length:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/a;->matrix:[[I

    aget-object v1, v1, p2

    aput p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/bouncycastle/pqc/math/linearalgebra/a;

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/h;->numRows:I

    iget v2, p1, Lorg/bouncycastle/pqc/math/linearalgebra/h;->numRows:I

    if-ne v0, v2, :cond_4

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/h;->numColumns:I

    iget v2, p1, Lorg/bouncycastle/pqc/math/linearalgebra/h;->numColumns:I

    if-ne v0, v2, :cond_4

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/a;->length:I

    iget v2, p1, Lorg/bouncycastle/pqc/math/linearalgebra/a;->length:I

    if-eq v0, v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/h;->numRows:I

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/a;->matrix:[[I

    aget-object v2, v2, v0

    iget-object v3, p1, Lorg/bouncycastle/pqc/math/linearalgebra/a;->matrix:[[I

    aget-object v3, v3, v0

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/e;->b([I[I)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_1
    return v1
.end method

.method public h()[B
    .locals 9

    .line 1
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/h;->numColumns:I

    add-int/lit8 v0, v0, 0x7

    ushr-int/lit8 v0, v0, 0x3

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/h;->numRows:I

    mul-int/2addr v0, v1

    const/16 v2, 0x8

    add-int/2addr v0, v2

    new-array v0, v0, [B

    const/4 v3, 0x0

    invoke-static {v1, v0, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/g;->a(I[BI)V

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/h;->numColumns:I

    const/4 v4, 0x4

    invoke-static {v1, v0, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/g;->a(I[BI)V

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/h;->numColumns:I

    ushr-int/lit8 v4, v1, 0x5

    and-int/lit8 v1, v1, 0x1f

    move v5, v3

    :goto_0
    iget v6, p0, Lorg/bouncycastle/pqc/math/linearalgebra/h;->numRows:I

    if-ge v5, v6, :cond_2

    move v6, v3

    :goto_1
    if-ge v6, v4, :cond_0

    iget-object v7, p0, Lorg/bouncycastle/pqc/math/linearalgebra/a;->matrix:[[I

    aget-object v7, v7, v5

    aget v7, v7, v6

    invoke-static {v7, v0, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/g;->a(I[BI)V

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v2, v2, 0x4

    goto :goto_1

    :cond_0
    move v6, v3

    :goto_2
    if-ge v6, v1, :cond_1

    add-int/lit8 v7, v2, 0x1

    iget-object v8, p0, Lorg/bouncycastle/pqc/math/linearalgebra/a;->matrix:[[I

    aget-object v8, v8, v5

    aget v8, v8, v4

    ushr-int/2addr v8, v6

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v0, v2

    add-int/lit8 v6, v6, 0x8

    move v2, v7

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/h;->numRows:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/h;->numColumns:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/a;->length:I

    add-int/2addr v0, v1

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/h;->numRows:I

    if-ge v1, v2, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/a;->matrix:[[I

    aget-object v2, v2, v1

    invoke-static {v2}, Lorg/bouncycastle/util/a;->p([I)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public i(Lorg/bouncycastle/pqc/math/linearalgebra/h;)Lorg/bouncycastle/pqc/math/linearalgebra/h;
    .locals 14

    .line 1
    instance-of v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/a;

    if-eqz v0, :cond_8

    iget v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/h;->numRows:I

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/h;->numColumns:I

    if-ne v0, v1, :cond_7

    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/math/linearalgebra/a;

    new-instance v1, Lorg/bouncycastle/pqc/math/linearalgebra/a;

    iget v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/h;->numRows:I

    iget p1, p1, Lorg/bouncycastle/pqc/math/linearalgebra/h;->numColumns:I

    invoke-direct {v1, v2, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/a;-><init>(II)V

    iget p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/h;->numColumns:I

    and-int/lit8 p1, p1, 0x1f

    const/4 v2, 0x1

    iget v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/a;->length:I

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr v3, v2

    :goto_0
    const/4 v4, 0x0

    move v5, v4

    :goto_1
    iget v6, p0, Lorg/bouncycastle/pqc/math/linearalgebra/h;->numRows:I

    if-ge v5, v6, :cond_6

    move v6, v4

    move v7, v6

    :goto_2
    if-ge v6, v3, :cond_3

    iget-object v8, p0, Lorg/bouncycastle/pqc/math/linearalgebra/a;->matrix:[[I

    aget-object v8, v8, v5

    aget v8, v8, v6

    move v9, v4

    :goto_3
    const/16 v10, 0x20

    if-ge v9, v10, :cond_2

    shl-int v10, v2, v9

    and-int/2addr v10, v8

    if-eqz v10, :cond_1

    move v10, v4

    :goto_4
    iget v11, v0, Lorg/bouncycastle/pqc/math/linearalgebra/a;->length:I

    if-ge v10, v11, :cond_1

    iget-object v11, v1, Lorg/bouncycastle/pqc/math/linearalgebra/a;->matrix:[[I

    aget-object v11, v11, v5

    aget v12, v11, v10

    iget-object v13, v0, Lorg/bouncycastle/pqc/math/linearalgebra/a;->matrix:[[I

    aget-object v13, v13, v7

    aget v13, v13, v10

    xor-int/2addr v12, v13

    aput v12, v11, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_1
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    iget-object v6, p0, Lorg/bouncycastle/pqc/math/linearalgebra/a;->matrix:[[I

    aget-object v6, v6, v5

    iget v8, p0, Lorg/bouncycastle/pqc/math/linearalgebra/a;->length:I

    sub-int/2addr v8, v2

    aget v6, v6, v8

    move v8, v4

    :goto_5
    if-ge v8, p1, :cond_5

    shl-int v9, v2, v8

    and-int/2addr v9, v6

    if-eqz v9, :cond_4

    move v9, v4

    :goto_6
    iget v10, v0, Lorg/bouncycastle/pqc/math/linearalgebra/a;->length:I

    if-ge v9, v10, :cond_4

    iget-object v10, v1, Lorg/bouncycastle/pqc/math/linearalgebra/a;->matrix:[[I

    aget-object v10, v10, v5

    aget v11, v10, v9

    iget-object v12, v0, Lorg/bouncycastle/pqc/math/linearalgebra/a;->matrix:[[I

    aget-object v12, v12, v7

    aget v12, v12, v9

    xor-int/2addr v11, v12

    aput v11, v10, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_4
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    return-object v1

    :cond_7
    new-instance p1, Ljava/lang/ArithmeticException;

    const-string v0, "length mismatch"

    invoke-direct {p1, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Ljava/lang/ArithmeticException;

    const-string v0, "matrix is not defined over GF(2)"

    invoke-direct {p1, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/h;->numColumns:I

    and-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/a;->length:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    :goto_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    iget v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/h;->numRows:I

    if-ge v4, v5, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v5, v3

    :goto_2
    const/16 v6, 0x31

    const/16 v7, 0x30

    if-ge v5, v1, :cond_3

    iget-object v8, p0, Lorg/bouncycastle/pqc/math/linearalgebra/a;->matrix:[[I

    aget-object v8, v8, v4

    aget v8, v8, v5

    move v9, v3

    :goto_3
    const/16 v10, 0x20

    if-ge v9, v10, :cond_2

    ushr-int v10, v8, v9

    and-int/lit8 v10, v10, 0x1

    if-nez v10, :cond_1

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_1
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_2
    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/a;->matrix:[[I

    aget-object v5, v5, v4

    iget v8, p0, Lorg/bouncycastle/pqc/math/linearalgebra/a;->length:I

    add-int/lit8 v8, v8, -0x1

    aget v5, v5, v8

    move v8, v3

    :goto_5
    if-ge v8, v0, :cond_5

    ushr-int v9, v5, v8

    and-int/lit8 v9, v9, 0x1

    if-nez v9, :cond_4

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_6

    :cond_4
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_5
    const/16 v5, 0xa

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
