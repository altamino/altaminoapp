.class public Lorg/apache/commons/compress/compressors/FileNameUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final compressSuffix:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final defaultExtension:Ljava/lang/String;

.field private final longestCompressedSuffix:I

.field private final longestUncompressedSuffix:I

.field private final shortestCompressedSuffix:I

.field private final shortestUncompressedSuffix:I

.field private final uncompressSuffix:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/HashMap;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/FileNameUtil;->compressSuffix:Ljava/util/Map;

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/FileNameUtil;->uncompressSuffix:Ljava/util/Map;

    .line 17
    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    const/high16 v0, -0x80000000

    .line 27
    .line 28
    .line 29
    const v1, 0x7fffffff

    .line 30
    move v2, v1

    .line 31
    move v3, v2

    .line 32
    move v1, v0

    .line 33
    .line 34
    .line 35
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    move-result v4

    .line 37
    .line 38
    if-eqz v4, :cond_5

    .line 39
    .line 40
    .line 41
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    move-result-object v4

    .line 43
    .line 44
    check-cast v4, Ljava/util/Map$Entry;

    .line 45
    .line 46
    .line 47
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 48
    move-result-object v5

    .line 49
    .line 50
    check-cast v5, Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 54
    move-result v5

    .line 55
    .line 56
    if-le v5, v0, :cond_1

    .line 57
    move v0, v5

    .line 58
    .line 59
    :cond_1
    if-ge v5, v2, :cond_2

    .line 60
    move v2, v5

    .line 61
    .line 62
    .line 63
    :cond_2
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 64
    move-result-object v5

    .line 65
    .line 66
    check-cast v5, Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 70
    move-result v6

    .line 71
    .line 72
    if-lez v6, :cond_0

    .line 73
    .line 74
    iget-object v7, p0, Lorg/apache/commons/compress/compressors/FileNameUtil;->compressSuffix:Ljava/util/Map;

    .line 75
    .line 76
    .line 77
    invoke-interface {v7, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 78
    move-result v7

    .line 79
    .line 80
    if-nez v7, :cond_3

    .line 81
    .line 82
    iget-object v7, p0, Lorg/apache/commons/compress/compressors/FileNameUtil;->compressSuffix:Ljava/util/Map;

    .line 83
    .line 84
    .line 85
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 86
    move-result-object v4

    .line 87
    .line 88
    .line 89
    invoke-interface {v7, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    :cond_3
    if-le v6, v1, :cond_4

    .line 92
    move v1, v6

    .line 93
    .line 94
    :cond_4
    if-ge v6, v3, :cond_0

    .line 95
    move v3, v6

    .line 96
    goto :goto_0

    .line 97
    .line 98
    :cond_5
    iput v0, p0, Lorg/apache/commons/compress/compressors/FileNameUtil;->longestCompressedSuffix:I

    .line 99
    .line 100
    iput v1, p0, Lorg/apache/commons/compress/compressors/FileNameUtil;->longestUncompressedSuffix:I

    .line 101
    .line 102
    iput v2, p0, Lorg/apache/commons/compress/compressors/FileNameUtil;->shortestCompressedSuffix:I

    .line 103
    .line 104
    iput v3, p0, Lorg/apache/commons/compress/compressors/FileNameUtil;->shortestUncompressedSuffix:I

    .line 105
    .line 106
    iput-object p2, p0, Lorg/apache/commons/compress/compressors/FileNameUtil;->defaultExtension:Ljava/lang/String;

    .line 107
    return-void
.end method


# virtual methods
.method public getCompressedFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    .line 2
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 10
    move-result v1

    .line 11
    .line 12
    iget v2, p0, Lorg/apache/commons/compress/compressors/FileNameUtil;->shortestUncompressedSuffix:I

    .line 13
    .line 14
    :goto_0
    iget v3, p0, Lorg/apache/commons/compress/compressors/FileNameUtil;->longestUncompressedSuffix:I

    .line 15
    .line 16
    if-gt v2, v3, :cond_1

    .line 17
    .line 18
    if-ge v2, v1, :cond_1

    .line 19
    .line 20
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/FileNameUtil;->compressSuffix:Ljava/util/Map;

    .line 21
    .line 22
    sub-int v4, v1, v2

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 26
    move-result-object v5

    .line 27
    .line 28
    .line 29
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object v3

    .line 31
    .line 32
    check-cast v3, Ljava/lang/String;

    .line 33
    .line 34
    if-eqz v3, :cond_0

    .line 35
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    const/4 v1, 0x0

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object p1

    .line 55
    return-object p1

    .line 56
    .line 57
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 58
    goto :goto_0

    .line 59
    .line 60
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    iget-object p1, p0, Lorg/apache/commons/compress/compressors/FileNameUtil;->defaultExtension:Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object p1

    .line 76
    return-object p1
.end method

.method public getUncompressedFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    .line 2
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 10
    move-result v1

    .line 11
    .line 12
    iget v2, p0, Lorg/apache/commons/compress/compressors/FileNameUtil;->shortestCompressedSuffix:I

    .line 13
    .line 14
    :goto_0
    iget v3, p0, Lorg/apache/commons/compress/compressors/FileNameUtil;->longestCompressedSuffix:I

    .line 15
    .line 16
    if-gt v2, v3, :cond_1

    .line 17
    .line 18
    if-ge v2, v1, :cond_1

    .line 19
    .line 20
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/FileNameUtil;->uncompressSuffix:Ljava/util/Map;

    .line 21
    .line 22
    sub-int v4, v1, v2

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 26
    move-result-object v5

    .line 27
    .line 28
    .line 29
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object v3

    .line 31
    .line 32
    check-cast v3, Ljava/lang/String;

    .line 33
    .line 34
    if-eqz v3, :cond_0

    .line 35
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    const/4 v1, 0x0

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object p1

    .line 55
    return-object p1

    .line 56
    .line 57
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    return-object p1
.end method

.method public isCompressedFilename(Ljava/lang/String;)Z
    .locals 4

    .line 1
    .line 2
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 10
    move-result v0

    .line 11
    .line 12
    iget v1, p0, Lorg/apache/commons/compress/compressors/FileNameUtil;->shortestCompressedSuffix:I

    .line 13
    .line 14
    :goto_0
    iget v2, p0, Lorg/apache/commons/compress/compressors/FileNameUtil;->longestCompressedSuffix:I

    .line 15
    .line 16
    if-gt v1, v2, :cond_1

    .line 17
    .line 18
    if-ge v1, v0, :cond_1

    .line 19
    .line 20
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/FileNameUtil;->uncompressSuffix:Ljava/util/Map;

    .line 21
    .line 22
    sub-int v3, v0, v1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 26
    move-result-object v3

    .line 27
    .line 28
    .line 29
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 30
    move-result v2

    .line 31
    .line 32
    if-eqz v2, :cond_0

    .line 33
    const/4 p1, 0x1

    .line 34
    return p1

    .line 35
    .line 36
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 p1, 0x0

    .line 39
    return p1
.end method
