.class public final Lorg/jsoup/parser/CharacterReader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final EOF:C = '\uffff'

.field static final maxBufferLen:I = 0x8000

.field private static final maxStringCacheLen:I = 0xc

.field private static final readAheadLimit:I = 0x6000


# instance fields
.field private bufLength:I

.field private bufMark:I

.field private bufPos:I

.field private bufSplitPoint:I

.field private final charBuf:[C

.field private final reader:Ljava/io/Reader;

.field private readerPos:I

.field private final stringCache:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1

    const v0, 0x8000

    .line 6
    invoke-direct {p0, p1, v0}, Lorg/jsoup/parser/CharacterReader;-><init>(Ljava/io/Reader;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x200

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    .line 2
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p1}, Ljava/io/Reader;->markSupported()Z

    move-result v0

    invoke-static {v0}, Lorg/jsoup/helper/Validate;->isTrue(Z)V

    iput-object p1, p0, Lorg/jsoup/parser/CharacterReader;->reader:Ljava/io/Reader;

    const p1, 0x8000

    if-le p2, p1, :cond_0

    move p2, p1

    .line 4
    :cond_0
    new-array p1, p2, [C

    iput-object p1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 5
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 7
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lorg/jsoup/parser/CharacterReader;-><init>(Ljava/io/Reader;I)V

    return-void
.end method

.method private bufferUp()V
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 3
    .line 4
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufSplitPoint:I

    .line 5
    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->reader:Ljava/io/Reader;

    .line 10
    int-to-long v2, v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v2, v3}, Ljava/io/Reader;->skip(J)J

    .line 14
    .line 15
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->reader:Ljava/io/Reader;

    .line 16
    .line 17
    .line 18
    const v1, 0x8000

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/io/Reader;->mark(I)V

    .line 22
    .line 23
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->reader:Ljava/io/Reader;

    .line 24
    .line 25
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/io/Reader;->read([C)I

    .line 29
    move-result v0

    .line 30
    .line 31
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->reader:Ljava/io/Reader;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/io/Reader;->reset()V

    .line 35
    const/4 v1, -0x1

    .line 36
    .line 37
    if-eq v0, v1, :cond_2

    .line 38
    .line 39
    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 40
    .line 41
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->readerPos:I

    .line 42
    .line 43
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 44
    add-int/2addr v1, v2

    .line 45
    .line 46
    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->readerPos:I

    .line 47
    const/4 v1, 0x0

    .line 48
    .line 49
    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 50
    .line 51
    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->bufMark:I

    .line 52
    .line 53
    const/16 v1, 0x6000

    .line 54
    .line 55
    if-le v0, v1, :cond_1

    .line 56
    move v0, v1

    .line 57
    .line 58
    :cond_1
    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufSplitPoint:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    :goto_0
    return-void

    .line 63
    .line 64
    :goto_1
    new-instance v1, Lorg/jsoup/UncheckedIOException;

    .line 65
    .line 66
    .line 67
    invoke-direct {v1, v0}, Lorg/jsoup/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    .line 68
    throw v1
.end method

.method private static cacheString([C[Ljava/lang/String;II)Ljava/lang/String;
    .locals 5

    .line 1
    .line 2
    const/16 v0, 0xc

    .line 3
    .line 4
    if-le p3, v0, :cond_0

    .line 5
    .line 6
    new-instance p1, Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-direct {p1, p0, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 10
    return-object p1

    .line 11
    :cond_0
    const/4 v0, 0x1

    .line 12
    .line 13
    if-ge p3, v0, :cond_1

    .line 14
    .line 15
    const-string p0, ""

    .line 16
    return-object p0

    .line 17
    :cond_1
    const/4 v1, 0x0

    .line 18
    move v3, p2

    .line 19
    move v2, v1

    .line 20
    .line 21
    :goto_0
    if-ge v1, p3, :cond_2

    .line 22
    .line 23
    mul-int/lit8 v2, v2, 0x1f

    .line 24
    .line 25
    add-int/lit8 v4, v3, 0x1

    .line 26
    .line 27
    aget-char v3, p0, v3

    .line 28
    add-int/2addr v2, v3

    .line 29
    .line 30
    add-int/lit8 v1, v1, 0x1

    .line 31
    move v3, v4

    .line 32
    goto :goto_0

    .line 33
    :cond_2
    array-length v1, p1

    .line 34
    sub-int/2addr v1, v0

    .line 35
    .line 36
    and-int v0, v2, v1

    .line 37
    .line 38
    aget-object v1, p1, v0

    .line 39
    .line 40
    if-nez v1, :cond_3

    .line 41
    .line 42
    new-instance v1, Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    invoke-direct {v1, p0, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 46
    .line 47
    aput-object v1, p1, v0

    .line 48
    goto :goto_1

    .line 49
    .line 50
    .line 51
    :cond_3
    invoke-static {p0, p2, p3, v1}, Lorg/jsoup/parser/CharacterReader;->rangeEquals([CIILjava/lang/String;)Z

    .line 52
    move-result v2

    .line 53
    .line 54
    if-eqz v2, :cond_4

    .line 55
    return-object v1

    .line 56
    .line 57
    :cond_4
    new-instance v1, Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    invoke-direct {v1, p0, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 61
    .line 62
    aput-object v1, p1, v0

    .line 63
    :goto_1
    return-object v1
.end method

.method private isEmptyNoBufferUp()Z
    .locals 2

    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static rangeEquals([CIILjava/lang/String;)Z
    .locals 4

    .line 1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-ne p2, v0, :cond_2

    move v0, v1

    :goto_0
    add-int/lit8 v2, p2, -0x1

    if-eqz p2, :cond_1

    add-int/lit8 p2, p1, 0x1

    .line 2
    aget-char p1, p0, p1

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq p1, v0, :cond_0

    return v1

    :cond_0
    move p1, p2

    move p2, v2

    move v0, v3

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method


# virtual methods
.method public advance()V
    .locals 1

    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    return-void
.end method

.method consume()C
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->isEmptyNoBufferUp()Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    .line 12
    const v0, 0xffff

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 16
    .line 17
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 18
    .line 19
    aget-char v0, v0, v1

    .line 20
    .line 21
    :goto_0
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 22
    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 26
    return v0
.end method

.method consumeData()Ljava/lang/String;
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 4
    .line 5
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 6
    .line 7
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 8
    .line 9
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 10
    .line 11
    :goto_0
    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 12
    .line 13
    if-ge v3, v1, :cond_1

    .line 14
    .line 15
    aget-char v4, v2, v3

    .line 16
    .line 17
    const/16 v5, 0x26

    .line 18
    .line 19
    if-eq v4, v5, :cond_1

    .line 20
    .line 21
    const/16 v5, 0x3c

    .line 22
    .line 23
    if-eq v4, v5, :cond_1

    .line 24
    .line 25
    if-nez v4, :cond_0

    .line 26
    goto :goto_1

    .line 27
    .line 28
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 29
    .line 30
    iput v3, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :cond_1
    :goto_1
    if-le v3, v0, :cond_2

    .line 34
    .line 35
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 36
    .line 37
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    .line 38
    sub-int/2addr v3, v0

    .line 39
    .line 40
    .line 41
    invoke-static {v1, v2, v0, v3}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    goto :goto_2

    .line 44
    .line 45
    :cond_2
    const-string v0, ""

    .line 46
    :goto_2
    return-object v0
.end method

.method consumeDigitSequence()Ljava/lang/String;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 4
    .line 5
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 6
    .line 7
    :goto_0
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 8
    .line 9
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 10
    .line 11
    if-ge v1, v2, :cond_0

    .line 12
    .line 13
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 14
    .line 15
    aget-char v2, v2, v1

    .line 16
    .line 17
    const/16 v3, 0x30

    .line 18
    .line 19
    if-lt v2, v3, :cond_0

    .line 20
    .line 21
    const/16 v3, 0x39

    .line 22
    .line 23
    if-gt v2, v3, :cond_0

    .line 24
    .line 25
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :cond_0
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 31
    .line 32
    iget-object v3, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    .line 33
    sub-int/2addr v1, v0

    .line 34
    .line 35
    .line 36
    invoke-static {v2, v3, v0, v1}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 38
    return-object v0
.end method

.method consumeHexSequence()Ljava/lang/String;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 4
    .line 5
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 6
    .line 7
    :goto_0
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 8
    .line 9
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 10
    .line 11
    if-ge v1, v2, :cond_3

    .line 12
    .line 13
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 14
    .line 15
    aget-char v2, v2, v1

    .line 16
    .line 17
    const/16 v3, 0x30

    .line 18
    .line 19
    if-lt v2, v3, :cond_0

    .line 20
    .line 21
    const/16 v3, 0x39

    .line 22
    .line 23
    if-le v2, v3, :cond_2

    .line 24
    .line 25
    :cond_0
    const/16 v3, 0x41

    .line 26
    .line 27
    if-lt v2, v3, :cond_1

    .line 28
    .line 29
    const/16 v3, 0x46

    .line 30
    .line 31
    if-le v2, v3, :cond_2

    .line 32
    .line 33
    :cond_1
    const/16 v3, 0x61

    .line 34
    .line 35
    if-lt v2, v3, :cond_3

    .line 36
    .line 37
    const/16 v3, 0x66

    .line 38
    .line 39
    if-gt v2, v3, :cond_3

    .line 40
    .line 41
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 42
    .line 43
    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_3
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 47
    .line 48
    iget-object v3, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    .line 49
    sub-int/2addr v1, v0

    .line 50
    .line 51
    .line 52
    invoke-static {v2, v3, v0, v1}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    return-object v0
.end method

.method consumeLetterSequence()Ljava/lang/String;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 4
    .line 5
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 6
    .line 7
    :goto_0
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 8
    .line 9
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 10
    .line 11
    if-ge v1, v2, :cond_3

    .line 12
    .line 13
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 14
    .line 15
    aget-char v1, v2, v1

    .line 16
    .line 17
    const/16 v2, 0x41

    .line 18
    .line 19
    if-lt v1, v2, :cond_0

    .line 20
    .line 21
    const/16 v2, 0x5a

    .line 22
    .line 23
    if-le v1, v2, :cond_2

    .line 24
    .line 25
    :cond_0
    const/16 v2, 0x61

    .line 26
    .line 27
    if-lt v1, v2, :cond_1

    .line 28
    .line 29
    const/16 v2, 0x7a

    .line 30
    .line 31
    if-le v1, v2, :cond_2

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    .line 35
    move-result v1

    .line 36
    .line 37
    if-eqz v1, :cond_3

    .line 38
    .line 39
    :cond_2
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 40
    .line 41
    add-int/lit8 v1, v1, 0x1

    .line 42
    .line 43
    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_3
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 47
    .line 48
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    .line 49
    .line 50
    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 51
    sub-int/2addr v3, v0

    .line 52
    .line 53
    .line 54
    invoke-static {v1, v2, v0, v3}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    .line 55
    move-result-object v0

    .line 56
    return-object v0
.end method

.method consumeLetterThenDigitSequence()Ljava/lang/String;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 4
    .line 5
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 6
    .line 7
    :goto_0
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 8
    .line 9
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 10
    .line 11
    if-ge v1, v2, :cond_3

    .line 12
    .line 13
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 14
    .line 15
    aget-char v1, v2, v1

    .line 16
    .line 17
    const/16 v2, 0x41

    .line 18
    .line 19
    if-lt v1, v2, :cond_0

    .line 20
    .line 21
    const/16 v2, 0x5a

    .line 22
    .line 23
    if-le v1, v2, :cond_2

    .line 24
    .line 25
    :cond_0
    const/16 v2, 0x61

    .line 26
    .line 27
    if-lt v1, v2, :cond_1

    .line 28
    .line 29
    const/16 v2, 0x7a

    .line 30
    .line 31
    if-le v1, v2, :cond_2

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    .line 35
    move-result v1

    .line 36
    .line 37
    if-eqz v1, :cond_3

    .line 38
    .line 39
    :cond_2
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 40
    .line 41
    add-int/lit8 v1, v1, 0x1

    .line 42
    .line 43
    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 44
    goto :goto_0

    .line 45
    .line 46
    .line 47
    :cond_3
    :goto_1
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->isEmptyNoBufferUp()Z

    .line 48
    move-result v1

    .line 49
    .line 50
    if-nez v1, :cond_4

    .line 51
    .line 52
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 53
    .line 54
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 55
    .line 56
    aget-char v1, v1, v2

    .line 57
    .line 58
    const/16 v3, 0x30

    .line 59
    .line 60
    if-lt v1, v3, :cond_4

    .line 61
    .line 62
    const/16 v3, 0x39

    .line 63
    .line 64
    if-gt v1, v3, :cond_4

    .line 65
    .line 66
    add-int/lit8 v2, v2, 0x1

    .line 67
    .line 68
    iput v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 69
    goto :goto_1

    .line 70
    .line 71
    :cond_4
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 72
    .line 73
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    .line 74
    .line 75
    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 76
    sub-int/2addr v3, v0

    .line 77
    .line 78
    .line 79
    invoke-static {v1, v2, v0, v3}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    .line 80
    move-result-object v0

    .line 81
    return-object v0
.end method

.method consumeTagName()Ljava/lang/String;
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 4
    .line 5
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 6
    .line 7
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 8
    .line 9
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 10
    .line 11
    :goto_0
    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 12
    .line 13
    if-ge v3, v1, :cond_1

    .line 14
    .line 15
    aget-char v4, v2, v3

    .line 16
    .line 17
    const/16 v5, 0x9

    .line 18
    .line 19
    if-eq v4, v5, :cond_1

    .line 20
    .line 21
    const/16 v5, 0xa

    .line 22
    .line 23
    if-eq v4, v5, :cond_1

    .line 24
    .line 25
    const/16 v5, 0xd

    .line 26
    .line 27
    if-eq v4, v5, :cond_1

    .line 28
    .line 29
    const/16 v5, 0xc

    .line 30
    .line 31
    if-eq v4, v5, :cond_1

    .line 32
    .line 33
    const/16 v5, 0x20

    .line 34
    .line 35
    if-eq v4, v5, :cond_1

    .line 36
    .line 37
    const/16 v5, 0x2f

    .line 38
    .line 39
    if-eq v4, v5, :cond_1

    .line 40
    .line 41
    const/16 v5, 0x3e

    .line 42
    .line 43
    if-eq v4, v5, :cond_1

    .line 44
    .line 45
    if-nez v4, :cond_0

    .line 46
    goto :goto_1

    .line 47
    .line 48
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 49
    .line 50
    iput v3, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 51
    goto :goto_0

    .line 52
    .line 53
    :cond_1
    :goto_1
    if-le v3, v0, :cond_2

    .line 54
    .line 55
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 56
    .line 57
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    .line 58
    sub-int/2addr v3, v0

    .line 59
    .line 60
    .line 61
    invoke-static {v1, v2, v0, v3}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    .line 62
    move-result-object v0

    .line 63
    goto :goto_2

    .line 64
    .line 65
    :cond_2
    const-string v0, ""

    .line 66
    :goto_2
    return-object v0
.end method

.method public consumeTo(C)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/CharacterReader;->nextIndexOf(C)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 2
    invoke-static {v0, v1, v2, p1}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->consumeToEnd()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method consumeTo(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 4
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/CharacterReader;->nextIndexOf(Ljava/lang/CharSequence;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 5
    invoke-static {v0, v1, v2, p1}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    return-object v0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->consumeToEnd()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs consumeToAny([C)Ljava/lang/String;
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 4
    .line 5
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 6
    .line 7
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 8
    .line 9
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 10
    .line 11
    :goto_0
    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 12
    .line 13
    if-ge v3, v1, :cond_2

    .line 14
    array-length v3, p1

    .line 15
    const/4 v4, 0x0

    .line 16
    .line 17
    :goto_1
    if-ge v4, v3, :cond_1

    .line 18
    .line 19
    aget-char v5, p1, v4

    .line 20
    .line 21
    iget v6, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 22
    .line 23
    aget-char v6, v2, v6

    .line 24
    .line 25
    if-ne v6, v5, :cond_0

    .line 26
    goto :goto_2

    .line 27
    .line 28
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 29
    goto :goto_1

    .line 30
    .line 31
    :cond_1
    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 32
    .line 33
    add-int/lit8 v3, v3, 0x1

    .line 34
    .line 35
    iput v3, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 36
    goto :goto_0

    .line 37
    .line 38
    :cond_2
    :goto_2
    iget p1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 39
    .line 40
    if-le p1, v0, :cond_3

    .line 41
    .line 42
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 43
    .line 44
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    .line 45
    sub-int/2addr p1, v0

    .line 46
    .line 47
    .line 48
    invoke-static {v1, v2, v0, p1}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 50
    goto :goto_3

    .line 51
    .line 52
    :cond_3
    const-string p1, ""

    .line 53
    :goto_3
    return-object p1
.end method

.method varargs consumeToAnySorted([C)Ljava/lang/String;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 4
    .line 5
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 6
    .line 7
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 8
    .line 9
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 10
    .line 11
    :goto_0
    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 12
    .line 13
    if-ge v3, v1, :cond_1

    .line 14
    .line 15
    aget-char v3, v2, v3

    .line 16
    .line 17
    .line 18
    invoke-static {p1, v3}, Ljava/util/Arrays;->binarySearch([CC)I

    .line 19
    move-result v3

    .line 20
    .line 21
    if-ltz v3, :cond_0

    .line 22
    goto :goto_1

    .line 23
    .line 24
    :cond_0
    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 25
    .line 26
    add-int/lit8 v3, v3, 0x1

    .line 27
    .line 28
    iput v3, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 29
    goto :goto_0

    .line 30
    .line 31
    :cond_1
    :goto_1
    iget p1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 32
    .line 33
    if-le p1, v0, :cond_2

    .line 34
    .line 35
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 36
    .line 37
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    .line 38
    sub-int/2addr p1, v0

    .line 39
    .line 40
    .line 41
    invoke-static {v1, v2, v0, p1}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    goto :goto_2

    .line 44
    .line 45
    :cond_2
    const-string p1, ""

    .line 46
    :goto_2
    return-object p1
.end method

.method consumeToEnd()Ljava/lang/String;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 4
    .line 5
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 6
    .line 7
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    .line 8
    .line 9
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 10
    .line 11
    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 12
    sub-int/2addr v3, v2

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1, v2, v3}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 19
    .line 20
    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 21
    return-object v0
.end method

.method containsIgnoreCase(Ljava/lang/String;)Z
    .locals 2

    .line 1
    .line 2
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v1}, Lorg/jsoup/parser/CharacterReader;->nextIndexOf(Ljava/lang/CharSequence;)I

    .line 14
    move-result v0

    .line 15
    const/4 v1, -0x1

    .line 16
    .line 17
    if-gt v0, v1, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/CharacterReader;->nextIndexOf(Ljava/lang/CharSequence;)I

    .line 21
    move-result p1

    .line 22
    .line 23
    if-le p1, v1, :cond_0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 28
    :goto_1
    return p1
.end method

.method public current()C
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->isEmptyNoBufferUp()Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    .line 12
    const v0, 0xffff

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 16
    .line 17
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 18
    .line 19
    aget-char v0, v0, v1

    .line 20
    :goto_0
    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 4
    .line 5
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 6
    .line 7
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 8
    .line 9
    if-lt v0, v1, :cond_0

    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return v0
.end method

.method mark()V
    .locals 1

    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufMark:I

    return-void
.end method

.method matchConsume(Ljava/lang/String;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/CharacterReader;->matches(Ljava/lang/String;)Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 15
    move-result p1

    .line 16
    add-int/2addr v0, p1

    .line 17
    .line 18
    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 19
    const/4 p1, 0x1

    .line 20
    return p1

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    return p1
.end method

.method matchConsumeIgnoreCase(Ljava/lang/String;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/CharacterReader;->matchesIgnoreCase(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 12
    move-result p1

    .line 13
    add-int/2addr v0, p1

    .line 14
    .line 15
    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 16
    const/4 p1, 0x1

    .line 17
    return p1

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    return p1
.end method

.method matches(C)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    aget-char v0, v0, v1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method matches(Ljava/lang/String;)Z
    .locals 6

    .line 2
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_2

    .line 4
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget-object v4, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v5, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    add-int/2addr v5, v1

    aget-char v4, v4, v5

    if-eq v3, v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method varargs matchesAny([C)Z
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    return v1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 12
    .line 13
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 14
    .line 15
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 16
    .line 17
    aget-char v0, v0, v2

    .line 18
    array-length v2, p1

    .line 19
    move v3, v1

    .line 20
    .line 21
    :goto_0
    if-ge v3, v2, :cond_2

    .line 22
    .line 23
    aget-char v4, p1, v3

    .line 24
    .line 25
    if-ne v4, v0, :cond_1

    .line 26
    const/4 p1, 0x1

    .line 27
    return p1

    .line 28
    .line 29
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_2
    return v1
.end method

.method matchesAnySorted([C)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 12
    .line 13
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 14
    .line 15
    aget-char v0, v0, v1

    .line 16
    .line 17
    .line 18
    invoke-static {p1, v0}, Ljava/util/Arrays;->binarySearch([CC)I

    .line 19
    move-result p1

    .line 20
    .line 21
    if-ltz p1, :cond_0

    .line 22
    const/4 p1, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    :goto_0
    return p1
.end method

.method matchesDigit()Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    return v1

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 11
    .line 12
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 13
    .line 14
    aget-char v0, v0, v2

    .line 15
    .line 16
    const/16 v2, 0x30

    .line 17
    .line 18
    if-lt v0, v2, :cond_1

    .line 19
    .line 20
    const/16 v2, 0x39

    .line 21
    .line 22
    if-gt v0, v2, :cond_1

    .line 23
    const/4 v1, 0x1

    .line 24
    :cond_1
    return v1
.end method

.method matchesIgnoreCase(Ljava/lang/String;)Z
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 7
    move-result v0

    .line 8
    .line 9
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 10
    .line 11
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 12
    sub-int/2addr v1, v2

    .line 13
    const/4 v2, 0x0

    .line 14
    .line 15
    if-le v0, v1, :cond_0

    .line 16
    return v2

    .line 17
    :cond_0
    move v1, v2

    .line 18
    .line 19
    :goto_0
    if-ge v1, v0, :cond_2

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 23
    move-result v3

    .line 24
    .line 25
    .line 26
    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    .line 27
    move-result v3

    .line 28
    .line 29
    iget-object v4, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 30
    .line 31
    iget v5, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 32
    add-int/2addr v5, v1

    .line 33
    .line 34
    aget-char v4, v4, v5

    .line 35
    .line 36
    .line 37
    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    .line 38
    move-result v4

    .line 39
    .line 40
    if-eq v3, v4, :cond_1

    .line 41
    return v2

    .line 42
    .line 43
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    const/4 p1, 0x1

    .line 46
    return p1
.end method

.method matchesLetter()Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    return v1

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 11
    .line 12
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 13
    .line 14
    aget-char v0, v0, v2

    .line 15
    .line 16
    const/16 v2, 0x41

    .line 17
    .line 18
    if-lt v0, v2, :cond_1

    .line 19
    .line 20
    const/16 v2, 0x5a

    .line 21
    .line 22
    if-le v0, v2, :cond_3

    .line 23
    .line 24
    :cond_1
    const/16 v2, 0x61

    .line 25
    .line 26
    if-lt v0, v2, :cond_2

    .line 27
    .line 28
    const/16 v2, 0x7a

    .line 29
    .line 30
    if-le v0, v2, :cond_3

    .line 31
    .line 32
    .line 33
    :cond_2
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    .line 34
    move-result v0

    .line 35
    .line 36
    if-eqz v0, :cond_4

    .line 37
    :cond_3
    const/4 v1, 0x1

    .line 38
    :cond_4
    return v1
.end method

.method nextIndexOf(C)I
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    :goto_0
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 2
    aget-char v1, v1, v0

    if-ne p1, v1, :cond_0

    iget p1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    sub-int/2addr v0, p1

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method nextIndexOf(Ljava/lang/CharSequence;)I
    .locals 8

    .line 3
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    const/4 v0, 0x0

    .line 4
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    :goto_0
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 5
    aget-char v2, v2, v1

    const/4 v3, 0x1

    if-eq v0, v2, :cond_0

    :goto_1
    add-int/2addr v1, v3

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 6
    aget-char v2, v2, v1

    if-eq v0, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v1, 0x1

    .line 7
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/2addr v4, v2

    sub-int/2addr v4, v3

    iget v5, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    if-ge v1, v5, :cond_2

    if-gt v4, v5, :cond_2

    move v5, v2

    :goto_2
    if-ge v5, v4, :cond_1

    .line 8
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    iget-object v7, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    aget-char v7, v7, v5

    if-ne v6, v7, :cond_1

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    if-ne v5, v4, :cond_2

    iget p1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    sub-int/2addr v1, p1

    return v1

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    const/4 p1, -0x1

    return p1
.end method

.method public pos()I
    .locals 2

    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->readerPos:I

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    add-int/2addr v0, v1

    return v0
.end method

.method rangeEquals(IILjava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 3
    invoke-static {v0, p1, p2, p3}, Lorg/jsoup/parser/CharacterReader;->rangeEquals([CIILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method rewindToMark()V
    .locals 1

    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufMark:I

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    .line 2
    new-instance v0, Ljava/lang/String;

    .line 3
    .line 4
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 5
    .line 6
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 7
    .line 8
    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 9
    sub-int/2addr v3, v2

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 13
    return-object v0
.end method

.method unconsume()V
    .locals 1

    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    return-void
.end method
