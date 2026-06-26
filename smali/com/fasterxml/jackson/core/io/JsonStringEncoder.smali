.class public final Lcom/fasterxml/jackson/core/io/JsonStringEncoder;
.super Ljava/lang/Object;
.source "JsonStringEncoder.java"


# static fields
.field private static final HEX_BYTES:[B

.field private static final HEX_CHARS:[C

.field private static final INT_0:I = 0x30

.field private static final INT_BACKSLASH:I = 0x5c

.field private static final INT_U:I = 0x75

.field private static final SURR1_FIRST:I = 0xd800

.field private static final SURR1_LAST:I = 0xdbff

.field private static final SURR2_FIRST:I = 0xdc00

.field private static final SURR2_LAST:I = 0xdfff

.field protected static final _threadEncoder:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/ref/SoftReference<",
            "Lcom/fasterxml/jackson/core/io/JsonStringEncoder;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field protected _byteBuilder:Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

.field protected final _quoteBuffer:[C

.field protected _textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->copyHexChars()[C

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->HEX_CHARS:[C

    .line 21
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->copyHexBytes()[B

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->HEX_BYTES:[B

    .line 37
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_threadEncoder:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [C

    .line 65
    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_quoteBuffer:[C

    .line 66
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_quoteBuffer:[C

    const/4 v1, 0x0

    const/16 v2, 0x5c

    aput-char v2, v0, v1

    const/16 v1, 0x30

    const/4 v2, 0x2

    .line 67
    aput-char v1, v0, v2

    const/4 v2, 0x3

    .line 68
    aput-char v1, v0, v2

    return-void
.end method

.method private _appendByteEscape(IILcom/fasterxml/jackson/core/util/ByteArrayBuilder;I)I
    .locals 1

    .line 363
    invoke-virtual {p3, p4}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->setCurrentSegmentLength(I)V

    const/16 p4, 0x5c

    .line 364
    invoke-virtual {p3, p4}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    if-gez p2, :cond_1

    const/16 p2, 0x75

    .line 366
    invoke-virtual {p3, p2}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    const/16 p2, 0xff

    if-le p1, p2, :cond_0

    shr-int/lit8 p2, p1, 0x8

    .line 369
    sget-object p4, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->HEX_BYTES:[B

    shr-int/lit8 v0, p2, 0x4

    aget-byte p4, p4, v0

    invoke-virtual {p3, p4}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    .line 370
    sget-object p4, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->HEX_BYTES:[B

    and-int/lit8 p2, p2, 0xf

    aget-byte p2, p4, p2

    invoke-virtual {p3, p2}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    and-int/lit16 p1, p1, 0xff

    goto :goto_0

    :cond_0
    const/16 p2, 0x30

    .line 373
    invoke-virtual {p3, p2}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    .line 374
    invoke-virtual {p3, p2}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    .line 376
    :goto_0
    sget-object p2, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->HEX_BYTES:[B

    shr-int/lit8 p4, p1, 0x4

    aget-byte p2, p2, p4

    invoke-virtual {p3, p2}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    .line 377
    sget-object p2, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->HEX_BYTES:[B

    and-int/lit8 p1, p1, 0xf

    aget-byte p1, p2, p1

    invoke-virtual {p3, p1}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    goto :goto_1

    :cond_1
    int-to-byte p1, p2

    .line 379
    invoke-virtual {p3, p1}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    .line 381
    :goto_1
    invoke-virtual {p3}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->getCurrentSegmentLength()I

    move-result p1

    return p1
.end method

.method private _appendNamedEscape(I[C)I
    .locals 1

    int-to-char p1, p1

    const/4 v0, 0x1

    .line 357
    aput-char p1, p2, v0

    const/4 p1, 0x2

    return p1
.end method

.method private _appendNumericEscape(I[C)I
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x75

    .line 348
    aput-char v1, p2, v0

    .line 350
    sget-object v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->HEX_CHARS:[C

    shr-int/lit8 v1, p1, 0x4

    aget-char v1, v0, v1

    const/4 v2, 0x4

    aput-char v1, p2, v2

    and-int/lit8 p1, p1, 0xf

    .line 351
    aget-char p1, v0, p1

    const/4 v0, 0x5

    aput-char p1, p2, v0

    const/4 p1, 0x6

    return p1
.end method

.method protected static _convertSurrogate(II)I
    .locals 3

    const v0, 0xdc00

    if-lt p1, v0, :cond_0

    const v1, 0xdfff

    if-gt p1, v1, :cond_0

    const/high16 v1, 0x10000

    const v2, 0xd800

    sub-int/2addr p0, v2

    shl-int/lit8 p0, p0, 0xa

    add-int/2addr p0, v1

    sub-int/2addr p1, v0

    add-int/2addr p0, p1

    return p0

    .line 388
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broken surrogate pair: first char 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", second 0x"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "; illegal combination"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static _illegalSurrogate(I)V
    .locals 1

    .line 394
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->illegalSurrogateDesc(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance()Lcom/fasterxml/jackson/core/io/JsonStringEncoder;
    .locals 3

    .line 77
    sget-object v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_threadEncoder:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;

    :goto_0
    if-nez v0, :cond_1

    .line 81
    new-instance v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;-><init>()V

    .line 82
    sget-object v1, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_threadEncoder:Ljava/lang/ThreadLocal;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_1
    return-object v0
.end method


# virtual methods
.method public encodeAsUTF8(Ljava/lang/String;)[B
    .locals 12

    .line 256
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_byteBuilder:Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 259
    new-instance v0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;-><init>(Lcom/fasterxml/jackson/core/util/BufferRecycler;)V

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_byteBuilder:Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    .line 262
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 264
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->resetAndGetFirstSegment()[B

    move-result-object v3

    .line 265
    array-length v4, v3

    const/4 v5, 0x0

    move-object v6, v3

    const/4 v3, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v3, v2, :cond_f

    add-int/lit8 v8, v3, 0x1

    .line 269
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_1
    const/16 v9, 0x7f

    if-gt v3, v9, :cond_3

    if-lt v7, v4, :cond_1

    .line 274
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v4

    .line 275
    array-length v6, v4

    const/4 v7, 0x0

    move v11, v6

    move-object v6, v4

    move v4, v11

    :cond_1
    add-int/lit8 v9, v7, 0x1

    int-to-byte v3, v3

    .line 278
    aput-byte v3, v6, v7

    if-lt v8, v2, :cond_2

    move v7, v9

    goto/16 :goto_4

    :cond_2
    add-int/lit8 v3, v8, 0x1

    .line 282
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v8, v3

    move v3, v7

    move v7, v9

    goto :goto_1

    :cond_3
    if-lt v7, v4, :cond_4

    .line 287
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v6

    .line 288
    array-length v4, v6

    const/4 v7, 0x0

    :cond_4
    const/16 v9, 0x800

    if-ge v3, v9, :cond_5

    add-int/lit8 v9, v7, 0x1

    shr-int/lit8 v10, v3, 0x6

    or-int/lit16 v10, v10, 0xc0

    int-to-byte v10, v10

    .line 292
    aput-byte v10, v6, v7

    move v7, v9

    goto/16 :goto_3

    :cond_5
    const v9, 0xd800

    if-lt v3, v9, :cond_c

    const v9, 0xdfff

    if-le v3, v9, :cond_6

    goto :goto_2

    :cond_6
    const v9, 0xdbff

    if-gt v3, v9, :cond_b

    if-ge v8, v2, :cond_a

    add-int/lit8 v9, v8, 0x1

    .line 311
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v3, v8}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_convertSurrogate(II)I

    move-result v3

    const v8, 0x10ffff

    if-gt v3, v8, :cond_9

    add-int/lit8 v8, v7, 0x1

    shr-int/lit8 v10, v3, 0x12

    or-int/lit16 v10, v10, 0xf0

    int-to-byte v10, v10

    .line 315
    aput-byte v10, v6, v7

    if-lt v8, v4, :cond_7

    .line 317
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v6

    .line 318
    array-length v4, v6

    const/4 v8, 0x0

    :cond_7
    add-int/lit8 v7, v8, 0x1

    shr-int/lit8 v10, v3, 0xc

    and-int/lit8 v10, v10, 0x3f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    .line 321
    aput-byte v10, v6, v8

    if-lt v7, v4, :cond_8

    .line 323
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v4

    .line 324
    array-length v6, v4

    const/4 v7, 0x0

    move v11, v6

    move-object v6, v4

    move v4, v11

    :cond_8
    add-int/lit8 v8, v7, 0x1

    shr-int/lit8 v10, v3, 0x6

    and-int/lit8 v10, v10, 0x3f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    .line 327
    aput-byte v10, v6, v7

    move v7, v8

    move v8, v9

    goto :goto_3

    .line 313
    :cond_9
    invoke-static {v3}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_illegalSurrogate(I)V

    throw v1

    .line 309
    :cond_a
    invoke-static {v3}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_illegalSurrogate(I)V

    throw v1

    .line 305
    :cond_b
    invoke-static {v3}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_illegalSurrogate(I)V

    throw v1

    :cond_c
    :goto_2
    add-int/lit8 v9, v7, 0x1

    shr-int/lit8 v10, v3, 0xc

    or-int/lit16 v10, v10, 0xe0

    int-to-byte v10, v10

    .line 296
    aput-byte v10, v6, v7

    if-lt v9, v4, :cond_d

    .line 298
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v6

    .line 299
    array-length v4, v6

    const/4 v9, 0x0

    :cond_d
    add-int/lit8 v7, v9, 0x1

    shr-int/lit8 v10, v3, 0x6

    and-int/lit8 v10, v10, 0x3f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    .line 302
    aput-byte v10, v6, v9

    :goto_3
    if-lt v7, v4, :cond_e

    .line 331
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v4

    .line 332
    array-length v6, v4

    const/4 v7, 0x0

    move v11, v6

    move-object v6, v4

    move v4, v11

    :cond_e
    add-int/lit8 v9, v7, 0x1

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    .line 335
    aput-byte v3, v6, v7

    move v3, v8

    move v7, v9

    goto/16 :goto_0

    .line 337
    :cond_f
    :goto_4
    iget-object p1, p0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_byteBuilder:Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    invoke-virtual {p1, v7}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->completeAndCoalesce(I)[B

    move-result-object p1

    return-object p1
.end method

.method public quoteAsString(Ljava/lang/String;)[C
    .locals 11

    .line 99
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lcom/fasterxml/jackson/core/util/TextBuffer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;-><init>(Lcom/fasterxml/jackson/core/util/BufferRecycler;)V

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 104
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v1

    .line 105
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->get7BitOutputEscapes()[I

    move-result-object v2

    .line 106
    array-length v3, v2

    .line 108
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    move-object v6, v1

    const/4 v1, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v1, v4, :cond_7

    .line 115
    :goto_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ge v8, v3, :cond_4

    .line 116
    aget v9, v2, v8

    if-eqz v9, :cond_4

    add-int/lit8 v8, v1, 0x1

    .line 129
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 130
    aget v9, v2, v1

    if-gez v9, :cond_1

    .line 131
    iget-object v9, p0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_quoteBuffer:[C

    invoke-direct {p0, v1, v9}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_appendNumericEscape(I[C)I

    move-result v1

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_quoteBuffer:[C

    invoke-direct {p0, v9, v1}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_appendNamedEscape(I[C)I

    move-result v1

    :goto_2
    add-int v9, v7, v1

    .line 135
    array-length v10, v6

    if-le v9, v10, :cond_3

    .line 136
    array-length v9, v6

    sub-int/2addr v9, v7

    if-lez v9, :cond_2

    .line 138
    iget-object v10, p0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_quoteBuffer:[C

    invoke-static {v10, v5, v6, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    :cond_2
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v6

    sub-int/2addr v1, v9

    .line 142
    iget-object v7, p0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_quoteBuffer:[C

    invoke-static {v7, v9, v6, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v7, v1

    goto :goto_3

    .line 145
    :cond_3
    iget-object v10, p0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_quoteBuffer:[C

    invoke-static {v10, v5, v6, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v7, v9

    :goto_3
    move v1, v8

    goto :goto_0

    .line 119
    :cond_4
    array-length v9, v6

    if-lt v7, v9, :cond_5

    .line 120
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v6

    const/4 v7, 0x0

    :cond_5
    add-int/lit8 v9, v7, 0x1

    .line 123
    aput-char v8, v6, v7

    add-int/lit8 v1, v1, 0x1

    if-lt v1, v4, :cond_6

    move v7, v9

    goto :goto_4

    :cond_6
    move v7, v9

    goto :goto_1

    .line 149
    :cond_7
    :goto_4
    invoke-virtual {v0, v7}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    .line 150
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsArray()[C

    move-result-object p1

    return-object p1
.end method

.method public quoteAsUTF8(Ljava/lang/String;)[B
    .locals 11

    .line 160
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_byteBuilder:Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 163
    new-instance v0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;-><init>(Lcom/fasterxml/jackson/core/util/BufferRecycler;)V

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_byteBuilder:Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    .line 166
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 168
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->resetAndGetFirstSegment()[B

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v3

    const/4 v3, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v3, v2, :cond_11

    .line 172
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->get7BitOutputEscapes()[I

    move-result-object v7

    .line 176
    :goto_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x7f

    if-gt v8, v9, :cond_4

    .line 177
    aget v10, v7, v8

    if-eqz v10, :cond_1

    goto :goto_2

    .line 180
    :cond_1
    array-length v9, v5

    if-lt v6, v9, :cond_2

    .line 181
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v5

    const/4 v6, 0x0

    :cond_2
    add-int/lit8 v9, v6, 0x1

    int-to-byte v8, v8

    .line 184
    aput-byte v8, v5, v6

    add-int/lit8 v3, v3, 0x1

    if-lt v3, v2, :cond_3

    move v6, v9

    goto/16 :goto_6

    :cond_3
    move v6, v9

    goto :goto_1

    .line 189
    :cond_4
    :goto_2
    array-length v8, v5

    if-lt v6, v8, :cond_5

    .line 190
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v5

    const/4 v6, 0x0

    :cond_5
    add-int/lit8 v8, v3, 0x1

    .line 194
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-gt v3, v9, :cond_6

    .line 196
    aget v5, v7, v3

    .line 198
    invoke-direct {p0, v3, v5, v0, v6}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_appendByteEscape(IILcom/fasterxml/jackson/core/util/ByteArrayBuilder;I)I

    move-result v6

    .line 199
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->getCurrentSegment()[B

    move-result-object v5

    :goto_3
    move v3, v8

    goto :goto_0

    :cond_6
    const/16 v7, 0x7ff

    if-gt v3, v7, :cond_7

    add-int/lit8 v7, v6, 0x1

    shr-int/lit8 v9, v3, 0x6

    or-int/lit16 v9, v9, 0xc0

    int-to-byte v9, v9

    .line 202
    aput-byte v9, v5, v6

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    move v6, v7

    goto/16 :goto_5

    :cond_7
    const v7, 0xd800

    if-lt v3, v7, :cond_e

    const v7, 0xdfff

    if-le v3, v7, :cond_8

    goto :goto_4

    :cond_8
    const v7, 0xdbff

    if-gt v3, v7, :cond_d

    if-ge v8, v2, :cond_c

    add-int/lit8 v7, v8, 0x1

    .line 222
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v3, v8}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_convertSurrogate(II)I

    move-result v3

    const v8, 0x10ffff

    if-gt v3, v8, :cond_b

    add-int/lit8 v8, v6, 0x1

    shr-int/lit8 v9, v3, 0x12

    or-int/lit16 v9, v9, 0xf0

    int-to-byte v9, v9

    .line 226
    aput-byte v9, v5, v6

    .line 227
    array-length v6, v5

    if-lt v8, v6, :cond_9

    .line 228
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v5

    const/4 v8, 0x0

    :cond_9
    add-int/lit8 v6, v8, 0x1

    shr-int/lit8 v9, v3, 0xc

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    .line 231
    aput-byte v9, v5, v8

    .line 232
    array-length v8, v5

    if-lt v6, v8, :cond_a

    .line 233
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v5

    const/4 v6, 0x0

    :cond_a
    add-int/lit8 v8, v6, 0x1

    shr-int/lit8 v9, v3, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    .line 236
    aput-byte v9, v5, v6

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    move v6, v8

    move v8, v7

    goto :goto_5

    .line 224
    :cond_b
    invoke-static {v3}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_illegalSurrogate(I)V

    throw v1

    .line 220
    :cond_c
    invoke-static {v3}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_illegalSurrogate(I)V

    throw v1

    .line 216
    :cond_d
    invoke-static {v3}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_illegalSurrogate(I)V

    throw v1

    :cond_e
    :goto_4
    add-int/lit8 v7, v6, 0x1

    shr-int/lit8 v9, v3, 0xc

    or-int/lit16 v9, v9, 0xe0

    int-to-byte v9, v9

    .line 207
    aput-byte v9, v5, v6

    .line 208
    array-length v6, v5

    if-lt v7, v6, :cond_f

    .line 209
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v5

    const/4 v7, 0x0

    :cond_f
    add-int/lit8 v6, v7, 0x1

    shr-int/lit8 v9, v3, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    .line 212
    aput-byte v9, v5, v7

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    .line 240
    :goto_5
    array-length v7, v5

    if-lt v6, v7, :cond_10

    .line 241
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v5

    const/4 v6, 0x0

    :cond_10
    add-int/lit8 v7, v6, 0x1

    int-to-byte v3, v3

    .line 244
    aput-byte v3, v5, v6

    move v6, v7

    goto/16 :goto_3

    .line 246
    :cond_11
    :goto_6
    iget-object p1, p0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_byteBuilder:Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    invoke-virtual {p1, v6}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->completeAndCoalesce(I)[B

    move-result-object p1

    return-object p1
.end method
