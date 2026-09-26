.class final Lcom/google/zxing/aztec/encoder/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final INITIAL_STATE:Lcom/google/zxing/aztec/encoder/f;


# instance fields
.field private final binaryShiftByteCount:I

.field private final bitCount:I

.field private final mode:I

.field private final token:Lcom/google/zxing/aztec/encoder/g;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/google/zxing/aztec/encoder/f;

    .line 3
    .line 4
    sget-object v1, Lcom/google/zxing/aztec/encoder/g;->EMPTY:Lcom/google/zxing/aztec/encoder/g;

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/zxing/aztec/encoder/f;-><init>(Lcom/google/zxing/aztec/encoder/g;III)V

    .line 9
    .line 10
    sput-object v0, Lcom/google/zxing/aztec/encoder/f;->INITIAL_STATE:Lcom/google/zxing/aztec/encoder/f;

    .line 11
    return-void
.end method

.method private constructor <init>(Lcom/google/zxing/aztec/encoder/g;III)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/zxing/aztec/encoder/f;->token:Lcom/google/zxing/aztec/encoder/g;

    .line 6
    .line 7
    iput p2, p0, Lcom/google/zxing/aztec/encoder/f;->mode:I

    .line 8
    .line 9
    iput p3, p0, Lcom/google/zxing/aztec/encoder/f;->binaryShiftByteCount:I

    .line 10
    .line 11
    iput p4, p0, Lcom/google/zxing/aztec/encoder/f;->bitCount:I

    .line 12
    return-void
.end method


# virtual methods
.method a(I)Lcom/google/zxing/aztec/encoder/f;
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/zxing/aztec/encoder/f;->token:Lcom/google/zxing/aztec/encoder/g;

    .line 3
    .line 4
    iget v1, p0, Lcom/google/zxing/aztec/encoder/f;->mode:I

    .line 5
    .line 6
    iget v2, p0, Lcom/google/zxing/aztec/encoder/f;->bitCount:I

    .line 7
    const/4 v3, 0x4

    .line 8
    .line 9
    if-eq v1, v3, :cond_0

    .line 10
    const/4 v3, 0x2

    .line 11
    .line 12
    if-ne v1, v3, :cond_1

    .line 13
    .line 14
    :cond_0
    sget-object v3, Lcom/google/zxing/aztec/encoder/d;->LATCH_TABLE:[[I

    .line 15
    .line 16
    aget-object v1, v3, v1

    .line 17
    const/4 v3, 0x0

    .line 18
    .line 19
    aget v1, v1, v3

    .line 20
    .line 21
    .line 22
    const v4, 0xffff

    .line 23
    and-int/2addr v4, v1

    .line 24
    .line 25
    shr-int/lit8 v1, v1, 0x10

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v4, v1}, Lcom/google/zxing/aztec/encoder/g;->a(II)Lcom/google/zxing/aztec/encoder/g;

    .line 29
    move-result-object v0

    .line 30
    add-int/2addr v2, v1

    .line 31
    move v1, v3

    .line 32
    .line 33
    :cond_1
    iget v3, p0, Lcom/google/zxing/aztec/encoder/f;->binaryShiftByteCount:I

    .line 34
    .line 35
    if-eqz v3, :cond_4

    .line 36
    .line 37
    const/16 v4, 0x1f

    .line 38
    .line 39
    if-ne v3, v4, :cond_2

    .line 40
    goto :goto_0

    .line 41
    .line 42
    :cond_2
    const/16 v4, 0x3e

    .line 43
    .line 44
    if-ne v3, v4, :cond_3

    .line 45
    .line 46
    const/16 v4, 0x9

    .line 47
    goto :goto_1

    .line 48
    .line 49
    :cond_3
    const/16 v4, 0x8

    .line 50
    goto :goto_1

    .line 51
    .line 52
    :cond_4
    :goto_0
    const/16 v4, 0x12

    .line 53
    .line 54
    :goto_1
    new-instance v5, Lcom/google/zxing/aztec/encoder/f;

    .line 55
    .line 56
    add-int/lit8 v3, v3, 0x1

    .line 57
    add-int/2addr v2, v4

    .line 58
    .line 59
    .line 60
    invoke-direct {v5, v0, v1, v3, v2}, Lcom/google/zxing/aztec/encoder/f;-><init>(Lcom/google/zxing/aztec/encoder/g;III)V

    .line 61
    .line 62
    iget v0, v5, Lcom/google/zxing/aztec/encoder/f;->binaryShiftByteCount:I

    .line 63
    .line 64
    const/16 v1, 0x81e

    .line 65
    .line 66
    if-ne v0, v1, :cond_5

    .line 67
    .line 68
    add-int/lit8 p1, p1, 0x1

    .line 69
    .line 70
    .line 71
    invoke-virtual {v5, p1}, Lcom/google/zxing/aztec/encoder/f;->b(I)Lcom/google/zxing/aztec/encoder/f;

    .line 72
    move-result-object v5

    .line 73
    :cond_5
    return-object v5
.end method

.method b(I)Lcom/google/zxing/aztec/encoder/f;
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lcom/google/zxing/aztec/encoder/f;->binaryShiftByteCount:I

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-object p0

    .line 6
    .line 7
    :cond_0
    iget-object v1, p0, Lcom/google/zxing/aztec/encoder/f;->token:Lcom/google/zxing/aztec/encoder/g;

    .line 8
    sub-int/2addr p1, v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p1, v0}, Lcom/google/zxing/aztec/encoder/g;->b(II)Lcom/google/zxing/aztec/encoder/g;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    new-instance v0, Lcom/google/zxing/aztec/encoder/f;

    .line 15
    .line 16
    iget v1, p0, Lcom/google/zxing/aztec/encoder/f;->mode:I

    .line 17
    const/4 v2, 0x0

    .line 18
    .line 19
    iget v3, p0, Lcom/google/zxing/aztec/encoder/f;->bitCount:I

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p1, v1, v2, v3}, Lcom/google/zxing/aztec/encoder/f;-><init>(Lcom/google/zxing/aztec/encoder/g;III)V

    .line 23
    return-object v0
