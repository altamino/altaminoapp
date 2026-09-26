.class Lorg/apache/commons/compress/archivers/zip/BinaryTree;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final NODE:I = -0x2

.field private static final UNDEFINED:I = -0x1


# instance fields
.field private final tree:[I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    add-int/2addr p1, v0

    .line 6
    .line 7
    shl-int p1, v0, p1

    .line 8
    sub-int/2addr p1, v0

    .line 9
    .line 10
    new-array p1, p1, [I

    .line 11
    .line 12
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->tree:[I

    .line 13
    const/4 v0, -0x1

    .line 14
    .line 15
    .line 16
    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 17
    return-void
.end method

.method static decode(Ljava/io/InputStream;I)Lorg/apache/commons/compress/archivers/zip/BinaryTree;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    add-int/2addr v0, v1

    .line 7
    .line 8
    if-eqz v0, :cond_a

    .line 9
    .line 10
    new-array v2, v0, [B

    .line 11
    .line 12
    new-instance v3, Ljava/io/DataInputStream;

    .line 13
    .line 14
    .line 15
    invoke-direct {v3, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3, v2}, Ljava/io/DataInputStream;->readFully([B)V

    .line 19
    .line 20
    new-array p0, p1, [I

    .line 21
    const/4 v3, 0x0

    .line 22
    move v4, v3

    .line 23
    move v5, v4

    .line 24
    move v6, v5

    .line 25
    .line 26
    :goto_0
    if-ge v4, v0, :cond_1

    .line 27
    .line 28
    aget-byte v7, v2, v4

    .line 29
    .line 30
    and-int/lit16 v8, v7, 0xf0

    .line 31
    .line 32
    shr-int/lit8 v8, v8, 0x4

    .line 33
    add-int/2addr v8, v1

    .line 34
    .line 35
    and-int/lit8 v7, v7, 0xf

    .line 36
    add-int/2addr v7, v1

    .line 37
    move v9, v3

    .line 38
    .line 39
    :goto_1
    if-ge v9, v8, :cond_0

    .line 40
    .line 41
    add-int/lit8 v10, v6, 0x1

    .line 42
    .line 43
    aput v7, p0, v6

    .line 44
    .line 45
    add-int/lit8 v9, v9, 0x1

    .line 46
    move v6, v10

    .line 47
    goto :goto_1

    .line 48
    .line 49
    .line 50
    :cond_0
    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    .line 51
    move-result v5

    .line 52
    .line 53
    add-int/lit8 v4, v4, 0x1

    .line 54
    goto :goto_0

    .line 55
    .line 56
    :cond_1
    new-array v0, p1, [I

    .line 57
    move v2, v3

    .line 58
    .line 59
    :goto_2
    if-ge v2, p1, :cond_2

    .line 60
    .line 61
    aput v2, v0, v2

    .line 62
    .line 63
    add-int/lit8 v2, v2, 0x1

    .line 64
    goto :goto_2

    .line 65
    .line 66
    :cond_2
    new-array v2, p1, [I

    .line 67
    move v4, v3

    .line 68
    move v6, v4

    .line 69
    .line 70
    :goto_3
    if-ge v4, p1, :cond_5

    .line 71
    move v7, v3

    .line 72
    .line 73
    :goto_4
    if-ge v7, p1, :cond_4

    .line 74
    .line 75
    aget v8, p0, v7

    .line 76
    .line 77
    if-ne v8, v4, :cond_3

    .line 78
    .line 79
    aput v4, v2, v6

    .line 80
    .line 81
    aput v7, v0, v6

    .line 82
    .line 83
    add-int/lit8 v6, v6, 0x1

    .line 84
    .line 85
    :cond_3
    add-int/lit8 v7, v7, 0x1

    .line 86
    goto :goto_4

    .line 87
    .line 88
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 89
    goto :goto_3

    .line 90
    .line 91
    :cond_5
    new-array v4, p1, [I

    .line 92
    .line 93
    add-int/lit8 v6, p1, -0x1

    .line 94
    move v7, v3

    .line 95
    move v8, v7

    .line 96
    move v9, v8

    .line 97
    .line 98
    :goto_5
    if-ltz v6, :cond_7

    .line 99
    add-int/2addr v7, v8

    .line 100
    .line 101
    aget v10, v2, v6

    .line 102
    .line 103
    if-eq v10, v9, :cond_6

    .line 104
    .line 105
    rsub-int/lit8 v8, v10, 0x10

    .line 106
    .line 107
    shl-int v8, v1, v8

    .line 108
    move v9, v10

    .line 109
    .line 110
    :cond_6
    aget v10, v0, v6

    .line 111
    .line 112
    aput v7, v4, v10

    .line 113
    .line 114
    add-int/lit8 v6, v6, -0x1

    .line 115
    goto :goto_5

    .line 116
    .line 117
    :cond_7
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/BinaryTree;

    .line 118
    .line 119
    .line 120
    invoke-direct {v0, v5}, Lorg/apache/commons/compress/archivers/zip/BinaryTree;-><init>(I)V

    .line 121
    move v1, v3

    .line 122
    .line 123
    :goto_6
    if-ge v1, p1, :cond_9

    .line 124
    .line 125
    aget v2, p0, v1

    .line 126
    .line 127
    if-lez v2, :cond_8

    .line 128
    .line 129
    aget v5, v4, v1

    .line 130
    .line 131
    shl-int/lit8 v5, v5, 0x10

    .line 132
    .line 133
    .line 134
    invoke-static {v5}, Ljava/lang/Integer;->reverse(I)I

    .line 135
    move-result v5

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, v3, v5, v2, v1}, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->addLeaf(IIII)V

    .line 139
    .line 140
    :cond_8
    add-int/lit8 v1, v1, 0x1

    .line 141
    goto :goto_6

    .line 142
    :cond_9
    return-object v0

    .line 143
    .line 144
    :cond_a
    new-instance p0, Ljava/io/IOException;

    .line 145
    .line 146
    const-string p1, "Cannot read the size of the encoded tree, unexpected end of stream"

    .line 147
    .line 148
    .line 149
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 150
    throw p0
.end method


# virtual methods
.method public addLeaf(IIII)V
    .locals 2

    .line 1
    .line 2
    if-nez p3, :cond_1

    .line 3
    .line 4
    iget-object p2, p0, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->tree:[I

    .line 5
    .line 6
    aget p3, p2, p1

    .line 7
    const/4 v0, -0x1

    .line 8
    .line 9
    if-ne p3, v0, :cond_0

    .line 10
    .line 11
    aput p4, p2, p1

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 15
    .line 16
    new-instance p3, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    const-string p4, "Tree value at index "

    .line 22
    .line 23
    .line 24
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string p4, " has already been assigned ("

    .line 30
    .line 31
    .line 32
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    iget-object p4, p0, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->tree:[I

    .line 35
    .line 36
    aget p1, p4, p1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string p1, ")"

    .line 42
    .line 43
    .line 44
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    .line 51
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 52
    throw p2

    .line 53
    .line 54
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->tree:[I

    .line 55
    const/4 v1, -0x2

    .line 56
    .line 57
    aput v1, v0, p1

    .line 58
    .line 59
    mul-int/lit8 p1, p1, 0x2

    .line 60
    .line 61
    add-int/lit8 p1, p1, 0x1

    .line 62
    .line 63
    and-int/lit8 v0, p2, 0x1

    .line 64
    add-int/2addr p1, v0

    .line 65
    .line 66
    ushr-int/lit8 p2, p2, 0x1

    .line 67
    .line 68
    add-int/lit8 p3, p3, -0x1

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->addLeaf(IIII)V

    .line 72
    :goto_0
    return-void
.end method

.method public read(Lorg/apache/commons/compress/archivers/zip/BitStream;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/BitStream;->nextBit()I

    .line 5
    move-result v1

    .line 6
    const/4 v2, -0x1

    .line 7
    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    return v2

    .line 10
    .line 11
    :cond_0
    mul-int/lit8 v3, v0, 0x2

    .line 12
    .line 13
    add-int/lit8 v3, v3, 0x1

    .line 14
    add-int/2addr v3, v1

    .line 15
    .line 16
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->tree:[I

    .line 17
    .line 18
    aget v4, v4, v3

    .line 19
    const/4 v5, -0x2

    .line 20
    .line 21
    if-ne v4, v5, :cond_1

    .line 22
    move v0, v3

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_1
    if-eq v4, v2, :cond_2

    .line 26
    return v4

    .line 27
    .line 28
    :cond_2
    new-instance p1, Ljava/io/IOException;

    .line 29
    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    const-string v3, "The child "

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v1, " of node at index "

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v0, " is not defined"

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    .line 61
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 62
    throw p1
.end method
