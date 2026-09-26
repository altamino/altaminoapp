.class public final Lorg/jsoup/helper/DataUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/helper/DataUtil$BomCharset;
    }
.end annotation


# static fields
.field static final boundaryLength:I = 0x20

.field static final bufferSize:I = 0x8000

.field private static final charsetPattern:Ljava/util/regex/Pattern;

.field static final defaultCharset:Ljava/lang/String; = "UTF-8"

.field private static final firstReadBufferSize:I = 0x1400

.field private static final mimeBoundaryChars:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    const-string v0, "(?i)\\bcharset=\\s*(?:[\"\'])?([^\\s,;\"\']*)"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sput-object v0, Lorg/jsoup/helper/DataUtil;->charsetPattern:Ljava/util/regex/Pattern;

    .line 9
    .line 10
    const-string v0, "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    .line 14
    move-result-object v0

    .line 15
    .line 16
    sput-object v0, Lorg/jsoup/helper/DataUtil;->mimeBoundaryChars:[C

    .line 17
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method static crossStreams(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    const v0, 0x8000

    .line 4
    .line 5
    new-array v0, v0, [B

    .line 6
    .line 7
    .line 8
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    .line 9
    move-result v1

    .line 10
    const/4 v2, -0x1

    .line 11
    .line 12
    if-eq v1, v2, :cond_0

    .line 13
    const/4 v2, 0x0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    return-void
.end method

.method private static detectCharsetFromBom(Ljava/nio/ByteBuffer;)Lorg/jsoup/helper/DataUtil$BomCharset;
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/nio/Buffer;->mark()Ljava/nio/Buffer;

    .line 4
    const/4 v0, 0x4

    .line 5
    .line 6
    new-array v1, v0, [B

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    .line 10
    move-result v2

    .line 11
    .line 12
    if-lt v2, v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    .line 21
    aget-byte v0, v1, p0

    .line 22
    const/4 v2, 0x3

    .line 23
    const/4 v3, 0x2

    .line 24
    const/4 v4, -0x1

    .line 25
    const/4 v5, -0x2

    .line 26
    const/4 v6, 0x1

    .line 27
    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    aget-byte v7, v1, v6

    .line 31
    .line 32
    if-nez v7, :cond_1

    .line 33
    .line 34
    aget-byte v7, v1, v3

    .line 35
    .line 36
    if-ne v7, v5, :cond_1

    .line 37
    .line 38
    aget-byte v7, v1, v2

    .line 39
    .line 40
    if-eq v7, v4, :cond_2

    .line 41
    .line 42
    :cond_1
    if-ne v0, v4, :cond_3

    .line 43
    .line 44
    aget-byte v7, v1, v6

    .line 45
    .line 46
    if-ne v7, v5, :cond_3

    .line 47
    .line 48
    aget-byte v7, v1, v3

    .line 49
    .line 50
    if-nez v7, :cond_3

    .line 51
    .line 52
    aget-byte v2, v1, v2

    .line 53
    .line 54
    if-nez v2, :cond_3

    .line 55
    .line 56
    :cond_2
    new-instance v0, Lorg/jsoup/helper/DataUtil$BomCharset;

    .line 57
    .line 58
    const-string v1, "UTF-32"

    .line 59
    .line 60
    .line 61
    invoke-direct {v0, v1, p0}, Lorg/jsoup/helper/DataUtil$BomCharset;-><init>(Ljava/lang/String;Z)V

    .line 62
    return-object v0

    .line 63
    .line 64
    :cond_3
    if-ne v0, v5, :cond_4

    .line 65
    .line 66
    aget-byte v2, v1, v6

    .line 67
    .line 68
    if-eq v2, v4, :cond_5

    .line 69
    .line 70
    :cond_4
    if-ne v0, v4, :cond_6

    .line 71
    .line 72
    aget-byte v2, v1, v6

    .line 73
    .line 74
    if-ne v2, v5, :cond_6

    .line 75
    .line 76
    :cond_5
    new-instance v0, Lorg/jsoup/helper/DataUtil$BomCharset;

    .line 77
    .line 78
    const-string v1, "UTF-16"

    .line 79
    .line 80
    .line 81
    invoke-direct {v0, v1, p0}, Lorg/jsoup/helper/DataUtil$BomCharset;-><init>(Ljava/lang/String;Z)V

    .line 82
    return-object v0

    .line 83
    .line 84
    :cond_6
    const/16 p0, -0x11

    .line 85
    .line 86
    if-ne v0, p0, :cond_7

    .line 87
    .line 88
    aget-byte p0, v1, v6

    .line 89
    .line 90
    const/16 v0, -0x45

    .line 91
    .line 92
    if-ne p0, v0, :cond_7

    .line 93
    .line 94
    aget-byte p0, v1, v3

    .line 95
    .line 96
    const/16 v0, -0x41

    .line 97
    .line 98
    if-ne p0, v0, :cond_7

    .line 99
    .line 100
    new-instance p0, Lorg/jsoup/helper/DataUtil$BomCharset;

    .line 101
    .line 102
    const-string v0, "UTF-8"

    .line 103
    .line 104
    .line 105
    invoke-direct {p0, v0, v6}, Lorg/jsoup/helper/DataUtil$BomCharset;-><init>(Ljava/lang/String;Z)V

    .line 106
    return-object p0

    .line 107
    :cond_7
    const/4 p0, 0x0

    .line 108
    return-object p0
.end method

.method static emptyByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 5
    move-result-object v0

    .line 6
    return-object v0
.end method

.method static getCharsetFromContentType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    return-object v0

    .line 5
    .line 6
    :cond_0
    sget-object v1, Lorg/jsoup/helper/DataUtil;->charsetPattern:Ljava/util/regex/Pattern;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 10
    move-result-object p0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    const/4 v0, 0x1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 26
    .line 27
    const-string v0, "charset="

    .line 28
    .line 29
    const-string v1, ""

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 34
    .line 35
    .line 36
    invoke-static {p0}, Lorg/jsoup/helper/DataUtil;->validateCharset(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    move-result-object p0

    .line 38
    return-object p0

    .line 39
    :cond_1
    return-object v0
.end method

.method public static load(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {}, Lorg/jsoup/parser/Parser;->htmlParser()Lorg/jsoup/parser/Parser;

    move-result-object p0

    invoke-static {v0, p1, p2, p0}, Lorg/jsoup/helper/DataUtil;->parseInputStream(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;

    move-result-object p0

    return-object p0
.end method

.method public static load(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-static {}, Lorg/jsoup/parser/Parser;->htmlParser()Lorg/jsoup/parser/Parser;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lorg/jsoup/helper/DataUtil;->parseInputStream(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;

    move-result-object p0

    return-object p0
.end method

.method public static load(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-static {p0, p1, p2, p3}, Lorg/jsoup/helper/DataUtil;->parseInputStream(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;

    move-result-object p0

    return-object p0
.end method

.method static mimeBoundary()Ljava/lang/String;
    .locals 6

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    const/16 v1, 0x20

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 8
    .line 9
    new-instance v2, Ljava/util/Random;

    .line 10
    .line 11
    .line 12
    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 13
    const/4 v3, 0x0

    .line 14
    .line 15
    :goto_0
    if-ge v3, v1, :cond_0

    .line 16
    .line 17
    sget-object v4, Lorg/jsoup/helper/DataUtil;->mimeBoundaryChars:[C

    .line 18
    array-length v5, v4

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    .line 22
    move-result v5

    .line 23
    .line 24
    aget-char v4, v4, v5

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    add-int/lit8 v3, v3, 0x1

    .line 30
    goto :goto_0

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method

.method static parseInputStream(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    new-instance p0, Lorg/jsoup/nodes/Document;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p2}, Lorg/jsoup/nodes/Document;-><init>(Ljava/lang/String;)V

    .line 8
    return-object p0

    .line 9
    .line 10
    .line 11
    :cond_0
    const v0, 0x8000

    .line 12
    const/4 v1, 0x0

    .line 13
    .line 14
    .line 15
    invoke-static {p0, v0, v1}, Lorg/jsoup/internal/ConstrainableInputStream;->wrap(Ljava/io/InputStream;II)Lorg/jsoup/internal/ConstrainableInputStream;

    .line 16
    move-result-object p0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->mark(I)V

    .line 20
    .line 21
    const/16 v2, 0x13ff

    .line 22
    .line 23
    .line 24
    invoke-static {p0, v2}, Lorg/jsoup/helper/DataUtil;->readToByteBuffer(Ljava/io/InputStream;I)Ljava/nio/ByteBuffer;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 29
    move-result v3

    .line 30
    const/4 v4, -0x1

    .line 31
    .line 32
    if-ne v3, v4, :cond_1

    .line 33
    const/4 v3, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    move v3, v1

    .line 36
    .line 37
    .line 38
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 39
    .line 40
    .line 41
    invoke-static {v2}, Lorg/jsoup/helper/DataUtil;->detectCharsetFromBom(Ljava/nio/ByteBuffer;)Lorg/jsoup/helper/DataUtil$BomCharset;

    .line 42
    move-result-object v4

    .line 43
    .line 44
    if-eqz v4, :cond_2

    .line 45
    .line 46
    .line 47
    invoke-static {v4}, Lorg/jsoup/helper/DataUtil$BomCharset;->access$000(Lorg/jsoup/helper/DataUtil$BomCharset;)Ljava/lang/String;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    :cond_2
    const-string v5, "UTF-8"

    .line 51
    const/4 v6, 0x0

    .line 52
    .line 53
    if-nez p1, :cond_a

    .line 54
    .line 55
    .line 56
    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 57
    move-result-object v7

    .line 58
    .line 59
    .line 60
    invoke-virtual {v7, v2}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    .line 61
    move-result-object v2

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    .line 65
    move-result-object v2

    .line 66
    .line 67
    .line 68
    invoke-virtual {p3, v2, p2}, Lorg/jsoup/parser/Parser;->parseInput(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    .line 69
    move-result-object v2

    .line 70
    .line 71
    const-string v7, "meta[http-equiv=content-type], meta[charset]"

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, v7}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 75
    move-result-object v7

    .line 76
    .line 77
    .line 78
    invoke-virtual {v7}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 79
    move-result-object v7

    .line 80
    move-object v8, v6

    .line 81
    .line 82
    .line 83
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    move-result v9

    .line 85
    .line 86
    if-eqz v9, :cond_6

    .line 87
    .line 88
    .line 89
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    move-result-object v9

    .line 91
    .line 92
    check-cast v9, Lorg/jsoup/nodes/Element;

    .line 93
    .line 94
    const-string v10, "http-equiv"

    .line 95
    .line 96
    .line 97
    invoke-virtual {v9, v10}, Lorg/jsoup/nodes/Node;->hasAttr(Ljava/lang/String;)Z

    .line 98
    move-result v10

    .line 99
    .line 100
    if-eqz v10, :cond_4

    .line 101
    .line 102
    const-string v8, "content"

    .line 103
    .line 104
    .line 105
    invoke-virtual {v9, v8}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 106
    move-result-object v8

    .line 107
    .line 108
    .line 109
    invoke-static {v8}, Lorg/jsoup/helper/DataUtil;->getCharsetFromContentType(Ljava/lang/String;)Ljava/lang/String;

    .line 110
    move-result-object v8

    .line 111
    .line 112
    :cond_4
    if-nez v8, :cond_5

    .line 113
    .line 114
    const-string v10, "charset"

    .line 115
    .line 116
    .line 117
    invoke-virtual {v9, v10}, Lorg/jsoup/nodes/Node;->hasAttr(Ljava/lang/String;)Z

    .line 118
    move-result v11

    .line 119
    .line 120
    if-eqz v11, :cond_5

    .line 121
    .line 122
    .line 123
    invoke-virtual {v9, v10}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 124
    move-result-object v8

    .line 125
    .line 126
    :cond_5
    if-eqz v8, :cond_3

    .line 127
    .line 128
    :cond_6
    if-nez v8, :cond_7

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->childNodeSize()I

    .line 132
    move-result v7

    .line 133
    .line 134
    if-lez v7, :cond_7

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2, v1}, Lorg/jsoup/nodes/Node;->childNode(I)Lorg/jsoup/nodes/Node;

    .line 138
    move-result-object v7

    .line 139
    .line 140
    instance-of v7, v7, Lorg/jsoup/nodes/XmlDeclaration;

    .line 141
    .line 142
    if-eqz v7, :cond_7

    .line 143
    .line 144
    .line 145
    invoke-virtual {v2, v1}, Lorg/jsoup/nodes/Node;->childNode(I)Lorg/jsoup/nodes/Node;

    .line 146
    move-result-object v1

    .line 147
    .line 148
    check-cast v1, Lorg/jsoup/nodes/XmlDeclaration;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1}, Lorg/jsoup/nodes/XmlDeclaration;->name()Ljava/lang/String;

    .line 152
    move-result-object v7

    .line 153
    .line 154
    const-string v9, "xml"

    .line 155
    .line 156
    .line 157
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    move-result v7

    .line 159
    .line 160
    if-eqz v7, :cond_7

    .line 161
    .line 162
    const-string v7, "encoding"

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1, v7}, Lorg/jsoup/nodes/XmlDeclaration;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 166
    move-result-object v8

    .line 167
    .line 168
    .line 169
    :cond_7
    invoke-static {v8}, Lorg/jsoup/helper/DataUtil;->validateCharset(Ljava/lang/String;)Ljava/lang/String;

    .line 170
    move-result-object v1

    .line 171
    .line 172
    if-eqz v1, :cond_8

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 176
    move-result v7

    .line 177
    .line 178
    if-nez v7, :cond_8

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 182
    move-result-object p1

    .line 183
    .line 184
    const-string v1, "[\"\']"

    .line 185
    .line 186
    const-string v2, ""

    .line 187
    .line 188
    .line 189
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 190
    move-result-object p1

    .line 191
    goto :goto_1

    .line 192
    .line 193
    :cond_8
    if-nez v3, :cond_9

    .line 194
    goto :goto_1

    .line 195
    :cond_9
    move-object v6, v2

    .line 196
    goto :goto_1

    .line 197
    .line 198
    :cond_a
    const-string v1, "Must set charset arg to character set of file to parse. Set to null to attempt to detect from HTML"

    .line 199
    .line 200
    .line 201
    invoke-static {p1, v1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .line 203
    :goto_1
    if-nez v6, :cond_d

    .line 204
    .line 205
    if-nez p1, :cond_b

    .line 206
    goto :goto_2

    .line 207
    :cond_b
    move-object v5, p1

    .line 208
    .line 209
    :goto_2
    new-instance p1, Ljava/io/BufferedReader;

    .line 210
    .line 211
    new-instance v1, Ljava/io/InputStreamReader;

    .line 212
    .line 213
    .line 214
    invoke-direct {v1, p0, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    invoke-direct {p1, v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 218
    .line 219
    if-eqz v4, :cond_c

    .line 220
    .line 221
    .line 222
    invoke-static {v4}, Lorg/jsoup/helper/DataUtil$BomCharset;->access$100(Lorg/jsoup/helper/DataUtil$BomCharset;)Z

    .line 223
    move-result v0

    .line 224
    .line 225
    if-eqz v0, :cond_c

    .line 226
    .line 227
    const-wide/16 v0, 0x1

    .line 228
    .line 229
    .line 230
    invoke-virtual {p1, v0, v1}, Ljava/io/BufferedReader;->skip(J)J

    .line 231
    .line 232
    .line 233
    :cond_c
    :try_start_0
    invoke-virtual {p3, p1, p2}, Lorg/jsoup/parser/Parser;->parseInput(Ljava/io/Reader;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    .line 234
    move-result-object v6
    :try_end_0
    .catch Lorg/jsoup/UncheckedIOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    .line 236
    .line 237
    invoke-virtual {v6}, Lorg/jsoup/nodes/Document;->outputSettings()Lorg/jsoup/nodes/Document$OutputSettings;

    .line 238
    move-result-object p1

    .line 239
    .line 240
    .line 241
    invoke-virtual {p1, v5}, Lorg/jsoup/nodes/Document$OutputSettings;->charset(Ljava/lang/String;)Lorg/jsoup/nodes/Document$OutputSettings;

    .line 242
    goto :goto_3

    .line 243
    :catch_0
    move-exception p0

    .line 244
    .line 245
    .line 246
    invoke-virtual {p0}, Lorg/jsoup/UncheckedIOException;->ioException()Ljava/io/IOException;

    .line 247
    move-result-object p0

    .line 248
    throw p0

    .line 249
    .line 250
    .line 251
    :cond_d
    :goto_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 252
    return-object v6
.end method

.method static readFileToByteBuffer(Ljava/io/File;)Ljava/nio/ByteBuffer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    .line 4
    .line 5
    const-string v2, "r"

    .line 6
    .line 7
    .line 8
    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    .line 10
    .line 11
    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    .line 12
    move-result-wide v2

    .line 13
    long-to-int p0, v2

    .line 14
    .line 15
    new-array p0, p0, [B

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 19
    .line 20
    .line 21
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 22
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 26
    return-object p0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    move-object v0, v1

    .line 29
    goto :goto_0

    .line 30
    :catchall_1
    move-exception p0

    .line 31
    .line 32
    :goto_0
    if-eqz v0, :cond_0

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 36
    :cond_0
    throw p0
.end method

.method static readToByteBuffer(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 4
    invoke-static {p0, v0}, Lorg/jsoup/helper/DataUtil;->readToByteBuffer(Ljava/io/InputStream;I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static readToByteBuffer(Ljava/io/InputStream;I)Ljava/nio/ByteBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "maxSize must be 0 (unlimited) or larger"

    .line 1
    invoke-static {v0, v1}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    const v0, 0x8000

    .line 2
    invoke-static {p0, v0, p1}, Lorg/jsoup/internal/ConstrainableInputStream;->wrap(Ljava/io/InputStream;II)Lorg/jsoup/internal/ConstrainableInputStream;

    move-result-object p0

    .line 3
    invoke-virtual {p0, p1}, Lorg/jsoup/internal/ConstrainableInputStream;->readToByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method private static validateCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p0, :cond_2

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 7
    move-result v1

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 15
    .line 16
    const-string v1, "[\"\']"

    .line 17
    .line 18
    const-string v2, ""

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object p0

    .line 23
    .line 24
    .line 25
    :try_start_0
    invoke-static {p0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    .line 26
    move-result v1

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    return-object p0

    .line 30
    .line 31
    :cond_1
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 35
    move-result-object p0

    .line 36
    .line 37
    .line 38
    invoke-static {p0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    .line 39
    move-result v1
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    if-eqz v1, :cond_2

    .line 42
    return-object p0

    .line 43
    :catch_0
    :cond_2
    :goto_0
    return-object v0
.end method