.end method

.method c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/aztec/encoder/f;->binaryShiftByteCount:I

    return v0
.end method

.method d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/aztec/encoder/f;->bitCount:I

    return v0
.end method

.method e()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/aztec/encoder/f;->mode:I

    return v0
.end method

.method f(Lcom/google/zxing/aztec/encoder/f;)Z
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lcom/google/zxing/aztec/encoder/f;->bitCount:I

    .line 3
    .line 4
    sget-object v1, Lcom/google/zxing/aztec/encoder/d;->LATCH_TABLE:[[I

    .line 5
    .line 6
    iget v2, p0, Lcom/google/zxing/aztec/encoder/f;->mode:I

    .line 7
    .line 8
    aget-object v1, v1, v2

    .line 9
    .line 10
    iget v2, p1, Lcom/google/zxing/aztec/encoder/f;->mode:I

    .line 11
    .line 12
    aget v1, v1, v2

    .line 13
    .line 14
    shr-int/lit8 v1, v1, 0x10

    .line 15
    add-int/2addr v0, v1

    .line 16
    .line 17
    iget v1, p1, Lcom/google/zxing/aztec/encoder/f;->binaryShiftByteCount:I

    .line 18
    .line 19
    if-lez v1, :cond_1

    .line 20
    .line 21
    iget v2, p0, Lcom/google/zxing/aztec/encoder/f;->binaryShiftByteCount:I

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    if-le v2, v1, :cond_1

    .line 26
    .line 27
    :cond_0
    add-int/lit8 v0, v0, 0xa

    .line 28
    .line 29
    :cond_1
    iget p1, p1, Lcom/google/zxing/aztec/encoder/f;->bitCount:I

    .line 30
    .line 31
    if-gt v0, p1, :cond_2

    .line 32
    const/4 p1, 0x1

    .line 33
    return p1

    .line 34
    :cond_2
    const/4 p1, 0x0

    .line 35
    return p1
.end method

.method g(II)Lcom/google/zxing/aztec/encoder/f;
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lcom/google/zxing/aztec/encoder/f;->bitCount:I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/zxing/aztec/encoder/f;->token:Lcom/google/zxing/aztec/encoder/g;

    .line 5
    .line 6
    iget v2, p0, Lcom/google/zxing/aztec/encoder/f;->mode:I

    .line 7
    .line 8
    if-eq p1, v2, :cond_0

    .line 9
    .line 10
    sget-object v3, Lcom/google/zxing/aztec/encoder/d;->LATCH_TABLE:[[I

    .line 11
    .line 12
    aget-object v2, v3, v2

    .line 13
    .line 14
    aget v2, v2, p1

    .line 15
    .line 16
    .line 17
    const v3, 0xffff

    .line 18
    and-int/2addr v3, v2

    .line 19
    .line 20
    shr-int/lit8 v2, v2, 0x10

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v3, v2}, Lcom/google/zxing/aztec/encoder/g;->a(II)Lcom/google/zxing/aztec/encoder/g;

    .line 24
    move-result-object v1

    .line 25
    add-int/2addr v0, v2

    .line 26
    :cond_0
    const/4 v2, 0x2

    .line 27
    .line 28
    if-ne p1, v2, :cond_1

    .line 29
    const/4 v2, 0x4

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v2, 0x5

    .line 32
    .line 33
    .line 34
    :goto_0
    invoke-virtual {v1, p2, v2}, Lcom/google/zxing/aztec/encoder/g;->a(II)Lcom/google/zxing/aztec/encoder/g;

    .line 35
    move-result-object p2

    .line 36
    .line 37
    new-instance v1, Lcom/google/zxing/aztec/encoder/f;

    .line 38
    const/4 v3, 0x0

    .line 39
    add-int/2addr v0, v2

    .line 40
    .line 41
    .line 42
    invoke-direct {v1, p2, p1, v3, v0}, Lcom/google/zxing/aztec/encoder/f;-><init>(Lcom/google/zxing/aztec/encoder/g;III)V

    .line 43
    return-object v1
.end method

.method h(II)Lcom/google/zxing/aztec/encoder/f;
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/zxing/aztec/encoder/f;->token:Lcom/google/zxing/aztec/encoder/g;

    .line 3
    .line 4
    iget v1, p0, Lcom/google/zxing/aztec/encoder/f;->mode:I

    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x5

    .line 7
    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    const/4 v2, 0x4

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v2, v3

    .line 12
    .line 13
    :goto_0
    sget-object v4, Lcom/google/zxing/aztec/encoder/d;->SHIFT_TABLE:[[I

    .line 14
    .line 15
    aget-object v1, v4, v1

    .line 16
    .line 17
    aget p1, v1, p1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1, v2}, Lcom/google/zxing/aztec/encoder/g;->a(II)Lcom/google/zxing/aztec/encoder/g;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p2, v3}, Lcom/google/zxing/aztec/encoder/g;->a(II)Lcom/google/zxing/aztec/encoder/g;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    new-instance p2, Lcom/google/zxing/aztec/encoder/f;

    .line 28
    .line 29
    iget v0, p0, Lcom/google/zxing/aztec/encoder/f;->mode:I

    .line 30
    .line 31
    iget v1, p0, Lcom/google/zxing/aztec/encoder/f;->bitCount:I

    .line 32
    add-int/2addr v1, v2

    .line 33
    add-int/2addr v1, v3

    .line 34
    const/4 v2, 0x0

    .line 35
    .line 36
    .line 37
    invoke-direct {p2, p1, v0, v2, v1}, Lcom/google/zxing/aztec/encoder/f;-><init>(Lcom/google/zxing/aztec/encoder/g;III)V

    .line 38
    return-object p2
.end method

.method i([B)Lg5/a;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Ljava/util/LinkedList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 6
    array-length v1, p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v1}, Lcom/google/zxing/aztec/encoder/f;->b(I)Lcom/google/zxing/aztec/encoder/f;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    iget-object v1, v1, Lcom/google/zxing/aztec/encoder/f;->token:Lcom/google/zxing/aztec/encoder/g;

    .line 13
    .line 14
    :goto_0
    if-eqz v1, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, v1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/google/zxing/aztec/encoder/g;->d()Lcom/google/zxing/aztec/encoder/g;

    .line 21
    move-result-object v1

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_0
    new-instance v1, Lg5/a;

    .line 25
    .line 26
    .line 27
    invoke-direct {v1}, Lg5/a;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    move-result v2

    .line 36
    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    move-result-object v2

    .line 42
    .line 43
    check-cast v2, Lcom/google/zxing/aztec/encoder/g;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v1, p1}, Lcom/google/zxing/aztec/encoder/g;->c(Lg5/a;[B)V

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    .line 3
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    .line 5
    sget-object v1, Lcom/google/zxing/aztec/encoder/d;->MODE_NAMES:[Ljava/lang/String;

    .line 6
    .line 7
    iget v2, p0, Lcom/google/zxing/aztec/encoder/f;->mode:I

    .line 8
    .line 9
    aget-object v1, v1, v2

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    iget v1, p0, Lcom/google/zxing/aztec/encoder/f;->bitCount:I

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x1

    .line 20
    .line 21
    aput-object v1, v0, v2

    .line 22
    .line 23
    iget v1, p0, Lcom/google/zxing/aztec/encoder/f;->binaryShiftByteCount:I

    .line 24
    .line 25
    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object v1

    .line 28
    const/4 v2, 0x2

    .line 29
    .line 30
    aput-object v1, v0, v2

    .line 31
    .line 32
    const-string v1, "%s bits=%d bytes=%d"

    .line 33
    .line 34
    .line 35
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    return-object v0
.end method
