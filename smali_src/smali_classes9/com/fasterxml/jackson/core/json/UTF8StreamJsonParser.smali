.class public Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;
.super Lcom/fasterxml/jackson/core/base/ParserBase;
.source "SourceFile"


# static fields
.field static final BYTE_LF:B = 0xat

.field protected static final _icLatin1:[I

.field private static final _icUTF8:[I

.field private static final _icWS:[I


# instance fields
.field protected _bufferRecyclable:Z

.field protected _inputBuffer:[B

.field protected _inputStream:Ljava/io/InputStream;

.field protected _objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;

.field private _quad1:I

.field protected _quadBuffer:[I

.field protected final _symbols:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

.field protected _tokenIncomplete:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->getInputCodeUtf8()[I

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sput-object v0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_icUTF8:[I

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->getInputCodeLatin1()[I

    .line 10
    move-result-object v0

    .line 11
    .line 12
    sput-object v0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_icLatin1:[I

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->getInputCodeWS()[I

    .line 16
    move-result-object v0

    .line 17
    .line 18
    sput-object v0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_icWS:[I

    .line 19
    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/io/IOContext;ILjava/io/InputStream;Lcom/fasterxml/jackson/core/ObjectCodec;Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;[BIIZ)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/core/base/ParserBase;-><init>(Lcom/fasterxml/jackson/core/io/IOContext;I)V

    .line 4
    .line 5
    const/16 p1, 0x10

    .line 6
    .line 7
    new-array p1, p1, [I

    .line 8
    .line 9
    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    .line 10
    const/4 p1, 0x0

    .line 11
    .line 12
    iput-boolean p1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenIncomplete:Z

    .line 13
    .line 14
    iput-object p3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputStream:Ljava/io/InputStream;

    .line 15
    .line 16
    iput-object p4, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;

    .line 17
    .line 18
    iput-object p5, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    .line 19
    .line 20
    iput-object p6, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 21
    .line 22
    iput p7, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 23
    .line 24
    iput p8, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 25
    .line 26
    iput p7, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_currInputRowStart:I

    .line 27
    neg-int p1, p7

    .line 28
    int-to-long p1, p1

    .line 29
    .line 30
    iput-wide p1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_currInputProcessed:J

    .line 31
    .line 32
    iput-boolean p9, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_bufferRecyclable:Z

    .line 33
    return-void
.end method

.method private final _decodeUtf8_2(I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 3
    .line 4
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 5
    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->loadMoreGuaranteed()V

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 12
    .line 13
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 14
    .line 15
    add-int/lit8 v2, v1, 0x1

    .line 16
    .line 17
    iput v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 18
    .line 19
    aget-byte v0, v0, v1

    .line 20
    .line 21
    and-int/lit16 v1, v0, 0xc0

    .line 22
    .line 23
    const/16 v3, 0x80

    .line 24
    .line 25
    if-eq v1, v3, :cond_1

    .line 26
    .line 27
    and-int/lit16 v1, v0, 0xff

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidOther(II)V

    .line 31
    .line 32
    :cond_1
    and-int/lit8 p1, p1, 0x1f

    .line 33
    .line 34
    shl-int/lit8 p1, p1, 0x6

    .line 35
    .line 36
    and-int/lit8 v0, v0, 0x3f

    .line 37
    or-int/2addr p1, v0

    .line 38
    return p1
.end method

.method private final _decodeUtf8_3(I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 3
    .line 4
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 5
    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->loadMoreGuaranteed()V

    .line 10
    .line 11
    :cond_0
    and-int/lit8 p1, p1, 0xf

    .line 12
    .line 13
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 14
    .line 15
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 16
    .line 17
    add-int/lit8 v2, v1, 0x1

    .line 18
    .line 19
    iput v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 20
    .line 21
    aget-byte v0, v0, v1

    .line 22
    .line 23
    and-int/lit16 v1, v0, 0xc0

    .line 24
    .line 25
    const/16 v3, 0x80

    .line 26
    .line 27
    if-eq v1, v3, :cond_1

    .line 28
    .line 29
    and-int/lit16 v1, v0, 0xff

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidOther(II)V

    .line 33
    .line 34
    :cond_1
    shl-int/lit8 p1, p1, 0x6

    .line 35
    .line 36
    and-int/lit8 v0, v0, 0x3f

    .line 37
    or-int/2addr p1, v0

    .line 38
    .line 39
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 40
    .line 41
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 42
    .line 43
    if-lt v0, v1, :cond_2

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->loadMoreGuaranteed()V

    .line 47
    .line 48
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 49
    .line 50
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 51
    .line 52
    add-int/lit8 v2, v1, 0x1

    .line 53
    .line 54
    iput v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 55
    .line 56
    aget-byte v0, v0, v1

    .line 57
    .line 58
    and-int/lit16 v1, v0, 0xc0

    .line 59
    .line 60
    if-eq v1, v3, :cond_3

    .line 61
    .line 62
    and-int/lit16 v1, v0, 0xff

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidOther(II)V

    .line 66
    .line 67
    :cond_3
    shl-int/lit8 p1, p1, 0x6

    .line 68
    .line 69
    and-int/lit8 v0, v0, 0x3f

    .line 70
    or-int/2addr p1, v0

    .line 71
    return p1
.end method

.method private final _decodeUtf8_3fast(I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    and-int/lit8 p1, p1, 0xf

    .line 3
    .line 4
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 5
    .line 6
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 7
    .line 8
    add-int/lit8 v2, v1, 0x1

    .line 9
    .line 10
    iput v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 11
    .line 12
    aget-byte v0, v0, v1

    .line 13
    .line 14
    and-int/lit16 v1, v0, 0xc0

    .line 15
    .line 16
    const/16 v3, 0x80

    .line 17
    .line 18
    if-eq v1, v3, :cond_0

    .line 19
    .line 20
    and-int/lit16 v1, v0, 0xff

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidOther(II)V

    .line 24
    .line 25
    :cond_0
    shl-int/lit8 p1, p1, 0x6

    .line 26
    .line 27
    and-int/lit8 v0, v0, 0x3f

    .line 28
    or-int/2addr p1, v0

    .line 29
    .line 30
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 31
    .line 32
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 33
    .line 34
    add-int/lit8 v2, v1, 0x1

    .line 35
    .line 36
    iput v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 37
    .line 38
    aget-byte v0, v0, v1

    .line 39
    .line 40
    and-int/lit16 v1, v0, 0xc0

    .line 41
    .line 42
    if-eq v1, v3, :cond_1

    .line 43
    .line 44
    and-int/lit16 v1, v0, 0xff

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidOther(II)V

    .line 48
    .line 49
    :cond_1
    shl-int/lit8 p1, p1, 0x6

    .line 50
    .line 51
    and-int/lit8 v0, v0, 0x3f

    .line 52
    or-int/2addr p1, v0

    .line 53
    return p1
.end method

.method private final _decodeUtf8_4(I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 3
    .line 4
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 5
    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->loadMoreGuaranteed()V

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 12
    .line 13
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 14
    .line 15
    add-int/lit8 v2, v1, 0x1

    .line 16
    .line 17
    iput v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 18
    .line 19
    aget-byte v0, v0, v1

    .line 20
    .line 21
    and-int/lit16 v1, v0, 0xc0

    .line 22
    .line 23
    const/16 v3, 0x80

    .line 24
    .line 25
    if-eq v1, v3, :cond_1

    .line 26
    .line 27
    and-int/lit16 v1, v0, 0xff

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidOther(II)V

    .line 31
    .line 32
    :cond_1
    and-int/lit8 p1, p1, 0x7

    .line 33
    .line 34
    shl-int/lit8 p1, p1, 0x6

    .line 35
    .line 36
    and-int/lit8 v0, v0, 0x3f

    .line 37
    or-int/2addr p1, v0

    .line 38
    .line 39
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 40
    .line 41
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 42
    .line 43
    if-lt v0, v1, :cond_2

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->loadMoreGuaranteed()V

    .line 47
    .line 48
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 49
    .line 50
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 51
    .line 52
    add-int/lit8 v2, v1, 0x1

    .line 53
    .line 54
    iput v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 55
    .line 56
    aget-byte v0, v0, v1

    .line 57
    .line 58
    and-int/lit16 v1, v0, 0xc0

    .line 59
    .line 60
    if-eq v1, v3, :cond_3

    .line 61
    .line 62
    and-int/lit16 v1, v0, 0xff

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidOther(II)V

    .line 66
    .line 67
    :cond_3
    shl-int/lit8 p1, p1, 0x6

    .line 68
    .line 69
    and-int/lit8 v0, v0, 0x3f

    .line 70
    or-int/2addr p1, v0

    .line 71
    .line 72
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 73
    .line 74
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 75
    .line 76
    if-lt v0, v1, :cond_4

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->loadMoreGuaranteed()V

    .line 80
    .line 81
    :cond_4
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 82
    .line 83
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 84
    .line 85
    add-int/lit8 v2, v1, 0x1

    .line 86
    .line 87
    iput v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 88
    .line 89
    aget-byte v0, v0, v1

    .line 90
    .line 91
    and-int/lit16 v1, v0, 0xc0

    .line 92
    .line 93
    if-eq v1, v3, :cond_5

    .line 94
    .line 95
    and-int/lit16 v1, v0, 0xff

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidOther(II)V

    .line 99
    .line 100
    :cond_5
    shl-int/lit8 p1, p1, 0x6

    .line 101
    .line 102
    and-int/lit8 v0, v0, 0x3f

    .line 103
    or-int/2addr p1, v0

    .line 104
    .line 105
    const/high16 v0, 0x10000

    .line 106
    sub-int/2addr p1, v0

    .line 107
    return p1
.end method

.method private final _finishString2([CI)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_icUTF8:[I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 5
    .line 6
    :goto_0
    iget v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 7
    .line 8
    iget v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 9
    .line 10
    if-lt v2, v3, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->loadMoreGuaranteed()V

    .line 14
    .line 15
    iget v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 16
    :cond_0
    array-length v3, p1

    .line 17
    const/4 v4, 0x0

    .line 18
    .line 19
    if-lt p2, v3, :cond_1

    .line 20
    .line 21
    iget-object p1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    .line 25
    move-result-object p1

    .line 26
    move p2, v4

    .line 27
    .line 28
    :cond_1
    iget v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 29
    array-length v5, p1

    .line 30
    sub-int/2addr v5, p2

    .line 31
    add-int/2addr v5, v2

    .line 32
    .line 33
    .line 34
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    .line 35
    move-result v3

    .line 36
    .line 37
    :goto_1
    if-ge v2, v3, :cond_c

    .line 38
    .line 39
    add-int/lit8 v5, v2, 0x1

    .line 40
    .line 41
    aget-byte v2, v1, v2

    .line 42
    .line 43
    and-int/lit16 v2, v2, 0xff

    .line 44
    .line 45
    aget v6, v0, v2

    .line 46
    .line 47
    if-eqz v6, :cond_b

    .line 48
    .line 49
    iput v5, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 50
    .line 51
    const/16 v3, 0x22

    .line 52
    .line 53
    if-ne v2, v3, :cond_2

    .line 54
    .line 55
    iget-object p1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 59
    return-void

    .line 60
    :cond_2
    const/4 v3, 0x1

    .line 61
    .line 62
    if-eq v6, v3, :cond_9

    .line 63
    const/4 v3, 0x2

    .line 64
    .line 65
    if-eq v6, v3, :cond_8

    .line 66
    const/4 v7, 0x3

    .line 67
    .line 68
    if-eq v6, v7, :cond_6

    .line 69
    const/4 v3, 0x4

    .line 70
    .line 71
    if-eq v6, v3, :cond_4

    .line 72
    .line 73
    const/16 v3, 0x20

    .line 74
    .line 75
    if-ge v2, v3, :cond_3

    .line 76
    .line 77
    .line 78
    const-string/jumbo v3, "string value"

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v2, v3}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_throwUnquotedSpace(ILjava/lang/String;)V

    .line 82
    goto :goto_3

    .line 83
    .line 84
    .line 85
    :cond_3
    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidChar(I)V

    .line 86
    goto :goto_3

    .line 87
    .line 88
    .line 89
    :cond_4
    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_decodeUtf8_4(I)I

    .line 90
    move-result v2

    .line 91
    .line 92
    add-int/lit8 v3, p2, 0x1

    .line 93
    .line 94
    shr-int/lit8 v5, v2, 0xa

    .line 95
    .line 96
    .line 97
    const v6, 0xd800

    .line 98
    or-int/2addr v5, v6

    .line 99
    int-to-char v5, v5

    .line 100
    .line 101
    aput-char v5, p1, p2

    .line 102
    array-length p2, p1

    .line 103
    .line 104
    if-lt v3, p2, :cond_5

    .line 105
    .line 106
    iget-object p1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    .line 110
    move-result-object p1

    .line 111
    move p2, v4

    .line 112
    goto :goto_2

    .line 113
    :cond_5
    move p2, v3

    .line 114
    .line 115
    :goto_2
    and-int/lit16 v2, v2, 0x3ff

    .line 116
    .line 117
    .line 118
    const v3, 0xdc00

    .line 119
    or-int/2addr v2, v3

    .line 120
    goto :goto_3

    .line 121
    .line 122
    :cond_6
    iget v6, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 123
    sub-int/2addr v6, v5

    .line 124
    .line 125
    if-lt v6, v3, :cond_7

    .line 126
    .line 127
    .line 128
    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_decodeUtf8_3fast(I)I

    .line 129
    move-result v2

    .line 130
    goto :goto_3

    .line 131
    .line 132
    .line 133
    :cond_7
    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_decodeUtf8_3(I)I

    .line 134
    move-result v2

    .line 135
    goto :goto_3

    .line 136
    .line 137
    .line 138
    :cond_8
    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_decodeUtf8_2(I)I

    .line 139
    move-result v2

    .line 140
    goto :goto_3

    .line 141
    .line 142
    .line 143
    :cond_9
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_decodeEscaped()C

    .line 144
    move-result v2

    .line 145
    :goto_3
    array-length v3, p1

    .line 146
    .line 147
    if-lt p2, v3, :cond_a

    .line 148
    .line 149
    iget-object p1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    .line 153
    move-result-object p1

    .line 154
    goto :goto_4

    .line 155
    :cond_a
    move v4, p2

    .line 156
    .line 157
    :goto_4
    add-int/lit8 p2, v4, 0x1

    .line 158
    int-to-char v2, v2

    .line 159
    .line 160
    aput-char v2, p1, v4

    .line 161
    .line 162
    goto/16 :goto_0

    .line 163
    .line 164
    :cond_b
    add-int/lit8 v6, p2, 0x1

    .line 165
    int-to-char v2, v2

    .line 166
    .line 167
    aput-char v2, p1, p2

    .line 168
    move v2, v5

    .line 169
    move p2, v6

    .line 170
    .line 171
    goto/16 :goto_1

    .line 172
    .line 173
    :cond_c
    iput v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 174
    .line 175
    goto/16 :goto_0
.end method

.method private final _isNextTokenNameMaybe(ILcom/fasterxml/jackson/core/SerializableString;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parseName(I)Lcom/fasterxml/jackson/core/sym/Name;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/sym/Name;->getName()Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->setCurrentName(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p2}, Lcom/fasterxml/jackson/core/SerializableString;->getValue()Ljava/lang/String;

    .line 17
    move-result-object p2

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    move-result p1

    .line 22
    .line 23
    sget-object p2, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    .line 24
    .line 25
    iput-object p2, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipWS()I

    .line 29
    move-result p2

    .line 30
    .line 31
    const/16 v0, 0x3a

    .line 32
    .line 33
    if-eq p2, v0, :cond_0

    .line 34
    .line 35
    .line 36
    const-string/jumbo v0, "was expecting a colon to separate field name and value"

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipWS()I

    .line 43
    move-result p2

    .line 44
    .line 45
    const/16 v0, 0x22

    .line 46
    const/4 v1, 0x1

    .line 47
    .line 48
    if-ne p2, v0, :cond_1

    .line 49
    .line 50
    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenIncomplete:Z

    .line 51
    .line 52
    sget-object p2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    .line 53
    .line 54
    iput-object p2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 55
    return p1

    .line 56
    .line 57
    :cond_1
    const/16 v0, 0x2d

    .line 58
    .line 59
    if-eq p2, v0, :cond_8

    .line 60
    .line 61
    const/16 v0, 0x5b

    .line 62
    .line 63
    if-eq p2, v0, :cond_7

    .line 64
    .line 65
    const/16 v0, 0x5d

    .line 66
    .line 67
    if-eq p2, v0, :cond_5

    .line 68
    .line 69
    const/16 v0, 0x66

    .line 70
    .line 71
    if-eq p2, v0, :cond_4

    .line 72
    .line 73
    const/16 v0, 0x6e

    .line 74
    .line 75
    if-eq p2, v0, :cond_3

    .line 76
    .line 77
    const/16 v0, 0x74

    .line 78
    .line 79
    if-eq p2, v0, :cond_6

    .line 80
    .line 81
    const/16 v0, 0x7b

    .line 82
    .line 83
    if-eq p2, v0, :cond_2

    .line 84
    .line 85
    const/16 v0, 0x7d

    .line 86
    .line 87
    if-eq p2, v0, :cond_5

    .line 88
    .line 89
    .line 90
    packed-switch p2, :pswitch_data_0

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_handleUnexpectedValue(I)Lcom/fasterxml/jackson/core/JsonToken;

    .line 94
    move-result-object p2

    .line 95
    goto :goto_0

    .line 96
    .line 97
    :cond_2
    sget-object p2, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    .line 98
    goto :goto_0

    .line 99
    .line 100
    .line 101
    :cond_3
    const-string/jumbo p2, "null"

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, p2, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 105
    .line 106
    sget-object p2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    .line 107
    goto :goto_0

    .line 108
    .line 109
    :cond_4
    const-string p2, "false"

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, p2, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 113
    .line 114
    sget-object p2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    .line 115
    goto :goto_0

    .line 116
    .line 117
    :cond_5
    const-string v0, "expected a value"

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 121
    .line 122
    .line 123
    :cond_6
    const-string/jumbo p2, "true"

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, p2, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 127
    .line 128
    sget-object p2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    .line 129
    goto :goto_0

    .line 130
    .line 131
    :cond_7
    sget-object p2, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    .line 132
    goto :goto_0

    .line 133
    .line 134
    .line 135
    :cond_8
    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parseNumber(I)Lcom/fasterxml/jackson/core/JsonToken;

    .line 136
    move-result-object p2

    .line 137
    .line 138
    :goto_0
    iput-object p2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 139
    return p1

    .line 140
    nop

    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private final _isNextTokenNameYes()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 3
    .line 4
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 5
    const/4 v2, 0x1

    .line 6
    sub-int/2addr v1, v2

    .line 7
    .line 8
    const/16 v3, 0x5b

    .line 9
    .line 10
    const/16 v4, 0x7b

    .line 11
    .line 12
    const/16 v5, 0x22

    .line 13
    .line 14
    if-ge v0, v1, :cond_4

    .line 15
    .line 16
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 17
    .line 18
    aget-byte v6, v1, v0

    .line 19
    .line 20
    const/16 v7, 0x3a

    .line 21
    .line 22
    if-ne v6, v7, :cond_4

    .line 23
    .line 24
    add-int/lit8 v6, v0, 0x1

    .line 25
    .line 26
    aget-byte v1, v1, v6

    .line 27
    .line 28
    add-int/lit8 v6, v0, 0x2

    .line 29
    .line 30
    iput v6, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 31
    .line 32
    if-ne v1, v5, :cond_0

    .line 33
    .line 34
    iput-boolean v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenIncomplete:Z

    .line 35
    .line 36
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 39
    return-void

    .line 40
    .line 41
    :cond_0
    if-ne v1, v4, :cond_1

    .line 42
    .line 43
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    .line 44
    .line 45
    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 46
    return-void

    .line 47
    .line 48
    :cond_1
    if-ne v1, v3, :cond_2

    .line 49
    .line 50
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    .line 51
    .line 52
    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 53
    return-void

    .line 54
    .line 55
    :cond_2
    and-int/lit16 v1, v1, 0xff

    .line 56
    .line 57
    const/16 v6, 0x20

    .line 58
    .line 59
    if-le v1, v6, :cond_3

    .line 60
    .line 61
    const/16 v6, 0x2f

    .line 62
    .line 63
    if-ne v1, v6, :cond_5

    .line 64
    :cond_3
    add-int/2addr v0, v2

    .line 65
    .line 66
    iput v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 67
    .line 68
    .line 69
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipWS()I

    .line 70
    move-result v1

    .line 71
    goto :goto_0

    .line 72
    .line 73
    .line 74
    :cond_4
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipColon()I

    .line 75
    move-result v1

    .line 76
    .line 77
    :cond_5
    :goto_0
    if-eq v1, v5, :cond_d

    .line 78
    .line 79
    const/16 v0, 0x2d

    .line 80
    .line 81
    if-eq v1, v0, :cond_c

    .line 82
    .line 83
    if-eq v1, v3, :cond_b

    .line 84
    .line 85
    const/16 v0, 0x5d

    .line 86
    .line 87
    if-eq v1, v0, :cond_9

    .line 88
    .line 89
    const/16 v0, 0x66

    .line 90
    .line 91
    if-eq v1, v0, :cond_8

    .line 92
    .line 93
    const/16 v0, 0x6e

    .line 94
    .line 95
    if-eq v1, v0, :cond_7

    .line 96
    .line 97
    const/16 v0, 0x74

    .line 98
    .line 99
    if-eq v1, v0, :cond_a

    .line 100
    .line 101
    if-eq v1, v4, :cond_6

    .line 102
    .line 103
    const/16 v0, 0x7d

    .line 104
    .line 105
    if-eq v1, v0, :cond_9

    .line 106
    .line 107
    .line 108
    packed-switch v1, :pswitch_data_0

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_handleUnexpectedValue(I)Lcom/fasterxml/jackson/core/JsonToken;

    .line 112
    move-result-object v0

    .line 113
    .line 114
    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 115
    return-void

    .line 116
    .line 117
    :cond_6
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    .line 118
    .line 119
    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 120
    return-void

    .line 121
    .line 122
    .line 123
    :cond_7
    const-string/jumbo v0, "null"

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, v0, v2}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 127
    .line 128
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    .line 129
    .line 130
    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 131
    return-void

    .line 132
    .line 133
    :cond_8
    const-string v0, "false"

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, v0, v2}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 137
    .line 138
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    .line 139
    .line 140
    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 141
    return-void

    .line 142
    .line 143
    :cond_9
    const-string v0, "expected a value"

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 147
    .line 148
    .line 149
    :cond_a
    const-string/jumbo v0, "true"

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0, v0, v2}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 153
    .line 154
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    .line 155
    .line 156
    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 157
    return-void

    .line 158
    .line 159
    :cond_b
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    .line 160
    .line 161
    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 162
    return-void

    .line 163
    .line 164
    .line 165
    :cond_c
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parseNumber(I)Lcom/fasterxml/jackson/core/JsonToken;

    .line 166
    move-result-object v0

    .line 167
    .line 168
    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 169
    return-void

    .line 170
    .line 171
    :cond_d
    iput-boolean v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenIncomplete:Z

    .line 172
    .line 173
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    .line 174
    .line 175
    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 176
    return-void

    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private final _nextAfterName()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_nameCopied:Z

    .line 4
    .line 5
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    iput-object v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 9
    .line 10
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 15
    .line 16
    iget v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_tokenInputRow:I

    .line 17
    .line 18
    iget v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_tokenInputCol:I

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildArrayContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    iput-object v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    .line 28
    .line 29
    if-ne v0, v1, :cond_1

    .line 30
    .line 31
    iget-object v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 32
    .line 33
    iget v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_tokenInputRow:I

    .line 34
    .line 35
    iget v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_tokenInputCol:I

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildObjectContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    iput-object v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 42
    .line 43
    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 44
    return-object v0
.end method

.method private final _nextTokenNotInObject(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 1
    .line 2
    const/16 v0, 0x22

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenIncomplete:Z

    .line 8
    .line 9
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 12
    return-object p1

    .line 13
    .line 14
    :cond_0
    const/16 v0, 0x2d

    .line 15
    .line 16
    if-eq p1, v0, :cond_7

    .line 17
    .line 18
    const/16 v0, 0x5b

    .line 19
    .line 20
    if-eq p1, v0, :cond_6

    .line 21
    .line 22
    const/16 v0, 0x5d

    .line 23
    .line 24
    if-eq p1, v0, :cond_4

    .line 25
    .line 26
    const/16 v0, 0x66

    .line 27
    .line 28
    if-eq p1, v0, :cond_3

    .line 29
    .line 30
    const/16 v0, 0x6e

    .line 31
    .line 32
    if-eq p1, v0, :cond_2

    .line 33
    .line 34
    const/16 v0, 0x74

    .line 35
    .line 36
    if-eq p1, v0, :cond_5

    .line 37
    .line 38
    const/16 v0, 0x7b

    .line 39
    .line 40
    if-eq p1, v0, :cond_1

    .line 41
    .line 42
    const/16 v0, 0x7d

    .line 43
    .line 44
    if-eq p1, v0, :cond_4

    .line 45
    .line 46
    .line 47
    packed-switch p1, :pswitch_data_0

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_handleUnexpectedValue(I)Lcom/fasterxml/jackson/core/JsonToken;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    iput-object p1, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 54
    return-object p1

    .line 55
    .line 56
    :cond_1
    iget-object p1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 57
    .line 58
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_tokenInputRow:I

    .line 59
    .line 60
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_tokenInputCol:I

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildObjectContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    iput-object p1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 67
    .line 68
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    .line 69
    .line 70
    iput-object p1, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 71
    return-object p1

    .line 72
    .line 73
    .line 74
    :cond_2
    const-string/jumbo p1, "null"

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 78
    .line 79
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    .line 80
    .line 81
    iput-object p1, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 82
    return-object p1

    .line 83
    .line 84
    :cond_3
    const-string p1, "false"

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 88
    .line 89
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    .line 90
    .line 91
    iput-object p1, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 92
    return-object p1

    .line 93
    .line 94
    :cond_4
    const-string v0, "expected a value"

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 98
    .line 99
    .line 100
    :cond_5
    const-string/jumbo p1, "true"

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 104
    .line 105
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    .line 106
    .line 107
    iput-object p1, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 108
    return-object p1

    .line 109
    .line 110
    :cond_6
    iget-object p1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 111
    .line 112
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_tokenInputRow:I

    .line 113
    .line 114
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_tokenInputCol:I

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildArrayContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 118
    move-result-object p1

    .line 119
    .line 120
    iput-object p1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 121
    .line 122
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    .line 123
    .line 124
    iput-object p1, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 125
    return-object p1

    .line 126
    .line 127
    .line 128
    :cond_7
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parseNumber(I)Lcom/fasterxml/jackson/core/JsonToken;

    .line 129
    move-result-object p1

    .line 130
    .line 131
    iput-object p1, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 132
    return-object p1

    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private final _parseFloat([CIIZI)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 1
    .line 2
    const/16 v0, 0x2e

    .line 3
    .line 4
    const/16 v1, 0x39

    .line 5
    .line 6
    const/16 v2, 0x30

    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    .line 10
    if-ne p3, v0, :cond_4

    .line 11
    .line 12
    add-int/lit8 v0, p2, 0x1

    .line 13
    int-to-char v5, p3

    .line 14
    .line 15
    aput-char v5, p1, p2

    .line 16
    move p2, v0

    .line 17
    move v0, v4

    .line 18
    .line 19
    :goto_0
    iget v5, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 20
    .line 21
    iget v6, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 22
    .line 23
    if-lt v5, v6, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMore()Z

    .line 27
    move-result v5

    .line 28
    .line 29
    if-nez v5, :cond_0

    .line 30
    move v5, v3

    .line 31
    goto :goto_2

    .line 32
    .line 33
    :cond_0
    iget-object p3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 34
    .line 35
    iget v5, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 36
    .line 37
    add-int/lit8 v6, v5, 0x1

    .line 38
    .line 39
    iput v6, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 40
    .line 41
    aget-byte p3, p3, v5

    .line 42
    .line 43
    and-int/lit16 p3, p3, 0xff

    .line 44
    .line 45
    if-lt p3, v2, :cond_3

    .line 46
    .line 47
    if-le p3, v1, :cond_1

    .line 48
    goto :goto_1

    .line 49
    .line 50
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 51
    array-length v5, p1

    .line 52
    .line 53
    if-lt p2, v5, :cond_2

    .line 54
    .line 55
    iget-object p1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    .line 59
    move-result-object p1

    .line 60
    move p2, v4

    .line 61
    .line 62
    :cond_2
    add-int/lit8 v5, p2, 0x1

    .line 63
    int-to-char v6, p3

    .line 64
    .line 65
    aput-char v6, p1, p2

    .line 66
    move p2, v5

    .line 67
    goto :goto_0

    .line 68
    :cond_3
    :goto_1
    move v5, v4

    .line 69
    .line 70
    :goto_2
    if-nez v0, :cond_5

    .line 71
    .line 72
    const-string v6, "Decimal point not followed by a digit"

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, p3, v6}, Lcom/fasterxml/jackson/core/base/ParserBase;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    .line 76
    goto :goto_3

    .line 77
    :cond_4
    move v0, v4

    .line 78
    move v5, v0

    .line 79
    .line 80
    :cond_5
    :goto_3
    const/16 v6, 0x65

    .line 81
    .line 82
    if-eq p3, v6, :cond_6

    .line 83
    .line 84
    const/16 v6, 0x45

    .line 85
    .line 86
    if-ne p3, v6, :cond_10

    .line 87
    :cond_6
    array-length v6, p1

    .line 88
    .line 89
    if-lt p2, v6, :cond_7

    .line 90
    .line 91
    iget-object p1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    .line 95
    move-result-object p1

    .line 96
    move p2, v4

    .line 97
    .line 98
    :cond_7
    add-int/lit8 v6, p2, 0x1

    .line 99
    int-to-char p3, p3

    .line 100
    .line 101
    aput-char p3, p1, p2

    .line 102
    .line 103
    iget p2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 104
    .line 105
    iget p3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 106
    .line 107
    if-lt p2, p3, :cond_8

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->loadMoreGuaranteed()V

    .line 111
    .line 112
    :cond_8
    iget-object p2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 113
    .line 114
    iget p3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 115
    .line 116
    add-int/lit8 v7, p3, 0x1

    .line 117
    .line 118
    iput v7, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 119
    .line 120
    aget-byte p2, p2, p3

    .line 121
    .line 122
    and-int/lit16 p2, p2, 0xff

    .line 123
    .line 124
    const/16 p3, 0x2d

    .line 125
    .line 126
    if-eq p2, p3, :cond_a

    .line 127
    .line 128
    const/16 p3, 0x2b

    .line 129
    .line 130
    if-ne p2, p3, :cond_9

    .line 131
    goto :goto_5

    .line 132
    :cond_9
    :goto_4
    move p3, p2

    .line 133
    move p2, v4

    .line 134
    goto :goto_6

    .line 135
    :cond_a
    :goto_5
    array-length p3, p1

    .line 136
    .line 137
    if-lt v6, p3, :cond_b

    .line 138
    .line 139
    iget-object p1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    .line 143
    move-result-object p1

    .line 144
    move v6, v4

    .line 145
    .line 146
    :cond_b
    add-int/lit8 p3, v6, 0x1

    .line 147
    int-to-char p2, p2

    .line 148
    .line 149
    aput-char p2, p1, v6

    .line 150
    .line 151
    iget p2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 152
    .line 153
    iget v6, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 154
    .line 155
    if-lt p2, v6, :cond_c

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->loadMoreGuaranteed()V

    .line 159
    .line 160
    :cond_c
    iget-object p2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 161
    .line 162
    iget v6, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 163
    .line 164
    add-int/lit8 v7, v6, 0x1

    .line 165
    .line 166
    iput v7, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 167
    .line 168
    aget-byte p2, p2, v6

    .line 169
    .line 170
    and-int/lit16 p2, p2, 0xff

    .line 171
    move v6, p3

    .line 172
    goto :goto_4

    .line 173
    .line 174
    :goto_6
    if-gt p3, v1, :cond_f

    .line 175
    .line 176
    if-lt p3, v2, :cond_f

    .line 177
    .line 178
    add-int/lit8 p2, p2, 0x1

    .line 179
    array-length v7, p1

    .line 180
    .line 181
    if-lt v6, v7, :cond_d

    .line 182
    .line 183
    iget-object p1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    .line 187
    move-result-object p1

    .line 188
    move v6, v4

    .line 189
    .line 190
    :cond_d
    add-int/lit8 v7, v6, 0x1

    .line 191
    int-to-char v8, p3

    .line 192
    .line 193
    aput-char v8, p1, v6

    .line 194
    .line 195
    iget v6, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 196
    .line 197
    iget v8, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 198
    .line 199
    if-lt v6, v8, :cond_e

    .line 200
    .line 201
    .line 202
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMore()Z

    .line 203
    move-result v6

    .line 204
    .line 205
    if-nez v6, :cond_e

    .line 206
    move v4, p2

    .line 207
    move v5, v3

    .line 208
    move p2, v7

    .line 209
    goto :goto_7

    .line 210
    .line 211
    :cond_e
    iget-object p3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 212
    .line 213
    iget v6, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 214
    .line 215
    add-int/lit8 v8, v6, 0x1

    .line 216
    .line 217
    iput v8, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 218
    .line 219
    aget-byte p3, p3, v6

    .line 220
    .line 221
    and-int/lit16 p3, p3, 0xff

    .line 222
    move v6, v7

    .line 223
    goto :goto_6

    .line 224
    :cond_f
    move v4, p2

    .line 225
    move p2, v6

    .line 226
    .line 227
    :goto_7
    if-nez v4, :cond_10

    .line 228
    .line 229
    const-string p1, "Exponent indicator not followed by a digit"

    .line 230
    .line 231
    .line 232
    invoke-virtual {p0, p3, p1}, Lcom/fasterxml/jackson/core/base/ParserBase;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    .line 233
    .line 234
    :cond_10
    if-nez v5, :cond_11

    .line 235
    .line 236
    iget p1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 237
    sub-int/2addr p1, v3

    .line 238
    .line 239
    iput p1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 240
    .line 241
    iget-object p1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 242
    .line 243
    .line 244
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonStreamContext;->inRoot()Z

    .line 245
    move-result p1

    .line 246
    .line 247
    if-eqz p1, :cond_11

    .line 248
    .line 249
    .line 250
    invoke-direct {p0, p3}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_verifyRootSpace(I)V

    .line 251
    .line 252
    :cond_11
    iget-object p1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 253
    .line 254
    .line 255
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {p0, p4, p5, v0, v4}, Lcom/fasterxml/jackson/core/base/ParserBase;->resetFloat(ZIII)Lcom/fasterxml/jackson/core/JsonToken;

    .line 259
    move-result-object p1

    .line 260
    return-object p1
.end method

.method private final _parserNumber2([CIZI)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 1
    move-object v1, p1

    .line 2
    move v2, p2

    .line 3
    move v5, p4

    .line 4
    .line 5
    :goto_0
    iget p1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 6
    .line 7
    iget p2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 8
    .line 9
    if-lt p1, p2, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMore()Z

    .line 13
    move-result p1

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p3, v5}, Lcom/fasterxml/jackson/core/base/ParserBase;->resetInt(ZI)Lcom/fasterxml/jackson/core/JsonToken;

    .line 24
    move-result-object p1

    .line 25
    return-object p1

    .line 26
    .line 27
    :cond_0
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 28
    .line 29
    iget p2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 30
    .line 31
    add-int/lit8 p4, p2, 0x1

    .line 32
    .line 33
    iput p4, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 34
    .line 35
    aget-byte p1, p1, p2

    .line 36
    .line 37
    and-int/lit16 v3, p1, 0xff

    .line 38
    .line 39
    const/16 p1, 0x39

    .line 40
    .line 41
    if-gt v3, p1, :cond_3

    .line 42
    .line 43
    const/16 p1, 0x30

    .line 44
    .line 45
    if-ge v3, p1, :cond_1

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    array-length p1, v1

    .line 48
    .line 49
    if-lt v2, p1, :cond_2

    .line 50
    .line 51
    iget-object p1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    .line 55
    move-result-object p1

    .line 56
    const/4 v2, 0x0

    .line 57
    move-object v1, p1

    .line 58
    .line 59
    :cond_2
    add-int/lit8 p1, v2, 0x1

    .line 60
    int-to-char p2, v3

    .line 61
    .line 62
    aput-char p2, v1, v2

    .line 63
    .line 64
    add-int/lit8 v5, v5, 0x1

    .line 65
    move v2, p1

    .line 66
    goto :goto_0

    .line 67
    .line 68
    :cond_3
    :goto_1
    const/16 p1, 0x2e

    .line 69
    .line 70
    if-eq v3, p1, :cond_6

    .line 71
    .line 72
    const/16 p1, 0x65

    .line 73
    .line 74
    if-eq v3, p1, :cond_6

    .line 75
    .line 76
    const/16 p1, 0x45

    .line 77
    .line 78
    if-ne v3, p1, :cond_4

    .line 79
    goto :goto_2

    .line 80
    .line 81
    :cond_4
    iput p2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 82
    .line 83
    iget-object p1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 87
    .line 88
    iget-object p1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonStreamContext;->inRoot()Z

    .line 92
    move-result p1

    .line 93
    .line 94
    if-eqz p1, :cond_5

    .line 95
    .line 96
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 97
    .line 98
    iget p2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 99
    .line 100
    add-int/lit8 p4, p2, 0x1

    .line 101
    .line 102
    iput p4, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 103
    .line 104
    aget-byte p1, p1, p2

    .line 105
    .line 106
    and-int/lit16 p1, p1, 0xff

    .line 107
    .line 108
    .line 109
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_verifyRootSpace(I)V

    .line 110
    .line 111
    .line 112
    :cond_5
    invoke-virtual {p0, p3, v5}, Lcom/fasterxml/jackson/core/base/ParserBase;->resetInt(ZI)Lcom/fasterxml/jackson/core/JsonToken;

    .line 113
    move-result-object p1

    .line 114
    return-object p1

    .line 115
    :cond_6
    :goto_2
    move-object v0, p0

    .line 116
    move v4, p3

    .line 117
    .line 118
    .line 119
    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parseFloat([CIIZI)Lcom/fasterxml/jackson/core/JsonToken;

    .line 120
    move-result-object p1

    .line 121
    return-object p1
.end method

.method private final _skipCComment()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->getInputCodeComment()[I

    .line 4
    move-result-object v0

    .line 5
    .line 6
    :cond_0
    :goto_0
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 7
    .line 8
    iget v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 9
    .line 10
    if-lt v1, v2, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMore()Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-eqz v1, :cond_3

    .line 17
    .line 18
    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 19
    .line 20
    iget v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 21
    .line 22
    add-int/lit8 v3, v2, 0x1

    .line 23
    .line 24
    iput v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 25
    .line 26
    aget-byte v1, v1, v2

    .line 27
    .line 28
    and-int/lit16 v1, v1, 0xff

    .line 29
    .line 30
    aget v2, v0, v1

    .line 31
    .line 32
    if-eqz v2, :cond_0

    .line 33
    const/4 v4, 0x2

    .line 34
    .line 35
    if-eq v2, v4, :cond_9

    .line 36
    const/4 v4, 0x3

    .line 37
    .line 38
    if-eq v2, v4, :cond_8

    .line 39
    const/4 v4, 0x4

    .line 40
    .line 41
    if-eq v2, v4, :cond_7

    .line 42
    .line 43
    const/16 v4, 0xa

    .line 44
    .line 45
    if-eq v2, v4, :cond_6

    .line 46
    .line 47
    const/16 v4, 0xd

    .line 48
    .line 49
    if-eq v2, v4, :cond_5

    .line 50
    .line 51
    const/16 v4, 0x2a

    .line 52
    .line 53
    if-eq v2, v4, :cond_2

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidChar(I)V

    .line 57
    goto :goto_0

    .line 58
    .line 59
    :cond_2
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 60
    .line 61
    if-lt v3, v1, :cond_4

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMore()Z

    .line 65
    move-result v1

    .line 66
    .line 67
    if-nez v1, :cond_4

    .line 68
    .line 69
    :cond_3
    const-string v0, " in a comment"

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 73
    return-void

    .line 74
    .line 75
    :cond_4
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 76
    .line 77
    iget v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 78
    .line 79
    aget-byte v1, v1, v2

    .line 80
    .line 81
    const/16 v3, 0x2f

    .line 82
    .line 83
    if-ne v1, v3, :cond_0

    .line 84
    .line 85
    add-int/lit8 v2, v2, 0x1

    .line 86
    .line 87
    iput v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 88
    return-void

    .line 89
    .line 90
    .line 91
    :cond_5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipCR()V

    .line 92
    goto :goto_0

    .line 93
    .line 94
    :cond_6
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_currInputRow:I

    .line 95
    .line 96
    add-int/lit8 v1, v1, 0x1

    .line 97
    .line 98
    iput v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_currInputRow:I

    .line 99
    .line 100
    iput v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_currInputRowStart:I

    .line 101
    goto :goto_0

    .line 102
    .line 103
    .line 104
    :cond_7
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipUtf8_4(I)V

    .line 105
    goto :goto_0

    .line 106
    .line 107
    .line 108
    :cond_8
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipUtf8_3(I)V

    .line 109
    goto :goto_0

    .line 110
    .line 111
    .line 112
    :cond_9
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipUtf8_2(I)V

    .line 113
    goto :goto_0
.end method

.method private final _skipColon()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 3
    .line 4
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 5
    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->loadMoreGuaranteed()V

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 12
    .line 13
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 14
    .line 15
    add-int/lit8 v2, v1, 0x1

    .line 16
    .line 17
    iput v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 18
    .line 19
    aget-byte v3, v0, v1

    .line 20
    .line 21
    const/16 v4, 0xd

    .line 22
    .line 23
    const/16 v5, 0xa

    .line 24
    .line 25
    const/16 v6, 0x9

    .line 26
    .line 27
    const/16 v7, 0x3a

    .line 28
    .line 29
    const/16 v8, 0x2f

    .line 30
    .line 31
    const/16 v9, 0x20

    .line 32
    .line 33
    if-ne v3, v7, :cond_1

    .line 34
    .line 35
    iget v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 36
    .line 37
    if-ge v2, v3, :cond_3

    .line 38
    .line 39
    aget-byte v0, v0, v2

    .line 40
    .line 41
    and-int/lit16 v0, v0, 0xff

    .line 42
    .line 43
    if-le v0, v9, :cond_3

    .line 44
    .line 45
    if-eq v0, v8, :cond_3

    .line 46
    .line 47
    add-int/lit8 v1, v1, 0x2

    .line 48
    .line 49
    iput v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 50
    return v0

    .line 51
    .line 52
    :cond_1
    and-int/lit16 v0, v3, 0xff

    .line 53
    .line 54
    :goto_0
    if-eq v0, v6, :cond_d

    .line 55
    .line 56
    if-eq v0, v5, :cond_c

    .line 57
    .line 58
    if-eq v0, v4, :cond_b

    .line 59
    .line 60
    if-eq v0, v9, :cond_d

    .line 61
    .line 62
    if-eq v0, v8, :cond_a

    .line 63
    .line 64
    if-ge v0, v9, :cond_2

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_throwInvalidSpace(I)V

    .line 68
    .line 69
    :cond_2
    if-eq v0, v7, :cond_3

    .line 70
    .line 71
    .line 72
    const-string/jumbo v1, "was expecting a colon to separate field name and value"

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 76
    .line 77
    :cond_3
    :goto_1
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 78
    .line 79
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 80
    .line 81
    if-lt v0, v1, :cond_5

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMore()Z

    .line 85
    move-result v0

    .line 86
    .line 87
    if-eqz v0, :cond_4

    .line 88
    goto :goto_2

    .line 89
    .line 90
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    const-string v1, "Unexpected end-of-input within/between "

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    iget-object v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonStreamContext;->getTypeDesc()Ljava/lang/String;

    .line 104
    move-result-object v1

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    const-string v1, " entries"

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    move-result-object v0

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonParser;->_constructError(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    .line 120
    move-result-object v0

    .line 121
    throw v0

    .line 122
    .line 123
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 124
    .line 125
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 126
    .line 127
    add-int/lit8 v2, v1, 0x1

    .line 128
    .line 129
    iput v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 130
    .line 131
    aget-byte v0, v0, v1

    .line 132
    .line 133
    and-int/lit16 v0, v0, 0xff

    .line 134
    .line 135
    if-le v0, v9, :cond_7

    .line 136
    .line 137
    if-eq v0, v8, :cond_6

    .line 138
    return v0

    .line 139
    .line 140
    .line 141
    :cond_6
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipComment()V

    .line 142
    goto :goto_1

    .line 143
    .line 144
    :cond_7
    if-eq v0, v9, :cond_3

    .line 145
    .line 146
    if-ne v0, v5, :cond_8

    .line 147
    .line 148
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_currInputRow:I

    .line 149
    .line 150
    add-int/lit8 v0, v0, 0x1

    .line 151
    .line 152
    iput v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_currInputRow:I

    .line 153
    .line 154
    iput v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_currInputRowStart:I

    .line 155
    goto :goto_1

    .line 156
    .line 157
    :cond_8
    if-ne v0, v4, :cond_9

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipCR()V

    .line 161
    goto :goto_1

    .line 162
    .line 163
    :cond_9
    if-eq v0, v6, :cond_3

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_throwInvalidSpace(I)V

    .line 167
    goto :goto_1

    .line 168
    .line 169
    .line 170
    :cond_a
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipComment()V

    .line 171
    goto :goto_3

    .line 172
    .line 173
    .line 174
    :cond_b
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipCR()V

    .line 175
    goto :goto_3

    .line 176
    .line 177
    :cond_c
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_currInputRow:I

    .line 178
    .line 179
    add-int/lit8 v0, v0, 0x1

    .line 180
    .line 181
    iput v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_currInputRow:I

    .line 182
    .line 183
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 184
    .line 185
    iput v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_currInputRowStart:I

    .line 186
    .line 187
    :cond_d
    :goto_3
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 188
    .line 189
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 190
    .line 191
    if-lt v0, v1, :cond_e

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->loadMoreGuaranteed()V

    .line 195
    .line 196
    :cond_e
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 197
    .line 198
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 199
    .line 200
    add-int/lit8 v2, v1, 0x1

    .line 201
    .line 202
    iput v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 203
    .line 204
    aget-byte v0, v0, v1

    .line 205
    .line 206
    and-int/lit16 v0, v0, 0xff

    .line 207
    .line 208
    goto/16 :goto_0
.end method

.method private final _skipComment()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_COMMENTS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonParser;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    const/16 v1, 0x2f

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const-string v0, "maybe a (non-standard) comment? (not recognized as one since Feature \'ALLOW_COMMENTS\' not enabled for parser)"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 16
    .line 17
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 18
    .line 19
    iget v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 20
    .line 21
    if-lt v0, v2, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMore()Z

    .line 25
    move-result v0

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    const-string v0, " in a comment"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 33
    .line 34
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 35
    .line 36
    iget v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 37
    .line 38
    add-int/lit8 v3, v2, 0x1

    .line 39
    .line 40
    iput v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 41
    .line 42
    aget-byte v0, v0, v2

    .line 43
    .line 44
    and-int/lit16 v0, v0, 0xff

    .line 45
    .line 46
    if-ne v0, v1, :cond_2

    .line 47
    .line 48
    .line 49
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipLine()V

    .line 50
    goto :goto_0

    .line 51
    .line 52
    :cond_2
    const/16 v1, 0x2a

    .line 53
    .line 54
    if-ne v0, v1, :cond_3

    .line 55
    .line 56
    .line 57
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipCComment()V

    .line 58
    goto :goto_0

    .line 59
    .line 60
    .line 61
    :cond_3
    const-string/jumbo v1, "was expecting either \'*\' or \'/\' for a comment"

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 65
    :goto_0
    return-void
.end method

.method private final _skipLine()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->getInputCodeComment()[I

    .line 4
    move-result-object v0

    .line 5
    .line 6
    :cond_0
    :goto_0
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 7
    .line 8
    iget v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 9
    .line 10
    if-lt v1, v2, :cond_2

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMore()Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    return-void

    .line 19
    .line 20
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 21
    .line 22
    iget v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 23
    .line 24
    add-int/lit8 v3, v2, 0x1

    .line 25
    .line 26
    iput v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 27
    .line 28
    aget-byte v1, v1, v2

    .line 29
    .line 30
    and-int/lit16 v1, v1, 0xff

    .line 31
    .line 32
    aget v2, v0, v1

    .line 33
    .line 34
    if-eqz v2, :cond_0

    .line 35
    const/4 v4, 0x2

    .line 36
    .line 37
    if-eq v2, v4, :cond_7

    .line 38
    const/4 v4, 0x3

    .line 39
    .line 40
    if-eq v2, v4, :cond_6

    .line 41
    const/4 v4, 0x4

    .line 42
    .line 43
    if-eq v2, v4, :cond_5

    .line 44
    .line 45
    const/16 v4, 0xa

    .line 46
    .line 47
    if-eq v2, v4, :cond_4

    .line 48
    .line 49
    const/16 v3, 0xd

    .line 50
    .line 51
    if-eq v2, v3, :cond_3

    .line 52
    .line 53
    const/16 v3, 0x2a

    .line 54
    .line 55
    if-eq v2, v3, :cond_0

    .line 56
    .line 57
    if-gez v2, :cond_0

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidChar(I)V

    .line 61
    goto :goto_0

    .line 62
    .line 63
    .line 64
    :cond_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipCR()V

    .line 65
    return-void

    .line 66
    .line 67
    :cond_4
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_currInputRow:I

    .line 68
    .line 69
    add-int/lit8 v0, v0, 0x1

    .line 70
    .line 71
    iput v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_currInputRow:I

    .line 72
    .line 73
    iput v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_currInputRowStart:I

    .line 74
    return-void

    .line 75
    .line 76
    .line 77
    :cond_5
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipUtf8_4(I)V

    .line 78
    goto :goto_0

    .line 79
    .line 80
    .line 81
    :cond_6
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipUtf8_3(I)V

    .line 82
    goto :goto_0

    .line 83
    .line 84
    .line 85
    :cond_7
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipUtf8_2(I)V

    .line 86
    goto :goto_0
.end method

.method private final _skipUtf8_2(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget p1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 3
    .line 4
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 5
    .line 6
    if-lt p1, v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->loadMoreGuaranteed()V

    .line 10
    .line 11
    :cond_0
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 12
    .line 13
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 14
    .line 15
    add-int/lit8 v1, v0, 0x1

    .line 16
    .line 17
    iput v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 18
    .line 19
    aget-byte p1, p1, v0

    .line 20
    .line 21
    and-int/lit16 v0, p1, 0xc0

    .line 22
    .line 23
    const/16 v2, 0x80

    .line 24
    .line 25
    if-eq v0, v2, :cond_1

    .line 26
    .line 27
    and-int/lit16 p1, p1, 0xff

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidOther(II)V

    .line 31
    :cond_1
    return-void
.end method

.method private final _skipUtf8_3(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget p1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 3
    .line 4
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 5
    .line 6
    if-lt p1, v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->loadMoreGuaranteed()V

    .line 10
    .line 11
    :cond_0
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 12
    .line 13
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 14
    .line 15
    add-int/lit8 v1, v0, 0x1

    .line 16
    .line 17
    iput v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 18
    .line 19
    aget-byte p1, p1, v0

    .line 20
    .line 21
    and-int/lit16 v0, p1, 0xc0

    .line 22
    .line 23
    const/16 v2, 0x80

    .line 24
    .line 25
    if-eq v0, v2, :cond_1

    .line 26
    .line 27
    and-int/lit16 p1, p1, 0xff

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidOther(II)V

    .line 31
    .line 32
    :cond_1
    iget p1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 33
    .line 34
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 35
    .line 36
    if-lt p1, v0, :cond_2

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->loadMoreGuaranteed()V

    .line 40
    .line 41
    :cond_2
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 42
    .line 43
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 44
    .line 45
    add-int/lit8 v1, v0, 0x1

    .line 46
    .line 47
    iput v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 48
    .line 49
    aget-byte p1, p1, v0

    .line 50
    .line 51
    and-int/lit16 v0, p1, 0xc0

    .line 52
    .line 53
    if-eq v0, v2, :cond_3

    .line 54
    .line 55
    and-int/lit16 p1, p1, 0xff

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidOther(II)V

    .line 59
    :cond_3
    return-void
.end method

.method private final _skipUtf8_4(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget p1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 3
    .line 4
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 5
    .line 6
    if-lt p1, v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->loadMoreGuaranteed()V

    .line 10
    .line 11
    :cond_0
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 12
    .line 13
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 14
    .line 15
    add-int/lit8 v1, v0, 0x1

    .line 16
    .line 17
    iput v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 18
    .line 19
    aget-byte p1, p1, v0

    .line 20
    .line 21
    and-int/lit16 v0, p1, 0xc0

    .line 22
    .line 23
    const/16 v2, 0x80

    .line 24
    .line 25
    if-eq v0, v2, :cond_1

    .line 26
    .line 27
    and-int/lit16 p1, p1, 0xff

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidOther(II)V

    .line 31
    .line 32
    :cond_1
    iget p1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 33
    .line 34
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 35
    .line 36
    if-lt p1, v0, :cond_2

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->loadMoreGuaranteed()V

    .line 40
    .line 41
    :cond_2
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 42
    .line 43
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 44
    .line 45
    add-int/lit8 v1, v0, 0x1

    .line 46
    .line 47
    iput v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 48
    .line 49
    aget-byte p1, p1, v0

    .line 50
    .line 51
    and-int/lit16 v0, p1, 0xc0

    .line 52
    .line 53
    if-eq v0, v2, :cond_3

    .line 54
    .line 55
    and-int/lit16 p1, p1, 0xff

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidOther(II)V

    .line 59
    .line 60
    :cond_3
    iget p1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 61
    .line 62
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 63
    .line 64
    if-lt p1, v0, :cond_4

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->loadMoreGuaranteed()V

    .line 68
    .line 69
    :cond_4
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 70
    .line 71
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 72
    .line 73
    add-int/lit8 v1, v0, 0x1

    .line 74
    .line 75
    iput v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 76
    .line 77
    aget-byte p1, p1, v0

    .line 78
    .line 79
    and-int/lit16 v0, p1, 0xc0

    .line 80
    .line 81
    if-eq v0, v2, :cond_5

    .line 82
    .line 83
    and-int/lit16 p1, p1, 0xff

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidOther(II)V

    .line 87
    :cond_5
    return-void
.end method

.method private final _skipWS()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_icWS:[I

    .line 3
    .line 4
    :cond_0
    :goto_0
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 5
    .line 6
    iget v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 7
    .line 8
    if-lt v1, v2, :cond_2

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMore()Z

    .line 12
    move-result v1

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    goto :goto_1

    .line 16
    .line 17
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    const-string v1, "Unexpected end-of-input within/between "

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonStreamContext;->getTypeDesc()Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v1, " entries"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonParser;->_constructError(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    .line 47
    move-result-object v0

    .line 48
    throw v0

    .line 49
    .line 50
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 51
    .line 52
    iget v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 53
    .line 54
    add-int/lit8 v3, v2, 0x1

    .line 55
    .line 56
    iput v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 57
    .line 58
    aget-byte v1, v1, v2

    .line 59
    .line 60
    and-int/lit16 v1, v1, 0xff

    .line 61
    .line 62
    aget v2, v0, v1

    .line 63
    .line 64
    if-eqz v2, :cond_b

    .line 65
    const/4 v4, 0x1

    .line 66
    .line 67
    if-eq v2, v4, :cond_0

    .line 68
    const/4 v5, 0x2

    .line 69
    .line 70
    if-eq v2, v5, :cond_a

    .line 71
    const/4 v5, 0x3

    .line 72
    .line 73
    if-eq v2, v5, :cond_9

    .line 74
    const/4 v5, 0x4

    .line 75
    .line 76
    if-eq v2, v5, :cond_8

    .line 77
    .line 78
    const/16 v5, 0xa

    .line 79
    .line 80
    if-eq v2, v5, :cond_7

    .line 81
    .line 82
    const/16 v3, 0xd

    .line 83
    .line 84
    if-eq v2, v3, :cond_6

    .line 85
    .line 86
    const/16 v3, 0x23

    .line 87
    .line 88
    if-eq v2, v3, :cond_5

    .line 89
    .line 90
    const/16 v3, 0x2f

    .line 91
    .line 92
    if-eq v2, v3, :cond_4

    .line 93
    .line 94
    const/16 v2, 0x20

    .line 95
    .line 96
    if-ge v1, v2, :cond_3

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_throwInvalidSpace(I)V

    .line 100
    .line 101
    .line 102
    :cond_3
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidChar(I)V

    .line 103
    goto :goto_0

    .line 104
    .line 105
    .line 106
    :cond_4
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipComment()V

    .line 107
    goto :goto_0

    .line 108
    .line 109
    .line 110
    :cond_5
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipYAMLComment()Z

    .line 111
    move-result v2

    .line 112
    .line 113
    if-nez v2, :cond_0

    .line 114
    return v1

    .line 115
    .line 116
    .line 117
    :cond_6
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipCR()V

    .line 118
    goto :goto_0

    .line 119
    .line 120
    :cond_7
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_currInputRow:I

    .line 121
    add-int/2addr v1, v4

    .line 122
    .line 123
    iput v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_currInputRow:I

    .line 124
    .line 125
    iput v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_currInputRowStart:I

    .line 126
    goto :goto_0

    .line 127
    .line 128
    .line 129
    :cond_8
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipUtf8_4(I)V

    .line 130
    goto :goto_0

    .line 131
    .line 132
    .line 133
    :cond_9
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipUtf8_3(I)V

    .line 134
    .line 135
    goto/16 :goto_0

    .line 136
    .line 137
    .line 138
    :cond_a
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipUtf8_2(I)V

    .line 139
    .line 140
    goto/16 :goto_0

    .line 141
    :cond_b
    return v1
.end method

.method private final _skipWSOrEnd()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_icWS:[I

    .line 3
    .line 4
    :cond_0
    :goto_0
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 5
    .line 6
    iget v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 7
    .line 8
    if-lt v1, v2, :cond_2

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMore()Z

    .line 12
    move-result v1

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    goto :goto_1

    .line 16
    .line 17
    .line 18
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->_handleEOF()V

    .line 19
    const/4 v0, -0x1

    .line 20
    return v0

    .line 21
    .line 22
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 23
    .line 24
    iget v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 25
    .line 26
    add-int/lit8 v3, v2, 0x1

    .line 27
    .line 28
    iput v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 29
    .line 30
    aget-byte v1, v1, v2

    .line 31
    .line 32
    and-int/lit16 v1, v1, 0xff

    .line 33
    .line 34
    aget v2, v0, v1

    .line 35
    .line 36
    if-eqz v2, :cond_a

    .line 37
    const/4 v4, 0x1

    .line 38
    .line 39
    if-eq v2, v4, :cond_0

    .line 40
    const/4 v5, 0x2

    .line 41
    .line 42
    if-eq v2, v5, :cond_9

    .line 43
    const/4 v5, 0x3

    .line 44
    .line 45
    if-eq v2, v5, :cond_8

    .line 46
    const/4 v5, 0x4

    .line 47
    .line 48
    if-eq v2, v5, :cond_7

    .line 49
    .line 50
    const/16 v5, 0xa

    .line 51
    .line 52
    if-eq v2, v5, :cond_6

    .line 53
    .line 54
    const/16 v3, 0xd

    .line 55
    .line 56
    if-eq v2, v3, :cond_5

    .line 57
    .line 58
    const/16 v3, 0x23

    .line 59
    .line 60
    if-eq v2, v3, :cond_4

    .line 61
    .line 62
    const/16 v3, 0x2f

    .line 63
    .line 64
    if-eq v2, v3, :cond_3

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidChar(I)V

    .line 68
    goto :goto_0

    .line 69
    .line 70
    .line 71
    :cond_3
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipComment()V

    .line 72
    goto :goto_0

    .line 73
    .line 74
    .line 75
    :cond_4
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipYAMLComment()Z

    .line 76
    move-result v2

    .line 77
    .line 78
    if-nez v2, :cond_0

    .line 79
    return v1

    .line 80
    .line 81
    .line 82
    :cond_5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipCR()V

    .line 83
    goto :goto_0

    .line 84
    .line 85
    :cond_6
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_currInputRow:I

    .line 86
    add-int/2addr v1, v4

    .line 87
    .line 88
    iput v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_currInputRow:I

    .line 89
    .line 90
    iput v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_currInputRowStart:I

    .line 91
    goto :goto_0

    .line 92
    .line 93
    .line 94
    :cond_7
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipUtf8_4(I)V

    .line 95
    goto :goto_0

    .line 96
    .line 97
    .line 98
    :cond_8
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipUtf8_3(I)V

    .line 99
    goto :goto_0

    .line 100
    .line 101
    .line 102
    :cond_9
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipUtf8_2(I)V

    .line 103
    goto :goto_0

    .line 104
    :cond_a
    return v1
.end method

.method private final _skipYAMLComment()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_YAML_COMMENTS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonParser;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    const/4 v0, 0x0

    .line 10
    return v0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipLine()V

    .line 14
    const/4 v0, 0x1

    .line 15
    return v0
.end method

.method private final _verifyNoLeadingZeroes()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 3
    .line 4
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 5
    .line 6
    const/16 v2, 0x30

    .line 7
    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMore()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    return v2

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 18
    .line 19
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 20
    .line 21
    aget-byte v0, v0, v1

    .line 22
    .line 23
    and-int/lit16 v0, v0, 0xff

    .line 24
    .line 25
    if-lt v0, v2, :cond_8

    .line 26
    .line 27
    const/16 v1, 0x39

    .line 28
    .line 29
    if-le v0, v1, :cond_1

    .line 30
    goto :goto_2

    .line 31
    .line 32
    :cond_1
    sget-object v3, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_NUMERIC_LEADING_ZEROS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/core/JsonParser;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    .line 36
    move-result v3

    .line 37
    .line 38
    if-nez v3, :cond_2

    .line 39
    .line 40
    const-string v3, "Leading zeroes not allowed"

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/core/base/ParserBase;->reportInvalidNumber(Ljava/lang/String;)V

    .line 44
    .line 45
    :cond_2
    iget v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 46
    .line 47
    add-int/lit8 v3, v3, 0x1

    .line 48
    .line 49
    iput v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 50
    .line 51
    if-ne v0, v2, :cond_7

    .line 52
    .line 53
    :cond_3
    iget v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 54
    .line 55
    iget v4, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 56
    .line 57
    if-lt v3, v4, :cond_4

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMore()Z

    .line 61
    move-result v3

    .line 62
    .line 63
    if-eqz v3, :cond_7

    .line 64
    .line 65
    :cond_4
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 66
    .line 67
    iget v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 68
    .line 69
    aget-byte v0, v0, v3

    .line 70
    .line 71
    and-int/lit16 v0, v0, 0xff

    .line 72
    .line 73
    if-lt v0, v2, :cond_6

    .line 74
    .line 75
    if-le v0, v1, :cond_5

    .line 76
    goto :goto_0

    .line 77
    .line 78
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 79
    .line 80
    iput v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 81
    .line 82
    if-eq v0, v2, :cond_3

    .line 83
    goto :goto_1

    .line 84
    :cond_6
    :goto_0
    return v2

    .line 85
    :cond_7
    :goto_1
    return v0

    .line 86
    :cond_8
    :goto_2
    return v2
.end method

.method private final _verifyRootSpace(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 3
    .line 4
    add-int/lit8 v0, v0, 0x1

    .line 5
    .line 6
    iput v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 7
    .line 8
    const/16 v1, 0x9

    .line 9
    .line 10
    if-eq p1, v1, :cond_2

    .line 11
    .line 12
    const/16 v1, 0xa

    .line 13
    .line 14
    if-eq p1, v1, :cond_1

    .line 15
    .line 16
    const/16 v0, 0xd

    .line 17
    .line 18
    if-eq p1, v0, :cond_0

    .line 19
    .line 20
    const/16 v0, 0x20

    .line 21
    .line 22
    if-eq p1, v0, :cond_2

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportMissingRootWS(I)V

    .line 26
    return-void

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipCR()V

    .line 30
    return-void

    .line 31
    .line 32
    :cond_1
    iget p1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_currInputRow:I

    .line 33
    .line 34
    add-int/lit8 p1, p1, 0x1

    .line 35
    .line 36
    iput p1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_currInputRow:I

    .line 37
    .line 38
    iput v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_currInputRowStart:I

    .line 39
    :cond_2
    return-void
.end method

.method private final addName([III)Lcom/fasterxml/jackson/core/sym/Name;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    move/from16 v2, p2

    .line 7
    .line 8
    move/from16 v3, p3

    .line 9
    .line 10
    shl-int/lit8 v4, v2, 0x2

    .line 11
    const/4 v5, 0x4

    .line 12
    sub-int/2addr v4, v5

    .line 13
    add-int/2addr v4, v3

    .line 14
    const/4 v7, 0x3

    .line 15
    .line 16
    if-ge v3, v5, :cond_0

    .line 17
    .line 18
    add-int/lit8 v8, v2, -0x1

    .line 19
    .line 20
    aget v9, v1, v8

    .line 21
    .line 22
    rsub-int/lit8 v10, v3, 0x4

    .line 23
    shl-int/2addr v10, v7

    .line 24
    .line 25
    shl-int v10, v9, v10

    .line 26
    .line 27
    aput v10, v1, v8

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v9, 0x0

    .line 30
    .line 31
    :goto_0
    iget-object v8, v0, Lcom/fasterxml/jackson/core/base/ParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v8}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    .line 35
    move-result-object v8

    .line 36
    const/4 v10, 0x0

    .line 37
    const/4 v11, 0x0

    .line 38
    .line 39
    :goto_1
    if-ge v10, v4, :cond_d

    .line 40
    .line 41
    shr-int/lit8 v12, v10, 0x2

    .line 42
    .line 43
    aget v12, v1, v12

    .line 44
    .line 45
    and-int/lit8 v13, v10, 0x3

    .line 46
    .line 47
    rsub-int/lit8 v13, v13, 0x3

    .line 48
    shl-int/2addr v13, v7

    .line 49
    shr-int/2addr v12, v13

    .line 50
    .line 51
    and-int/lit16 v13, v12, 0xff

    .line 52
    .line 53
    add-int/lit8 v14, v10, 0x1

    .line 54
    .line 55
    const/16 v15, 0x7f

    .line 56
    .line 57
    if-le v13, v15, :cond_b

    .line 58
    .line 59
    and-int/lit16 v15, v12, 0xe0

    .line 60
    .line 61
    const/16 v5, 0xc0

    .line 62
    .line 63
    if-ne v15, v5, :cond_1

    .line 64
    .line 65
    and-int/lit8 v5, v12, 0x1f

    .line 66
    :goto_2
    const/4 v12, 0x1

    .line 67
    goto :goto_3

    .line 68
    .line 69
    :cond_1
    and-int/lit16 v5, v12, 0xf0

    .line 70
    .line 71
    const/16 v15, 0xe0

    .line 72
    .line 73
    if-ne v5, v15, :cond_2

    .line 74
    .line 75
    and-int/lit8 v5, v12, 0xf

    .line 76
    const/4 v12, 0x2

    .line 77
    goto :goto_3

    .line 78
    .line 79
    :cond_2
    and-int/lit16 v5, v12, 0xf8

    .line 80
    .line 81
    const/16 v15, 0xf0

    .line 82
    .line 83
    if-ne v5, v15, :cond_3

    .line 84
    .line 85
    and-int/lit8 v5, v12, 0x7

    .line 86
    move v12, v7

    .line 87
    goto :goto_3

    .line 88
    .line 89
    .line 90
    :cond_3
    invoke-virtual {v0, v13}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidInitial(I)V

    .line 91
    const/4 v5, 0x1

    .line 92
    goto :goto_2

    .line 93
    .line 94
    :goto_3
    add-int v13, v14, v12

    .line 95
    .line 96
    if-le v13, v4, :cond_4

    .line 97
    .line 98
    const-string v13, " in field name"

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v13}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 102
    .line 103
    :cond_4
    shr-int/lit8 v13, v14, 0x2

    .line 104
    .line 105
    aget v13, v1, v13

    .line 106
    .line 107
    and-int/lit8 v14, v14, 0x3

    .line 108
    .line 109
    rsub-int/lit8 v14, v14, 0x3

    .line 110
    shl-int/2addr v14, v7

    .line 111
    shr-int/2addr v13, v14

    .line 112
    .line 113
    add-int/lit8 v14, v10, 0x2

    .line 114
    .line 115
    and-int/lit16 v15, v13, 0xc0

    .line 116
    .line 117
    const/16 v6, 0x80

    .line 118
    .line 119
    if-eq v15, v6, :cond_5

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v13}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidOther(I)V

    .line 123
    .line 124
    :cond_5
    shl-int/lit8 v5, v5, 0x6

    .line 125
    .line 126
    and-int/lit8 v13, v13, 0x3f

    .line 127
    or-int/2addr v5, v13

    .line 128
    const/4 v13, 0x1

    .line 129
    .line 130
    if-le v12, v13, :cond_8

    .line 131
    .line 132
    shr-int/lit8 v13, v14, 0x2

    .line 133
    .line 134
    aget v13, v1, v13

    .line 135
    .line 136
    and-int/lit8 v14, v14, 0x3

    .line 137
    .line 138
    rsub-int/lit8 v14, v14, 0x3

    .line 139
    shl-int/2addr v14, v7

    .line 140
    shr-int/2addr v13, v14

    .line 141
    .line 142
    add-int/lit8 v14, v10, 0x3

    .line 143
    .line 144
    and-int/lit16 v15, v13, 0xc0

    .line 145
    .line 146
    if-eq v15, v6, :cond_6

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v13}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidOther(I)V

    .line 150
    .line 151
    :cond_6
    shl-int/lit8 v5, v5, 0x6

    .line 152
    .line 153
    and-int/lit8 v13, v13, 0x3f

    .line 154
    or-int/2addr v5, v13

    .line 155
    const/4 v13, 0x2

    .line 156
    .line 157
    if-le v12, v13, :cond_9

    .line 158
    .line 159
    shr-int/lit8 v13, v14, 0x2

    .line 160
    .line 161
    aget v13, v1, v13

    .line 162
    .line 163
    and-int/lit8 v14, v14, 0x3

    .line 164
    .line 165
    rsub-int/lit8 v14, v14, 0x3

    .line 166
    shl-int/2addr v14, v7

    .line 167
    shr-int/2addr v13, v14

    .line 168
    .line 169
    add-int/lit8 v14, v10, 0x4

    .line 170
    .line 171
    and-int/lit16 v10, v13, 0xc0

    .line 172
    .line 173
    if-eq v10, v6, :cond_7

    .line 174
    .line 175
    and-int/lit16 v6, v13, 0xff

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, v6}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidOther(I)V

    .line 179
    .line 180
    :cond_7
    shl-int/lit8 v5, v5, 0x6

    .line 181
    .line 182
    and-int/lit8 v6, v13, 0x3f

    .line 183
    or-int/2addr v5, v6

    .line 184
    :cond_8
    move v13, v5

    .line 185
    const/4 v5, 0x2

    .line 186
    goto :goto_4

    .line 187
    .line 188
    :cond_9
    move/from16 v16, v13

    .line 189
    move v13, v5

    .line 190
    .line 191
    move/from16 v5, v16

    .line 192
    .line 193
    :goto_4
    if-le v12, v5, :cond_b

    .line 194
    .line 195
    const/high16 v5, 0x10000

    .line 196
    sub-int/2addr v13, v5

    .line 197
    array-length v5, v8

    .line 198
    .line 199
    if-lt v11, v5, :cond_a

    .line 200
    .line 201
    iget-object v5, v0, Lcom/fasterxml/jackson/core/base/ParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/util/TextBuffer;->expandCurrentSegment()[C

    .line 205
    move-result-object v8

    .line 206
    .line 207
    :cond_a
    add-int/lit8 v5, v11, 0x1

    .line 208
    .line 209
    shr-int/lit8 v6, v13, 0xa

    .line 210
    .line 211
    .line 212
    const v10, 0xd800

    .line 213
    add-int/2addr v6, v10

    .line 214
    int-to-char v6, v6

    .line 215
    .line 216
    aput-char v6, v8, v11

    .line 217
    .line 218
    and-int/lit16 v6, v13, 0x3ff

    .line 219
    .line 220
    .line 221
    const v10, 0xdc00

    .line 222
    .line 223
    or-int v13, v6, v10

    .line 224
    move v11, v5

    .line 225
    :cond_b
    move v10, v14

    .line 226
    array-length v5, v8

    .line 227
    .line 228
    if-lt v11, v5, :cond_c

    .line 229
    .line 230
    iget-object v5, v0, Lcom/fasterxml/jackson/core/base/ParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/util/TextBuffer;->expandCurrentSegment()[C

    .line 234
    move-result-object v5

    .line 235
    move-object v8, v5

    .line 236
    .line 237
    :cond_c
    add-int/lit8 v5, v11, 0x1

    .line 238
    int-to-char v6, v13

    .line 239
    .line 240
    aput-char v6, v8, v11

    .line 241
    move v11, v5

    .line 242
    const/4 v5, 0x4

    .line 243
    .line 244
    goto/16 :goto_1

    .line 245
    .line 246
    :cond_d
    new-instance v4, Ljava/lang/String;

    .line 247
    const/4 v5, 0x0

    .line 248
    .line 249
    .line 250
    invoke-direct {v4, v8, v5, v11}, Ljava/lang/String;-><init>([CII)V

    .line 251
    const/4 v5, 0x4

    .line 252
    .line 253
    if-ge v3, v5, :cond_e

    .line 254
    .line 255
    add-int/lit8 v3, v2, -0x1

    .line 256
    .line 257
    aput v9, v1, v3

    .line 258
    .line 259
    :cond_e
    iget-object v3, v0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v3, v4, v1, v2}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->addName(Ljava/lang/String;[II)Lcom/fasterxml/jackson/core/sym/Name;

    .line 263
    move-result-object v1

    .line 264
    return-object v1
.end method

.method private final findName(II)Lcom/fasterxml/jackson/core/sym/Name;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    .line 1
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->findName(I)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    const/4 v1, 0x0

    .line 2
    aput p1, v0, v1

    const/4 p1, 0x1

    .line 3
    invoke-direct {p0, v0, p1, p2}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->addName([III)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object p1

    return-object p1
.end method

.method private final findName(III)Lcom/fasterxml/jackson/core/sym/Name;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->findName(II)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    const/4 v1, 0x0

    .line 5
    aput p1, v0, v1

    const/4 p1, 0x1

    .line 6
    aput p2, v0, p1

    const/4 p1, 0x2

    .line 7
    invoke-direct {p0, v0, p1, p3}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->addName([III)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object p1

    return-object p1
.end method

.method private final findName([IIII)Lcom/fasterxml/jackson/core/sym/Name;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 8
    array-length v0, p1

    if-lt p2, v0, :cond_0

    .line 9
    array-length v0, p1

    invoke-static {p1, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->growArrayBy([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    :cond_0
    add-int/lit8 v0, p2, 0x1

    .line 10
    aput p3, p1, p2

    iget-object p2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    .line 11
    invoke-virtual {p2, p1, v0}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->findName([II)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object p2

    if-nez p2, :cond_1

    .line 12
    invoke-direct {p0, p1, v0, p4}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->addName([III)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object p1

    return-object p1

    :cond_1
    return-object p2
.end method

.method public static growArrayBy([II)[I
    .locals 1

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    new-array p0, p1, [I

    .line 5
    return-object p0

    .line 6
    :cond_0
    array-length v0, p0

    .line 7
    add-int/2addr v0, p1

    .line 8
    .line 9
    .line 10
    invoke-static {p0, v0}, Lcom/fasterxml/jackson/core/util/ArraysCompat;->copyOf([II)[I

    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method private nextByte()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 3
    .line 4
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 5
    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->loadMoreGuaranteed()V

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 12
    .line 13
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 14
    .line 15
    add-int/lit8 v2, v1, 0x1

    .line 16
    .line 17
    iput v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 18
    .line 19
    aget-byte v0, v0, v1

    .line 20
    .line 21
    and-int/lit16 v0, v0, 0xff

    .line 22
    return v0
.end method

.method private final parseName(III)Lcom/fasterxml/jackson/core/sym/Name;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->parseEscapedName([IIIII)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object p1

    return-object p1
.end method

.method private final parseName(IIII)Lcom/fasterxml/jackson/core/sym/Name;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    const/4 v0, 0x0

    .line 2
    aput p1, v1, v0

    const/4 v2, 0x1

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p4

    .line 3
    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->parseEscapedName([IIIII)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected _closeInput()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputStream:Ljava/io/InputStream;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/io/IOContext;->isResourceManaged()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->AUTO_CLOSE_SOURCE:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonParser;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputStream:Ljava/io/InputStream;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 26
    :cond_1
    const/4 v0, 0x0

    .line 27
    .line 28
    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputStream:Ljava/io/InputStream;

    .line 29
    :cond_2
    return-void
.end method

.method protected final _decodeBase64(Lcom/fasterxml/jackson/core/Base64Variant;)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->_getByteArrayBuilder()Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    :cond_0
    :goto_0
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 7
    .line 8
    iget v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 9
    .line 10
    if-lt v1, v2, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->loadMoreGuaranteed()V

    .line 14
    .line 15
    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 16
    .line 17
    iget v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 18
    .line 19
    add-int/lit8 v3, v2, 0x1

    .line 20
    .line 21
    iput v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 22
    .line 23
    aget-byte v1, v1, v2

    .line 24
    .line 25
    and-int/lit16 v1, v1, 0xff

    .line 26
    .line 27
    const/16 v2, 0x20

    .line 28
    .line 29
    if-le v1, v2, :cond_0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(I)I

    .line 33
    move-result v2

    .line 34
    .line 35
    const/16 v3, 0x22

    .line 36
    .line 37
    if-gez v2, :cond_3

    .line 38
    .line 39
    if-ne v1, v3, :cond_2

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->toByteArray()[B

    .line 43
    move-result-object p1

    .line 44
    return-object p1

    .line 45
    :cond_2
    const/4 v2, 0x0

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, p1, v1, v2}, Lcom/fasterxml/jackson/core/base/ParserBase;->_decodeBase64Escape(Lcom/fasterxml/jackson/core/Base64Variant;II)I

    .line 49
    move-result v2

    .line 50
    .line 51
    if-gez v2, :cond_3

    .line 52
    goto :goto_0

    .line 53
    .line 54
    :cond_3
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 55
    .line 56
    iget v4, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 57
    .line 58
    if-lt v1, v4, :cond_4

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->loadMoreGuaranteed()V

    .line 62
    .line 63
    :cond_4
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 64
    .line 65
    iget v4, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 66
    .line 67
    add-int/lit8 v5, v4, 0x1

    .line 68
    .line 69
    iput v5, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 70
    .line 71
    aget-byte v1, v1, v4

    .line 72
    .line 73
    and-int/lit16 v1, v1, 0xff

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(I)I

    .line 77
    move-result v4

    .line 78
    .line 79
    if-gez v4, :cond_5

    .line 80
    const/4 v4, 0x1

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, p1, v1, v4}, Lcom/fasterxml/jackson/core/base/ParserBase;->_decodeBase64Escape(Lcom/fasterxml/jackson/core/Base64Variant;II)I

    .line 84
    move-result v4

    .line 85
    .line 86
    :cond_5
    shl-int/lit8 v1, v2, 0x6

    .line 87
    or-int/2addr v1, v4

    .line 88
    .line 89
    iget v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 90
    .line 91
    iget v4, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 92
    .line 93
    if-lt v2, v4, :cond_6

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->loadMoreGuaranteed()V

    .line 97
    .line 98
    :cond_6
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 99
    .line 100
    iget v4, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 101
    .line 102
    add-int/lit8 v5, v4, 0x1

    .line 103
    .line 104
    iput v5, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 105
    .line 106
    aget-byte v2, v2, v4

    .line 107
    .line 108
    and-int/lit16 v2, v2, 0xff

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(I)I

    .line 112
    move-result v4

    .line 113
    const/4 v5, 0x3

    .line 114
    const/4 v6, 0x2

    .line 115
    const/4 v7, -0x2

    .line 116
    .line 117
    if-gez v4, :cond_b

    .line 118
    .line 119
    if-eq v4, v7, :cond_8

    .line 120
    .line 121
    if-ne v2, v3, :cond_7

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPadding()Z

    .line 125
    move-result v4

    .line 126
    .line 127
    if-nez v4, :cond_7

    .line 128
    .line 129
    shr-int/lit8 p1, v1, 0x4

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->toByteArray()[B

    .line 136
    move-result-object p1

    .line 137
    return-object p1

    .line 138
    .line 139
    .line 140
    :cond_7
    invoke-virtual {p0, p1, v2, v6}, Lcom/fasterxml/jackson/core/base/ParserBase;->_decodeBase64Escape(Lcom/fasterxml/jackson/core/Base64Variant;II)I

    .line 141
    move-result v4

    .line 142
    .line 143
    :cond_8
    if-ne v4, v7, :cond_b

    .line 144
    .line 145
    iget v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 146
    .line 147
    iget v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 148
    .line 149
    if-lt v2, v3, :cond_9

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->loadMoreGuaranteed()V

    .line 153
    .line 154
    :cond_9
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 155
    .line 156
    iget v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 157
    .line 158
    add-int/lit8 v4, v3, 0x1

    .line 159
    .line 160
    iput v4, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 161
    .line 162
    aget-byte v2, v2, v3

    .line 163
    .line 164
    and-int/lit16 v2, v2, 0xff

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPaddingChar(I)Z

    .line 168
    move-result v3

    .line 169
    .line 170
    if-eqz v3, :cond_a

    .line 171
    .line 172
    shr-int/lit8 v1, v1, 0x4

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    .line 176
    .line 177
    goto/16 :goto_0

    .line 178
    .line 179
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .line 184
    const-string v1, "expected padding character \'"

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->getPaddingChar()C

    .line 191
    move-result v1

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    const-string v1, "\'"

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    move-result-object v0

    .line 204
    .line 205
    .line 206
    invoke-virtual {p0, p1, v2, v5, v0}, Lcom/fasterxml/jackson/core/base/ParserBase;->reportInvalidBase64Char(Lcom/fasterxml/jackson/core/Base64Variant;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    .line 207
    move-result-object p1

    .line 208
    throw p1

    .line 209
    .line 210
    :cond_b
    shl-int/lit8 v1, v1, 0x6

    .line 211
    or-int/2addr v1, v4

    .line 212
    .line 213
    iget v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 214
    .line 215
    iget v4, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 216
    .line 217
    if-lt v2, v4, :cond_c

    .line 218
    .line 219
    .line 220
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->loadMoreGuaranteed()V

    .line 221
    .line 222
    :cond_c
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 223
    .line 224
    iget v4, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 225
    .line 226
    add-int/lit8 v8, v4, 0x1

    .line 227
    .line 228
    iput v8, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 229
    .line 230
    aget-byte v2, v2, v4

    .line 231
    .line 232
    and-int/lit16 v2, v2, 0xff

    .line 233
    .line 234
    .line 235
    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(I)I

    .line 236
    move-result v4

    .line 237
    .line 238
    if-gez v4, :cond_f

    .line 239
    .line 240
    if-eq v4, v7, :cond_e

    .line 241
    .line 242
    if-ne v2, v3, :cond_d

    .line 243
    .line 244
    .line 245
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPadding()Z

    .line 246
    move-result v3

    .line 247
    .line 248
    if-nez v3, :cond_d

    .line 249
    .line 250
    shr-int/lit8 p1, v1, 0x2

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->appendTwoBytes(I)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->toByteArray()[B

    .line 257
    move-result-object p1

    .line 258
    return-object p1

    .line 259
    .line 260
    .line 261
    :cond_d
    invoke-virtual {p0, p1, v2, v5}, Lcom/fasterxml/jackson/core/base/ParserBase;->_decodeBase64Escape(Lcom/fasterxml/jackson/core/Base64Variant;II)I

    .line 262
    move-result v4

    .line 263
    .line 264
    :cond_e
    if-ne v4, v7, :cond_f

    .line 265
    .line 266
    shr-int/lit8 v1, v1, 0x2

    .line 267
    .line 268
    .line 269
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->appendTwoBytes(I)V

    .line 270
    .line 271
    goto/16 :goto_0

    .line 272
    .line 273
    :cond_f
    shl-int/lit8 v1, v1, 0x6

    .line 274
    or-int/2addr v1, v4

    .line 275
    .line 276
    .line 277
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->appendThreeBytes(I)V

    .line 278
    goto/16 :goto_0
.end method

.method protected _decodeCharForError(I)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    if-gez p1, :cond_6

    .line 3
    .line 4
    and-int/lit16 v0, p1, 0xe0

    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x1

    .line 7
    .line 8
    const/16 v3, 0xc0

    .line 9
    .line 10
    if-ne v0, v3, :cond_0

    .line 11
    .line 12
    and-int/lit8 p1, p1, 0x1f

    .line 13
    :goto_0
    move v0, v2

    .line 14
    goto :goto_1

    .line 15
    .line 16
    :cond_0
    and-int/lit16 v0, p1, 0xf0

    .line 17
    .line 18
    const/16 v3, 0xe0

    .line 19
    .line 20
    if-ne v0, v3, :cond_1

    .line 21
    .line 22
    and-int/lit8 p1, p1, 0xf

    .line 23
    move v0, v1

    .line 24
    goto :goto_1

    .line 25
    .line 26
    :cond_1
    and-int/lit16 v0, p1, 0xf8

    .line 27
    .line 28
    const/16 v3, 0xf0

    .line 29
    .line 30
    if-ne v0, v3, :cond_2

    .line 31
    .line 32
    and-int/lit8 p1, p1, 0x7

    .line 33
    const/4 v0, 0x3

    .line 34
    goto :goto_1

    .line 35
    .line 36
    :cond_2
    and-int/lit16 v0, p1, 0xff

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidInitial(I)V

    .line 40
    goto :goto_0

    .line 41
    .line 42
    .line 43
    :goto_1
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->nextByte()I

    .line 44
    move-result v3

    .line 45
    .line 46
    and-int/lit16 v4, v3, 0xc0

    .line 47
    .line 48
    const/16 v5, 0x80

    .line 49
    .line 50
    if-eq v4, v5, :cond_3

    .line 51
    .line 52
    and-int/lit16 v4, v3, 0xff

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v4}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidOther(I)V

    .line 56
    .line 57
    :cond_3
    shl-int/lit8 p1, p1, 0x6

    .line 58
    .line 59
    and-int/lit8 v3, v3, 0x3f

    .line 60
    or-int/2addr p1, v3

    .line 61
    .line 62
    if-le v0, v2, :cond_6

    .line 63
    .line 64
    .line 65
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->nextByte()I

    .line 66
    move-result v2

    .line 67
    .line 68
    and-int/lit16 v3, v2, 0xc0

    .line 69
    .line 70
    if-eq v3, v5, :cond_4

    .line 71
    .line 72
    and-int/lit16 v3, v2, 0xff

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidOther(I)V

    .line 76
    .line 77
    :cond_4
    shl-int/lit8 p1, p1, 0x6

    .line 78
    .line 79
    and-int/lit8 v2, v2, 0x3f

    .line 80
    or-int/2addr p1, v2

    .line 81
    .line 82
    if-le v0, v1, :cond_6

    .line 83
    .line 84
    .line 85
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->nextByte()I

    .line 86
    move-result v0

    .line 87
    .line 88
    and-int/lit16 v1, v0, 0xc0

    .line 89
    .line 90
    if-eq v1, v5, :cond_5

    .line 91
    .line 92
    and-int/lit16 v1, v0, 0xff

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidOther(I)V

    .line 96
    .line 97
    :cond_5
    shl-int/lit8 p1, p1, 0x6

    .line 98
    .line 99
    and-int/lit8 v0, v0, 0x3f

    .line 100
    or-int/2addr p1, v0

    .line 101
    :cond_6
    return p1
.end method

.method protected _decodeEscaped()C
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 3
    .line 4
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 5
    .line 6
    const-string v2, " in character escape sequence"

    .line 7
    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMore()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 20
    .line 21
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 22
    .line 23
    add-int/lit8 v3, v1, 0x1

    .line 24
    .line 25
    iput v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 26
    .line 27
    aget-byte v0, v0, v1

    .line 28
    .line 29
    const/16 v1, 0x22

    .line 30
    .line 31
    if-eq v0, v1, :cond_a

    .line 32
    .line 33
    const/16 v1, 0x2f

    .line 34
    .line 35
    if-eq v0, v1, :cond_a

    .line 36
    .line 37
    const/16 v1, 0x5c

    .line 38
    .line 39
    if-eq v0, v1, :cond_a

    .line 40
    .line 41
    const/16 v1, 0x62

    .line 42
    .line 43
    if-eq v0, v1, :cond_9

    .line 44
    .line 45
    const/16 v1, 0x66

    .line 46
    .line 47
    if-eq v0, v1, :cond_8

    .line 48
    .line 49
    const/16 v1, 0x6e

    .line 50
    .line 51
    if-eq v0, v1, :cond_7

    .line 52
    .line 53
    const/16 v1, 0x72

    .line 54
    .line 55
    if-eq v0, v1, :cond_6

    .line 56
    .line 57
    const/16 v1, 0x74

    .line 58
    .line 59
    if-eq v0, v1, :cond_5

    .line 60
    .line 61
    const/16 v1, 0x75

    .line 62
    .line 63
    if-eq v0, v1, :cond_1

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_decodeCharForError(I)I

    .line 67
    move-result v0

    .line 68
    int-to-char v0, v0

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_handleUnrecognizedCharacterEscape(C)C

    .line 72
    move-result v0

    .line 73
    return v0

    .line 74
    :cond_1
    const/4 v0, 0x0

    .line 75
    move v1, v0

    .line 76
    :goto_0
    const/4 v3, 0x4

    .line 77
    .line 78
    if-ge v0, v3, :cond_4

    .line 79
    .line 80
    iget v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 81
    .line 82
    iget v4, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 83
    .line 84
    if-lt v3, v4, :cond_2

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMore()Z

    .line 88
    move-result v3

    .line 89
    .line 90
    if-nez v3, :cond_2

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 94
    .line 95
    :cond_2
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 96
    .line 97
    iget v4, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 98
    .line 99
    add-int/lit8 v5, v4, 0x1

    .line 100
    .line 101
    iput v5, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 102
    .line 103
    aget-byte v3, v3, v4

    .line 104
    .line 105
    .line 106
    invoke-static {v3}, Lcom/fasterxml/jackson/core/io/CharTypes;->charToHex(I)I

    .line 107
    move-result v4

    .line 108
    .line 109
    if-gez v4, :cond_3

    .line 110
    .line 111
    const-string v5, "expected a hex-digit for character escape sequence"

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, v3, v5}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 115
    .line 116
    :cond_3
    shl-int/lit8 v1, v1, 0x4

    .line 117
    or-int/2addr v1, v4

    .line 118
    .line 119
    add-int/lit8 v0, v0, 0x1

    .line 120
    goto :goto_0

    .line 121
    :cond_4
    int-to-char v0, v1

    .line 122
    return v0

    .line 123
    .line 124
    :cond_5
    const/16 v0, 0x9

    .line 125
    return v0

    .line 126
    .line 127
    :cond_6
    const/16 v0, 0xd

    .line 128
    return v0

    .line 129
    .line 130
    :cond_7
    const/16 v0, 0xa

    .line 131
    return v0

    .line 132
    .line 133
    :cond_8
    const/16 v0, 0xc

    .line 134
    return v0

    .line 135
    .line 136
    :cond_9
    const/16 v0, 0x8

    .line 137
    return v0

    .line 138
    :cond_a
    int-to-char v0, v0

    .line 139
    return v0
.end method

.method protected _finishString()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 3
    .line 4
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 5
    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->loadMoreGuaranteed()V

    .line 10
    .line 11
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 12
    .line 13
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    .line 17
    move-result-object v1

    .line 18
    .line 19
    sget-object v2, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_icUTF8:[I

    .line 20
    .line 21
    iget v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 22
    array-length v4, v1

    .line 23
    add-int/2addr v4, v0

    .line 24
    .line 25
    .line 26
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 27
    move-result v3

    .line 28
    .line 29
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 30
    const/4 v5, 0x0

    .line 31
    .line 32
    :goto_0
    if-ge v0, v3, :cond_2

    .line 33
    .line 34
    aget-byte v6, v4, v0

    .line 35
    .line 36
    and-int/lit16 v6, v6, 0xff

    .line 37
    .line 38
    aget v7, v2, v6

    .line 39
    .line 40
    if-eqz v7, :cond_1

    .line 41
    .line 42
    const/16 v2, 0x22

    .line 43
    .line 44
    if-ne v6, v2, :cond_2

    .line 45
    .line 46
    add-int/lit8 v0, v0, 0x1

    .line 47
    .line 48
    iput v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 49
    .line 50
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v5}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 54
    return-void

    .line 55
    .line 56
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 57
    .line 58
    add-int/lit8 v7, v5, 0x1

    .line 59
    int-to-char v6, v6

    .line 60
    .line 61
    aput-char v6, v1, v5

    .line 62
    move v5, v7

    .line 63
    goto :goto_0

    .line 64
    .line 65
    :cond_2
    iput v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 66
    .line 67
    .line 68
    invoke-direct {p0, v1, v5}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_finishString2([CI)V

    .line 69
    return-void
.end method

.method protected final _getText2(Lcom/fasterxml/jackson/core/JsonToken;)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x5

    .line 10
    .line 11
    if-eq v0, v1, :cond_2

    .line 12
    const/4 v1, 0x6

    .line 13
    .line 14
    if-eq v0, v1, :cond_1

    .line 15
    const/4 v1, 0x7

    .line 16
    .line 17
    if-eq v0, v1, :cond_1

    .line 18
    .line 19
    const/16 v1, 0x8

    .line 20
    .line 21
    if-eq v0, v1, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonToken;->asString()Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    return-object p1

    .line 27
    .line 28
    :cond_1
    iget-object p1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    return-object p1

    .line 34
    .line 35
    :cond_2
    iget-object p1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getCurrentName()Ljava/lang/String;

    .line 39
    move-result-object p1

    .line 40
    return-object p1
.end method

.method protected _handleApos()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sget-object v1, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_icUTF8:[I

    .line 9
    .line 10
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 11
    const/4 v3, 0x0

    .line 12
    move v4, v3

    .line 13
    .line 14
    :cond_0
    :goto_0
    iget v5, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 15
    .line 16
    iget v6, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 17
    .line 18
    if-lt v5, v6, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->loadMoreGuaranteed()V

    .line 22
    :cond_1
    array-length v5, v0

    .line 23
    .line 24
    if-lt v4, v5, :cond_2

    .line 25
    .line 26
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    .line 30
    move-result-object v0

    .line 31
    move v4, v3

    .line 32
    .line 33
    :cond_2
    iget v5, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 34
    .line 35
    iget v6, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 36
    array-length v7, v0

    .line 37
    sub-int/2addr v7, v4

    .line 38
    add-int/2addr v6, v7

    .line 39
    .line 40
    if-ge v6, v5, :cond_3

    .line 41
    move v5, v6

    .line 42
    .line 43
    :cond_3
    :goto_1
    iget v6, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 44
    .line 45
    if-ge v6, v5, :cond_0

    .line 46
    .line 47
    add-int/lit8 v7, v6, 0x1

    .line 48
    .line 49
    iput v7, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 50
    .line 51
    aget-byte v6, v2, v6

    .line 52
    .line 53
    and-int/lit16 v6, v6, 0xff

    .line 54
    .line 55
    const/16 v8, 0x27

    .line 56
    .line 57
    if-eq v6, v8, :cond_5

    .line 58
    .line 59
    aget v9, v1, v6

    .line 60
    .line 61
    if-eqz v9, :cond_4

    .line 62
    goto :goto_2

    .line 63
    .line 64
    :cond_4
    add-int/lit8 v7, v4, 0x1

    .line 65
    int-to-char v6, v6

    .line 66
    .line 67
    aput-char v6, v0, v4

    .line 68
    move v4, v7

    .line 69
    goto :goto_1

    .line 70
    .line 71
    :cond_5
    :goto_2
    if-ne v6, v8, :cond_6

    .line 72
    .line 73
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v4}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 77
    .line 78
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    .line 79
    return-object v0

    .line 80
    .line 81
    :cond_6
    aget v5, v1, v6

    .line 82
    const/4 v9, 0x1

    .line 83
    .line 84
    if-eq v5, v9, :cond_d

    .line 85
    const/4 v8, 0x2

    .line 86
    .line 87
    if-eq v5, v8, :cond_c

    .line 88
    const/4 v9, 0x3

    .line 89
    .line 90
    if-eq v5, v9, :cond_a

    .line 91
    const/4 v7, 0x4

    .line 92
    .line 93
    if-eq v5, v7, :cond_8

    .line 94
    .line 95
    const/16 v5, 0x20

    .line 96
    .line 97
    if-ge v6, v5, :cond_7

    .line 98
    .line 99
    .line 100
    const-string/jumbo v5, "string value"

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, v6, v5}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_throwUnquotedSpace(ILjava/lang/String;)V

    .line 104
    .line 105
    .line 106
    :cond_7
    invoke-virtual {p0, v6}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidChar(I)V

    .line 107
    goto :goto_4

    .line 108
    .line 109
    .line 110
    :cond_8
    invoke-direct {p0, v6}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_decodeUtf8_4(I)I

    .line 111
    move-result v5

    .line 112
    .line 113
    add-int/lit8 v6, v4, 0x1

    .line 114
    .line 115
    shr-int/lit8 v7, v5, 0xa

    .line 116
    .line 117
    .line 118
    const v8, 0xd800

    .line 119
    or-int/2addr v7, v8

    .line 120
    int-to-char v7, v7

    .line 121
    .line 122
    aput-char v7, v0, v4

    .line 123
    array-length v4, v0

    .line 124
    .line 125
    if-lt v6, v4, :cond_9

    .line 126
    .line 127
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    .line 131
    move-result-object v0

    .line 132
    move v4, v3

    .line 133
    goto :goto_3

    .line 134
    :cond_9
    move v4, v6

    .line 135
    .line 136
    :goto_3
    and-int/lit16 v5, v5, 0x3ff

    .line 137
    .line 138
    .line 139
    const v6, 0xdc00

    .line 140
    or-int/2addr v6, v5

    .line 141
    goto :goto_4

    .line 142
    .line 143
    :cond_a
    iget v5, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 144
    sub-int/2addr v5, v7

    .line 145
    .line 146
    if-lt v5, v8, :cond_b

    .line 147
    .line 148
    .line 149
    invoke-direct {p0, v6}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_decodeUtf8_3fast(I)I

    .line 150
    move-result v6

    .line 151
    goto :goto_4

    .line 152
    .line 153
    .line 154
    :cond_b
    invoke-direct {p0, v6}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_decodeUtf8_3(I)I

    .line 155
    move-result v6

    .line 156
    goto :goto_4

    .line 157
    .line 158
    .line 159
    :cond_c
    invoke-direct {p0, v6}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_decodeUtf8_2(I)I

    .line 160
    move-result v6

    .line 161
    goto :goto_4

    .line 162
    .line 163
    :cond_d
    if-eq v6, v8, :cond_e

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_decodeEscaped()C

    .line 167
    move-result v6

    .line 168
    :cond_e
    :goto_4
    array-length v5, v0

    .line 169
    .line 170
    if-lt v4, v5, :cond_f

    .line 171
    .line 172
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    .line 176
    move-result-object v0

    .line 177
    move v4, v3

    .line 178
    .line 179
    :cond_f
    add-int/lit8 v5, v4, 0x1

    .line 180
    int-to-char v6, v6

    .line 181
    .line 182
    aput-char v6, v0, v4

    .line 183
    move v4, v5

    .line 184
    .line 185
    goto/16 :goto_0
.end method

.method protected _handleInvalidNumberStart(IZ)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    :goto_0
    const/16 v0, 0x49

    .line 3
    .line 4
    if-ne p1, v0, :cond_6

    .line 5
    .line 6
    iget p1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 7
    .line 8
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 9
    .line 10
    if-lt p1, v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMore()Z

    .line 14
    move-result p1

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportInvalidEOFInValue()V

    .line 20
    .line 21
    :cond_0
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 22
    .line 23
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 24
    .line 25
    add-int/lit8 v1, v0, 0x1

    .line 26
    .line 27
    iput v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 28
    .line 29
    aget-byte p1, p1, v0

    .line 30
    .line 31
    const/16 v0, 0x4e

    .line 32
    .line 33
    if-ne p1, v0, :cond_2

    .line 34
    .line 35
    if-eqz p2, :cond_1

    .line 36
    .line 37
    const-string v0, "-INF"

    .line 38
    goto :goto_1

    .line 39
    .line 40
    :cond_1
    const-string v0, "+INF"

    .line 41
    goto :goto_1

    .line 42
    .line 43
    :cond_2
    const/16 v0, 0x6e

    .line 44
    .line 45
    if-ne p1, v0, :cond_6

    .line 46
    .line 47
    if-eqz p2, :cond_3

    .line 48
    .line 49
    const-string v0, "-Infinity"

    .line 50
    goto :goto_1

    .line 51
    .line 52
    :cond_3
    const-string v0, "+Infinity"

    .line 53
    :goto_1
    const/4 v1, 0x3

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 57
    .line 58
    sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/JsonParser;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    .line 62
    move-result v1

    .line 63
    .line 64
    if-eqz v1, :cond_5

    .line 65
    .line 66
    if-eqz p2, :cond_4

    .line 67
    .line 68
    const-wide/high16 p1, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 69
    goto :goto_2

    .line 70
    .line 71
    :cond_4
    const-wide/high16 p1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 72
    .line 73
    .line 74
    :goto_2
    invoke-virtual {p0, v0, p1, p2}, Lcom/fasterxml/jackson/core/base/ParserBase;->resetAsNaN(Ljava/lang/String;D)Lcom/fasterxml/jackson/core/JsonToken;

    .line 75
    move-result-object p1

    .line 76
    return-object p1

    .line 77
    .line 78
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    const-string v2, "Non-standard token \'"

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string v0, "\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    move-result-object v0

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportError(Ljava/lang/String;)V

    .line 102
    goto :goto_0

    .line 103
    .line 104
    :cond_6
    const-string p2, "expected digit (0-9) to follow minus sign, for valid numeric value"

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/core/base/ParserBase;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    .line 108
    const/4 p1, 0x0

    .line 109
    return-object p1
.end method

.method protected _handleOddName(I)Lcom/fasterxml/jackson/core/sym/Name;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    const/16 v0, 0x27

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_SINGLE_QUOTES:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonParser;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parseAposName()Lcom/fasterxml/jackson/core/sym/Name;

    .line 16
    move-result-object p1

    .line 17
    return-object p1

    .line 18
    .line 19
    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_UNQUOTED_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonParser;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    .line 23
    move-result v0

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    .line 28
    const-string/jumbo v0, "was expecting double-quote to start field name"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->getInputCodeUtf8JsNames()[I

    .line 35
    move-result-object v0

    .line 36
    .line 37
    aget v1, v0, p1

    .line 38
    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    .line 42
    const-string/jumbo v1, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name"

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 46
    .line 47
    :cond_2
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    .line 48
    const/4 v2, 0x0

    .line 49
    move v3, v2

    .line 50
    move v4, v3

    .line 51
    :goto_0
    const/4 v5, 0x4

    .line 52
    .line 53
    if-ge v2, v5, :cond_3

    .line 54
    .line 55
    add-int/lit8 v2, v2, 0x1

    .line 56
    .line 57
    shl-int/lit8 v4, v4, 0x8

    .line 58
    or-int/2addr p1, v4

    .line 59
    move v4, p1

    .line 60
    goto :goto_1

    .line 61
    :cond_3
    array-length v2, v1

    .line 62
    .line 63
    if-lt v3, v2, :cond_4

    .line 64
    array-length v2, v1

    .line 65
    .line 66
    .line 67
    invoke-static {v1, v2}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->growArrayBy([II)[I

    .line 68
    move-result-object v1

    .line 69
    .line 70
    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    .line 71
    .line 72
    :cond_4
    add-int/lit8 v2, v3, 0x1

    .line 73
    .line 74
    aput v4, v1, v3

    .line 75
    const/4 v3, 0x1

    .line 76
    move v4, p1

    .line 77
    move v7, v3

    .line 78
    move v3, v2

    .line 79
    move v2, v7

    .line 80
    .line 81
    :goto_1
    iget p1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 82
    .line 83
    iget v5, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 84
    .line 85
    if-lt p1, v5, :cond_5

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMore()Z

    .line 89
    move-result p1

    .line 90
    .line 91
    if-nez p1, :cond_5

    .line 92
    .line 93
    const-string p1, " in field name"

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 97
    .line 98
    :cond_5
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 99
    .line 100
    iget v5, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 101
    .line 102
    aget-byte p1, p1, v5

    .line 103
    .line 104
    and-int/lit16 p1, p1, 0xff

    .line 105
    .line 106
    aget v6, v0, p1

    .line 107
    .line 108
    if-eqz v6, :cond_9

    .line 109
    .line 110
    if-lez v2, :cond_7

    .line 111
    array-length p1, v1

    .line 112
    .line 113
    if-lt v3, p1, :cond_6

    .line 114
    array-length p1, v1

    .line 115
    .line 116
    .line 117
    invoke-static {v1, p1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->growArrayBy([II)[I

    .line 118
    move-result-object v1

    .line 119
    .line 120
    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    .line 121
    .line 122
    :cond_6
    add-int/lit8 p1, v3, 0x1

    .line 123
    .line 124
    aput v4, v1, v3

    .line 125
    move v3, p1

    .line 126
    .line 127
    :cond_7
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, v1, v3}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->findName([II)Lcom/fasterxml/jackson/core/sym/Name;

    .line 131
    move-result-object p1

    .line 132
    .line 133
    if-nez p1, :cond_8

    .line 134
    .line 135
    .line 136
    invoke-direct {p0, v1, v3, v2}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->addName([III)Lcom/fasterxml/jackson/core/sym/Name;

    .line 137
    move-result-object p1

    .line 138
    :cond_8
    return-object p1

    .line 139
    .line 140
    :cond_9
    add-int/lit8 v5, v5, 0x1

    .line 141
    .line 142
    iput v5, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 143
    goto :goto_0
.end method

.method protected _handleUnexpectedValue(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    const/16 v0, 0x27

    .line 3
    .line 4
    if-eq p1, v0, :cond_6

    .line 5
    .line 6
    const/16 v0, 0x2b

    .line 7
    .line 8
    if-eq p1, v0, :cond_4

    .line 9
    .line 10
    const/16 v0, 0x49

    .line 11
    const/4 v1, 0x1

    .line 12
    .line 13
    if-eq p1, v0, :cond_2

    .line 14
    .line 15
    const/16 v0, 0x4e

    .line 16
    .line 17
    if-eq p1, v0, :cond_0

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    const-string v0, "NaN"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 24
    .line 25
    sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/JsonParser;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    .line 29
    move-result v1

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0, v1, v2}, Lcom/fasterxml/jackson/core/base/ParserBase;->resetAsNaN(Ljava/lang/String;D)Lcom/fasterxml/jackson/core/JsonToken;

    .line 37
    move-result-object p1

    .line 38
    return-object p1

    .line 39
    .line 40
    :cond_1
    const-string v0, "Non-standard token \'NaN\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportError(Ljava/lang/String;)V

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_2
    const-string v0, "Infinity"

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 50
    .line 51
    sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/JsonParser;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    .line 55
    move-result v1

    .line 56
    .line 57
    if-eqz v1, :cond_3

    .line 58
    .line 59
    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v0, v1, v2}, Lcom/fasterxml/jackson/core/base/ParserBase;->resetAsNaN(Ljava/lang/String;D)Lcom/fasterxml/jackson/core/JsonToken;

    .line 63
    move-result-object p1

    .line 64
    return-object p1

    .line 65
    .line 66
    :cond_3
    const-string v0, "Non-standard token \'Infinity\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportError(Ljava/lang/String;)V

    .line 70
    goto :goto_0

    .line 71
    .line 72
    :cond_4
    iget p1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 73
    .line 74
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 75
    .line 76
    if-lt p1, v0, :cond_5

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMore()Z

    .line 80
    move-result p1

    .line 81
    .line 82
    if-nez p1, :cond_5

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportInvalidEOFInValue()V

    .line 86
    .line 87
    :cond_5
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 88
    .line 89
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 90
    .line 91
    add-int/lit8 v1, v0, 0x1

    .line 92
    .line 93
    iput v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 94
    .line 95
    aget-byte p1, p1, v0

    .line 96
    .line 97
    and-int/lit16 p1, p1, 0xff

    .line 98
    const/4 v0, 0x0

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_handleInvalidNumberStart(IZ)Lcom/fasterxml/jackson/core/JsonToken;

    .line 102
    move-result-object p1

    .line 103
    return-object p1

    .line 104
    .line 105
    :cond_6
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_SINGLE_QUOTES:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonParser;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    .line 109
    move-result v0

    .line 110
    .line 111
    if-eqz v0, :cond_7

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_handleApos()Lcom/fasterxml/jackson/core/JsonToken;

    .line 115
    move-result-object p1

    .line 116
    return-object p1

    .line 117
    .line 118
    .line 119
    :cond_7
    :goto_0
    invoke-static {p1}, Ljava/lang/Character;->isJavaIdentifierStart(I)Z

    .line 120
    move-result v0

    .line 121
    .line 122
    if-eqz v0, :cond_8

    .line 123
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .line 129
    const-string v1, ""

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    int-to-char v1, p1

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    move-result-object v0

    .line 141
    .line 142
    const-string v1, "(\'true\', \'false\' or \'null\')"

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    :cond_8
    const-string v0, "expected a valid value (number, String, array, object, \'true\', \'false\' or \'null\')"

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 151
    const/4 p1, 0x0

    .line 152
    return-object p1
.end method

.method protected final _loadToHaveAtLeast(I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputStream:Ljava/io/InputStream;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    .line 8
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 9
    .line 10
    iget v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 11
    sub-int/2addr v0, v2

    .line 12
    .line 13
    if-lez v0, :cond_1

    .line 14
    .line 15
    if-lez v2, :cond_1

    .line 16
    .line 17
    iget-wide v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_currInputProcessed:J

    .line 18
    int-to-long v5, v2

    .line 19
    add-long/2addr v3, v5

    .line 20
    .line 21
    iput-wide v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_currInputProcessed:J

    .line 22
    .line 23
    iget v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_currInputRowStart:I

    .line 24
    sub-int/2addr v3, v2

    .line 25
    .line 26
    iput v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_currInputRowStart:I

    .line 27
    .line 28
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 29
    .line 30
    .line 31
    invoke-static {v3, v2, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    .line 33
    iput v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_1
    iput v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 37
    .line 38
    :goto_0
    iput v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 39
    .line 40
    :goto_1
    iget v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 41
    const/4 v3, 0x1

    .line 42
    .line 43
    if-ge v2, p1, :cond_4

    .line 44
    .line 45
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputStream:Ljava/io/InputStream;

    .line 46
    .line 47
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 48
    array-length v6, v5

    .line 49
    sub-int/2addr v6, v2

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, v5, v2, v6}, Ljava/io/InputStream;->read([BII)I

    .line 53
    move-result v2

    .line 54
    .line 55
    if-ge v2, v3, :cond_3

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_closeInput()V

    .line 59
    .line 60
    if-eqz v2, :cond_2

    .line 61
    return v1

    .line 62
    .line 63
    :cond_2
    new-instance p1, Ljava/io/IOException;

    .line 64
    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    const-string v2, "InputStream.read() returned 0 characters when trying to read "

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string v0, " bytes"

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object v0

    .line 86
    .line 87
    .line 88
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 89
    throw p1

    .line 90
    .line 91
    :cond_3
    iget v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 92
    add-int/2addr v3, v2

    .line 93
    .line 94
    iput v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 95
    goto :goto_1

    .line 96
    :cond_4
    return v3
.end method

.method protected _matchToken(Ljava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    move-result v0

    .line 5
    .line 6
    :cond_0
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 7
    .line 8
    iget v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 9
    const/4 v3, 0x0

    .line 10
    .line 11
    if-lt v1, v2, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMore()Z

    .line 15
    move-result v1

    .line 16
    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 20
    .line 21
    iget v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 22
    .line 23
    aget-byte v1, v1, v2

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    .line 27
    move-result v2

    .line 28
    .line 29
    if-eq v1, v2, :cond_3

    .line 30
    .line 31
    .line 32
    :cond_2
    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidToken(Ljava/lang/String;)V

    .line 37
    .line 38
    :cond_3
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 39
    .line 40
    add-int/lit8 v1, v1, 0x1

    .line 41
    .line 42
    iput v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 43
    .line 44
    add-int/lit8 p2, p2, 0x1

    .line 45
    .line 46
    if-lt p2, v0, :cond_0

    .line 47
    .line 48
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 49
    .line 50
    if-lt v1, v0, :cond_4

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMore()Z

    .line 54
    move-result v0

    .line 55
    .line 56
    if-nez v0, :cond_4

    .line 57
    return-void

    .line 58
    .line 59
    :cond_4
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 60
    .line 61
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 62
    .line 63
    aget-byte v0, v0, v1

    .line 64
    .line 65
    and-int/lit16 v0, v0, 0xff

    .line 66
    .line 67
    const/16 v1, 0x30

    .line 68
    .line 69
    if-lt v0, v1, :cond_6

    .line 70
    .line 71
    const/16 v1, 0x5d

    .line 72
    .line 73
    if-eq v0, v1, :cond_6

    .line 74
    .line 75
    const/16 v1, 0x7d

    .line 76
    .line 77
    if-ne v0, v1, :cond_5

    .line 78
    goto :goto_0

    .line 79
    .line 80
    .line 81
    :cond_5
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_decodeCharForError(I)I

    .line 82
    move-result v0

    .line 83
    int-to-char v0, v0

    .line 84
    .line 85
    .line 86
    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    .line 87
    move-result v0

    .line 88
    .line 89
    if-eqz v0, :cond_6

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 93
    move-result-object p1

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidToken(Ljava/lang/String;)V

    .line 97
    :cond_6
    :goto_0
    return-void
.end method

.method protected _parseAposName()Lcom/fasterxml/jackson/core/sym/Name;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 3
    .line 4
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 5
    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMore()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const-string v0, ": was expecting closing \'\'\' for name"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 20
    .line 21
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 22
    .line 23
    add-int/lit8 v2, v1, 0x1

    .line 24
    .line 25
    iput v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 26
    .line 27
    aget-byte v0, v0, v1

    .line 28
    .line 29
    and-int/lit16 v0, v0, 0xff

    .line 30
    .line 31
    const/16 v1, 0x27

    .line 32
    .line 33
    if-ne v0, v1, :cond_1

    .line 34
    .line 35
    .line 36
    invoke-static {}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->getEmptyName()Lcom/fasterxml/jackson/core/sym/Name;

    .line 37
    move-result-object v0

    .line 38
    return-object v0

    .line 39
    .line 40
    :cond_1
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    .line 41
    .line 42
    sget-object v3, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_icLatin1:[I

    .line 43
    const/4 v4, 0x0

    .line 44
    move v5, v4

    .line 45
    move v6, v5

    .line 46
    move v7, v6

    .line 47
    .line 48
    :goto_0
    if-ne v0, v1, :cond_5

    .line 49
    .line 50
    if-lez v5, :cond_3

    .line 51
    array-length v0, v2

    .line 52
    .line 53
    if-lt v6, v0, :cond_2

    .line 54
    array-length v0, v2

    .line 55
    .line 56
    .line 57
    invoke-static {v2, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->growArrayBy([II)[I

    .line 58
    move-result-object v2

    .line 59
    .line 60
    iput-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    .line 61
    .line 62
    :cond_2
    add-int/lit8 v0, v6, 0x1

    .line 63
    .line 64
    aput v7, v2, v6

    .line 65
    move v6, v0

    .line 66
    .line 67
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v2, v6}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->findName([II)Lcom/fasterxml/jackson/core/sym/Name;

    .line 71
    move-result-object v0

    .line 72
    .line 73
    if-nez v0, :cond_4

    .line 74
    .line 75
    .line 76
    invoke-direct {p0, v2, v6, v5}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->addName([III)Lcom/fasterxml/jackson/core/sym/Name;

    .line 77
    move-result-object v0

    .line 78
    :cond_4
    return-object v0

    .line 79
    .line 80
    :cond_5
    const/16 v8, 0x22

    .line 81
    const/4 v9, 0x4

    .line 82
    const/4 v10, 0x1

    .line 83
    .line 84
    if-eq v0, v8, :cond_c

    .line 85
    .line 86
    aget v8, v3, v0

    .line 87
    .line 88
    if-eqz v8, :cond_c

    .line 89
    .line 90
    const/16 v8, 0x5c

    .line 91
    .line 92
    if-eq v0, v8, :cond_6

    .line 93
    .line 94
    const-string v8, "name"

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, v0, v8}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_throwUnquotedSpace(ILjava/lang/String;)V

    .line 98
    goto :goto_1

    .line 99
    .line 100
    .line 101
    :cond_6
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_decodeEscaped()C

    .line 102
    move-result v0

    .line 103
    .line 104
    :goto_1
    const/16 v8, 0x7f

    .line 105
    .line 106
    if-le v0, v8, :cond_c

    .line 107
    .line 108
    if-lt v5, v9, :cond_8

    .line 109
    array-length v5, v2

    .line 110
    .line 111
    if-lt v6, v5, :cond_7

    .line 112
    array-length v5, v2

    .line 113
    .line 114
    .line 115
    invoke-static {v2, v5}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->growArrayBy([II)[I

    .line 116
    move-result-object v2

    .line 117
    .line 118
    iput-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    .line 119
    .line 120
    :cond_7
    add-int/lit8 v5, v6, 0x1

    .line 121
    .line 122
    aput v7, v2, v6

    .line 123
    move v7, v4

    .line 124
    move v6, v5

    .line 125
    move v5, v7

    .line 126
    .line 127
    :cond_8
    const/16 v8, 0x800

    .line 128
    .line 129
    if-ge v0, v8, :cond_9

    .line 130
    .line 131
    shl-int/lit8 v7, v7, 0x8

    .line 132
    .line 133
    shr-int/lit8 v8, v0, 0x6

    .line 134
    .line 135
    or-int/lit16 v8, v8, 0xc0

    .line 136
    or-int/2addr v7, v8

    .line 137
    .line 138
    add-int/lit8 v5, v5, 0x1

    .line 139
    goto :goto_2

    .line 140
    .line 141
    :cond_9
    shl-int/lit8 v7, v7, 0x8

    .line 142
    .line 143
    shr-int/lit8 v8, v0, 0xc

    .line 144
    .line 145
    or-int/lit16 v8, v8, 0xe0

    .line 146
    or-int/2addr v7, v8

    .line 147
    .line 148
    add-int/lit8 v5, v5, 0x1

    .line 149
    .line 150
    if-lt v5, v9, :cond_b

    .line 151
    array-length v5, v2

    .line 152
    .line 153
    if-lt v6, v5, :cond_a

    .line 154
    array-length v5, v2

    .line 155
    .line 156
    .line 157
    invoke-static {v2, v5}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->growArrayBy([II)[I

    .line 158
    move-result-object v2

    .line 159
    .line 160
    iput-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    .line 161
    .line 162
    :cond_a
    add-int/lit8 v5, v6, 0x1

    .line 163
    .line 164
    aput v7, v2, v6

    .line 165
    move v7, v4

    .line 166
    move v6, v5

    .line 167
    move v5, v7

    .line 168
    .line 169
    :cond_b
    shl-int/lit8 v7, v7, 0x8

    .line 170
    .line 171
    shr-int/lit8 v8, v0, 0x6

    .line 172
    .line 173
    and-int/lit8 v8, v8, 0x3f

    .line 174
    .line 175
    or-int/lit16 v8, v8, 0x80

    .line 176
    or-int/2addr v7, v8

    .line 177
    add-int/2addr v5, v10

    .line 178
    .line 179
    :goto_2
    and-int/lit8 v0, v0, 0x3f

    .line 180
    .line 181
    or-int/lit16 v0, v0, 0x80

    .line 182
    .line 183
    :cond_c
    if-ge v5, v9, :cond_d

    .line 184
    .line 185
    add-int/lit8 v5, v5, 0x1

    .line 186
    .line 187
    shl-int/lit8 v7, v7, 0x8

    .line 188
    or-int/2addr v0, v7

    .line 189
    move v7, v0

    .line 190
    goto :goto_3

    .line 191
    :cond_d
    array-length v5, v2

    .line 192
    .line 193
    if-lt v6, v5, :cond_e

    .line 194
    array-length v5, v2

    .line 195
    .line 196
    .line 197
    invoke-static {v2, v5}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->growArrayBy([II)[I

    .line 198
    move-result-object v2

    .line 199
    .line 200
    iput-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    .line 201
    .line 202
    :cond_e
    add-int/lit8 v5, v6, 0x1

    .line 203
    .line 204
    aput v7, v2, v6

    .line 205
    move v7, v0

    .line 206
    move v6, v5

    .line 207
    move v5, v10

    .line 208
    .line 209
    :goto_3
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 210
    .line 211
    iget v8, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 212
    .line 213
    if-lt v0, v8, :cond_f

    .line 214
    .line 215
    .line 216
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMore()Z

    .line 217
    move-result v0

    .line 218
    .line 219
    if-nez v0, :cond_f

    .line 220
    .line 221
    const-string v0, " in field name"

    .line 222
    .line 223
    .line 224
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 225
    .line 226
    :cond_f
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 227
    .line 228
    iget v8, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 229
    .line 230
    add-int/lit8 v9, v8, 0x1

    .line 231
    .line 232
    iput v9, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 233
    .line 234
    aget-byte v0, v0, v8

    .line 235
    .line 236
    and-int/lit16 v0, v0, 0xff

    .line 237
    .line 238
    goto/16 :goto_0
.end method

.method protected _parseName(I)Lcom/fasterxml/jackson/core/sym/Name;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    const/16 v0, 0x22

    .line 3
    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_handleOddName(I)Lcom/fasterxml/jackson/core/sym/Name;

    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    .line 11
    :cond_0
    iget p1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 12
    .line 13
    add-int/lit8 v1, p1, 0x9

    .line 14
    .line 15
    iget v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 16
    .line 17
    if-le v1, v2, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->slowParseName()Lcom/fasterxml/jackson/core/sym/Name;

    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    .line 24
    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 25
    .line 26
    sget-object v2, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_icLatin1:[I

    .line 27
    .line 28
    add-int/lit8 v3, p1, 0x1

    .line 29
    .line 30
    iput v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 31
    .line 32
    aget-byte v4, v1, p1

    .line 33
    .line 34
    and-int/lit16 v4, v4, 0xff

    .line 35
    .line 36
    aget v5, v2, v4

    .line 37
    .line 38
    if-nez v5, :cond_a

    .line 39
    .line 40
    add-int/lit8 v5, p1, 0x2

    .line 41
    .line 42
    iput v5, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 43
    .line 44
    aget-byte v3, v1, v3

    .line 45
    .line 46
    and-int/lit16 v3, v3, 0xff

    .line 47
    .line 48
    aget v6, v2, v3

    .line 49
    .line 50
    if-nez v6, :cond_8

    .line 51
    .line 52
    shl-int/lit8 v4, v4, 0x8

    .line 53
    or-int/2addr v3, v4

    .line 54
    .line 55
    add-int/lit8 v4, p1, 0x3

    .line 56
    .line 57
    iput v4, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 58
    .line 59
    aget-byte v5, v1, v5

    .line 60
    .line 61
    and-int/lit16 v5, v5, 0xff

    .line 62
    .line 63
    aget v6, v2, v5

    .line 64
    .line 65
    if-nez v6, :cond_6

    .line 66
    .line 67
    shl-int/lit8 v3, v3, 0x8

    .line 68
    or-int/2addr v3, v5

    .line 69
    .line 70
    add-int/lit8 v5, p1, 0x4

    .line 71
    .line 72
    iput v5, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 73
    .line 74
    aget-byte v4, v1, v4

    .line 75
    .line 76
    and-int/lit16 v4, v4, 0xff

    .line 77
    .line 78
    aget v6, v2, v4

    .line 79
    .line 80
    if-nez v6, :cond_4

    .line 81
    .line 82
    shl-int/lit8 v3, v3, 0x8

    .line 83
    or-int/2addr v3, v4

    .line 84
    .line 85
    add-int/lit8 p1, p1, 0x5

    .line 86
    .line 87
    iput p1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 88
    .line 89
    aget-byte p1, v1, v5

    .line 90
    .line 91
    and-int/lit16 p1, p1, 0xff

    .line 92
    .line 93
    aget v1, v2, p1

    .line 94
    .line 95
    if-nez v1, :cond_2

    .line 96
    .line 97
    iput v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quad1:I

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, p1, v2}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->parseMediumName(I[I)Lcom/fasterxml/jackson/core/sym/Name;

    .line 101
    move-result-object p1

    .line 102
    return-object p1

    .line 103
    :cond_2
    const/4 v1, 0x4

    .line 104
    .line 105
    if-ne p1, v0, :cond_3

    .line 106
    .line 107
    .line 108
    invoke-direct {p0, v3, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->findName(II)Lcom/fasterxml/jackson/core/sym/Name;

    .line 109
    move-result-object p1

    .line 110
    return-object p1

    .line 111
    .line 112
    .line 113
    :cond_3
    invoke-direct {p0, v3, p1, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->parseName(III)Lcom/fasterxml/jackson/core/sym/Name;

    .line 114
    move-result-object p1

    .line 115
    return-object p1

    .line 116
    :cond_4
    const/4 p1, 0x3

    .line 117
    .line 118
    if-ne v4, v0, :cond_5

    .line 119
    .line 120
    .line 121
    invoke-direct {p0, v3, p1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->findName(II)Lcom/fasterxml/jackson/core/sym/Name;

    .line 122
    move-result-object p1

    .line 123
    return-object p1

    .line 124
    .line 125
    .line 126
    :cond_5
    invoke-direct {p0, v3, v4, p1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->parseName(III)Lcom/fasterxml/jackson/core/sym/Name;

    .line 127
    move-result-object p1

    .line 128
    return-object p1

    .line 129
    :cond_6
    const/4 p1, 0x2

    .line 130
    .line 131
    if-ne v5, v0, :cond_7

    .line 132
    .line 133
    .line 134
    invoke-direct {p0, v3, p1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->findName(II)Lcom/fasterxml/jackson/core/sym/Name;

    .line 135
    move-result-object p1

    .line 136
    return-object p1

    .line 137
    .line 138
    .line 139
    :cond_7
    invoke-direct {p0, v3, v5, p1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->parseName(III)Lcom/fasterxml/jackson/core/sym/Name;

    .line 140
    move-result-object p1

    .line 141
    return-object p1

    .line 142
    :cond_8
    const/4 p1, 0x1

    .line 143
    .line 144
    if-ne v3, v0, :cond_9

    .line 145
    .line 146
    .line 147
    invoke-direct {p0, v4, p1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->findName(II)Lcom/fasterxml/jackson/core/sym/Name;

    .line 148
    move-result-object p1

    .line 149
    return-object p1

    .line 150
    .line 151
    .line 152
    :cond_9
    invoke-direct {p0, v4, v3, p1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->parseName(III)Lcom/fasterxml/jackson/core/sym/Name;

    .line 153
    move-result-object p1

    .line 154
    return-object p1

    .line 155
    .line 156
    :cond_a
    if-ne v4, v0, :cond_b

    .line 157
    .line 158
    .line 159
    invoke-static {}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->getEmptyName()Lcom/fasterxml/jackson/core/sym/Name;

    .line 160
    move-result-object p1

    .line 161
    return-object p1

    .line 162
    :cond_b
    const/4 p1, 0x0

    .line 163
    .line 164
    .line 165
    invoke-direct {p0, p1, v4, p1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->parseName(III)Lcom/fasterxml/jackson/core/sym/Name;

    .line 166
    move-result-object p1

    .line 167
    return-object p1
.end method

.method protected _parseNumber(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    .line 10
    const/16 v3, 0x2d

    .line 11
    .line 12
    if-ne p1, v3, :cond_0

    .line 13
    move v8, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v8, v2

    .line 16
    .line 17
    :goto_0
    const/16 v4, 0x39

    .line 18
    .line 19
    const/16 v5, 0x30

    .line 20
    .line 21
    if-eqz v8, :cond_4

    .line 22
    .line 23
    aput-char v3, v0, v2

    .line 24
    .line 25
    iget p1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 26
    .line 27
    iget v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 28
    .line 29
    if-lt p1, v3, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->loadMoreGuaranteed()V

    .line 33
    .line 34
    :cond_1
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 35
    .line 36
    iget v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 37
    .line 38
    add-int/lit8 v6, v3, 0x1

    .line 39
    .line 40
    iput v6, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 41
    .line 42
    aget-byte p1, p1, v3

    .line 43
    .line 44
    and-int/lit16 p1, p1, 0xff

    .line 45
    .line 46
    if-lt p1, v5, :cond_3

    .line 47
    .line 48
    if-le p1, v4, :cond_2

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    move v3, v1

    .line 51
    goto :goto_2

    .line 52
    .line 53
    .line 54
    :cond_3
    :goto_1
    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_handleInvalidNumberStart(IZ)Lcom/fasterxml/jackson/core/JsonToken;

    .line 55
    move-result-object p1

    .line 56
    return-object p1

    .line 57
    :cond_4
    move v3, v2

    .line 58
    .line 59
    :goto_2
    if-ne p1, v5, :cond_5

    .line 60
    .line 61
    .line 62
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_verifyNoLeadingZeroes()I

    .line 63
    move-result p1

    .line 64
    .line 65
    :cond_5
    add-int/lit8 v6, v3, 0x1

    .line 66
    int-to-char p1, p1

    .line 67
    .line 68
    aput-char p1, v0, v3

    .line 69
    .line 70
    iget p1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 71
    array-length v3, v0

    .line 72
    add-int/2addr p1, v3

    .line 73
    .line 74
    iget v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 75
    move v9, v1

    .line 76
    .line 77
    if-le p1, v3, :cond_6

    .line 78
    move p1, v3

    .line 79
    .line 80
    :cond_6
    :goto_3
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 81
    .line 82
    if-lt v1, p1, :cond_7

    .line 83
    .line 84
    .line 85
    invoke-direct {p0, v0, v6, v8, v9}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parserNumber2([CIZI)Lcom/fasterxml/jackson/core/JsonToken;

    .line 86
    move-result-object p1

    .line 87
    return-object p1

    .line 88
    .line 89
    :cond_7
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 90
    .line 91
    add-int/lit8 v7, v1, 0x1

    .line 92
    .line 93
    iput v7, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 94
    .line 95
    aget-byte v3, v3, v1

    .line 96
    .line 97
    and-int/lit16 v7, v3, 0xff

    .line 98
    .line 99
    if-lt v7, v5, :cond_a

    .line 100
    .line 101
    if-le v7, v4, :cond_8

    .line 102
    goto :goto_4

    .line 103
    .line 104
    :cond_8
    add-int/lit8 v9, v9, 0x1

    .line 105
    array-length v1, v0

    .line 106
    .line 107
    if-lt v6, v1, :cond_9

    .line 108
    .line 109
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    .line 113
    move-result-object v0

    .line 114
    move v6, v2

    .line 115
    .line 116
    :cond_9
    add-int/lit8 v1, v6, 0x1

    .line 117
    int-to-char v3, v7

    .line 118
    .line 119
    aput-char v3, v0, v6

    .line 120
    move v6, v1

    .line 121
    goto :goto_3

    .line 122
    .line 123
    :cond_a
    :goto_4
    const/16 p1, 0x2e

    .line 124
    .line 125
    if-eq v7, p1, :cond_d

    .line 126
    .line 127
    const/16 p1, 0x65

    .line 128
    .line 129
    if-eq v7, p1, :cond_d

    .line 130
    .line 131
    const/16 p1, 0x45

    .line 132
    .line 133
    if-ne v7, p1, :cond_b

    .line 134
    goto :goto_5

    .line 135
    .line 136
    :cond_b
    iput v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 137
    .line 138
    iget-object p1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1, v6}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 142
    .line 143
    iget-object p1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonStreamContext;->inRoot()Z

    .line 147
    move-result p1

    .line 148
    .line 149
    if-eqz p1, :cond_c

    .line 150
    .line 151
    .line 152
    invoke-direct {p0, v7}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_verifyRootSpace(I)V

    .line 153
    .line 154
    .line 155
    :cond_c
    invoke-virtual {p0, v8, v9}, Lcom/fasterxml/jackson/core/base/ParserBase;->resetInt(ZI)Lcom/fasterxml/jackson/core/JsonToken;

    .line 156
    move-result-object p1

    .line 157
    return-object p1

    .line 158
    :cond_d
    :goto_5
    move-object v4, p0

    .line 159
    move-object v5, v0

    .line 160
    .line 161
    .line 162
    invoke-direct/range {v4 .. v9}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parseFloat([CIIZI)Lcom/fasterxml/jackson/core/JsonToken;

    .line 163
    move-result-object p1

    .line 164
    return-object p1
.end method

.method protected _readBinary(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/OutputStream;[B)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 1
    array-length v0, p3

    .line 2
    const/4 v1, 0x3

    .line 3
    sub-int/2addr v0, v1

    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, v2

    .line 6
    move v4, v3

    .line 7
    .line 8
    :cond_0
    :goto_0
    iget v5, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 9
    .line 10
    iget v6, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 11
    .line 12
    if-lt v5, v6, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->loadMoreGuaranteed()V

    .line 16
    .line 17
    :cond_1
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 18
    .line 19
    iget v6, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 20
    .line 21
    add-int/lit8 v7, v6, 0x1

    .line 22
    .line 23
    iput v7, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 24
    .line 25
    aget-byte v5, v5, v6

    .line 26
    .line 27
    and-int/lit16 v5, v5, 0xff

    .line 28
    .line 29
    const/16 v6, 0x20

    .line 30
    .line 31
    if-le v5, v6, :cond_0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v5}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(I)I

    .line 35
    move-result v6

    .line 36
    .line 37
    const/16 v7, 0x22

    .line 38
    .line 39
    if-gez v6, :cond_3

    .line 40
    .line 41
    if-ne v5, v7, :cond_2

    .line 42
    .line 43
    goto/16 :goto_1

    .line 44
    .line 45
    .line 46
    :cond_2
    invoke-virtual {p0, p1, v5, v2}, Lcom/fasterxml/jackson/core/base/ParserBase;->_decodeBase64Escape(Lcom/fasterxml/jackson/core/Base64Variant;II)I

    .line 47
    move-result v6

    .line 48
    .line 49
    if-gez v6, :cond_3

    .line 50
    goto :goto_0

    .line 51
    .line 52
    :cond_3
    if-le v3, v0, :cond_4

    .line 53
    add-int/2addr v4, v3

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, p3, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 57
    move v3, v2

    .line 58
    .line 59
    :cond_4
    iget v5, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 60
    .line 61
    iget v8, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 62
    .line 63
    if-lt v5, v8, :cond_5

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->loadMoreGuaranteed()V

    .line 67
    .line 68
    :cond_5
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 69
    .line 70
    iget v8, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 71
    .line 72
    add-int/lit8 v9, v8, 0x1

    .line 73
    .line 74
    iput v9, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 75
    .line 76
    aget-byte v5, v5, v8

    .line 77
    .line 78
    and-int/lit16 v5, v5, 0xff

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v5}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(I)I

    .line 82
    move-result v8

    .line 83
    .line 84
    if-gez v8, :cond_6

    .line 85
    const/4 v8, 0x1

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, p1, v5, v8}, Lcom/fasterxml/jackson/core/base/ParserBase;->_decodeBase64Escape(Lcom/fasterxml/jackson/core/Base64Variant;II)I

    .line 89
    move-result v8

    .line 90
    .line 91
    :cond_6
    shl-int/lit8 v5, v6, 0x6

    .line 92
    or-int/2addr v5, v8

    .line 93
    .line 94
    iget v6, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 95
    .line 96
    iget v8, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 97
    .line 98
    if-lt v6, v8, :cond_7

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->loadMoreGuaranteed()V

    .line 102
    .line 103
    :cond_7
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 104
    .line 105
    iget v8, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 106
    .line 107
    add-int/lit8 v9, v8, 0x1

    .line 108
    .line 109
    iput v9, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 110
    .line 111
    aget-byte v6, v6, v8

    .line 112
    .line 113
    and-int/lit16 v6, v6, 0xff

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, v6}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(I)I

    .line 117
    move-result v8

    .line 118
    const/4 v9, -0x2

    .line 119
    const/4 v10, 0x2

    .line 120
    .line 121
    if-gez v8, :cond_c

    .line 122
    .line 123
    if-eq v8, v9, :cond_9

    .line 124
    .line 125
    if-ne v6, v7, :cond_8

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPadding()Z

    .line 129
    move-result v8

    .line 130
    .line 131
    if-nez v8, :cond_8

    .line 132
    .line 133
    shr-int/lit8 p1, v5, 0x4

    .line 134
    .line 135
    add-int/lit8 v0, v3, 0x1

    .line 136
    int-to-byte p1, p1

    .line 137
    .line 138
    aput-byte p1, p3, v3

    .line 139
    move v3, v0

    .line 140
    .line 141
    goto/16 :goto_1

    .line 142
    .line 143
    .line 144
    :cond_8
    invoke-virtual {p0, p1, v6, v10}, Lcom/fasterxml/jackson/core/base/ParserBase;->_decodeBase64Escape(Lcom/fasterxml/jackson/core/Base64Variant;II)I

    .line 145
    move-result v8

    .line 146
    .line 147
    :cond_9
    if-ne v8, v9, :cond_c

    .line 148
    .line 149
    iget v6, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 150
    .line 151
    iget v7, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 152
    .line 153
    if-lt v6, v7, :cond_a

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->loadMoreGuaranteed()V

    .line 157
    .line 158
    :cond_a
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 159
    .line 160
    iget v7, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 161
    .line 162
    add-int/lit8 v8, v7, 0x1

    .line 163
    .line 164
    iput v8, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 165
    .line 166
    aget-byte v6, v6, v7

    .line 167
    .line 168
    and-int/lit16 v6, v6, 0xff

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1, v6}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPaddingChar(I)Z

    .line 172
    move-result v7

    .line 173
    .line 174
    if-eqz v7, :cond_b

    .line 175
    .line 176
    shr-int/lit8 v5, v5, 0x4

    .line 177
    .line 178
    add-int/lit8 v6, v3, 0x1

    .line 179
    int-to-byte v5, v5

    .line 180
    .line 181
    aput-byte v5, p3, v3

    .line 182
    move v3, v6

    .line 183
    .line 184
    goto/16 :goto_0

    .line 185
    .line 186
    :cond_b
    new-instance p2, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .line 191
    const-string p3, "expected padding character \'"

    .line 192
    .line 193
    .line 194
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->getPaddingChar()C

    .line 198
    move-result p3

    .line 199
    .line 200
    .line 201
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    const-string p3, "\'"

    .line 204
    .line 205
    .line 206
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    move-result-object p2

    .line 211
    .line 212
    .line 213
    invoke-virtual {p0, p1, v6, v1, p2}, Lcom/fasterxml/jackson/core/base/ParserBase;->reportInvalidBase64Char(Lcom/fasterxml/jackson/core/Base64Variant;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    .line 214
    move-result-object p1

    .line 215
    throw p1

    .line 216
    .line 217
    :cond_c
    shl-int/lit8 v5, v5, 0x6

    .line 218
    or-int/2addr v5, v8

    .line 219
    .line 220
    iget v6, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 221
    .line 222
    iget v8, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 223
    .line 224
    if-lt v6, v8, :cond_d

    .line 225
    .line 226
    .line 227
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->loadMoreGuaranteed()V

    .line 228
    .line 229
    :cond_d
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 230
    .line 231
    iget v8, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 232
    .line 233
    add-int/lit8 v11, v8, 0x1

    .line 234
    .line 235
    iput v11, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 236
    .line 237
    aget-byte v6, v6, v8

    .line 238
    .line 239
    and-int/lit16 v6, v6, 0xff

    .line 240
    .line 241
    .line 242
    invoke-virtual {p1, v6}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(I)I

    .line 243
    move-result v8

    .line 244
    .line 245
    if-gez v8, :cond_11

    .line 246
    .line 247
    if-eq v8, v9, :cond_10

    .line 248
    .line 249
    if-ne v6, v7, :cond_f

    .line 250
    .line 251
    .line 252
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPadding()Z

    .line 253
    move-result v7

    .line 254
    .line 255
    if-nez v7, :cond_f

    .line 256
    .line 257
    shr-int/lit8 p1, v5, 0x2

    .line 258
    .line 259
    add-int/lit8 v0, v3, 0x1

    .line 260
    .line 261
    shr-int/lit8 v1, v5, 0xa

    .line 262
    int-to-byte v1, v1

    .line 263
    .line 264
    aput-byte v1, p3, v3

    .line 265
    add-int/2addr v3, v10

    .line 266
    int-to-byte p1, p1

    .line 267
    .line 268
    aput-byte p1, p3, v0

    .line 269
    .line 270
    :goto_1
    iput-boolean v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenIncomplete:Z

    .line 271
    .line 272
    if-lez v3, :cond_e

    .line 273
    add-int/2addr v4, v3

    .line 274
    .line 275
    .line 276
    invoke-virtual {p2, p3, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 277
    :cond_e
    return v4

    .line 278
    .line 279
    .line 280
    :cond_f
    invoke-virtual {p0, p1, v6, v1}, Lcom/fasterxml/jackson/core/base/ParserBase;->_decodeBase64Escape(Lcom/fasterxml/jackson/core/Base64Variant;II)I

    .line 281
    move-result v8

    .line 282
    .line 283
    :cond_10
    if-ne v8, v9, :cond_11

    .line 284
    .line 285
    shr-int/lit8 v6, v5, 0x2

    .line 286
    .line 287
    add-int/lit8 v7, v3, 0x1

    .line 288
    .line 289
    shr-int/lit8 v5, v5, 0xa

    .line 290
    int-to-byte v5, v5

    .line 291
    .line 292
    aput-byte v5, p3, v3

    .line 293
    .line 294
    add-int/lit8 v3, v3, 0x2

    .line 295
    int-to-byte v5, v6

    .line 296
    .line 297
    aput-byte v5, p3, v7

    .line 298
    .line 299
    goto/16 :goto_0

    .line 300
    .line 301
    :cond_11
    shl-int/lit8 v5, v5, 0x6

    .line 302
    or-int/2addr v5, v8

    .line 303
    .line 304
    add-int/lit8 v6, v3, 0x1

    .line 305
    .line 306
    shr-int/lit8 v7, v5, 0x10

    .line 307
    int-to-byte v7, v7

    .line 308
    .line 309
    aput-byte v7, p3, v3

    .line 310
    .line 311
    add-int/lit8 v7, v3, 0x2

    .line 312
    .line 313
    shr-int/lit8 v8, v5, 0x8

    .line 314
    int-to-byte v8, v8

    .line 315
    .line 316
    aput-byte v8, p3, v6

    .line 317
    .line 318
    add-int/lit8 v3, v3, 0x3

    .line 319
    int-to-byte v5, v5

    .line 320
    .line 321
    aput-byte v5, p3, v7

    .line 322
    .line 323
    goto/16 :goto_0
.end method

.method protected _releaseBuffers()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->_releaseBuffers()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->release()V

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_bufferRecyclable:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    const/4 v1, 0x0

    .line 18
    .line 19
    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 20
    .line 21
    iget-object v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->releaseReadIOBuffer([B)V

    .line 25
    :cond_0
    return-void
.end method

.method protected _reportInvalidChar(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 1
    .line 2
    const/16 v0, 0x20

    .line 3
    .line 4
    if-ge p1, v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_throwInvalidSpace(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidInitial(I)V

    .line 11
    return-void
.end method

.method protected _reportInvalidInitial(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "Invalid UTF-8 start byte 0x"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportError(Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method protected _reportInvalidOther(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid UTF-8 middle byte 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportError(Ljava/lang/String;)V

    return-void
.end method

.method protected _reportInvalidOther(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    iput p2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 2
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidOther(I)V

    return-void
.end method

.method protected _reportInvalidToken(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "\'null\', \'true\', \'false\' or NaN"

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidToken(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected _reportInvalidToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    iget p1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    if-lt p1, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMore()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 4
    aget-byte p1, p1, v1

    .line 5
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_decodeCharForError(I)I

    move-result p1

    int-to-char p1, p1

    .line 6
    invoke-static {p1}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized token \'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\': was expecting "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportError(Ljava/lang/String;)V

    return-void

    .line 8
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method protected final _skipCR()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 3
    .line 4
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 5
    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMore()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 15
    .line 16
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 17
    .line 18
    aget-byte v0, v0, v1

    .line 19
    .line 20
    const/16 v2, 0xa

    .line 21
    .line 22
    if-ne v0, v2, :cond_1

    .line 23
    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    iput v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 27
    .line 28
    :cond_1
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_currInputRow:I

    .line 29
    .line 30
    add-int/lit8 v0, v0, 0x1

    .line 31
    .line 32
    iput v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_currInputRow:I

    .line 33
    .line 34
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 35
    .line 36
    iput v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_currInputRowStart:I

    .line 37
    return-void
.end method

.method protected _skipString()V
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
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenIncomplete:Z

    .line 4
    .line 5
    sget-object v0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_icUTF8:[I

    .line 6
    .line 7
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 8
    .line 9
    :goto_0
    iget v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 10
    .line 11
    iget v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 12
    .line 13
    if-lt v2, v3, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->loadMoreGuaranteed()V

    .line 17
    .line 18
    iget v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 19
    .line 20
    iget v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 21
    .line 22
    :cond_0
    :goto_1
    if-ge v2, v3, :cond_8

    .line 23
    .line 24
    add-int/lit8 v4, v2, 0x1

    .line 25
    .line 26
    aget-byte v2, v1, v2

    .line 27
    .line 28
    and-int/lit16 v2, v2, 0xff

    .line 29
    .line 30
    aget v5, v0, v2

    .line 31
    .line 32
    if-eqz v5, :cond_7

    .line 33
    .line 34
    iput v4, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 35
    .line 36
    const/16 v3, 0x22

    .line 37
    .line 38
    if-ne v2, v3, :cond_1

    .line 39
    return-void

    .line 40
    :cond_1
    const/4 v3, 0x1

    .line 41
    .line 42
    if-eq v5, v3, :cond_6

    .line 43
    const/4 v3, 0x2

    .line 44
    .line 45
    if-eq v5, v3, :cond_5

    .line 46
    const/4 v3, 0x3

    .line 47
    .line 48
    if-eq v5, v3, :cond_4

    .line 49
    const/4 v3, 0x4

    .line 50
    .line 51
    if-eq v5, v3, :cond_3

    .line 52
    .line 53
    const/16 v3, 0x20

    .line 54
    .line 55
    if-ge v2, v3, :cond_2

    .line 56
    .line 57
    .line 58
    const-string/jumbo v3, "string value"

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v2, v3}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_throwUnquotedSpace(ILjava/lang/String;)V

    .line 62
    goto :goto_0

    .line 63
    .line 64
    .line 65
    :cond_2
    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_reportInvalidChar(I)V

    .line 66
    goto :goto_0

    .line 67
    .line 68
    .line 69
    :cond_3
    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipUtf8_4(I)V

    .line 70
    goto :goto_0

    .line 71
    .line 72
    .line 73
    :cond_4
    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipUtf8_3(I)V

    .line 74
    goto :goto_0

    .line 75
    .line 76
    .line 77
    :cond_5
    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipUtf8_2(I)V

    .line 78
    goto :goto_0

    .line 79
    .line 80
    .line 81
    :cond_6
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_decodeEscaped()C

    .line 82
    goto :goto_0

    .line 83
    :cond_7
    move v2, v4

    .line 84
    goto :goto_1

    .line 85
    .line 86
    :cond_8
    iput v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 87
    goto :goto_0
.end method

.method public getBinaryValue(Lcom/fasterxml/jackson/core/Base64Variant;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 3
    .line 4
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    .line 5
    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_binaryValue:[B

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    const-string v1, "Current token ("

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v1, ") not VALUE_STRING or VALUE_EMBEDDED_OBJECT, can not access as binary"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportError(Ljava/lang/String;)V

    .line 42
    .line 43
    :cond_1
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenIncomplete:Z

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    .line 48
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_decodeBase64(Lcom/fasterxml/jackson/core/Base64Variant;)[B

    .line 49
    move-result-object v0

    .line 50
    .line 51
    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_binaryValue:[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    const/4 p1, 0x0

    .line 53
    .line 54
    iput-boolean p1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenIncomplete:Z

    .line 55
    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    const-string v2, "Failed to decode VALUE_STRING as base64 ("

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string p1, "): "

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 78
    move-result-object p1

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object p1

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonParser;->_constructError(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    .line 89
    move-result-object p1

    .line 90
    throw p1

    .line 91
    .line 92
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_binaryValue:[B

    .line 93
    .line 94
    if-nez v0, :cond_3

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->_getByteArrayBuilder()Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    .line 98
    move-result-object v0

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->getText()Ljava/lang/String;

    .line 102
    move-result-object v1

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, v1, v0, p1}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_decodeBase64(Ljava/lang/String;Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;Lcom/fasterxml/jackson/core/Base64Variant;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->toByteArray()[B

    .line 109
    move-result-object p1

    .line 110
    .line 111
    iput-object p1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_binaryValue:[B

    .line 112
    .line 113
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_binaryValue:[B

    .line 114
    return-object p1
.end method

.method public getCodec()Lcom/fasterxml/jackson/core/ObjectCodec;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;

    return-object v0
.end method

.method public getCurrentLocation()Lcom/fasterxml/jackson/core/JsonLocation;
    .locals 9

    .line 1
    .line 2
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 3
    .line 4
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_currInputRowStart:I

    .line 5
    sub-int/2addr v0, v1

    .line 6
    .line 7
    add-int/lit8 v8, v0, 0x1

    .line 8
    .line 9
    new-instance v0, Lcom/fasterxml/jackson/core/JsonLocation;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/io/IOContext;->getSourceReference()Ljava/lang/Object;

    .line 15
    move-result-object v2

    .line 16
    .line 17
    iget-wide v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_currInputProcessed:J

    .line 18
    .line 19
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 20
    int-to-long v5, v1

    .line 21
    add-long/2addr v3, v5

    .line 22
    .line 23
    const-wide/16 v5, -0x1

    .line 24
    .line 25
    iget v7, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_currInputRow:I

    .line 26
    move-object v1, v0

    .line 27
    .line 28
    .line 29
    invoke-direct/range {v1 .. v8}, Lcom/fasterxml/jackson/core/JsonLocation;-><init>(Ljava/lang/Object;JJII)V

    .line 30
    return-object v0
.end method

.method public getInputSource()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 3
    .line 4
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    .line 5
    .line 6
    if-ne v0, v1, :cond_1

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenIncomplete:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenIncomplete:Z

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_finishString()V

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    return-object v0

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_getText2(Lcom/fasterxml/jackson/core/JsonToken;)Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    return-object v0
.end method

.method public getTextCharacters()[C
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 3
    .line 4
    if-eqz v0, :cond_6

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x5

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    if-eq v0, v1, :cond_2

    .line 13
    const/4 v1, 0x6

    .line 14
    .line 15
    if-eq v0, v1, :cond_0

    .line 16
    const/4 v1, 0x7

    .line 17
    .line 18
    if-eq v0, v1, :cond_1

    .line 19
    .line 20
    const/16 v1, 0x8

    .line 21
    .line 22
    if-eq v0, v1, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->asCharArray()[C

    .line 28
    move-result-object v0

    .line 29
    return-object v0

    .line 30
    .line 31
    :cond_0
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenIncomplete:Z

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    iput-boolean v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenIncomplete:Z

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_finishString()V

    .line 39
    .line 40
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getTextBuffer()[C

    .line 44
    move-result-object v0

    .line 45
    return-object v0

    .line 46
    .line 47
    :cond_2
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_nameCopied:Z

    .line 48
    .line 49
    if-nez v0, :cond_5

    .line 50
    .line 51
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getCurrentName()Ljava/lang/String;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 59
    move-result v1

    .line 60
    .line 61
    iget-object v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_nameCopyBuffer:[C

    .line 62
    .line 63
    if-nez v3, :cond_3

    .line 64
    .line 65
    iget-object v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, v1}, Lcom/fasterxml/jackson/core/io/IOContext;->allocNameCopyBuffer(I)[C

    .line 69
    move-result-object v3

    .line 70
    .line 71
    iput-object v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_nameCopyBuffer:[C

    .line 72
    goto :goto_0

    .line 73
    :cond_3
    array-length v3, v3

    .line 74
    .line 75
    if-ge v3, v1, :cond_4

    .line 76
    .line 77
    new-array v3, v1, [C

    .line 78
    .line 79
    iput-object v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_nameCopyBuffer:[C

    .line 80
    .line 81
    :cond_4
    :goto_0
    iget-object v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_nameCopyBuffer:[C

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v2, v1, v3, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 85
    const/4 v0, 0x1

    .line 86
    .line 87
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_nameCopied:Z

    .line 88
    .line 89
    :cond_5
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_nameCopyBuffer:[C

    .line 90
    return-object v0

    .line 91
    :cond_6
    const/4 v0, 0x0

    .line 92
    return-object v0
.end method

.method public getTextLength()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    .line 9
    move-result v0

    .line 10
    const/4 v2, 0x5

    .line 11
    .line 12
    if-eq v0, v2, :cond_2

    .line 13
    const/4 v2, 0x6

    .line 14
    .line 15
    if-eq v0, v2, :cond_0

    .line 16
    const/4 v1, 0x7

    .line 17
    .line 18
    if-eq v0, v1, :cond_1

    .line 19
    .line 20
    const/16 v1, 0x8

    .line 21
    .line 22
    if-eq v0, v1, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->asCharArray()[C

    .line 28
    move-result-object v0

    .line 29
    array-length v0, v0

    .line 30
    return v0

    .line 31
    .line 32
    :cond_0
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenIncomplete:Z

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenIncomplete:Z

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_finishString()V

    .line 40
    .line 41
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->size()I

    .line 45
    move-result v0

    .line 46
    return v0

    .line 47
    .line 48
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getCurrentName()Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 56
    move-result v0

    .line 57
    return v0

    .line 58
    :cond_3
    return v1
.end method

.method public getTextOffset()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    .line 9
    move-result v0

    .line 10
    const/4 v2, 0x6

    .line 11
    .line 12
    if-eq v0, v2, :cond_0

    .line 13
    const/4 v2, 0x7

    .line 14
    .line 15
    if-eq v0, v2, :cond_1

    .line 16
    .line 17
    const/16 v2, 0x8

    .line 18
    .line 19
    if-eq v0, v2, :cond_1

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_0
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenIncomplete:Z

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenIncomplete:Z

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_finishString()V

    .line 30
    .line 31
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getTextOffset()I

    .line 35
    move-result v0

    .line 36
    return v0

    .line 37
    :cond_2
    :goto_0
    return v1
.end method

.method public getTokenLocation()Lcom/fasterxml/jackson/core/JsonLocation;
    .locals 9

    .line 1
    .line 2
    new-instance v8, Lcom/fasterxml/jackson/core/JsonLocation;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/io/IOContext;->getSourceReference()Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->getTokenCharacterOffset()J

    .line 12
    move-result-wide v2

    .line 13
    .line 14
    const-wide/16 v4, -0x1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->getTokenLineNr()I

    .line 18
    move-result v6

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->getTokenColumnNr()I

    .line 22
    move-result v7

    .line 23
    move-object v0, v8

    .line 24
    .line 25
    .line 26
    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/core/JsonLocation;-><init>(Ljava/lang/Object;JJII)V

    .line 27
    return-object v8
.end method

.method public getValueAsString()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 1
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenIncomplete:Z

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_finishString()V

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 3
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    .line 4
    invoke-super {p0, v0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->getValueAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValueAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 5
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    iget-boolean p1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenIncomplete:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenIncomplete:Z

    .line 6
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_finishString()V

    :cond_0
    iget-object p1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 7
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 8
    :cond_1
    invoke-super {p0, p1}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->getValueAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final loadMore()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_currInputProcessed:J

    .line 3
    .line 4
    iget v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 5
    int-to-long v3, v2

    .line 6
    add-long/2addr v0, v3

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_currInputProcessed:J

    .line 9
    .line 10
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_currInputRowStart:I

    .line 11
    sub-int/2addr v0, v2

    .line 12
    .line 13
    iput v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_currInputRowStart:I

    .line 14
    .line 15
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputStream:Ljava/io/InputStream;

    .line 16
    const/4 v1, 0x0

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 21
    array-length v3, v2

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v2, v1, v3}, Ljava/io/InputStream;->read([BII)I

    .line 25
    move-result v0

    .line 26
    .line 27
    if-lez v0, :cond_0

    .line 28
    .line 29
    iput v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 30
    .line 31
    iput v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 32
    const/4 v0, 0x1

    .line 33
    return v0

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_closeInput()V

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 42
    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    const-string v2, "InputStream.read() returned 0 characters when trying to read "

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 54
    array-length v2, v2

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string v2, " bytes"

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object v1

    .line 67
    .line 68
    .line 69
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 70
    throw v0

    .line 71
    :cond_2
    :goto_0
    return v1
.end method

.method public nextBooleanValue()Ljava/lang/Boolean;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 3
    .line 4
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    if-ne v0, v1, :cond_4

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_nameCopied:Z

    .line 11
    .line 12
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 13
    .line 14
    iput-object v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 17
    .line 18
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    .line 19
    .line 20
    if-ne v0, v1, :cond_0

    .line 21
    .line 22
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 23
    return-object v0

    .line 24
    .line 25
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    .line 26
    .line 27
    if-ne v0, v1, :cond_1

    .line 28
    .line 29
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 30
    return-object v0

    .line 31
    .line 32
    :cond_1
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    .line 33
    .line 34
    if-ne v0, v1, :cond_2

    .line 35
    .line 36
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 37
    .line 38
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_tokenInputRow:I

    .line 39
    .line 40
    iget v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_tokenInputCol:I

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1, v3}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildArrayContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 47
    goto :goto_0

    .line 48
    .line 49
    :cond_2
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    .line 50
    .line 51
    if-ne v0, v1, :cond_3

    .line 52
    .line 53
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 54
    .line 55
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_tokenInputRow:I

    .line 56
    .line 57
    iget v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_tokenInputCol:I

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1, v3}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildObjectContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 64
    :cond_3
    :goto_0
    return-object v2

    .line 65
    .line 66
    .line 67
    :cond_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    .line 72
    move-result v0

    .line 73
    .line 74
    const/16 v1, 0x9

    .line 75
    .line 76
    if-eq v0, v1, :cond_6

    .line 77
    .line 78
    const/16 v1, 0xa

    .line 79
    .line 80
    if-eq v0, v1, :cond_5

    .line 81
    return-object v2

    .line 82
    .line 83
    :cond_5
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 84
    return-object v0

    .line 85
    .line 86
    :cond_6
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 87
    return-object v0
.end method

.method public nextFieldName(Lcom/fasterxml/jackson/core/SerializableString;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I

    .line 4
    .line 5
    iget-object v1, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 6
    .line 7
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    .line 8
    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nextAfterName()Lcom/fasterxml/jackson/core/JsonToken;

    .line 13
    return v0

    .line 14
    .line 15
    :cond_0
    iget-boolean v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenIncomplete:Z

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipString()V

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipWSOrEnd()I

    .line 24
    move-result v1

    .line 25
    const/4 v2, 0x0

    .line 26
    .line 27
    if-gez v1, :cond_2

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->close()V

    .line 31
    .line 32
    iput-object v2, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 33
    return v0

    .line 34
    .line 35
    :cond_2
    iget-wide v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_currInputProcessed:J

    .line 36
    .line 37
    iget v5, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 38
    int-to-long v6, v5

    .line 39
    add-long/2addr v3, v6

    .line 40
    .line 41
    const-wide/16 v6, 0x1

    .line 42
    sub-long/2addr v3, v6

    .line 43
    .line 44
    iput-wide v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_tokenInputTotal:J

    .line 45
    .line 46
    iget v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_currInputRow:I

    .line 47
    .line 48
    iput v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_tokenInputRow:I

    .line 49
    .line 50
    iget v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_currInputRowStart:I

    .line 51
    sub-int/2addr v5, v3

    .line 52
    const/4 v3, 0x1

    .line 53
    sub-int/2addr v5, v3

    .line 54
    .line 55
    iput v5, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_tokenInputCol:I

    .line 56
    .line 57
    iput-object v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_binaryValue:[B

    .line 58
    .line 59
    const/16 v2, 0x7d

    .line 60
    .line 61
    const/16 v4, 0x5d

    .line 62
    .line 63
    if-ne v1, v4, :cond_4

    .line 64
    .line 65
    iget-object p1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonStreamContext;->inArray()Z

    .line 69
    move-result p1

    .line 70
    .line 71
    if-nez p1, :cond_3

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/core/base/ParserBase;->_reportMismatchedEndMarker(IC)V

    .line 75
    .line 76
    :cond_3
    iget-object p1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getParent()Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 80
    move-result-object p1

    .line 81
    .line 82
    iput-object p1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 83
    .line 84
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    .line 85
    .line 86
    iput-object p1, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 87
    return v0

    .line 88
    .line 89
    :cond_4
    if-ne v1, v2, :cond_6

    .line 90
    .line 91
    iget-object p1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonStreamContext;->inObject()Z

    .line 95
    move-result p1

    .line 96
    .line 97
    if-nez p1, :cond_5

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, v1, v4}, Lcom/fasterxml/jackson/core/base/ParserBase;->_reportMismatchedEndMarker(IC)V

    .line 101
    .line 102
    :cond_5
    iget-object p1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getParent()Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 106
    move-result-object p1

    .line 107
    .line 108
    iput-object p1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 109
    .line 110
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    .line 111
    .line 112
    iput-object p1, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 113
    return v0

    .line 114
    .line 115
    :cond_6
    iget-object v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->expectComma()Z

    .line 119
    move-result v2

    .line 120
    .line 121
    if-eqz v2, :cond_8

    .line 122
    .line 123
    const/16 v2, 0x2c

    .line 124
    .line 125
    if-eq v1, v2, :cond_7

    .line 126
    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    .line 133
    const-string/jumbo v4, "was expecting comma to separate "

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    iget-object v4, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/JsonStreamContext;->getTypeDesc()Ljava/lang/String;

    .line 142
    move-result-object v4

    .line 143
    .line 144
    .line 145
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    const-string v4, " entries"

    .line 148
    .line 149
    .line 150
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    move-result-object v2

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 158
    .line 159
    .line 160
    :cond_7
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipWS()I

    .line 161
    move-result v1

    .line 162
    .line 163
    :cond_8
    iget-object v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonStreamContext;->inObject()Z

    .line 167
    move-result v2

    .line 168
    .line 169
    if-nez v2, :cond_9

    .line 170
    .line 171
    .line 172
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nextTokenNotInObject(I)Lcom/fasterxml/jackson/core/JsonToken;

    .line 173
    return v0

    .line 174
    .line 175
    :cond_9
    const/16 v2, 0x22

    .line 176
    .line 177
    if-ne v1, v2, :cond_c

    .line 178
    .line 179
    .line 180
    invoke-interface {p1}, Lcom/fasterxml/jackson/core/SerializableString;->asQuotedUTF8()[B

    .line 181
    move-result-object v4

    .line 182
    array-length v5, v4

    .line 183
    .line 184
    iget v6, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 185
    .line 186
    add-int v7, v6, v5

    .line 187
    .line 188
    iget v8, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 189
    .line 190
    if-ge v7, v8, :cond_c

    .line 191
    .line 192
    add-int v7, v6, v5

    .line 193
    .line 194
    iget-object v8, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 195
    .line 196
    aget-byte v8, v8, v7

    .line 197
    .line 198
    if-ne v8, v2, :cond_c

    .line 199
    .line 200
    :goto_0
    if-ne v0, v5, :cond_a

    .line 201
    add-int/2addr v7, v3

    .line 202
    .line 203
    iput v7, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 204
    .line 205
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 206
    .line 207
    .line 208
    invoke-interface {p1}, Lcom/fasterxml/jackson/core/SerializableString;->getValue()Ljava/lang/String;

    .line 209
    move-result-object p1

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->setCurrentName(Ljava/lang/String;)V

    .line 213
    .line 214
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    .line 215
    .line 216
    iput-object p1, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 217
    .line 218
    .line 219
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_isNextTokenNameYes()V

    .line 220
    return v3

    .line 221
    .line 222
    :cond_a
    aget-byte v2, v4, v0

    .line 223
    .line 224
    iget-object v8, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 225
    .line 226
    add-int v9, v6, v0

    .line 227
    .line 228
    aget-byte v8, v8, v9

    .line 229
    .line 230
    if-eq v2, v8, :cond_b

    .line 231
    goto :goto_1

    .line 232
    .line 233
    :cond_b
    add-int/lit8 v0, v0, 0x1

    .line 234
    goto :goto_0

    .line 235
    .line 236
    .line 237
    :cond_c
    :goto_1
    invoke-direct {p0, v1, p1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_isNextTokenNameMaybe(ILcom/fasterxml/jackson/core/SerializableString;)Z

    .line 238
    move-result p1

    .line 239
    return p1
.end method

.method public nextIntValue(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 3
    .line 4
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    .line 5
    .line 6
    if-ne v0, v1, :cond_3

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_nameCopied:Z

    .line 10
    .line 11
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 12
    const/4 v1, 0x0

    .line 13
    .line 14
    iput-object v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 17
    .line 18
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    .line 19
    .line 20
    if-ne v0, v1, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->getIntValue()I

    .line 24
    move-result p1

    .line 25
    return p1

    .line 26
    .line 27
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    .line 28
    .line 29
    if-ne v0, v1, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 32
    .line 33
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_tokenInputRow:I

    .line 34
    .line 35
    iget v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_tokenInputCol:I

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildArrayContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_1
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    .line 45
    .line 46
    if-ne v0, v1, :cond_2

    .line 47
    .line 48
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 49
    .line 50
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_tokenInputRow:I

    .line 51
    .line 52
    iget v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_tokenInputCol:I

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildObjectContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 59
    :cond_2
    :goto_0
    return p1

    .line 60
    .line 61
    .line 62
    :cond_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    .line 66
    .line 67
    if-ne v0, v1, :cond_4

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->getIntValue()I

    .line 71
    move-result p1

    .line 72
    :cond_4
    return p1
.end method

.method public nextLongValue(J)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 3
    .line 4
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    .line 5
    .line 6
    if-ne v0, v1, :cond_3

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_nameCopied:Z

    .line 10
    .line 11
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 12
    const/4 v1, 0x0

    .line 13
    .line 14
    iput-object v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 17
    .line 18
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    .line 19
    .line 20
    if-ne v0, v1, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->getLongValue()J

    .line 24
    move-result-wide p1

    .line 25
    return-wide p1

    .line 26
    .line 27
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    .line 28
    .line 29
    if-ne v0, v1, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 32
    .line 33
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_tokenInputRow:I

    .line 34
    .line 35
    iget v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_tokenInputCol:I

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildArrayContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_1
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    .line 45
    .line 46
    if-ne v0, v1, :cond_2

    .line 47
    .line 48
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 49
    .line 50
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_tokenInputRow:I

    .line 51
    .line 52
    iget v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_tokenInputCol:I

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildObjectContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 59
    :cond_2
    :goto_0
    return-wide p1

    .line 60
    .line 61
    .line 62
    :cond_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    .line 66
    .line 67
    if-ne v0, v1, :cond_4

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->getLongValue()J

    .line 71
    move-result-wide p1

    .line 72
    :cond_4
    return-wide p1
.end method

.method public nextTextValue()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 3
    .line 4
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    if-ne v0, v1, :cond_4

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_nameCopied:Z

    .line 11
    .line 12
    iget-object v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 13
    .line 14
    iput-object v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 15
    .line 16
    iput-object v1, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 17
    .line 18
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    .line 19
    .line 20
    if-ne v1, v3, :cond_1

    .line 21
    .line 22
    iget-boolean v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenIncomplete:Z

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenIncomplete:Z

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_finishString()V

    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    return-object v0

    .line 37
    .line 38
    :cond_1
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    .line 39
    .line 40
    if-ne v1, v0, :cond_2

    .line 41
    .line 42
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 43
    .line 44
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_tokenInputRow:I

    .line 45
    .line 46
    iget v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_tokenInputCol:I

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1, v3}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildArrayContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 53
    goto :goto_0

    .line 54
    .line 55
    :cond_2
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    .line 56
    .line 57
    if-ne v1, v0, :cond_3

    .line 58
    .line 59
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 60
    .line 61
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_tokenInputRow:I

    .line 62
    .line 63
    iget v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_tokenInputCol:I

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1, v3}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildObjectContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 70
    :cond_3
    :goto_0
    return-object v2

    .line 71
    .line 72
    .line 73
    :cond_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 74
    move-result-object v0

    .line 75
    .line 76
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    .line 77
    .line 78
    if-ne v0, v1, :cond_5

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->getText()Ljava/lang/String;

    .line 82
    move-result-object v2

    .line 83
    :cond_5
    return-object v2
.end method

.method public nextToken()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_numTypesValid:I

    .line 4
    .line 5
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 6
    .line 7
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nextAfterName()Lcom/fasterxml/jackson/core/JsonToken;

    .line 13
    move-result-object v0

    .line 14
    return-object v0

    .line 15
    .line 16
    :cond_0
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenIncomplete:Z

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipString()V

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipWSOrEnd()I

    .line 25
    move-result v0

    .line 26
    const/4 v2, 0x0

    .line 27
    .line 28
    if-gez v0, :cond_2

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->close()V

    .line 32
    .line 33
    iput-object v2, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 34
    return-object v2

    .line 35
    .line 36
    :cond_2
    iget-wide v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_currInputProcessed:J

    .line 37
    .line 38
    iget v5, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 39
    int-to-long v6, v5

    .line 40
    add-long/2addr v3, v6

    .line 41
    .line 42
    const-wide/16 v6, 0x1

    .line 43
    sub-long/2addr v3, v6

    .line 44
    .line 45
    iput-wide v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_tokenInputTotal:J

    .line 46
    .line 47
    iget v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_currInputRow:I

    .line 48
    .line 49
    iput v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_tokenInputRow:I

    .line 50
    .line 51
    iget v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_currInputRowStart:I

    .line 52
    sub-int/2addr v5, v3

    .line 53
    const/4 v3, 0x1

    .line 54
    sub-int/2addr v5, v3

    .line 55
    .line 56
    iput v5, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_tokenInputCol:I

    .line 57
    .line 58
    iput-object v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_binaryValue:[B

    .line 59
    .line 60
    const/16 v2, 0x7d

    .line 61
    .line 62
    const/16 v4, 0x5d

    .line 63
    .line 64
    if-ne v0, v4, :cond_4

    .line 65
    .line 66
    iget-object v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonStreamContext;->inArray()Z

    .line 70
    move-result v1

    .line 71
    .line 72
    if-nez v1, :cond_3

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v0, v2}, Lcom/fasterxml/jackson/core/base/ParserBase;->_reportMismatchedEndMarker(IC)V

    .line 76
    .line 77
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getParent()Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 81
    move-result-object v0

    .line 82
    .line 83
    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 84
    .line 85
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    .line 86
    .line 87
    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 88
    return-object v0

    .line 89
    .line 90
    :cond_4
    if-ne v0, v2, :cond_6

    .line 91
    .line 92
    iget-object v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonStreamContext;->inObject()Z

    .line 96
    move-result v1

    .line 97
    .line 98
    if-nez v1, :cond_5

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, v0, v4}, Lcom/fasterxml/jackson/core/base/ParserBase;->_reportMismatchedEndMarker(IC)V

    .line 102
    .line 103
    :cond_5
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getParent()Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 107
    move-result-object v0

    .line 108
    .line 109
    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 110
    .line 111
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    .line 112
    .line 113
    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 114
    return-object v0

    .line 115
    .line 116
    :cond_6
    iget-object v5, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->expectComma()Z

    .line 120
    move-result v5

    .line 121
    .line 122
    if-eqz v5, :cond_8

    .line 123
    .line 124
    const/16 v5, 0x2c

    .line 125
    .line 126
    if-eq v0, v5, :cond_7

    .line 127
    .line 128
    new-instance v5, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    .line 134
    const-string/jumbo v6, "was expecting comma to separate "

    .line 135
    .line 136
    .line 137
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    iget-object v6, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v6}, Lcom/fasterxml/jackson/core/JsonStreamContext;->getTypeDesc()Ljava/lang/String;

    .line 143
    move-result-object v6

    .line 144
    .line 145
    .line 146
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    const-string v6, " entries"

    .line 149
    .line 150
    .line 151
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    move-result-object v5

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0, v0, v5}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 159
    .line 160
    .line 161
    :cond_7
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipWS()I

    .line 162
    move-result v0

    .line 163
    .line 164
    :cond_8
    iget-object v5, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/JsonStreamContext;->inObject()Z

    .line 168
    move-result v5

    .line 169
    .line 170
    if-nez v5, :cond_9

    .line 171
    .line 172
    .line 173
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_nextTokenNotInObject(I)Lcom/fasterxml/jackson/core/JsonToken;

    .line 174
    move-result-object v0

    .line 175
    return-object v0

    .line 176
    .line 177
    .line 178
    :cond_9
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parseName(I)Lcom/fasterxml/jackson/core/sym/Name;

    .line 179
    move-result-object v0

    .line 180
    .line 181
    iget-object v5, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/sym/Name;->getName()Ljava/lang/String;

    .line 185
    move-result-object v0

    .line 186
    .line 187
    .line 188
    invoke-virtual {v5, v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->setCurrentName(Ljava/lang/String;)V

    .line 189
    .line 190
    iput-object v1, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 191
    .line 192
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 193
    .line 194
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 195
    .line 196
    const/16 v5, 0x3a

    .line 197
    .line 198
    if-ge v0, v1, :cond_a

    .line 199
    .line 200
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 201
    .line 202
    aget-byte v1, v1, v0

    .line 203
    .line 204
    if-ne v1, v5, :cond_a

    .line 205
    add-int/2addr v0, v3

    .line 206
    .line 207
    iput v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 208
    goto :goto_0

    .line 209
    .line 210
    .line 211
    :cond_a
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipWS()I

    .line 212
    move-result v0

    .line 213
    .line 214
    if-eq v0, v5, :cond_b

    .line 215
    .line 216
    .line 217
    const-string/jumbo v1, "was expecting a colon to separate field name and value"

    .line 218
    .line 219
    .line 220
    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 221
    .line 222
    .line 223
    :cond_b
    :goto_0
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_skipWS()I

    .line 224
    move-result v0

    .line 225
    .line 226
    const/16 v1, 0x22

    .line 227
    .line 228
    if-ne v0, v1, :cond_c

    .line 229
    .line 230
    iput-boolean v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenIncomplete:Z

    .line 231
    .line 232
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    .line 233
    .line 234
    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 235
    .line 236
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 237
    return-object v0

    .line 238
    .line 239
    :cond_c
    const/16 v1, 0x2d

    .line 240
    .line 241
    if-eq v0, v1, :cond_13

    .line 242
    .line 243
    const/16 v1, 0x5b

    .line 244
    .line 245
    if-eq v0, v1, :cond_12

    .line 246
    .line 247
    if-eq v0, v4, :cond_10

    .line 248
    .line 249
    const/16 v1, 0x66

    .line 250
    .line 251
    if-eq v0, v1, :cond_f

    .line 252
    .line 253
    const/16 v1, 0x6e

    .line 254
    .line 255
    if-eq v0, v1, :cond_e

    .line 256
    .line 257
    const/16 v1, 0x74

    .line 258
    .line 259
    if-eq v0, v1, :cond_11

    .line 260
    .line 261
    const/16 v1, 0x7b

    .line 262
    .line 263
    if-eq v0, v1, :cond_d

    .line 264
    .line 265
    if-eq v0, v2, :cond_10

    .line 266
    .line 267
    .line 268
    packed-switch v0, :pswitch_data_0

    .line 269
    .line 270
    .line 271
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_handleUnexpectedValue(I)Lcom/fasterxml/jackson/core/JsonToken;

    .line 272
    move-result-object v0

    .line 273
    goto :goto_1

    .line 274
    .line 275
    :cond_d
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    .line 276
    goto :goto_1

    .line 277
    .line 278
    .line 279
    :cond_e
    const-string/jumbo v0, "null"

    .line 280
    .line 281
    .line 282
    invoke-virtual {p0, v0, v3}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 283
    .line 284
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    .line 285
    goto :goto_1

    .line 286
    .line 287
    :cond_f
    const-string v0, "false"

    .line 288
    .line 289
    .line 290
    invoke-virtual {p0, v0, v3}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 291
    .line 292
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    .line 293
    goto :goto_1

    .line 294
    .line 295
    :cond_10
    const-string v1, "expected a value"

    .line 296
    .line 297
    .line 298
    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 299
    .line 300
    .line 301
    :cond_11
    const-string/jumbo v0, "true"

    .line 302
    .line 303
    .line 304
    invoke-virtual {p0, v0, v3}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 305
    .line 306
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    .line 307
    goto :goto_1

    .line 308
    .line 309
    :cond_12
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    .line 310
    goto :goto_1

    .line 311
    .line 312
    .line 313
    :cond_13
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_parseNumber(I)Lcom/fasterxml/jackson/core/JsonToken;

    .line 314
    move-result-object v0

    .line 315
    .line 316
    :goto_1
    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 317
    .line 318
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 319
    return-object v0

    .line 320
    nop

    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected parseEscapedName([IIIII)Lcom/fasterxml/jackson/core/sym/Name;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_icLatin1:[I

    .line 3
    .line 4
    :goto_0
    aget v1, v0, p4

    .line 5
    const/4 v2, 0x4

    .line 6
    const/4 v3, 0x1

    .line 7
    .line 8
    if-eqz v1, :cond_a

    .line 9
    .line 10
    const/16 v1, 0x22

    .line 11
    .line 12
    if-ne p4, v1, :cond_3

    .line 13
    .line 14
    if-lez p5, :cond_1

    .line 15
    array-length p4, p1

    .line 16
    .line 17
    if-lt p2, p4, :cond_0

    .line 18
    array-length p4, p1

    .line 19
    .line 20
    .line 21
    invoke-static {p1, p4}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->growArrayBy([II)[I

    .line 22
    move-result-object p1

    .line 23
    .line 24
    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    .line 25
    .line 26
    :cond_0
    add-int/lit8 p4, p2, 0x1

    .line 27
    .line 28
    aput p3, p1, p2

    .line 29
    move p2, p4

    .line 30
    .line 31
    :cond_1
    iget-object p3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p3, p1, p2}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->findName([II)Lcom/fasterxml/jackson/core/sym/Name;

    .line 35
    move-result-object p3

    .line 36
    .line 37
    if-nez p3, :cond_2

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, p1, p2, p5}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->addName([III)Lcom/fasterxml/jackson/core/sym/Name;

    .line 41
    move-result-object p3

    .line 42
    :cond_2
    return-object p3

    .line 43
    .line 44
    :cond_3
    const/16 v1, 0x5c

    .line 45
    .line 46
    if-eq p4, v1, :cond_4

    .line 47
    .line 48
    const-string v1, "name"

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p4, v1}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_throwUnquotedSpace(ILjava/lang/String;)V

    .line 52
    goto :goto_1

    .line 53
    .line 54
    .line 55
    :cond_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_decodeEscaped()C

    .line 56
    move-result p4

    .line 57
    .line 58
    :goto_1
    const/16 v1, 0x7f

    .line 59
    .line 60
    if-le p4, v1, :cond_a

    .line 61
    const/4 v1, 0x0

    .line 62
    .line 63
    if-lt p5, v2, :cond_6

    .line 64
    array-length p5, p1

    .line 65
    .line 66
    if-lt p2, p5, :cond_5

    .line 67
    array-length p5, p1

    .line 68
    .line 69
    .line 70
    invoke-static {p1, p5}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->growArrayBy([II)[I

    .line 71
    move-result-object p1

    .line 72
    .line 73
    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    .line 74
    .line 75
    :cond_5
    add-int/lit8 p5, p2, 0x1

    .line 76
    .line 77
    aput p3, p1, p2

    .line 78
    move p2, p5

    .line 79
    move p3, v1

    .line 80
    move p5, p3

    .line 81
    .line 82
    :cond_6
    const/16 v4, 0x800

    .line 83
    .line 84
    if-ge p4, v4, :cond_7

    .line 85
    .line 86
    shl-int/lit8 p3, p3, 0x8

    .line 87
    .line 88
    shr-int/lit8 v1, p4, 0x6

    .line 89
    .line 90
    or-int/lit16 v1, v1, 0xc0

    .line 91
    or-int/2addr p3, v1

    .line 92
    .line 93
    add-int/lit8 p5, p5, 0x1

    .line 94
    goto :goto_3

    .line 95
    .line 96
    :cond_7
    shl-int/lit8 p3, p3, 0x8

    .line 97
    .line 98
    shr-int/lit8 v4, p4, 0xc

    .line 99
    .line 100
    or-int/lit16 v4, v4, 0xe0

    .line 101
    or-int/2addr p3, v4

    .line 102
    .line 103
    add-int/lit8 p5, p5, 0x1

    .line 104
    .line 105
    if-lt p5, v2, :cond_9

    .line 106
    array-length p5, p1

    .line 107
    .line 108
    if-lt p2, p5, :cond_8

    .line 109
    array-length p5, p1

    .line 110
    .line 111
    .line 112
    invoke-static {p1, p5}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->growArrayBy([II)[I

    .line 113
    move-result-object p1

    .line 114
    .line 115
    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    .line 116
    .line 117
    :cond_8
    add-int/lit8 p5, p2, 0x1

    .line 118
    .line 119
    aput p3, p1, p2

    .line 120
    move p2, p5

    .line 121
    move p5, v1

    .line 122
    goto :goto_2

    .line 123
    :cond_9
    move v1, p3

    .line 124
    .line 125
    :goto_2
    shl-int/lit8 p3, v1, 0x8

    .line 126
    .line 127
    shr-int/lit8 v1, p4, 0x6

    .line 128
    .line 129
    and-int/lit8 v1, v1, 0x3f

    .line 130
    .line 131
    or-int/lit16 v1, v1, 0x80

    .line 132
    or-int/2addr p3, v1

    .line 133
    add-int/2addr p5, v3

    .line 134
    .line 135
    :goto_3
    and-int/lit8 p4, p4, 0x3f

    .line 136
    .line 137
    or-int/lit16 p4, p4, 0x80

    .line 138
    .line 139
    :cond_a
    if-ge p5, v2, :cond_b

    .line 140
    .line 141
    add-int/lit8 p5, p5, 0x1

    .line 142
    .line 143
    shl-int/lit8 p3, p3, 0x8

    .line 144
    or-int/2addr p3, p4

    .line 145
    goto :goto_4

    .line 146
    :cond_b
    array-length p5, p1

    .line 147
    .line 148
    if-lt p2, p5, :cond_c

    .line 149
    array-length p5, p1

    .line 150
    .line 151
    .line 152
    invoke-static {p1, p5}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->growArrayBy([II)[I

    .line 153
    move-result-object p1

    .line 154
    .line 155
    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    .line 156
    .line 157
    :cond_c
    add-int/lit8 p5, p2, 0x1

    .line 158
    .line 159
    aput p3, p1, p2

    .line 160
    move p3, p4

    .line 161
    move p2, p5

    .line 162
    move p5, v3

    .line 163
    .line 164
    :goto_4
    iget p4, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 165
    .line 166
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 167
    .line 168
    if-lt p4, v1, :cond_d

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMore()Z

    .line 172
    move-result p4

    .line 173
    .line 174
    if-nez p4, :cond_d

    .line 175
    .line 176
    const-string p4, " in field name"

    .line 177
    .line 178
    .line 179
    invoke-virtual {p0, p4}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 180
    .line 181
    :cond_d
    iget-object p4, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 182
    .line 183
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 184
    .line 185
    add-int/lit8 v2, v1, 0x1

    .line 186
    .line 187
    iput v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 188
    .line 189
    aget-byte p4, p4, v1

    .line 190
    .line 191
    and-int/lit16 p4, p4, 0xff

    .line 192
    .line 193
    goto/16 :goto_0
.end method

.method protected parseLongName(I)Lcom/fasterxml/jackson/core/sym/Name;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_icLatin1:[I

    .line 3
    const/4 v1, 0x2

    .line 4
    move v4, v1

    .line 5
    .line 6
    :goto_0
    iget v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 7
    .line 8
    iget v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 9
    sub-int/2addr v2, v3

    .line 10
    const/4 v5, 0x4

    .line 11
    .line 12
    if-ge v2, v5, :cond_0

    .line 13
    .line 14
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    .line 15
    const/4 v5, 0x0

    .line 16
    const/4 v7, 0x0

    .line 17
    move-object v2, p0

    .line 18
    move v6, p1

    .line 19
    .line 20
    .line 21
    invoke-virtual/range {v2 .. v7}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->parseEscapedName([IIIII)Lcom/fasterxml/jackson/core/sym/Name;

    .line 22
    move-result-object p1

    .line 23
    return-object p1

    .line 24
    .line 25
    :cond_0
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 26
    .line 27
    add-int/lit8 v6, v3, 0x1

    .line 28
    .line 29
    iput v6, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 30
    .line 31
    aget-byte v7, v2, v3

    .line 32
    .line 33
    and-int/lit16 v7, v7, 0xff

    .line 34
    .line 35
    aget v8, v0, v7

    .line 36
    .line 37
    const/16 v9, 0x22

    .line 38
    .line 39
    if-eqz v8, :cond_2

    .line 40
    .line 41
    if-ne v7, v9, :cond_1

    .line 42
    .line 43
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    .line 44
    const/4 v1, 0x1

    .line 45
    .line 46
    .line 47
    invoke-direct {p0, v0, v4, p1, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->findName([IIII)Lcom/fasterxml/jackson/core/sym/Name;

    .line 48
    move-result-object p1

    .line 49
    return-object p1

    .line 50
    .line 51
    :cond_1
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    .line 52
    const/4 v0, 0x1

    .line 53
    move-object v2, p0

    .line 54
    move v5, p1

    .line 55
    move v6, v7

    .line 56
    move v7, v0

    .line 57
    .line 58
    .line 59
    invoke-virtual/range {v2 .. v7}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->parseEscapedName([IIIII)Lcom/fasterxml/jackson/core/sym/Name;

    .line 60
    move-result-object p1

    .line 61
    return-object p1

    .line 62
    .line 63
    :cond_2
    shl-int/lit8 p1, p1, 0x8

    .line 64
    or-int/2addr p1, v7

    .line 65
    .line 66
    add-int/lit8 v7, v3, 0x2

    .line 67
    .line 68
    iput v7, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 69
    .line 70
    aget-byte v6, v2, v6

    .line 71
    .line 72
    and-int/lit16 v6, v6, 0xff

    .line 73
    .line 74
    aget v8, v0, v6

    .line 75
    .line 76
    if-eqz v8, :cond_4

    .line 77
    .line 78
    if-ne v6, v9, :cond_3

    .line 79
    .line 80
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    .line 81
    .line 82
    .line 83
    invoke-direct {p0, v0, v4, p1, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->findName([IIII)Lcom/fasterxml/jackson/core/sym/Name;

    .line 84
    move-result-object p1

    .line 85
    return-object p1

    .line 86
    .line 87
    :cond_3
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    .line 88
    const/4 v7, 0x2

    .line 89
    move-object v2, p0

    .line 90
    move v5, p1

    .line 91
    .line 92
    .line 93
    invoke-virtual/range {v2 .. v7}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->parseEscapedName([IIIII)Lcom/fasterxml/jackson/core/sym/Name;

    .line 94
    move-result-object p1

    .line 95
    return-object p1

    .line 96
    .line 97
    :cond_4
    shl-int/lit8 p1, p1, 0x8

    .line 98
    or-int/2addr p1, v6

    .line 99
    .line 100
    add-int/lit8 v6, v3, 0x3

    .line 101
    .line 102
    iput v6, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 103
    .line 104
    aget-byte v7, v2, v7

    .line 105
    .line 106
    and-int/lit16 v7, v7, 0xff

    .line 107
    .line 108
    aget v8, v0, v7

    .line 109
    .line 110
    if-eqz v8, :cond_6

    .line 111
    .line 112
    if-ne v7, v9, :cond_5

    .line 113
    .line 114
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    .line 115
    const/4 v1, 0x3

    .line 116
    .line 117
    .line 118
    invoke-direct {p0, v0, v4, p1, v1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->findName([IIII)Lcom/fasterxml/jackson/core/sym/Name;

    .line 119
    move-result-object p1

    .line 120
    return-object p1

    .line 121
    .line 122
    :cond_5
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    .line 123
    const/4 v0, 0x3

    .line 124
    move-object v2, p0

    .line 125
    move v5, p1

    .line 126
    move v6, v7

    .line 127
    move v7, v0

    .line 128
    .line 129
    .line 130
    invoke-virtual/range {v2 .. v7}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->parseEscapedName([IIIII)Lcom/fasterxml/jackson/core/sym/Name;

    .line 131
    move-result-object p1

    .line 132
    return-object p1

    .line 133
    .line 134
    :cond_6
    shl-int/lit8 p1, p1, 0x8

    .line 135
    or-int/2addr p1, v7

    .line 136
    .line 137
    add-int/lit8 v3, v3, 0x4

    .line 138
    .line 139
    iput v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 140
    .line 141
    aget-byte v2, v2, v6

    .line 142
    .line 143
    and-int/lit16 v6, v2, 0xff

    .line 144
    .line 145
    aget v2, v0, v6

    .line 146
    .line 147
    if-eqz v2, :cond_8

    .line 148
    .line 149
    if-ne v6, v9, :cond_7

    .line 150
    .line 151
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    .line 152
    .line 153
    .line 154
    invoke-direct {p0, v0, v4, p1, v5}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->findName([IIII)Lcom/fasterxml/jackson/core/sym/Name;

    .line 155
    move-result-object p1

    .line 156
    return-object p1

    .line 157
    .line 158
    :cond_7
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    .line 159
    const/4 v7, 0x4

    .line 160
    move-object v2, p0

    .line 161
    move v5, p1

    .line 162
    .line 163
    .line 164
    invoke-virtual/range {v2 .. v7}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->parseEscapedName([IIIII)Lcom/fasterxml/jackson/core/sym/Name;

    .line 165
    move-result-object p1

    .line 166
    return-object p1

    .line 167
    .line 168
    :cond_8
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    .line 169
    array-length v3, v2

    .line 170
    .line 171
    if-lt v4, v3, :cond_9

    .line 172
    .line 173
    .line 174
    invoke-static {v2, v4}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->growArrayBy([II)[I

    .line 175
    move-result-object v2

    .line 176
    .line 177
    iput-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    .line 178
    .line 179
    :cond_9
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    .line 180
    .line 181
    add-int/lit8 v3, v4, 0x1

    .line 182
    .line 183
    aput p1, v2, v4

    .line 184
    move v4, v3

    .line 185
    move p1, v6

    .line 186
    .line 187
    goto/16 :goto_0
.end method

.method protected parseMediumName(I[I)Lcom/fasterxml/jackson/core/sym/Name;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 3
    .line 4
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, 0x1

    .line 7
    .line 8
    iput v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 9
    .line 10
    aget-byte v3, v0, v1

    .line 11
    .line 12
    and-int/lit16 v3, v3, 0xff

    .line 13
    .line 14
    aget v4, p2, v3

    .line 15
    .line 16
    const/16 v5, 0x22

    .line 17
    const/4 v6, 0x1

    .line 18
    .line 19
    if-eqz v4, :cond_1

    .line 20
    .line 21
    if-ne v3, v5, :cond_0

    .line 22
    .line 23
    iget p2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quad1:I

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, p2, p1, v6}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->findName(III)Lcom/fasterxml/jackson/core/sym/Name;

    .line 27
    move-result-object p1

    .line 28
    return-object p1

    .line 29
    .line 30
    :cond_0
    iget p2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quad1:I

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, p2, p1, v3, v6}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->parseName(IIII)Lcom/fasterxml/jackson/core/sym/Name;

    .line 34
    move-result-object p1

    .line 35
    return-object p1

    .line 36
    .line 37
    :cond_1
    shl-int/lit8 p1, p1, 0x8

    .line 38
    or-int/2addr p1, v3

    .line 39
    .line 40
    add-int/lit8 v3, v1, 0x2

    .line 41
    .line 42
    iput v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 43
    .line 44
    aget-byte v2, v0, v2

    .line 45
    .line 46
    and-int/lit16 v2, v2, 0xff

    .line 47
    .line 48
    aget v4, p2, v2

    .line 49
    .line 50
    if-eqz v4, :cond_3

    .line 51
    const/4 p2, 0x2

    .line 52
    .line 53
    if-ne v2, v5, :cond_2

    .line 54
    .line 55
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quad1:I

    .line 56
    .line 57
    .line 58
    invoke-direct {p0, v0, p1, p2}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->findName(III)Lcom/fasterxml/jackson/core/sym/Name;

    .line 59
    move-result-object p1

    .line 60
    return-object p1

    .line 61
    .line 62
    :cond_2
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quad1:I

    .line 63
    .line 64
    .line 65
    invoke-direct {p0, v0, p1, v2, p2}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->parseName(IIII)Lcom/fasterxml/jackson/core/sym/Name;

    .line 66
    move-result-object p1

    .line 67
    return-object p1

    .line 68
    .line 69
    :cond_3
    shl-int/lit8 p1, p1, 0x8

    .line 70
    or-int/2addr p1, v2

    .line 71
    .line 72
    add-int/lit8 v2, v1, 0x3

    .line 73
    .line 74
    iput v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 75
    .line 76
    aget-byte v3, v0, v3

    .line 77
    .line 78
    and-int/lit16 v3, v3, 0xff

    .line 79
    .line 80
    aget v4, p2, v3

    .line 81
    .line 82
    if-eqz v4, :cond_5

    .line 83
    const/4 p2, 0x3

    .line 84
    .line 85
    if-ne v3, v5, :cond_4

    .line 86
    .line 87
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quad1:I

    .line 88
    .line 89
    .line 90
    invoke-direct {p0, v0, p1, p2}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->findName(III)Lcom/fasterxml/jackson/core/sym/Name;

    .line 91
    move-result-object p1

    .line 92
    return-object p1

    .line 93
    .line 94
    :cond_4
    iget v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quad1:I

    .line 95
    .line 96
    .line 97
    invoke-direct {p0, v0, p1, v3, p2}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->parseName(IIII)Lcom/fasterxml/jackson/core/sym/Name;

    .line 98
    move-result-object p1

    .line 99
    return-object p1

    .line 100
    .line 101
    :cond_5
    shl-int/lit8 p1, p1, 0x8

    .line 102
    or-int/2addr p1, v3

    .line 103
    const/4 v3, 0x4

    .line 104
    add-int/2addr v1, v3

    .line 105
    .line 106
    iput v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 107
    .line 108
    aget-byte v0, v0, v2

    .line 109
    .line 110
    and-int/lit16 v0, v0, 0xff

    .line 111
    .line 112
    aget p2, p2, v0

    .line 113
    .line 114
    if-eqz p2, :cond_7

    .line 115
    .line 116
    if-ne v0, v5, :cond_6

    .line 117
    .line 118
    iget p2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quad1:I

    .line 119
    .line 120
    .line 121
    invoke-direct {p0, p2, p1, v3}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->findName(III)Lcom/fasterxml/jackson/core/sym/Name;

    .line 122
    move-result-object p1

    .line 123
    return-object p1

    .line 124
    .line 125
    :cond_6
    iget p2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quad1:I

    .line 126
    .line 127
    .line 128
    invoke-direct {p0, p2, p1, v0, v3}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->parseName(IIII)Lcom/fasterxml/jackson/core/sym/Name;

    .line 129
    move-result-object p1

    .line 130
    return-object p1

    .line 131
    .line 132
    :cond_7
    iget-object p2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    .line 133
    const/4 v1, 0x0

    .line 134
    .line 135
    iget v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quad1:I

    .line 136
    .line 137
    aput v2, p2, v1

    .line 138
    .line 139
    aput p1, p2, v6

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->parseLongName(I)Lcom/fasterxml/jackson/core/sym/Name;

    .line 143
    move-result-object p1

    .line 144
    return-object p1
.end method

.method public readBinaryValue(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/OutputStream;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_tokenIncomplete:Z

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 7
    .line 8
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    .line 9
    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/io/IOContext;->allocBase64Buffer()[B

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_readBinary(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/OutputStream;[B)I

    .line 21
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    iget-object p2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->releaseBase64Buffer([B)V

    .line 27
    return p1

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    .line 30
    iget-object p2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->releaseBase64Buffer([B)V

    .line 34
    throw p1

    .line 35
    .line 36
    .line 37
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->getBinaryValue(Lcom/fasterxml/jackson/core/Base64Variant;)[B

    .line 38
    move-result-object p1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 42
    array-length p1, p1

    .line 43
    return p1
.end method

.method public releaseBuffered(Ljava/io/OutputStream;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 3
    .line 4
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 5
    sub-int/2addr v0, v1

    .line 6
    const/4 v2, 0x1

    .line 7
    .line 8
    if-ge v0, v2, :cond_0

    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    .line 12
    :cond_0
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v2, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 16
    return v0
.end method

.method public setCodec(Lcom/fasterxml/jackson/core/ObjectCodec;)V
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;

    return-void
.end method

.method protected slowParseName()Lcom/fasterxml/jackson/core/sym/Name;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 3
    .line 4
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 5
    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->loadMore()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const-string v0, ": was expecting closing \'\"\' for name"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_inputBuffer:[B

    .line 20
    .line 21
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 22
    .line 23
    add-int/lit8 v2, v1, 0x1

    .line 24
    .line 25
    iput v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 26
    .line 27
    aget-byte v0, v0, v1

    .line 28
    .line 29
    and-int/lit16 v5, v0, 0xff

    .line 30
    .line 31
    const/16 v0, 0x22

    .line 32
    .line 33
    if-ne v5, v0, :cond_1

    .line 34
    .line 35
    .line 36
    invoke-static {}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->getEmptyName()Lcom/fasterxml/jackson/core/sym/Name;

    .line 37
    move-result-object v0

    .line 38
    return-object v0

    .line 39
    .line 40
    :cond_1
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->_quadBuffer:[I

    .line 41
    const/4 v3, 0x0

    .line 42
    const/4 v4, 0x0

    .line 43
    const/4 v6, 0x0

    .line 44
    move-object v1, p0

    .line 45
    .line 46
    .line 47
    invoke-virtual/range {v1 .. v6}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;->parseEscapedName([IIIII)Lcom/fasterxml/jackson/core/sym/Name;

    .line 48
    move-result-object v0

    .line 49
    return-object v0
.end method
