.class public final Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;
.super Lcom/fasterxml/jackson/core/base/ParserBase;
.source "SourceFile"


# static fields
.field protected static final _icLatin1:[I

.field private static final _icWS:[I


# instance fields
.field protected final _hashSeed:I

.field protected _inputBuffer:[C

.field protected _objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;

.field protected _reader:Ljava/io/Reader;

.field protected final _symbols:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

.field protected _tokenIncomplete:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->getInputCodeLatin1()[I

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sput-object v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_icLatin1:[I

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->getInputCodeWS()[I

    .line 10
    move-result-object v0

    .line 11
    .line 12
    sput-object v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_icWS:[I

    .line 13
    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/io/IOContext;ILjava/io/Reader;Lcom/fasterxml/jackson/core/ObjectCodec;Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/core/base/ParserBase;-><init>(Lcom/fasterxml/jackson/core/io/IOContext;I)V

    .line 4
    const/4 p2, 0x0

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    .line 7
    .line 8
    iput-object p3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reader:Ljava/io/Reader;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/io/IOContext;->allocTokenBuffer()[C

    .line 12
    move-result-object p1

    .line 13
    .line 14
    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    .line 15
    .line 16
    iput-object p4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;

    .line 17
    .line 18
    iput-object p5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p5}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->hashSeed()I

    .line 22
    move-result p1

    .line 23
    .line 24
    iput p1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_hashSeed:I

    .line 25
    return-void
.end method

.method private _handleOddName2(II[I)Ljava/lang/String;
    .locals 4
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
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    .line 5
    .line 6
    iget v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 7
    sub-int/2addr v2, p1

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1, p1, v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->resetWithShared([CII)V

    .line 11
    .line 12
    iget-object p1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getCurrentSegment()[C

    .line 16
    move-result-object p1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getCurrentSegmentSize()I

    .line 22
    move-result v0

    .line 23
    array-length v1, p3

    .line 24
    .line 25
    :goto_0
    iget v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 26
    .line 27
    iget v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 28
    .line 29
    if-lt v2, v3, :cond_0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    .line 33
    move-result v2

    .line 34
    .line 35
    if-nez v2, :cond_0

    .line 36
    goto :goto_1

    .line 37
    .line 38
    :cond_0
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    .line 39
    .line 40
    iget v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 41
    .line 42
    aget-char v2, v2, v3

    .line 43
    .line 44
    if-gt v2, v1, :cond_1

    .line 45
    .line 46
    aget v3, p3, v2

    .line 47
    .line 48
    if-eqz v3, :cond_2

    .line 49
    goto :goto_1

    .line 50
    .line 51
    .line 52
    :cond_1
    invoke-static {v2}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    .line 53
    move-result v3

    .line 54
    .line 55
    if-nez v3, :cond_2

    .line 56
    .line 57
    :goto_1
    iget-object p1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 61
    .line 62
    iget-object p1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getTextBuffer()[C

    .line 66
    move-result-object p3

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getTextOffset()I

    .line 70
    move-result v0

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->size()I

    .line 74
    move-result p1

    .line 75
    .line 76
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, p3, v0, p1, p2}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->findSymbol([CIII)Ljava/lang/String;

    .line 80
    move-result-object p1

    .line 81
    return-object p1

    .line 82
    .line 83
    :cond_2
    iget v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 84
    .line 85
    add-int/lit8 v3, v3, 0x1

    .line 86
    .line 87
    iput v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 88
    .line 89
    mul-int/lit8 p2, p2, 0x21

    .line 90
    add-int/2addr p2, v2

    .line 91
    .line 92
    add-int/lit8 v3, v0, 0x1

    .line 93
    .line 94
    aput-char v2, p1, v0

    .line 95
    array-length v0, p1

    .line 96
    .line 97
    if-lt v3, v0, :cond_3

    .line 98
    .line 99
    iget-object p1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    .line 103
    move-result-object p1

    .line 104
    const/4 v0, 0x0

    .line 105
    goto :goto_0

    .line 106
    :cond_3
    move v0, v3

    .line 107
    goto :goto_0
.end method

.method private _nextAfterName()Lcom/fasterxml/jackson/core/JsonToken;
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

.method private _parseName2(III)Ljava/lang/String;
    .locals 4
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
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    .line 5
    .line 6
    iget v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 7
    sub-int/2addr v2, p1

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1, p1, v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->resetWithShared([CII)V

    .line 11
    .line 12
    iget-object p1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getCurrentSegment()[C

    .line 16
    move-result-object p1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getCurrentSegmentSize()I

    .line 22
    move-result v0

    .line 23
    .line 24
    :goto_0
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 25
    .line 26
    iget v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 27
    .line 28
    if-lt v1, v2, :cond_0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    .line 32
    move-result v1

    .line 33
    .line 34
    if-nez v1, :cond_0

    .line 35
    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    const-string v2, ": was expecting closing \'"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    int-to-char v2, p3

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v2, "\' for name"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object v1

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 61
    .line 62
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    .line 63
    .line 64
    iget v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 65
    .line 66
    add-int/lit8 v3, v2, 0x1

    .line 67
    .line 68
    iput v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 69
    .line 70
    aget-char v1, v1, v2

    .line 71
    .line 72
    const/16 v2, 0x5c

    .line 73
    .line 74
    if-gt v1, v2, :cond_3

    .line 75
    .line 76
    if-ne v1, v2, :cond_1

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_decodeEscaped()C

    .line 80
    move-result v2

    .line 81
    goto :goto_1

    .line 82
    .line 83
    :cond_1
    if-gt v1, p3, :cond_3

    .line 84
    .line 85
    if-ne v1, p3, :cond_2

    .line 86
    .line 87
    iget-object p1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 91
    .line 92
    iget-object p1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getTextBuffer()[C

    .line 96
    move-result-object p3

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getTextOffset()I

    .line 100
    move-result v0

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->size()I

    .line 104
    move-result p1

    .line 105
    .line 106
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, p3, v0, p1, p2}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->findSymbol([CIII)Ljava/lang/String;

    .line 110
    move-result-object p1

    .line 111
    return-object p1

    .line 112
    .line 113
    :cond_2
    const/16 v2, 0x20

    .line 114
    .line 115
    if-ge v1, v2, :cond_3

    .line 116
    .line 117
    const-string v2, "name"

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_throwUnquotedSpace(ILjava/lang/String;)V

    .line 121
    :cond_3
    move v2, v1

    .line 122
    .line 123
    :goto_1
    mul-int/lit8 p2, p2, 0x21

    .line 124
    add-int/2addr p2, v1

    .line 125
    .line 126
    add-int/lit8 v1, v0, 0x1

    .line 127
    .line 128
    aput-char v2, p1, v0

    .line 129
    array-length v0, p1

    .line 130
    .line 131
    if-lt v1, v0, :cond_4

    .line 132
    .line 133
    iget-object p1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    .line 137
    move-result-object p1

    .line 138
    const/4 v0, 0x0

    .line 139
    goto :goto_0

    .line 140
    :cond_4
    move v0, v1

    .line 141
    goto :goto_0
.end method

.method private _parseNumber2(Z)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 14
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
    const/16 v1, 0x2d

    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    aput-char v1, v0, v3

    .line 15
    move v4, v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v4, v3

    .line 18
    .line 19
    :goto_0
    iget v5, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 20
    .line 21
    iget v6, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 22
    .line 23
    if-ge v5, v6, :cond_1

    .line 24
    .line 25
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    .line 26
    .line 27
    add-int/lit8 v7, v5, 0x1

    .line 28
    .line 29
    iput v7, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 30
    .line 31
    aget-char v5, v6, v5

    .line 32
    goto :goto_1

    .line 33
    .line 34
    :cond_1
    const-string v5, "No digit following minus sign"

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v5}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->getNextChar(Ljava/lang/String;)C

    .line 38
    move-result v5

    .line 39
    .line 40
    :goto_1
    const/16 v6, 0x30

    .line 41
    .line 42
    if-ne v5, v6, :cond_2

    .line 43
    .line 44
    .line 45
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_verifyNoLeadingZeroes()C

    .line 46
    move-result v5

    .line 47
    :cond_2
    move v7, v3

    .line 48
    .line 49
    :goto_2
    const/16 v8, 0x39

    .line 50
    .line 51
    if-lt v5, v6, :cond_5

    .line 52
    .line 53
    if-gt v5, v8, :cond_5

    .line 54
    .line 55
    add-int/lit8 v7, v7, 0x1

    .line 56
    array-length v9, v0

    .line 57
    .line 58
    if-lt v4, v9, :cond_3

    .line 59
    .line 60
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    .line 64
    move-result-object v0

    .line 65
    move v4, v3

    .line 66
    .line 67
    :cond_3
    add-int/lit8 v9, v4, 0x1

    .line 68
    .line 69
    aput-char v5, v0, v4

    .line 70
    .line 71
    iget v4, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 72
    .line 73
    iget v5, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 74
    .line 75
    if-lt v4, v5, :cond_4

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    .line 79
    move-result v4

    .line 80
    .line 81
    if-nez v4, :cond_4

    .line 82
    move v5, v3

    .line 83
    move v4, v9

    .line 84
    move v9, v2

    .line 85
    goto :goto_3

    .line 86
    .line 87
    :cond_4
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    .line 88
    .line 89
    iget v5, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 90
    .line 91
    add-int/lit8 v8, v5, 0x1

    .line 92
    .line 93
    iput v8, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 94
    .line 95
    aget-char v5, v4, v5

    .line 96
    move v4, v9

    .line 97
    goto :goto_2

    .line 98
    :cond_5
    move v9, v3

    .line 99
    .line 100
    :goto_3
    if-nez v7, :cond_6

    .line 101
    .line 102
    new-instance v10, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    const-string v11, "Missing integer part (next char "

    .line 108
    .line 109
    .line 110
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-static {v5}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_getCharDesc(I)Ljava/lang/String;

    .line 114
    move-result-object v11

    .line 115
    .line 116
    .line 117
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    const-string v11, ")"

    .line 120
    .line 121
    .line 122
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    move-result-object v10

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0, v10}, Lcom/fasterxml/jackson/core/base/ParserBase;->reportInvalidNumber(Ljava/lang/String;)V

    .line 130
    .line 131
    :cond_6
    const/16 v10, 0x2e

    .line 132
    .line 133
    if-ne v5, v10, :cond_b

    .line 134
    .line 135
    add-int/lit8 v10, v4, 0x1

    .line 136
    .line 137
    aput-char v5, v0, v4

    .line 138
    move v4, v10

    .line 139
    move v10, v3

    .line 140
    .line 141
    :goto_4
    iget v11, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 142
    .line 143
    iget v12, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 144
    .line 145
    if-lt v11, v12, :cond_7

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    .line 149
    move-result v11

    .line 150
    .line 151
    if-nez v11, :cond_7

    .line 152
    move v9, v2

    .line 153
    goto :goto_5

    .line 154
    .line 155
    :cond_7
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    .line 156
    .line 157
    iget v11, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 158
    .line 159
    add-int/lit8 v12, v11, 0x1

    .line 160
    .line 161
    iput v12, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 162
    .line 163
    aget-char v5, v5, v11

    .line 164
    .line 165
    if-lt v5, v6, :cond_a

    .line 166
    .line 167
    if-le v5, v8, :cond_8

    .line 168
    goto :goto_5

    .line 169
    .line 170
    :cond_8
    add-int/lit8 v10, v10, 0x1

    .line 171
    array-length v11, v0

    .line 172
    .line 173
    if-lt v4, v11, :cond_9

    .line 174
    .line 175
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    .line 179
    move-result-object v0

    .line 180
    move v4, v3

    .line 181
    .line 182
    :cond_9
    add-int/lit8 v11, v4, 0x1

    .line 183
    .line 184
    aput-char v5, v0, v4

    .line 185
    move v4, v11

    .line 186
    goto :goto_4

    .line 187
    .line 188
    :cond_a
    :goto_5
    if-nez v10, :cond_c

    .line 189
    .line 190
    const-string v11, "Decimal point not followed by a digit"

    .line 191
    .line 192
    .line 193
    invoke-virtual {p0, v5, v11}, Lcom/fasterxml/jackson/core/base/ParserBase;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    .line 194
    goto :goto_6

    .line 195
    :cond_b
    move v10, v3

    .line 196
    .line 197
    :cond_c
    :goto_6
    const/16 v11, 0x65

    .line 198
    .line 199
    if-eq v5, v11, :cond_d

    .line 200
    .line 201
    const/16 v11, 0x45

    .line 202
    .line 203
    if-ne v5, v11, :cond_17

    .line 204
    :cond_d
    array-length v11, v0

    .line 205
    .line 206
    if-lt v4, v11, :cond_e

    .line 207
    .line 208
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    .line 212
    move-result-object v0

    .line 213
    move v4, v3

    .line 214
    .line 215
    :cond_e
    add-int/lit8 v11, v4, 0x1

    .line 216
    .line 217
    aput-char v5, v0, v4

    .line 218
    .line 219
    iget v4, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 220
    .line 221
    iget v5, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 222
    .line 223
    const-string v12, "expected a digit for number exponent"

    .line 224
    .line 225
    if-ge v4, v5, :cond_f

    .line 226
    .line 227
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    .line 228
    .line 229
    add-int/lit8 v13, v4, 0x1

    .line 230
    .line 231
    iput v13, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 232
    .line 233
    aget-char v4, v5, v4

    .line 234
    goto :goto_7

    .line 235
    .line 236
    .line 237
    :cond_f
    invoke-virtual {p0, v12}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->getNextChar(Ljava/lang/String;)C

    .line 238
    move-result v4

    .line 239
    .line 240
    :goto_7
    if-eq v4, v1, :cond_11

    .line 241
    .line 242
    const/16 v1, 0x2b

    .line 243
    .line 244
    if-ne v4, v1, :cond_10

    .line 245
    goto :goto_9

    .line 246
    :cond_10
    :goto_8
    move v1, v3

    .line 247
    move v5, v4

    .line 248
    goto :goto_b

    .line 249
    :cond_11
    :goto_9
    array-length v1, v0

    .line 250
    .line 251
    if-lt v11, v1, :cond_12

    .line 252
    .line 253
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    .line 257
    move-result-object v0

    .line 258
    move v11, v3

    .line 259
    .line 260
    :cond_12
    add-int/lit8 v1, v11, 0x1

    .line 261
    .line 262
    aput-char v4, v0, v11

    .line 263
    .line 264
    iget v4, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 265
    .line 266
    iget v5, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 267
    .line 268
    if-ge v4, v5, :cond_13

    .line 269
    .line 270
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    .line 271
    .line 272
    add-int/lit8 v11, v4, 0x1

    .line 273
    .line 274
    iput v11, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 275
    .line 276
    aget-char v4, v5, v4

    .line 277
    goto :goto_a

    .line 278
    .line 279
    .line 280
    :cond_13
    invoke-virtual {p0, v12}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->getNextChar(Ljava/lang/String;)C

    .line 281
    move-result v4

    .line 282
    :goto_a
    move v11, v1

    .line 283
    goto :goto_8

    .line 284
    .line 285
    :goto_b
    if-gt v5, v8, :cond_16

    .line 286
    .line 287
    if-lt v5, v6, :cond_16

    .line 288
    .line 289
    add-int/lit8 v1, v1, 0x1

    .line 290
    array-length v4, v0

    .line 291
    .line 292
    if-lt v11, v4, :cond_14

    .line 293
    .line 294
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    .line 298
    move-result-object v0

    .line 299
    move v11, v3

    .line 300
    .line 301
    :cond_14
    add-int/lit8 v4, v11, 0x1

    .line 302
    .line 303
    aput-char v5, v0, v11

    .line 304
    .line 305
    iget v11, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 306
    .line 307
    iget v12, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 308
    .line 309
    if-lt v11, v12, :cond_15

    .line 310
    .line 311
    .line 312
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    .line 313
    move-result v11

    .line 314
    .line 315
    if-nez v11, :cond_15

    .line 316
    move v3, v1

    .line 317
    move v9, v2

    .line 318
    goto :goto_c

    .line 319
    .line 320
    :cond_15
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    .line 321
    .line 322
    iget v11, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 323
    .line 324
    add-int/lit8 v12, v11, 0x1

    .line 325
    .line 326
    iput v12, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 327
    .line 328
    aget-char v5, v5, v11

    .line 329
    move v11, v4

    .line 330
    goto :goto_b

    .line 331
    :cond_16
    move v3, v1

    .line 332
    move v4, v11

    .line 333
    .line 334
    :goto_c
    if-nez v3, :cond_17

    .line 335
    .line 336
    const-string v0, "Exponent indicator not followed by a digit"

    .line 337
    .line 338
    .line 339
    invoke-virtual {p0, v5, v0}, Lcom/fasterxml/jackson/core/base/ParserBase;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    .line 340
    .line 341
    :cond_17
    if-nez v9, :cond_18

    .line 342
    .line 343
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 344
    sub-int/2addr v0, v2

    .line 345
    .line 346
    iput v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 347
    .line 348
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 349
    .line 350
    .line 351
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonStreamContext;->inRoot()Z

    .line 352
    move-result v0

    .line 353
    .line 354
    if-eqz v0, :cond_18

    .line 355
    .line 356
    .line 357
    invoke-direct {p0, v5}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_verifyRootSpace(I)V

    .line 358
    .line 359
    :cond_18
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v0, v4}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {p0, p1, v7, v10, v3}, Lcom/fasterxml/jackson/core/base/ParserBase;->reset(ZIII)Lcom/fasterxml/jackson/core/JsonToken;

    .line 366
    move-result-object p1

    .line 367
    return-object p1
.end method

.method private _skipCComment()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    :cond_0
    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 3
    .line 4
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 5
    .line 6
    if-lt v0, v1, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    .line 15
    .line 16
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 17
    .line 18
    add-int/lit8 v2, v1, 0x1

    .line 19
    .line 20
    iput v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 21
    .line 22
    aget-char v0, v0, v1

    .line 23
    .line 24
    const/16 v1, 0x2a

    .line 25
    .line 26
    if-gt v0, v1, :cond_0

    .line 27
    .line 28
    if-ne v0, v1, :cond_4

    .line 29
    .line 30
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 31
    .line 32
    if-lt v2, v0, :cond_3

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    .line 36
    move-result v0

    .line 37
    .line 38
    if-nez v0, :cond_3

    .line 39
    .line 40
    :cond_2
    const-string v0, " in a comment"

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 44
    return-void

    .line 45
    .line 46
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    .line 47
    .line 48
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 49
    .line 50
    aget-char v0, v0, v1

    .line 51
    .line 52
    const/16 v2, 0x2f

    .line 53
    .line 54
    if-ne v0, v2, :cond_0

    .line 55
    .line 56
    add-int/lit8 v1, v1, 0x1

    .line 57
    .line 58
    iput v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 59
    return-void

    .line 60
    .line 61
    :cond_4
    const/16 v1, 0x20

    .line 62
    .line 63
    if-ge v0, v1, :cond_0

    .line 64
    .line 65
    const/16 v1, 0xa

    .line 66
    .line 67
    if-ne v0, v1, :cond_5

    .line 68
    .line 69
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_currInputRow:I

    .line 70
    .line 71
    add-int/lit8 v0, v0, 0x1

    .line 72
    .line 73
    iput v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_currInputRow:I

    .line 74
    .line 75
    iput v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_currInputRowStart:I

    .line 76
    goto :goto_0

    .line 77
    .line 78
    :cond_5
    const/16 v1, 0xd

    .line 79
    .line 80
    if-ne v0, v1, :cond_6

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipCR()V

    .line 84
    goto :goto_0

    .line 85
    .line 86
    :cond_6
    const/16 v1, 0x9

    .line 87
    .line 88
    if-eq v0, v1, :cond_0

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_throwInvalidSpace(I)V

    .line 92
    goto :goto_0
.end method

.method private _skipComment()V
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
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

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
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

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
    aget-char v0, v0, v2

    .line 43
    .line 44
    if-ne v0, v1, :cond_2

    .line 45
    .line 46
    .line 47
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipLine()V

    .line 48
    goto :goto_0

    .line 49
    .line 50
    :cond_2
    const/16 v1, 0x2a

    .line 51
    .line 52
    if-ne v0, v1, :cond_3

    .line 53
    .line 54
    .line 55
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipCComment()V

    .line 56
    goto :goto_0

    .line 57
    .line 58
    .line 59
    :cond_3
    const-string/jumbo v1, "was expecting either \'*\' or \'/\' for a comment"

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 63
    :goto_0
    return-void
.end method

.method private _skipLine()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    :cond_0
    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 3
    .line 4
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 5
    .line 6
    if-lt v0, v1, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_3

    .line 13
    .line 14
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    .line 15
    .line 16
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 17
    .line 18
    add-int/lit8 v2, v1, 0x1

    .line 19
    .line 20
    iput v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 21
    .line 22
    aget-char v0, v0, v1

    .line 23
    .line 24
    const/16 v1, 0x20

    .line 25
    .line 26
    if-ge v0, v1, :cond_0

    .line 27
    .line 28
    const/16 v1, 0xa

    .line 29
    .line 30
    if-ne v0, v1, :cond_2

    .line 31
    .line 32
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_currInputRow:I

    .line 33
    .line 34
    add-int/lit8 v0, v0, 0x1

    .line 35
    .line 36
    iput v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_currInputRow:I

    .line 37
    .line 38
    iput v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_currInputRowStart:I

    .line 39
    goto :goto_1

    .line 40
    .line 41
    :cond_2
    const/16 v1, 0xd

    .line 42
    .line 43
    if-ne v0, v1, :cond_4

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipCR()V

    .line 47
    :cond_3
    :goto_1
    return-void

    .line 48
    .line 49
    :cond_4
    const/16 v1, 0x9

    .line 50
    .line 51
    if-eq v0, v1, :cond_0

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_throwInvalidSpace(I)V

    .line 55
    goto :goto_0
.end method

.method private _skipWS()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_icWS:[I

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
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

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
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

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
    aget-char v1, v1, v2

    .line 59
    .line 60
    const/16 v2, 0x40

    .line 61
    .line 62
    if-lt v1, v2, :cond_3

    .line 63
    return v1

    .line 64
    .line 65
    :cond_3
    aget v2, v0, v1

    .line 66
    const/4 v4, -0x1

    .line 67
    .line 68
    if-eq v2, v4, :cond_8

    .line 69
    .line 70
    if-eqz v2, :cond_9

    .line 71
    const/4 v4, 0x1

    .line 72
    .line 73
    if-eq v2, v4, :cond_0

    .line 74
    .line 75
    const/16 v5, 0xa

    .line 76
    .line 77
    if-eq v2, v5, :cond_7

    .line 78
    .line 79
    const/16 v3, 0xd

    .line 80
    .line 81
    if-eq v2, v3, :cond_6

    .line 82
    .line 83
    const/16 v3, 0x23

    .line 84
    .line 85
    if-eq v2, v3, :cond_5

    .line 86
    .line 87
    const/16 v1, 0x2f

    .line 88
    .line 89
    if-eq v2, v1, :cond_4

    .line 90
    goto :goto_0

    .line 91
    .line 92
    .line 93
    :cond_4
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipComment()V

    .line 94
    goto :goto_0

    .line 95
    .line 96
    .line 97
    :cond_5
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipYAMLComment()Z

    .line 98
    move-result v2

    .line 99
    .line 100
    if-nez v2, :cond_0

    .line 101
    return v1

    .line 102
    .line 103
    .line 104
    :cond_6
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipCR()V

    .line 105
    goto :goto_0

    .line 106
    .line 107
    :cond_7
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_currInputRow:I

    .line 108
    add-int/2addr v1, v4

    .line 109
    .line 110
    iput v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_currInputRow:I

    .line 111
    .line 112
    iput v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_currInputRowStart:I

    .line 113
    goto :goto_0

    .line 114
    .line 115
    .line 116
    :cond_8
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_throwInvalidSpace(I)V

    .line 117
    :cond_9
    return v1
.end method

.method private _skipWSOrEnd()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_icWS:[I

    .line 3
    .line 4
    :cond_0
    :goto_0
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 5
    .line 6
    iget v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 7
    const/4 v3, -0x1

    .line 8
    .line 9
    if-lt v1, v2, :cond_2

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    .line 13
    move-result v1

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    goto :goto_1

    .line 17
    .line 18
    .line 19
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->_handleEOF()V

    .line 20
    return v3

    .line 21
    .line 22
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    .line 23
    .line 24
    iget v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 25
    .line 26
    add-int/lit8 v4, v2, 0x1

    .line 27
    .line 28
    iput v4, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 29
    .line 30
    aget-char v1, v1, v2

    .line 31
    .line 32
    const/16 v2, 0x40

    .line 33
    .line 34
    if-lt v1, v2, :cond_3

    .line 35
    return v1

    .line 36
    .line 37
    :cond_3
    aget v2, v0, v1

    .line 38
    .line 39
    if-eq v2, v3, :cond_8

    .line 40
    .line 41
    if-eqz v2, :cond_9

    .line 42
    const/4 v3, 0x1

    .line 43
    .line 44
    if-eq v2, v3, :cond_0

    .line 45
    .line 46
    const/16 v5, 0xa

    .line 47
    .line 48
    if-eq v2, v5, :cond_7

    .line 49
    .line 50
    const/16 v3, 0xd

    .line 51
    .line 52
    if-eq v2, v3, :cond_6

    .line 53
    .line 54
    const/16 v3, 0x23

    .line 55
    .line 56
    if-eq v2, v3, :cond_5

    .line 57
    .line 58
    const/16 v1, 0x2f

    .line 59
    .line 60
    if-eq v2, v1, :cond_4

    .line 61
    goto :goto_0

    .line 62
    .line 63
    .line 64
    :cond_4
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipComment()V

    .line 65
    goto :goto_0

    .line 66
    .line 67
    .line 68
    :cond_5
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipYAMLComment()Z

    .line 69
    move-result v2

    .line 70
    .line 71
    if-nez v2, :cond_0

    .line 72
    return v1

    .line 73
    .line 74
    .line 75
    :cond_6
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipCR()V

    .line 76
    goto :goto_0

    .line 77
    .line 78
    :cond_7
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_currInputRow:I

    .line 79
    add-int/2addr v1, v3

    .line 80
    .line 81
    iput v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_currInputRow:I

    .line 82
    .line 83
    iput v4, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_currInputRowStart:I

    .line 84
    goto :goto_0

    .line 85
    .line 86
    .line 87
    :cond_8
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_throwInvalidSpace(I)V

    .line 88
    :cond_9
    return v1
.end method

.method private _skipYAMLComment()Z
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
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipLine()V

    .line 14
    const/4 v0, 0x1

    .line 15
    return v0
.end method

.method private _verifyNoLeadingZeroes()C
    .locals 5
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
    const/16 v2, 0x30

    .line 7
    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

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
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    .line 18
    .line 19
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 20
    .line 21
    aget-char v0, v0, v1

    .line 22
    .line 23
    if-lt v0, v2, :cond_8

    .line 24
    .line 25
    const/16 v1, 0x39

    .line 26
    .line 27
    if-le v0, v1, :cond_1

    .line 28
    goto :goto_2

    .line 29
    .line 30
    :cond_1
    sget-object v3, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_NUMERIC_LEADING_ZEROS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/core/JsonParser;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    .line 34
    move-result v3

    .line 35
    .line 36
    if-nez v3, :cond_2

    .line 37
    .line 38
    const-string v3, "Leading zeroes not allowed"

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/core/base/ParserBase;->reportInvalidNumber(Ljava/lang/String;)V

    .line 42
    .line 43
    :cond_2
    iget v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 44
    .line 45
    add-int/lit8 v3, v3, 0x1

    .line 46
    .line 47
    iput v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 48
    .line 49
    if-ne v0, v2, :cond_7

    .line 50
    .line 51
    :cond_3
    iget v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 52
    .line 53
    iget v4, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 54
    .line 55
    if-lt v3, v4, :cond_4

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    .line 59
    move-result v3

    .line 60
    .line 61
    if-eqz v3, :cond_7

    .line 62
    .line 63
    :cond_4
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    .line 64
    .line 65
    iget v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 66
    .line 67
    aget-char v0, v0, v3

    .line 68
    .line 69
    if-lt v0, v2, :cond_6

    .line 70
    .line 71
    if-le v0, v1, :cond_5

    .line 72
    goto :goto_0

    .line 73
    .line 74
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 75
    .line 76
    iput v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 77
    .line 78
    if-eq v0, v2, :cond_3

    .line 79
    goto :goto_1

    .line 80
    :cond_6
    :goto_0
    return v2

    .line 81
    :cond_7
    :goto_1
    return v0

    .line 82
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
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipCR()V

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
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reader:Ljava/io/Reader;

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
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reader:Ljava/io/Reader;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 26
    :cond_1
    const/4 v0, 0x0

    .line 27
    .line 28
    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reader:Ljava/io/Reader;

    .line 29
    :cond_2
    return-void
.end method

.method protected _decodeBase64(Lcom/fasterxml/jackson/core/Base64Variant;)[B
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
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

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
    aget-char v1, v1, v2

    .line 24
    .line 25
    const/16 v2, 0x20

    .line 26
    .line 27
    if-le v1, v2, :cond_0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(C)I

    .line 31
    move-result v2

    .line 32
    .line 33
    const/16 v3, 0x22

    .line 34
    .line 35
    if-gez v2, :cond_3

    .line 36
    .line 37
    if-ne v1, v3, :cond_2

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->toByteArray()[B

    .line 41
    move-result-object p1

    .line 42
    return-object p1

    .line 43
    :cond_2
    const/4 v2, 0x0

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p1, v1, v2}, Lcom/fasterxml/jackson/core/base/ParserBase;->_decodeBase64Escape(Lcom/fasterxml/jackson/core/Base64Variant;CI)I

    .line 47
    move-result v2

    .line 48
    .line 49
    if-gez v2, :cond_3

    .line 50
    goto :goto_0

    .line 51
    .line 52
    :cond_3
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 53
    .line 54
    iget v4, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 55
    .line 56
    if-lt v1, v4, :cond_4

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->loadMoreGuaranteed()V

    .line 60
    .line 61
    :cond_4
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    .line 62
    .line 63
    iget v4, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 64
    .line 65
    add-int/lit8 v5, v4, 0x1

    .line 66
    .line 67
    iput v5, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 68
    .line 69
    aget-char v1, v1, v4

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(C)I

    .line 73
    move-result v4

    .line 74
    .line 75
    if-gez v4, :cond_5

    .line 76
    const/4 v4, 0x1

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, p1, v1, v4}, Lcom/fasterxml/jackson/core/base/ParserBase;->_decodeBase64Escape(Lcom/fasterxml/jackson/core/Base64Variant;CI)I

    .line 80
    move-result v4

    .line 81
    .line 82
    :cond_5
    shl-int/lit8 v1, v2, 0x6

    .line 83
    or-int/2addr v1, v4

    .line 84
    .line 85
    iget v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 86
    .line 87
    iget v4, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 88
    .line 89
    if-lt v2, v4, :cond_6

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->loadMoreGuaranteed()V

    .line 93
    .line 94
    :cond_6
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    .line 95
    .line 96
    iget v4, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 97
    .line 98
    add-int/lit8 v5, v4, 0x1

    .line 99
    .line 100
    iput v5, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 101
    .line 102
    aget-char v2, v2, v4

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(C)I

    .line 106
    move-result v4

    .line 107
    const/4 v5, 0x3

    .line 108
    const/4 v6, 0x2

    .line 109
    const/4 v7, -0x2

    .line 110
    .line 111
    if-gez v4, :cond_b

    .line 112
    .line 113
    if-eq v4, v7, :cond_8

    .line 114
    .line 115
    if-ne v2, v3, :cond_7

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPadding()Z

    .line 119
    move-result v4

    .line 120
    .line 121
    if-nez v4, :cond_7

    .line 122
    .line 123
    shr-int/lit8 p1, v1, 0x4

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->toByteArray()[B

    .line 130
    move-result-object p1

    .line 131
    return-object p1

    .line 132
    .line 133
    .line 134
    :cond_7
    invoke-virtual {p0, p1, v2, v6}, Lcom/fasterxml/jackson/core/base/ParserBase;->_decodeBase64Escape(Lcom/fasterxml/jackson/core/Base64Variant;CI)I

    .line 135
    move-result v4

    .line 136
    .line 137
    :cond_8
    if-ne v4, v7, :cond_b

    .line 138
    .line 139
    iget v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 140
    .line 141
    iget v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 142
    .line 143
    if-lt v2, v3, :cond_9

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->loadMoreGuaranteed()V

    .line 147
    .line 148
    :cond_9
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    .line 149
    .line 150
    iget v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 151
    .line 152
    add-int/lit8 v4, v3, 0x1

    .line 153
    .line 154
    iput v4, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 155
    .line 156
    aget-char v2, v2, v3

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPaddingChar(C)Z

    .line 160
    move-result v3

    .line 161
    .line 162
    if-eqz v3, :cond_a

    .line 163
    .line 164
    shr-int/lit8 v1, v1, 0x4

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    .line 168
    .line 169
    goto/16 :goto_0

    .line 170
    .line 171
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .line 176
    const-string v1, "expected padding character \'"

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->getPaddingChar()C

    .line 183
    move-result v1

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    const-string v1, "\'"

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    move-result-object v0

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0, p1, v2, v5, v0}, Lcom/fasterxml/jackson/core/base/ParserBase;->reportInvalidBase64Char(Lcom/fasterxml/jackson/core/Base64Variant;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    .line 199
    move-result-object p1

    .line 200
    throw p1

    .line 201
    .line 202
    :cond_b
    shl-int/lit8 v1, v1, 0x6

    .line 203
    or-int/2addr v1, v4

    .line 204
    .line 205
    iget v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 206
    .line 207
    iget v4, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 208
    .line 209
    if-lt v2, v4, :cond_c

    .line 210
    .line 211
    .line 212
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->loadMoreGuaranteed()V

    .line 213
    .line 214
    :cond_c
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    .line 215
    .line 216
    iget v4, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 217
    .line 218
    add-int/lit8 v8, v4, 0x1

    .line 219
    .line 220
    iput v8, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 221
    .line 222
    aget-char v2, v2, v4

    .line 223
    .line 224
    .line 225
    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(C)I

    .line 226
    move-result v4

    .line 227
    .line 228
    if-gez v4, :cond_f

    .line 229
    .line 230
    if-eq v4, v7, :cond_e

    .line 231
    .line 232
    if-ne v2, v3, :cond_d

    .line 233
    .line 234
    .line 235
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPadding()Z

    .line 236
    move-result v3

    .line 237
    .line 238
    if-nez v3, :cond_d

    .line 239
    .line 240
    shr-int/lit8 p1, v1, 0x2

    .line 241
    .line 242
    .line 243
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->appendTwoBytes(I)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->toByteArray()[B

    .line 247
    move-result-object p1

    .line 248
    return-object p1

    .line 249
    .line 250
    .line 251
    :cond_d
    invoke-virtual {p0, p1, v2, v5}, Lcom/fasterxml/jackson/core/base/ParserBase;->_decodeBase64Escape(Lcom/fasterxml/jackson/core/Base64Variant;CI)I

    .line 252
    move-result v4

    .line 253
    .line 254
    :cond_e
    if-ne v4, v7, :cond_f

    .line 255
    .line 256
    shr-int/lit8 v1, v1, 0x2

    .line 257
    .line 258
    .line 259
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->appendTwoBytes(I)V

    .line 260
    .line 261
    goto/16 :goto_0

    .line 262
    .line 263
    :cond_f
    shl-int/lit8 v1, v1, 0x6

    .line 264
    or-int/2addr v1, v4

    .line 265
    .line 266
    .line 267
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->appendThreeBytes(I)V

    .line 268
    .line 269
    goto/16 :goto_0
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
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

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
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

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
    aget-char v0, v0, v1

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
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_handleUnrecognizedCharacterEscape(C)C

    .line 67
    move-result v0

    .line 68
    return v0

    .line 69
    :cond_1
    const/4 v0, 0x0

    .line 70
    move v1, v0

    .line 71
    :goto_0
    const/4 v3, 0x4

    .line 72
    .line 73
    if-ge v0, v3, :cond_4

    .line 74
    .line 75
    iget v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 76
    .line 77
    iget v4, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 78
    .line 79
    if-lt v3, v4, :cond_2

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    .line 83
    move-result v3

    .line 84
    .line 85
    if-nez v3, :cond_2

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 89
    .line 90
    :cond_2
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    .line 91
    .line 92
    iget v4, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 93
    .line 94
    add-int/lit8 v5, v4, 0x1

    .line 95
    .line 96
    iput v5, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 97
    .line 98
    aget-char v3, v3, v4

    .line 99
    .line 100
    .line 101
    invoke-static {v3}, Lcom/fasterxml/jackson/core/io/CharTypes;->charToHex(I)I

    .line 102
    move-result v4

    .line 103
    .line 104
    if-gez v4, :cond_3

    .line 105
    .line 106
    const-string v5, "expected a hex-digit for character escape sequence"

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, v3, v5}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 110
    .line 111
    :cond_3
    shl-int/lit8 v1, v1, 0x4

    .line 112
    or-int/2addr v1, v4

    .line 113
    .line 114
    add-int/lit8 v0, v0, 0x1

    .line 115
    goto :goto_0

    .line 116
    :cond_4
    int-to-char v0, v1

    .line 117
    return v0

    .line 118
    .line 119
    :cond_5
    const/16 v0, 0x9

    .line 120
    return v0

    .line 121
    .line 122
    :cond_6
    const/16 v0, 0xd

    .line 123
    return v0

    .line 124
    .line 125
    :cond_7
    const/16 v0, 0xa

    .line 126
    return v0

    .line 127
    .line 128
    :cond_8
    const/16 v0, 0xc

    .line 129
    return v0

    .line 130
    .line 131
    :cond_9
    const/16 v0, 0x8

    .line 132
    :cond_a
    return v0
.end method

.method protected _finishString()V
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
    if-ge v0, v1, :cond_2

    .line 7
    .line 8
    sget-object v2, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_icLatin1:[I

    .line 9
    array-length v3, v2

    .line 10
    .line 11
    :cond_0
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    .line 12
    .line 13
    aget-char v5, v4, v0

    .line 14
    .line 15
    if-ge v5, v3, :cond_1

    .line 16
    .line 17
    aget v6, v2, v5

    .line 18
    .line 19
    if-eqz v6, :cond_1

    .line 20
    .line 21
    const/16 v1, 0x22

    .line 22
    .line 23
    if-ne v5, v1, :cond_2

    .line 24
    .line 25
    iget-object v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 26
    .line 27
    iget v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 28
    .line 29
    sub-int v3, v0, v2

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v4, v2, v3}, Lcom/fasterxml/jackson/core/util/TextBuffer;->resetWithShared([CII)V

    .line 33
    .line 34
    add-int/lit8 v0, v0, 0x1

    .line 35
    .line 36
    iput v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 37
    return-void

    .line 38
    .line 39
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 40
    .line 41
    if-lt v0, v1, :cond_0

    .line 42
    .line 43
    :cond_2
    iget-object v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 44
    .line 45
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    .line 46
    .line 47
    iget v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 48
    .line 49
    sub-int v4, v0, v3

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v2, v3, v4}, Lcom/fasterxml/jackson/core/util/TextBuffer;->resetWithCopy([CII)V

    .line 53
    .line 54
    iput v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_finishString2()V

    .line 58
    return-void
.end method

.method protected _finishString2()V
    .locals 5
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
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getCurrentSegment()[C

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getCurrentSegmentSize()I

    .line 12
    move-result v1

    .line 13
    .line 14
    :goto_0
    iget v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 15
    .line 16
    iget v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 17
    .line 18
    if-lt v2, v3, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    .line 22
    move-result v2

    .line 23
    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    const-string v2, ": was expecting closing quote for a string value"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 30
    .line 31
    :cond_0
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    .line 32
    .line 33
    iget v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 34
    .line 35
    add-int/lit8 v4, v3, 0x1

    .line 36
    .line 37
    iput v4, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 38
    .line 39
    aget-char v2, v2, v3

    .line 40
    .line 41
    const/16 v3, 0x5c

    .line 42
    .line 43
    if-gt v2, v3, :cond_3

    .line 44
    .line 45
    if-ne v2, v3, :cond_1

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_decodeEscaped()C

    .line 49
    move-result v2

    .line 50
    goto :goto_1

    .line 51
    .line 52
    :cond_1
    const/16 v3, 0x22

    .line 53
    .line 54
    if-gt v2, v3, :cond_3

    .line 55
    .line 56
    if-ne v2, v3, :cond_2

    .line 57
    .line 58
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 62
    return-void

    .line 63
    .line 64
    :cond_2
    const/16 v3, 0x20

    .line 65
    .line 66
    if-ge v2, v3, :cond_3

    .line 67
    .line 68
    .line 69
    const-string/jumbo v3, "string value"

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v2, v3}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_throwUnquotedSpace(ILjava/lang/String;)V

    .line 73
    :cond_3
    :goto_1
    array-length v3, v0

    .line 74
    .line 75
    if-lt v1, v3, :cond_4

    .line 76
    .line 77
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    .line 81
    move-result-object v0

    .line 82
    const/4 v1, 0x0

    .line 83
    .line 84
    :cond_4
    add-int/lit8 v3, v1, 0x1

    .line 85
    .line 86
    aput-char v2, v0, v1

    .line 87
    move v1, v3

    .line 88
    goto :goto_0
.end method

.method protected _getText2(Lcom/fasterxml/jackson/core/JsonToken;)Ljava/lang/String;
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
    .locals 5
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
    iget-object v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getCurrentSegmentSize()I

    .line 12
    move-result v1

    .line 13
    .line 14
    :goto_0
    iget v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 15
    .line 16
    iget v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 17
    .line 18
    if-lt v2, v3, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    .line 22
    move-result v2

    .line 23
    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    const-string v2, ": was expecting closing quote for a string value"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 30
    .line 31
    :cond_0
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    .line 32
    .line 33
    iget v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 34
    .line 35
    add-int/lit8 v4, v3, 0x1

    .line 36
    .line 37
    iput v4, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 38
    .line 39
    aget-char v2, v2, v3

    .line 40
    .line 41
    const/16 v3, 0x5c

    .line 42
    .line 43
    if-gt v2, v3, :cond_3

    .line 44
    .line 45
    if-ne v2, v3, :cond_1

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_decodeEscaped()C

    .line 49
    move-result v2

    .line 50
    goto :goto_1

    .line 51
    .line 52
    :cond_1
    const/16 v3, 0x27

    .line 53
    .line 54
    if-gt v2, v3, :cond_3

    .line 55
    .line 56
    if-ne v2, v3, :cond_2

    .line 57
    .line 58
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 62
    .line 63
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    .line 64
    return-object v0

    .line 65
    .line 66
    :cond_2
    const/16 v3, 0x20

    .line 67
    .line 68
    if-ge v2, v3, :cond_3

    .line 69
    .line 70
    .line 71
    const-string/jumbo v3, "string value"

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v2, v3}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_throwUnquotedSpace(ILjava/lang/String;)V

    .line 75
    :cond_3
    :goto_1
    array-length v3, v0

    .line 76
    .line 77
    if-lt v1, v3, :cond_4

    .line 78
    .line 79
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    .line 83
    move-result-object v0

    .line 84
    const/4 v1, 0x0

    .line 85
    .line 86
    :cond_4
    add-int/lit8 v3, v1, 0x1

    .line 87
    .line 88
    aput-char v2, v0, v1

    .line 89
    move v1, v3

    .line 90
    goto :goto_0
.end method

.method protected _handleInvalidNumberStart(IZ)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    const/16 v0, 0x49

    .line 3
    .line 4
    if-ne p1, v0, :cond_8

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
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

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
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

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
    aget-char p1, p1, v0

    .line 30
    .line 31
    const/16 v0, 0x4e

    .line 32
    .line 33
    const-string v1, "\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    .line 34
    .line 35
    const-string v2, "Non-standard token \'"

    .line 36
    .line 37
    const-wide/high16 v3, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 38
    .line 39
    const-wide/high16 v5, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 40
    const/4 v7, 0x3

    .line 41
    .line 42
    if-ne p1, v0, :cond_4

    .line 43
    .line 44
    if-eqz p2, :cond_1

    .line 45
    .line 46
    const-string v0, "-INF"

    .line 47
    goto :goto_0

    .line 48
    .line 49
    :cond_1
    const-string v0, "+INF"

    .line 50
    .line 51
    .line 52
    :goto_0
    invoke-virtual {p0, v0, v7}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 53
    .line 54
    sget-object v7, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v7}, Lcom/fasterxml/jackson/core/JsonParser;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    .line 58
    move-result v7

    .line 59
    .line 60
    if-eqz v7, :cond_3

    .line 61
    .line 62
    if-eqz p2, :cond_2

    .line 63
    move-wide v3, v5

    .line 64
    .line 65
    .line 66
    :cond_2
    invoke-virtual {p0, v0, v3, v4}, Lcom/fasterxml/jackson/core/base/ParserBase;->resetAsNaN(Ljava/lang/String;D)Lcom/fasterxml/jackson/core/JsonToken;

    .line 67
    move-result-object p1

    .line 68
    return-object p1

    .line 69
    .line 70
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    move-result-object p2

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportError(Ljava/lang/String;)V

    .line 90
    goto :goto_2

    .line 91
    .line 92
    :cond_4
    const/16 v0, 0x6e

    .line 93
    .line 94
    if-ne p1, v0, :cond_8

    .line 95
    .line 96
    if-eqz p2, :cond_5

    .line 97
    .line 98
    const-string v0, "-Infinity"

    .line 99
    goto :goto_1

    .line 100
    .line 101
    :cond_5
    const-string v0, "+Infinity"

    .line 102
    .line 103
    .line 104
    :goto_1
    invoke-virtual {p0, v0, v7}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 105
    .line 106
    sget-object v7, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, v7}, Lcom/fasterxml/jackson/core/JsonParser;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    .line 110
    move-result v7

    .line 111
    .line 112
    if-eqz v7, :cond_7

    .line 113
    .line 114
    if-eqz p2, :cond_6

    .line 115
    move-wide v3, v5

    .line 116
    .line 117
    .line 118
    :cond_6
    invoke-virtual {p0, v0, v3, v4}, Lcom/fasterxml/jackson/core/base/ParserBase;->resetAsNaN(Ljava/lang/String;D)Lcom/fasterxml/jackson/core/JsonToken;

    .line 119
    move-result-object p1

    .line 120
    return-object p1

    .line 121
    .line 122
    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    move-result-object p2

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportError(Ljava/lang/String;)V

    .line 142
    .line 143
    :cond_8
    :goto_2
    const-string p2, "expected digit (0-9) to follow minus sign, for valid numeric value"

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/core/base/ParserBase;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    .line 147
    const/4 p1, 0x0

    .line 148
    return-object p1
.end method

.method protected _handleOddName(I)Ljava/lang/String;
    .locals 7
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
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parseAposName()Ljava/lang/String;

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
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->getInputCodeLatin1JsNames()[I

    .line 35
    move-result-object v0

    .line 36
    array-length v1, v0

    .line 37
    .line 38
    if-ge p1, v1, :cond_2

    .line 39
    .line 40
    aget v2, v0, p1

    .line 41
    .line 42
    if-nez v2, :cond_3

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    int-to-char v2, p1

    .line 45
    .line 46
    .line 47
    invoke-static {v2}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    .line 48
    move-result v2

    .line 49
    .line 50
    if-nez v2, :cond_4

    .line 51
    .line 52
    .line 53
    :cond_3
    const-string/jumbo v2, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name"

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, p1, v2}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 57
    .line 58
    :cond_4
    :goto_0
    iget p1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 59
    .line 60
    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_hashSeed:I

    .line 61
    .line 62
    iget v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 63
    .line 64
    if-ge p1, v3, :cond_8

    .line 65
    .line 66
    :cond_5
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    .line 67
    .line 68
    aget-char v5, v4, p1

    .line 69
    .line 70
    if-ge v5, v1, :cond_6

    .line 71
    .line 72
    aget v6, v0, v5

    .line 73
    .line 74
    if-eqz v6, :cond_7

    .line 75
    .line 76
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 77
    .line 78
    add-int/lit8 v0, v0, -0x1

    .line 79
    .line 80
    iput p1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 81
    .line 82
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    .line 83
    sub-int/2addr p1, v0

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v4, v0, p1, v2}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->findSymbol([CIII)Ljava/lang/String;

    .line 87
    move-result-object p1

    .line 88
    return-object p1

    .line 89
    :cond_6
    int-to-char v4, v5

    .line 90
    .line 91
    .line 92
    invoke-static {v4}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    .line 93
    move-result v4

    .line 94
    .line 95
    if-nez v4, :cond_7

    .line 96
    .line 97
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 98
    .line 99
    add-int/lit8 v0, v0, -0x1

    .line 100
    .line 101
    iput p1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 102
    .line 103
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    .line 104
    .line 105
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    .line 106
    sub-int/2addr p1, v0

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, v3, v0, p1, v2}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->findSymbol([CIII)Ljava/lang/String;

    .line 110
    move-result-object p1

    .line 111
    return-object p1

    .line 112
    .line 113
    :cond_7
    mul-int/lit8 v2, v2, 0x21

    .line 114
    add-int/2addr v2, v5

    .line 115
    .line 116
    add-int/lit8 p1, p1, 0x1

    .line 117
    .line 118
    if-lt p1, v3, :cond_5

    .line 119
    .line 120
    :cond_8
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 121
    .line 122
    add-int/lit8 v1, v1, -0x1

    .line 123
    .line 124
    iput p1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 125
    .line 126
    .line 127
    invoke-direct {p0, v1, v2, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_handleOddName2(II[I)Ljava/lang/String;

    .line 128
    move-result-object p1

    .line 129
    return-object p1
.end method

.method protected _handleOddValue(I)Lcom/fasterxml/jackson/core/JsonToken;
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
    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_matchToken(Ljava/lang/String;I)V

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
    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_matchToken(Ljava/lang/String;I)V

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
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

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
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

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
    aget-char p1, p1, v0

    .line 96
    const/4 v0, 0x0

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_handleInvalidNumberStart(IZ)Lcom/fasterxml/jackson/core/JsonToken;

    .line 100
    move-result-object p1

    .line 101
    return-object p1

    .line 102
    .line 103
    :cond_6
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_SINGLE_QUOTES:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonParser;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    .line 107
    move-result v0

    .line 108
    .line 109
    if-eqz v0, :cond_7

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_handleApos()Lcom/fasterxml/jackson/core/JsonToken;

    .line 113
    move-result-object p1

    .line 114
    return-object p1

    .line 115
    .line 116
    .line 117
    :cond_7
    :goto_0
    invoke-static {p1}, Ljava/lang/Character;->isJavaIdentifierStart(I)Z

    .line 118
    move-result v0

    .line 119
    .line 120
    if-eqz v0, :cond_8

    .line 121
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .line 127
    const-string v1, ""

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    int-to-char v1, p1

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    move-result-object v0

    .line 139
    .line 140
    const-string v1, "(\'true\', \'false\' or \'null\')"

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportInvalidToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    :cond_8
    const-string v0, "expected a valid value (number, String, array, object, \'true\', \'false\' or \'null\')"

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 149
    const/4 p1, 0x0

    .line 150
    return-object p1
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
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    .line 15
    move-result v1

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportInvalidToken(Ljava/lang/String;)V

    .line 25
    .line 26
    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    .line 27
    .line 28
    iget v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 29
    .line 30
    aget-char v1, v1, v2

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    .line 34
    move-result v2

    .line 35
    .line 36
    if-eq v1, v2, :cond_2

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportInvalidToken(Ljava/lang/String;)V

    .line 44
    .line 45
    :cond_2
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 46
    .line 47
    add-int/lit8 v1, v1, 0x1

    .line 48
    .line 49
    iput v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 50
    .line 51
    add-int/lit8 p2, p2, 0x1

    .line 52
    .line 53
    if-lt p2, v0, :cond_0

    .line 54
    .line 55
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 56
    .line 57
    if-lt v1, v0, :cond_3

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    .line 61
    move-result v0

    .line 62
    .line 63
    if-nez v0, :cond_3

    .line 64
    return-void

    .line 65
    .line 66
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    .line 67
    .line 68
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 69
    .line 70
    aget-char v0, v0, v1

    .line 71
    .line 72
    const/16 v1, 0x30

    .line 73
    .line 74
    if-lt v0, v1, :cond_5

    .line 75
    .line 76
    const/16 v1, 0x5d

    .line 77
    .line 78
    if-eq v0, v1, :cond_5

    .line 79
    .line 80
    const/16 v1, 0x7d

    .line 81
    .line 82
    if-ne v0, v1, :cond_4

    .line 83
    goto :goto_0

    .line 84
    .line 85
    .line 86
    :cond_4
    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    .line 87
    move-result v0

    .line 88
    .line 89
    if-eqz v0, :cond_5

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 93
    move-result-object p1

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportInvalidToken(Ljava/lang/String;)V

    .line 97
    :cond_5
    :goto_0
    return-void
.end method

.method protected _parseAposName()Ljava/lang/String;
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
    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_hashSeed:I

    .line 5
    .line 6
    iget v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 7
    .line 8
    const/16 v3, 0x27

    .line 9
    .line 10
    if-ge v0, v2, :cond_3

    .line 11
    .line 12
    sget-object v4, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_icLatin1:[I

    .line 13
    array-length v5, v4

    .line 14
    .line 15
    :cond_0
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    .line 16
    .line 17
    aget-char v7, v6, v0

    .line 18
    .line 19
    if-ne v7, v3, :cond_1

    .line 20
    .line 21
    iget v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 22
    .line 23
    add-int/lit8 v3, v0, 0x1

    .line 24
    .line 25
    iput v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 26
    .line 27
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    .line 28
    sub-int/2addr v0, v2

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3, v6, v2, v0, v1}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->findSymbol([CIII)Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    return-object v0

    .line 34
    .line 35
    :cond_1
    if-ge v7, v5, :cond_2

    .line 36
    .line 37
    aget v6, v4, v7

    .line 38
    .line 39
    if-eqz v6, :cond_2

    .line 40
    goto :goto_0

    .line 41
    .line 42
    :cond_2
    mul-int/lit8 v1, v1, 0x21

    .line 43
    add-int/2addr v1, v7

    .line 44
    .line 45
    add-int/lit8 v0, v0, 0x1

    .line 46
    .line 47
    if-lt v0, v2, :cond_0

    .line 48
    .line 49
    :cond_3
    :goto_0
    iget v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 50
    .line 51
    iput v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 52
    .line 53
    .line 54
    invoke-direct {p0, v2, v1, v3}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parseName2(III)Ljava/lang/String;

    .line 55
    move-result-object v0

    .line 56
    return-object v0
.end method

.method protected _parseName(I)Ljava/lang/String;
    .locals 8
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
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_handleOddName(I)Ljava/lang/String;

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
    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_hashSeed:I

    .line 14
    .line 15
    iget v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 16
    .line 17
    if-ge p1, v2, :cond_3

    .line 18
    .line 19
    sget-object v3, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_icLatin1:[I

    .line 20
    array-length v4, v3

    .line 21
    .line 22
    :cond_1
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    .line 23
    .line 24
    aget-char v6, v5, p1

    .line 25
    .line 26
    if-ge v6, v4, :cond_2

    .line 27
    .line 28
    aget v7, v3, v6

    .line 29
    .line 30
    if-eqz v7, :cond_2

    .line 31
    .line 32
    if-ne v6, v0, :cond_3

    .line 33
    .line 34
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 35
    .line 36
    add-int/lit8 v2, p1, 0x1

    .line 37
    .line 38
    iput v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 39
    .line 40
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    .line 41
    sub-int/2addr p1, v0

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v5, v0, p1, v1}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->findSymbol([CIII)Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 46
    return-object p1

    .line 47
    .line 48
    :cond_2
    mul-int/lit8 v1, v1, 0x21

    .line 49
    add-int/2addr v1, v6

    .line 50
    .line 51
    add-int/lit8 p1, p1, 0x1

    .line 52
    .line 53
    if-lt p1, v2, :cond_1

    .line 54
    .line 55
    :cond_3
    iget v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 56
    .line 57
    iput p1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 58
    .line 59
    .line 60
    invoke-direct {p0, v2, v1, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parseName2(III)Ljava/lang/String;

    .line 61
    move-result-object p1

    .line 62
    return-object p1
.end method

.method protected _parseNumber(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    .line 4
    const/16 v2, 0x2d

    .line 5
    .line 6
    if-ne p1, v2, :cond_0

    .line 7
    move v3, v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v3, v0

    .line 10
    .line 11
    :goto_0
    iget v4, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 12
    .line 13
    add-int/lit8 v5, v4, -0x1

    .line 14
    .line 15
    iget v6, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 16
    .line 17
    const/16 v7, 0x39

    .line 18
    .line 19
    const/16 v8, 0x30

    .line 20
    .line 21
    if-eqz v3, :cond_3

    .line 22
    .line 23
    if-lt v4, v6, :cond_1

    .line 24
    .line 25
    goto/16 :goto_8

    .line 26
    .line 27
    :cond_1
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    .line 28
    .line 29
    add-int/lit8 v9, v4, 0x1

    .line 30
    .line 31
    aget-char p1, p1, v4

    .line 32
    .line 33
    if-gt p1, v7, :cond_2

    .line 34
    .line 35
    if-ge p1, v8, :cond_4

    .line 36
    .line 37
    :cond_2
    iput v9, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_handleInvalidNumberStart(IZ)Lcom/fasterxml/jackson/core/JsonToken;

    .line 41
    move-result-object p1

    .line 42
    return-object p1

    .line 43
    :cond_3
    move v9, v4

    .line 44
    .line 45
    :cond_4
    if-ne p1, v8, :cond_5

    .line 46
    .line 47
    goto/16 :goto_8

    .line 48
    .line 49
    :cond_5
    :goto_1
    iget p1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 50
    .line 51
    if-lt v9, p1, :cond_6

    .line 52
    .line 53
    goto/16 :goto_8

    .line 54
    .line 55
    :cond_6
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    .line 56
    .line 57
    add-int/lit8 v10, v9, 0x1

    .line 58
    .line 59
    aget-char p1, p1, v9

    .line 60
    .line 61
    if-lt p1, v8, :cond_8

    .line 62
    .line 63
    if-le p1, v7, :cond_7

    .line 64
    goto :goto_2

    .line 65
    .line 66
    :cond_7
    add-int/lit8 v1, v1, 0x1

    .line 67
    move v9, v10

    .line 68
    goto :goto_1

    .line 69
    .line 70
    :cond_8
    :goto_2
    const/16 v9, 0x2e

    .line 71
    .line 72
    if-ne p1, v9, :cond_d

    .line 73
    move p1, v0

    .line 74
    .line 75
    :goto_3
    if-lt v10, v6, :cond_9

    .line 76
    goto :goto_8

    .line 77
    .line 78
    :cond_9
    iget-object v9, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    .line 79
    .line 80
    add-int/lit8 v11, v10, 0x1

    .line 81
    .line 82
    aget-char v9, v9, v10

    .line 83
    .line 84
    if-lt v9, v8, :cond_b

    .line 85
    .line 86
    if-le v9, v7, :cond_a

    .line 87
    goto :goto_4

    .line 88
    .line 89
    :cond_a
    add-int/lit8 p1, p1, 0x1

    .line 90
    move v10, v11

    .line 91
    goto :goto_3

    .line 92
    .line 93
    :cond_b
    :goto_4
    if-nez p1, :cond_c

    .line 94
    .line 95
    const-string v10, "Decimal point not followed by a digit"

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, v9, v10}, Lcom/fasterxml/jackson/core/base/ParserBase;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    .line 99
    :cond_c
    move v10, v11

    .line 100
    move v13, v9

    .line 101
    move v9, p1

    .line 102
    move p1, v13

    .line 103
    goto :goto_5

    .line 104
    :cond_d
    move v9, v0

    .line 105
    .line 106
    :goto_5
    const/16 v11, 0x65

    .line 107
    .line 108
    if-eq p1, v11, :cond_e

    .line 109
    .line 110
    const/16 v11, 0x45

    .line 111
    .line 112
    if-ne p1, v11, :cond_16

    .line 113
    .line 114
    :cond_e
    if-lt v10, v6, :cond_f

    .line 115
    goto :goto_8

    .line 116
    .line 117
    :cond_f
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    .line 118
    .line 119
    add-int/lit8 v11, v10, 0x1

    .line 120
    .line 121
    aget-char v12, p1, v10

    .line 122
    .line 123
    if-eq v12, v2, :cond_11

    .line 124
    .line 125
    const/16 v2, 0x2b

    .line 126
    .line 127
    if-ne v12, v2, :cond_10

    .line 128
    goto :goto_6

    .line 129
    :cond_10
    move v10, v11

    .line 130
    move p1, v12

    .line 131
    goto :goto_7

    .line 132
    .line 133
    :cond_11
    :goto_6
    if-lt v11, v6, :cond_12

    .line 134
    goto :goto_8

    .line 135
    .line 136
    :cond_12
    add-int/lit8 v10, v10, 0x2

    .line 137
    .line 138
    aget-char p1, p1, v11

    .line 139
    .line 140
    :goto_7
    if-gt p1, v7, :cond_15

    .line 141
    .line 142
    if-lt p1, v8, :cond_15

    .line 143
    .line 144
    add-int/lit8 v0, v0, 0x1

    .line 145
    .line 146
    if-lt v10, v6, :cond_14

    .line 147
    .line 148
    :goto_8
    if-eqz v3, :cond_13

    .line 149
    goto :goto_9

    .line 150
    :cond_13
    move v4, v5

    .line 151
    .line 152
    :goto_9
    iput v4, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 153
    .line 154
    .line 155
    invoke-direct {p0, v3}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parseNumber2(Z)Lcom/fasterxml/jackson/core/JsonToken;

    .line 156
    move-result-object p1

    .line 157
    return-object p1

    .line 158
    .line 159
    :cond_14
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    .line 160
    .line 161
    add-int/lit8 v2, v10, 0x1

    .line 162
    .line 163
    aget-char p1, p1, v10

    .line 164
    move v10, v2

    .line 165
    goto :goto_7

    .line 166
    .line 167
    :cond_15
    if-nez v0, :cond_16

    .line 168
    .line 169
    const-string v2, "Exponent indicator not followed by a digit"

    .line 170
    .line 171
    .line 172
    invoke-virtual {p0, p1, v2}, Lcom/fasterxml/jackson/core/base/ParserBase;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    .line 173
    .line 174
    :cond_16
    add-int/lit8 v10, v10, -0x1

    .line 175
    .line 176
    iput v10, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 177
    .line 178
    iget-object v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonStreamContext;->inRoot()Z

    .line 182
    move-result v2

    .line 183
    .line 184
    if-eqz v2, :cond_17

    .line 185
    .line 186
    .line 187
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_verifyRootSpace(I)V

    .line 188
    :cond_17
    sub-int/2addr v10, v5

    .line 189
    .line 190
    iget-object p1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 191
    .line 192
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    .line 193
    .line 194
    .line 195
    invoke-virtual {p1, v2, v5, v10}, Lcom/fasterxml/jackson/core/util/TextBuffer;->resetWithShared([CII)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0, v3, v1, v9, v0}, Lcom/fasterxml/jackson/core/base/ParserBase;->reset(ZIII)Lcom/fasterxml/jackson/core/JsonToken;

    .line 199
    move-result-object p1

    .line 200
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
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

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
    aget-char v5, v5, v6

    .line 26
    .line 27
    const/16 v6, 0x20

    .line 28
    .line 29
    if-le v5, v6, :cond_0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v5}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(C)I

    .line 33
    move-result v6

    .line 34
    .line 35
    const/16 v7, 0x22

    .line 36
    .line 37
    if-gez v6, :cond_3

    .line 38
    .line 39
    if-ne v5, v7, :cond_2

    .line 40
    .line 41
    goto/16 :goto_1

    .line 42
    .line 43
    .line 44
    :cond_2
    invoke-virtual {p0, p1, v5, v2}, Lcom/fasterxml/jackson/core/base/ParserBase;->_decodeBase64Escape(Lcom/fasterxml/jackson/core/Base64Variant;CI)I

    .line 45
    move-result v6

    .line 46
    .line 47
    if-gez v6, :cond_3

    .line 48
    goto :goto_0

    .line 49
    .line 50
    :cond_3
    if-le v3, v0, :cond_4

    .line 51
    add-int/2addr v4, v3

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, p3, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 55
    move v3, v2

    .line 56
    .line 57
    :cond_4
    iget v5, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 58
    .line 59
    iget v8, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 60
    .line 61
    if-lt v5, v8, :cond_5

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->loadMoreGuaranteed()V

    .line 65
    .line 66
    :cond_5
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    .line 67
    .line 68
    iget v8, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 69
    .line 70
    add-int/lit8 v9, v8, 0x1

    .line 71
    .line 72
    iput v9, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 73
    .line 74
    aget-char v5, v5, v8

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v5}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(C)I

    .line 78
    move-result v8

    .line 79
    .line 80
    if-gez v8, :cond_6

    .line 81
    const/4 v8, 0x1

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, p1, v5, v8}, Lcom/fasterxml/jackson/core/base/ParserBase;->_decodeBase64Escape(Lcom/fasterxml/jackson/core/Base64Variant;CI)I

    .line 85
    move-result v8

    .line 86
    .line 87
    :cond_6
    shl-int/lit8 v5, v6, 0x6

    .line 88
    or-int/2addr v5, v8

    .line 89
    .line 90
    iget v6, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 91
    .line 92
    iget v8, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 93
    .line 94
    if-lt v6, v8, :cond_7

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->loadMoreGuaranteed()V

    .line 98
    .line 99
    :cond_7
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    .line 100
    .line 101
    iget v8, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 102
    .line 103
    add-int/lit8 v9, v8, 0x1

    .line 104
    .line 105
    iput v9, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 106
    .line 107
    aget-char v6, v6, v8

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, v6}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(C)I

    .line 111
    move-result v8

    .line 112
    const/4 v9, -0x2

    .line 113
    const/4 v10, 0x2

    .line 114
    .line 115
    if-gez v8, :cond_c

    .line 116
    .line 117
    if-eq v8, v9, :cond_9

    .line 118
    .line 119
    if-ne v6, v7, :cond_8

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPadding()Z

    .line 123
    move-result v8

    .line 124
    .line 125
    if-nez v8, :cond_8

    .line 126
    .line 127
    shr-int/lit8 p1, v5, 0x4

    .line 128
    .line 129
    add-int/lit8 v0, v3, 0x1

    .line 130
    int-to-byte p1, p1

    .line 131
    .line 132
    aput-byte p1, p3, v3

    .line 133
    move v3, v0

    .line 134
    .line 135
    goto/16 :goto_1

    .line 136
    .line 137
    .line 138
    :cond_8
    invoke-virtual {p0, p1, v6, v10}, Lcom/fasterxml/jackson/core/base/ParserBase;->_decodeBase64Escape(Lcom/fasterxml/jackson/core/Base64Variant;CI)I

    .line 139
    move-result v8

    .line 140
    .line 141
    :cond_9
    if-ne v8, v9, :cond_c

    .line 142
    .line 143
    iget v6, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 144
    .line 145
    iget v7, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 146
    .line 147
    if-lt v6, v7, :cond_a

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->loadMoreGuaranteed()V

    .line 151
    .line 152
    :cond_a
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    .line 153
    .line 154
    iget v7, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 155
    .line 156
    add-int/lit8 v8, v7, 0x1

    .line 157
    .line 158
    iput v8, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 159
    .line 160
    aget-char v6, v6, v7

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1, v6}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPaddingChar(C)Z

    .line 164
    move-result v7

    .line 165
    .line 166
    if-eqz v7, :cond_b

    .line 167
    .line 168
    shr-int/lit8 v5, v5, 0x4

    .line 169
    .line 170
    add-int/lit8 v6, v3, 0x1

    .line 171
    int-to-byte v5, v5

    .line 172
    .line 173
    aput-byte v5, p3, v3

    .line 174
    move v3, v6

    .line 175
    .line 176
    goto/16 :goto_0

    .line 177
    .line 178
    :cond_b
    new-instance p2, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .line 183
    const-string p3, "expected padding character \'"

    .line 184
    .line 185
    .line 186
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->getPaddingChar()C

    .line 190
    move-result p3

    .line 191
    .line 192
    .line 193
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    const-string p3, "\'"

    .line 196
    .line 197
    .line 198
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    move-result-object p2

    .line 203
    .line 204
    .line 205
    invoke-virtual {p0, p1, v6, v1, p2}, Lcom/fasterxml/jackson/core/base/ParserBase;->reportInvalidBase64Char(Lcom/fasterxml/jackson/core/Base64Variant;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    .line 206
    move-result-object p1

    .line 207
    throw p1

    .line 208
    .line 209
    :cond_c
    shl-int/lit8 v5, v5, 0x6

    .line 210
    or-int/2addr v5, v8

    .line 211
    .line 212
    iget v6, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 213
    .line 214
    iget v8, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 215
    .line 216
    if-lt v6, v8, :cond_d

    .line 217
    .line 218
    .line 219
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->loadMoreGuaranteed()V

    .line 220
    .line 221
    :cond_d
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    .line 222
    .line 223
    iget v8, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 224
    .line 225
    add-int/lit8 v11, v8, 0x1

    .line 226
    .line 227
    iput v11, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 228
    .line 229
    aget-char v6, v6, v8

    .line 230
    .line 231
    .line 232
    invoke-virtual {p1, v6}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(C)I

    .line 233
    move-result v8

    .line 234
    .line 235
    if-gez v8, :cond_11

    .line 236
    .line 237
    if-eq v8, v9, :cond_10

    .line 238
    .line 239
    if-ne v6, v7, :cond_f

    .line 240
    .line 241
    .line 242
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPadding()Z

    .line 243
    move-result v7

    .line 244
    .line 245
    if-nez v7, :cond_f

    .line 246
    .line 247
    shr-int/lit8 p1, v5, 0x2

    .line 248
    .line 249
    add-int/lit8 v0, v3, 0x1

    .line 250
    .line 251
    shr-int/lit8 v1, v5, 0xa

    .line 252
    int-to-byte v1, v1

    .line 253
    .line 254
    aput-byte v1, p3, v3

    .line 255
    add-int/2addr v3, v10

    .line 256
    int-to-byte p1, p1

    .line 257
    .line 258
    aput-byte p1, p3, v0

    .line 259
    .line 260
    :goto_1
    iput-boolean v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    .line 261
    .line 262
    if-lez v3, :cond_e

    .line 263
    add-int/2addr v4, v3

    .line 264
    .line 265
    .line 266
    invoke-virtual {p2, p3, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 267
    :cond_e
    return v4

    .line 268
    .line 269
    .line 270
    :cond_f
    invoke-virtual {p0, p1, v6, v1}, Lcom/fasterxml/jackson/core/base/ParserBase;->_decodeBase64Escape(Lcom/fasterxml/jackson/core/Base64Variant;CI)I

    .line 271
    move-result v8

    .line 272
    .line 273
    :cond_10
    if-ne v8, v9, :cond_11

    .line 274
    .line 275
    shr-int/lit8 v6, v5, 0x2

    .line 276
    .line 277
    add-int/lit8 v7, v3, 0x1

    .line 278
    .line 279
    shr-int/lit8 v5, v5, 0xa

    .line 280
    int-to-byte v5, v5

    .line 281
    .line 282
    aput-byte v5, p3, v3

    .line 283
    .line 284
    add-int/lit8 v3, v3, 0x2

    .line 285
    int-to-byte v5, v6

    .line 286
    .line 287
    aput-byte v5, p3, v7

    .line 288
    .line 289
    goto/16 :goto_0

    .line 290
    .line 291
    :cond_11
    shl-int/lit8 v5, v5, 0x6

    .line 292
    or-int/2addr v5, v8

    .line 293
    .line 294
    add-int/lit8 v6, v3, 0x1

    .line 295
    .line 296
    shr-int/lit8 v7, v5, 0x10

    .line 297
    int-to-byte v7, v7

    .line 298
    .line 299
    aput-byte v7, p3, v3

    .line 300
    .line 301
    add-int/lit8 v7, v3, 0x2

    .line 302
    .line 303
    shr-int/lit8 v8, v5, 0x8

    .line 304
    int-to-byte v8, v8

    .line 305
    .line 306
    aput-byte v8, p3, v6

    .line 307
    .line 308
    add-int/lit8 v3, v3, 0x3

    .line 309
    int-to-byte v5, v5

    .line 310
    .line 311
    aput-byte v5, p3, v7

    .line 312
    .line 313
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
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->release()V

    .line 9
    .line 10
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    const/4 v1, 0x0

    .line 14
    .line 15
    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    .line 16
    .line 17
    iget-object v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->releaseTokenBuffer([C)V

    .line 21
    :cond_0
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
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportInvalidToken(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected _reportInvalidToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
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
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 4
    aget-char p1, p1, v1

    .line 5
    invoke-static {p1}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
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

    :cond_1
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method protected _skipCR()V
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
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    .line 15
    .line 16
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 17
    .line 18
    aget-char v0, v0, v1

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
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    .line 4
    .line 5
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 6
    .line 7
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 8
    .line 9
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    .line 10
    .line 11
    :goto_0
    if-lt v0, v1, :cond_1

    .line 12
    .line 13
    iput v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    .line 17
    move-result v0

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    const-string v0, ": was expecting closing quote for a string value"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 25
    .line 26
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 27
    .line 28
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 29
    .line 30
    :cond_1
    add-int/lit8 v3, v0, 0x1

    .line 31
    .line 32
    aget-char v0, v2, v0

    .line 33
    .line 34
    const/16 v4, 0x5c

    .line 35
    .line 36
    if-gt v0, v4, :cond_4

    .line 37
    .line 38
    if-ne v0, v4, :cond_2

    .line 39
    .line 40
    iput v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_decodeEscaped()C

    .line 44
    .line 45
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 46
    .line 47
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 48
    goto :goto_0

    .line 49
    .line 50
    :cond_2
    const/16 v4, 0x22

    .line 51
    .line 52
    if-gt v0, v4, :cond_4

    .line 53
    .line 54
    if-ne v0, v4, :cond_3

    .line 55
    .line 56
    iput v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 57
    return-void

    .line 58
    .line 59
    :cond_3
    const/16 v4, 0x20

    .line 60
    .line 61
    if-ge v0, v4, :cond_4

    .line 62
    .line 63
    iput v3, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 64
    .line 65
    .line 66
    const-string/jumbo v4, "string value"

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v0, v4}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_throwUnquotedSpace(ILjava/lang/String;)V

    .line 70
    :cond_4
    move v0, v3

    .line 71
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
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    .line 48
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_decodeBase64(Lcom/fasterxml/jackson/core/Base64Variant;)[B

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
    iput-boolean p1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

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
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->getText()Ljava/lang/String;

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

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;

    return-object v0
.end method

.method public getInputSource()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reader:Ljava/io/Reader;

    return-object v0
.end method

.method protected getNextChar(Ljava/lang/String;)C
    .locals 2
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
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportInvalidEOF(Ljava/lang/String;)V

    .line 16
    .line 17
    :cond_0
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    .line 18
    .line 19
    iget v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 20
    .line 21
    add-int/lit8 v1, v0, 0x1

    .line 22
    .line 23
    iput v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputPtr:I

    .line 24
    .line 25
    aget-char p1, p1, v0

    .line 26
    return p1
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
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_finishString()V

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
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_getText2(Lcom/fasterxml/jackson/core/JsonToken;)Ljava/lang/String;

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
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    iput-boolean v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_finishString()V

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
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_finishString()V

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
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_finishString()V

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

    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_finishString()V

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

    iget-boolean p1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    .line 6
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_finishString()V

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

.method protected loadMore()Z
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
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reader:Ljava/io/Reader;

    .line 16
    const/4 v1, 0x0

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    .line 21
    array-length v3, v2

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v2, v1, v3}, Ljava/io/Reader;->read([CII)I

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
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_closeInput()V

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
    const-string v2, "Reader returned 0 characters when trying to read "

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    iget v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_inputEnd:I

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object v1

    .line 61
    .line 62
    .line 63
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 64
    throw v0

    .line 65
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
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    if-eqz v0, :cond_6

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    .line 74
    move-result v0

    .line 75
    .line 76
    const/16 v1, 0x9

    .line 77
    .line 78
    if-ne v0, v1, :cond_5

    .line 79
    .line 80
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 81
    return-object v0

    .line 82
    .line 83
    :cond_5
    const/16 v1, 0xa

    .line 84
    .line 85
    if-ne v0, v1, :cond_6

    .line 86
    .line 87
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 88
    return-object v0

    .line 89
    :cond_6
    return-object v2
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
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

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
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

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
    iget-boolean v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_finishString()V

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
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

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
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->getText()Ljava/lang/String;

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
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nextAfterName()Lcom/fasterxml/jackson/core/JsonToken;

    .line 13
    move-result-object v0

    .line 14
    return-object v0

    .line 15
    .line 16
    :cond_0
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipString()V

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipWSOrEnd()I

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
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipWS()I

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
    if-eqz v5, :cond_a

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parseName(I)Ljava/lang/String;

    .line 174
    move-result-object v0

    .line 175
    .line 176
    iget-object v6, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v6, v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->setCurrentName(Ljava/lang/String;)V

    .line 180
    .line 181
    iput-object v1, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 182
    .line 183
    .line 184
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipWS()I

    .line 185
    move-result v0

    .line 186
    .line 187
    const/16 v1, 0x3a

    .line 188
    .line 189
    if-eq v0, v1, :cond_9

    .line 190
    .line 191
    .line 192
    const-string/jumbo v1, "was expecting a colon to separate field name and value"

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 196
    .line 197
    .line 198
    :cond_9
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipWS()I

    .line 199
    move-result v0

    .line 200
    .line 201
    :cond_a
    const/16 v1, 0x22

    .line 202
    .line 203
    if-eq v0, v1, :cond_14

    .line 204
    .line 205
    const/16 v1, 0x2d

    .line 206
    .line 207
    if-eq v0, v1, :cond_13

    .line 208
    .line 209
    const/16 v1, 0x5b

    .line 210
    .line 211
    if-eq v0, v1, :cond_11

    .line 212
    .line 213
    if-eq v0, v4, :cond_f

    .line 214
    .line 215
    const/16 v1, 0x66

    .line 216
    .line 217
    if-eq v0, v1, :cond_e

    .line 218
    .line 219
    const/16 v1, 0x6e

    .line 220
    .line 221
    if-eq v0, v1, :cond_d

    .line 222
    .line 223
    const/16 v1, 0x74

    .line 224
    .line 225
    if-eq v0, v1, :cond_10

    .line 226
    .line 227
    const/16 v1, 0x7b

    .line 228
    .line 229
    if-eq v0, v1, :cond_b

    .line 230
    .line 231
    if-eq v0, v2, :cond_f

    .line 232
    .line 233
    .line 234
    packed-switch v0, :pswitch_data_0

    .line 235
    .line 236
    .line 237
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_handleOddValue(I)Lcom/fasterxml/jackson/core/JsonToken;

    .line 238
    move-result-object v0

    .line 239
    goto :goto_0

    .line 240
    .line 241
    :cond_b
    if-nez v5, :cond_c

    .line 242
    .line 243
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 244
    .line 245
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_tokenInputRow:I

    .line 246
    .line 247
    iget v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_tokenInputCol:I

    .line 248
    .line 249
    .line 250
    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildObjectContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 251
    move-result-object v0

    .line 252
    .line 253
    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 254
    .line 255
    :cond_c
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    .line 256
    goto :goto_0

    .line 257
    .line 258
    .line 259
    :cond_d
    const-string/jumbo v0, "null"

    .line 260
    .line 261
    .line 262
    invoke-virtual {p0, v0, v3}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 263
    .line 264
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    .line 265
    goto :goto_0

    .line 266
    .line 267
    :cond_e
    const-string v0, "false"

    .line 268
    .line 269
    .line 270
    invoke-virtual {p0, v0, v3}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 271
    .line 272
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    .line 273
    goto :goto_0

    .line 274
    .line 275
    :cond_f
    const-string v1, "expected a value"

    .line 276
    .line 277
    .line 278
    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_reportUnexpectedChar(ILjava/lang/String;)V

    .line 279
    .line 280
    .line 281
    :cond_10
    const-string/jumbo v0, "true"

    .line 282
    .line 283
    .line 284
    invoke-virtual {p0, v0, v3}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_matchToken(Ljava/lang/String;I)V

    .line 285
    .line 286
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    .line 287
    goto :goto_0

    .line 288
    .line 289
    :cond_11
    if-nez v5, :cond_12

    .line 290
    .line 291
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 292
    .line 293
    iget v1, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_tokenInputRow:I

    .line 294
    .line 295
    iget v2, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_tokenInputCol:I

    .line 296
    .line 297
    .line 298
    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildArrayContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 299
    move-result-object v0

    .line 300
    .line 301
    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    .line 302
    .line 303
    :cond_12
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    .line 304
    goto :goto_0

    .line 305
    .line 306
    .line 307
    :cond_13
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parseNumber(I)Lcom/fasterxml/jackson/core/JsonToken;

    .line 308
    move-result-object v0

    .line 309
    goto :goto_0

    .line 310
    .line 311
    :cond_14
    iput-boolean v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    .line 312
    .line 313
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    .line 314
    .line 315
    :goto_0
    if-eqz v5, :cond_15

    .line 316
    .line 317
    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserBase;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 318
    .line 319
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 320
    return-object v0

    .line 321
    .line 322
    :cond_15
    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    .line 323
    return-object v0

    .line 324
    nop

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
    .line 345
    .line 346
    .line 347
    .line 348
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
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

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
    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_readBinary(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/OutputStream;[B)I

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
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->getBinaryValue(Lcom/fasterxml/jackson/core/Base64Variant;)[B

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

.method public releaseBuffered(Ljava/io/Writer;)I
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
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v2, v1, v0}, Ljava/io/Writer;->write([CII)V

    .line 16
    return v0
.end method

.method public setCodec(Lcom/fasterxml/jackson/core/ObjectCodec;)V
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;

    return-void
.end method
