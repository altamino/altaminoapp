.class final Lcom/google/zxing/aztec/encoder/b;
.super Lcom/google/zxing/aztec/encoder/g;
.source "SourceFile"


# instance fields
.field private final binaryShiftByteCount:S

.field private final binaryShiftStart:S


# direct methods
.method constructor <init>(Lcom/google/zxing/aztec/encoder/g;II)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/zxing/aztec/encoder/g;-><init>(Lcom/google/zxing/aztec/encoder/g;)V

    .line 4
    int-to-short p1, p2

    .line 5
    .line 6
    iput-short p1, p0, Lcom/google/zxing/aztec/encoder/b;->binaryShiftStart:S

    .line 7
    int-to-short p1, p3

    .line 8
    .line 9
    iput-short p1, p0, Lcom/google/zxing/aztec/encoder/b;->binaryShiftByteCount:S

    .line 10
    return-void
.end method


# virtual methods
.method public c(Lg5/a;[B)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :goto_0
    iget-short v1, p0, Lcom/google/zxing/aztec/encoder/b;->binaryShiftByteCount:S

    .line 4
    .line 5
    if-ge v0, v1, :cond_4

    .line 6
    .line 7
    const/16 v2, 0x3e

    .line 8
    .line 9
    const/16 v3, 0x1f

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    if-ne v0, v3, :cond_3

    .line 14
    .line 15
    if-gt v1, v2, :cond_3

    .line 16
    :cond_0
    const/4 v1, 0x5

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v3, v1}, Lg5/a;->d(II)V

    .line 20
    .line 21
    iget-short v4, p0, Lcom/google/zxing/aztec/encoder/b;->binaryShiftByteCount:S

    .line 22
    .line 23
    if-le v4, v2, :cond_1

    .line 24
    .line 25
    add-int/lit8 v4, v4, -0x1f

    .line 26
    .line 27
    const/16 v1, 0x10

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v4, v1}, Lg5/a;->d(II)V

    .line 31
    goto :goto_1

    .line 32
    .line 33
    :cond_1
    if-nez v0, :cond_2

    .line 34
    .line 35
    .line 36
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    .line 37
    move-result v2

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v2, v1}, Lg5/a;->d(II)V

    .line 41
    goto :goto_1

    .line 42
    .line 43
    :cond_2
    add-int/lit8 v4, v4, -0x1f

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v4, v1}, Lg5/a;->d(II)V

    .line 47
    .line 48
    :cond_3
    :goto_1
    iget-short v1, p0, Lcom/google/zxing/aztec/encoder/b;->binaryShiftStart:S

    .line 49
    add-int/2addr v1, v0

    .line 50
    .line 51
    aget-byte v1, p2, v1

    .line 52
    .line 53
    const/16 v2, 0x8

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v1, v2}, Lg5/a;->d(II)V

    .line 57
    .line 58
    add-int/lit8 v0, v0, 0x1

    .line 59
    goto :goto_0

    .line 60
    :cond_4
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    const-string v1, "<"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    iget-short v1, p0, Lcom/google/zxing/aztec/encoder/b;->binaryShiftStart:S

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v1, "::"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    iget-short v1, p0, Lcom/google/zxing/aztec/encoder/b;->binaryShiftStart:S

    .line 20
    .line 21
    iget-short v2, p0, Lcom/google/zxing/aztec/encoder/b;->binaryShiftByteCount:S

    .line 22
    add-int/2addr v1, v2

    .line 23
    .line 24
    add-int/lit8 v1, v1, -0x1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const/16 v1, 0x3e

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    return-object v0
.end method
