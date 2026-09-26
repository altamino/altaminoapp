.class public Lorg/bouncycastle/pqc/math/linearalgebra/c;
.super Lorg/bouncycastle/pqc/math/linearalgebra/n;
.source "SourceFile"


# instance fields
.field private field:Lorg/bouncycastle/pqc/math/linearalgebra/b;

.field private vector:[I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/math/linearalgebra/b;[B)V
    .locals 9

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/n;-><init>()V

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/b;

    invoke-direct {v0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/b;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/b;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/c;->field:Lorg/bouncycastle/pqc/math/linearalgebra/b;

    const/16 v0, 0x8

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/b;->d()I

    move-result v2

    if-le v2, v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    :cond_0
    array-length v2, p2

    rem-int/2addr v2, v1

    const-string v3, "Byte array is not an encoded vector over the given finite field."

    if-nez v2, :cond_4

    array-length v2, p2

    div-int/2addr v2, v1

    iput v2, p0, Lorg/bouncycastle/pqc/math/linearalgebra/n;->length:I

    new-array v1, v2, [I

    iput-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/c;->vector:[I

    const/4 v1, 0x0

    move v2, v1

    move v4, v2

    :goto_1
    iget-object v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/c;->vector:[I

    array-length v5, v5

    if-ge v2, v5, :cond_3

    move v5, v1

    :goto_2
    if-ge v5, v0, :cond_1

    iget-object v6, p0, Lorg/bouncycastle/pqc/math/linearalgebra/c;->vector:[I

    aget v7, v6, v2

    add-int/lit8 v8, v4, 0x1

    aget-byte v4, p2, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v5

    or-int/2addr v4, v7

    aput v4, v6, v2

    add-int/lit8 v5, v5, 0x8

    move v4, v8

    goto :goto_2

    :cond_1
    iget-object v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/c;->vector:[I

    aget v5, v5, v2

    invoke-virtual {p1, v5}, Lorg/bouncycastle/pqc/math/linearalgebra/b;->i(I)Z

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/math/linearalgebra/b;[I)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/n;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/c;->field:Lorg/bouncycastle/pqc/math/linearalgebra/b;

    array-length v0, p2

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/n;->length:I

    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    aget v1, p2, v0

    invoke-virtual {p1, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/b;->i(I)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/ArithmeticException;

    const-string p2, "Element array is not specified over the given finite field."

    invoke-direct {p1, p2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p2}, Lorg/bouncycastle/pqc/math/linearalgebra/e;->a([I)[I

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/c;->vector:[I

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/math/linearalgebra/c;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Lorg/bouncycastle/pqc/math/linearalgebra/n;-><init>()V

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/b;

    iget-object v1, p1, Lorg/bouncycastle/pqc/math/linearalgebra/c;->field:Lorg/bouncycastle/pqc/math/linearalgebra/b;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/b;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/b;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/c;->field:Lorg/bouncycastle/pqc/math/linearalgebra/b;

    iget v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/n;->length:I

    iput v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/n;->length:I

    iget-object p1, p1, Lorg/bouncycastle/pqc/math/linearalgebra/c;->vector:[I

    invoke-static {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/e;->a([I)[I

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/c;->vector:[I

    return-void
.end method


# virtual methods
.method public a()Lorg/bouncycastle/pqc/math/linearalgebra/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/c;->field:Lorg/bouncycastle/pqc/math/linearalgebra/b;

    return-object v0
.end method

.method public b()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/c;->vector:[I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/e;->a([I)[I

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/bouncycastle/pqc/math/linearalgebra/c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/bouncycastle/pqc/math/linearalgebra/c;

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/c;->field:Lorg/bouncycastle/pqc/math/linearalgebra/b;

    iget-object v2, p1, Lorg/bouncycastle/pqc/math/linearalgebra/c;->field:Lorg/bouncycastle/pqc/math/linearalgebra/b;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/c;->vector:[I

    iget-object p1, p1, Lorg/bouncycastle/pqc/math/linearalgebra/c;->vector:[I

    invoke-static {v0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/e;->b([I[I)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/c;->field:Lorg/bouncycastle/pqc/math/linearalgebra/b;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/b;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/linearalgebra/c;->vector:[I

    invoke-static {v1}, Lorg/bouncycastle/util/a;->p([I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/pqc/math/linearalgebra/c;->vector:[I

    array-length v3, v3

    if-ge v2, v3, :cond_2

    move v3, v1

    :goto_1
    iget-object v4, p0, Lorg/bouncycastle/pqc/math/linearalgebra/c;->field:Lorg/bouncycastle/pqc/math/linearalgebra/b;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/math/linearalgebra/b;->d()I

    move-result v4

    if-ge v3, v4, :cond_1

    and-int/lit8 v4, v3, 0x1f

    const/4 v5, 0x1

    shl-int v4, v5, v4

    iget-object v5, p0, Lorg/bouncycastle/pqc/math/linearalgebra/c;->vector:[I

    aget v5, v5, v2

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    const/16 v4, 0x31

    :goto_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_0
    const/16 v4, 0x30

    goto :goto_2

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
