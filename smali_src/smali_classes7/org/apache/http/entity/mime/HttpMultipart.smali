.class public Lorg/apache/http/entity/mime/HttpMultipart;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CR_LF:Lorg/apache/http/util/ByteArrayBuffer;

.field private static final FIELD_SEP:Lorg/apache/http/util/ByteArrayBuffer;

.field private static final TWO_DASHES:Lorg/apache/http/util/ByteArrayBuffer;


# instance fields
.field private final boundary:Ljava/lang/String;

.field private final charset:Ljava/nio/charset/Charset;

.field private final mode:Lorg/apache/http/entity/mime/HttpMultipartMode;

.field private final parts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/http/entity/mime/FormBodyPart;",
            ">;"
        }
    .end annotation
.end field

.field private final subType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lorg/apache/http/entity/mime/MIME;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    .line 3
    .line 4
    const-string v1, ": "

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lorg/apache/http/entity/mime/HttpMultipart;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    sput-object v1, Lorg/apache/http/entity/mime/HttpMultipart;->FIELD_SEP:Lorg/apache/http/util/ByteArrayBuffer;

    .line 11
    .line 12
    const-string v1, "\r\n"

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Lorg/apache/http/entity/mime/HttpMultipart;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    sput-object v1, Lorg/apache/http/entity/mime/HttpMultipart;->CR_LF:Lorg/apache/http/util/ByteArrayBuffer;

    .line 19
    .line 20
    const-string v1, "--"

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1}, Lorg/apache/http/entity/mime/HttpMultipart;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    sput-object v0, Lorg/apache/http/entity/mime/HttpMultipart;->TWO_DASHES:Lorg/apache/http/util/ByteArrayBuffer;

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, p1, v0, p2}, Lorg/apache/http/entity/mime/HttpMultipart;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;)V
    .locals 1

    .line 6
    sget-object v0, Lorg/apache/http/entity/mime/HttpMultipartMode;->STRICT:Lorg/apache/http/entity/mime/HttpMultipartMode;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/http/entity/mime/HttpMultipart;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;Lorg/apache/http/entity/mime/HttpMultipartMode;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;Lorg/apache/http/entity/mime/HttpMultipartMode;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p3, :cond_1

    iput-object p1, p0, Lorg/apache/http/entity/mime/HttpMultipart;->subType:Ljava/lang/String;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object p2, Lorg/apache/http/entity/mime/MIME;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    :goto_0
    iput-object p2, p0, Lorg/apache/http/entity/mime/HttpMultipart;->charset:Ljava/nio/charset/Charset;

    iput-object p3, p0, Lorg/apache/http/entity/mime/HttpMultipart;->boundary:Ljava/lang/String;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/http/entity/mime/HttpMultipart;->parts:Ljava/util/List;

    iput-object p4, p0, Lorg/apache/http/entity/mime/HttpMultipart;->mode:Lorg/apache/http/entity/mime/HttpMultipartMode;

    return-void

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Multipart boundary may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Multipart subtype may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private doWriteTo(Lorg/apache/http/entity/mime/HttpMultipartMode;Ljava/io/OutputStream;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/http/entity/mime/HttpMultipart;->charset:Ljava/nio/charset/Charset;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/apache/http/entity/mime/HttpMultipart;->getBoundary()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Lorg/apache/http/entity/mime/HttpMultipart;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iget-object v1, p0, Lorg/apache/http/entity/mime/HttpMultipart;->parts:Ljava/util/List;

    .line 13
    .line 14
    .line 15
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v2

    .line 21
    .line 22
    if-eqz v2, :cond_4

    .line 23
    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    check-cast v2, Lorg/apache/http/entity/mime/FormBodyPart;

    .line 29
    .line 30
    sget-object v3, Lorg/apache/http/entity/mime/HttpMultipart;->TWO_DASHES:Lorg/apache/http/util/ByteArrayBuffer;

    .line 31
    .line 32
    .line 33
    invoke-static {v3, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 34
    .line 35
    .line 36
    invoke-static {v0, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 37
    .line 38
    sget-object v3, Lorg/apache/http/entity/mime/HttpMultipart;->CR_LF:Lorg/apache/http/util/ByteArrayBuffer;

    .line 39
    .line 40
    .line 41
    invoke-static {v3, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Lorg/apache/http/entity/mime/FormBodyPart;->getHeader()Lorg/apache/http/entity/mime/Header;

    .line 45
    move-result-object v3

    .line 46
    .line 47
    sget-object v4, Lorg/apache/http/entity/mime/HttpMultipart$1;->$SwitchMap$org$apache$http$entity$mime$HttpMultipartMode:[I

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 51
    move-result v5

    .line 52
    .line 53
    aget v4, v4, v5

    .line 54
    const/4 v5, 0x1

    .line 55
    .line 56
    if-eq v4, v5, :cond_1

    .line 57
    const/4 v3, 0x2

    .line 58
    .line 59
    if-eq v4, v3, :cond_0

    .line 60
    goto :goto_2

    .line 61
    .line 62
    .line 63
    :cond_0
    invoke-virtual {v2}, Lorg/apache/http/entity/mime/FormBodyPart;->getHeader()Lorg/apache/http/entity/mime/Header;

    .line 64
    move-result-object v3

    .line 65
    .line 66
    const-string v4, "Content-Disposition"

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3, v4}, Lorg/apache/http/entity/mime/Header;->getField(Ljava/lang/String;)Lorg/apache/http/entity/mime/MinimalField;

    .line 70
    move-result-object v3

    .line 71
    .line 72
    iget-object v4, p0, Lorg/apache/http/entity/mime/HttpMultipart;->charset:Ljava/nio/charset/Charset;

    .line 73
    .line 74
    .line 75
    invoke-static {v3, v4, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->writeField(Lorg/apache/http/entity/mime/MinimalField;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2}, Lorg/apache/http/entity/mime/FormBodyPart;->getBody()Lorg/apache/http/entity/mime/content/ContentBody;

    .line 79
    move-result-object v3

    .line 80
    .line 81
    .line 82
    invoke-interface {v3}, Lorg/apache/http/entity/mime/content/ContentBody;->getFilename()Ljava/lang/String;

    .line 83
    move-result-object v3

    .line 84
    .line 85
    if-eqz v3, :cond_2

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2}, Lorg/apache/http/entity/mime/FormBodyPart;->getHeader()Lorg/apache/http/entity/mime/Header;

    .line 89
    move-result-object v3

    .line 90
    .line 91
    const-string v4, "Content-Type"

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3, v4}, Lorg/apache/http/entity/mime/Header;->getField(Ljava/lang/String;)Lorg/apache/http/entity/mime/MinimalField;

    .line 95
    move-result-object v3

    .line 96
    .line 97
    iget-object v4, p0, Lorg/apache/http/entity/mime/HttpMultipart;->charset:Ljava/nio/charset/Charset;

    .line 98
    .line 99
    .line 100
    invoke-static {v3, v4, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->writeField(Lorg/apache/http/entity/mime/MinimalField;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V

    .line 101
    goto :goto_2

    .line 102
    .line 103
    .line 104
    :cond_1
    invoke-virtual {v3}, Lorg/apache/http/entity/mime/Header;->iterator()Ljava/util/Iterator;

    .line 105
    move-result-object v3

    .line 106
    .line 107
    .line 108
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 109
    move-result v4

    .line 110
    .line 111
    if-eqz v4, :cond_2

    .line 112
    .line 113
    .line 114
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 115
    move-result-object v4

    .line 116
    .line 117
    check-cast v4, Lorg/apache/http/entity/mime/MinimalField;

    .line 118
    .line 119
    .line 120
    invoke-static {v4, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->writeField(Lorg/apache/http/entity/mime/MinimalField;Ljava/io/OutputStream;)V

    .line 121
    goto :goto_1

    .line 122
    .line 123
    :cond_2
    :goto_2
    sget-object v3, Lorg/apache/http/entity/mime/HttpMultipart;->CR_LF:Lorg/apache/http/util/ByteArrayBuffer;

    .line 124
    .line 125
    .line 126
    invoke-static {v3, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 127
    .line 128
    if-eqz p3, :cond_3

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2}, Lorg/apache/http/entity/mime/FormBodyPart;->getBody()Lorg/apache/http/entity/mime/content/ContentBody;

    .line 132
    move-result-object v2

    .line 133
    .line 134
    .line 135
    invoke-interface {v2, p2}, Lorg/apache/http/entity/mime/content/ContentBody;->writeTo(Ljava/io/OutputStream;)V

    .line 136
    .line 137
    .line 138
    :cond_3
    invoke-static {v3, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 139
    goto :goto_0

    .line 140
    .line 141
    :cond_4
    sget-object p1, Lorg/apache/http/entity/mime/HttpMultipart;->TWO_DASHES:Lorg/apache/http/util/ByteArrayBuffer;

    .line 142
    .line 143
    .line 144
    invoke-static {p1, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 145
    .line 146
    .line 147
    invoke-static {v0, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 148
    .line 149
    .line 150
    invoke-static {p1, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 151
    .line 152
    sget-object p1, Lorg/apache/http/entity/mime/HttpMultipart;->CR_LF:Lorg/apache/http/util/ByteArrayBuffer;

    .line 153
    .line 154
    .line 155
    invoke-static {p1, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 156
    return-void
.end method

.method private static encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    .line 8
    move-result-object p0

    .line 9
    .line 10
    new-instance p1, Lorg/apache/http/util/ByteArrayBuffer;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    .line 14
    move-result v0

    .line 15
    .line 16
    .line 17
    invoke-direct {p1, v0}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 25
    move-result v1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    .line 29
    move-result p0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0, v1, p0}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    .line 33
    return-object p1
.end method

.method private static writeBytes(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    sget-object v0, Lorg/apache/http/entity/mime/MIME;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-static {v0, p0}, Lorg/apache/http/entity/mime/HttpMultipart;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object p0

    .line 5
    invoke-static {p0, p1}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    return-void
.end method

.method private static writeBytes(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-static {p1, p0}, Lorg/apache/http/entity/mime/HttpMultipart;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object p0

    .line 3
    invoke-static {p0, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    return-void
.end method

.method private static writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/http/util/ByteArrayBuffer;->buffer()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result p0

    invoke-virtual {p1, v0, v1, p0}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method private static writeField(Lorg/apache/http/entity/mime/MinimalField;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/http/entity/mime/MinimalField;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Ljava/lang/String;Ljava/io/OutputStream;)V

    sget-object v0, Lorg/apache/http/entity/mime/HttpMultipart;->FIELD_SEP:Lorg/apache/http/util/ByteArrayBuffer;

    .line 2
    invoke-static {v0, p1}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 3
    invoke-virtual {p0}, Lorg/apache/http/entity/mime/MinimalField;->getBody()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Ljava/lang/String;Ljava/io/OutputStream;)V

    sget-object p0, Lorg/apache/http/entity/mime/HttpMultipart;->CR_LF:Lorg/apache/http/util/ByteArrayBuffer;

    .line 4
    invoke-static {p0, p1}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    return-void
.end method

.method private static writeField(Lorg/apache/http/entity/mime/MinimalField;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lorg/apache/http/entity/mime/MinimalField;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V

    sget-object v0, Lorg/apache/http/entity/mime/HttpMultipart;->FIELD_SEP:Lorg/apache/http/util/ByteArrayBuffer;

    .line 6
    invoke-static {v0, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 7
    invoke-virtual {p0}, Lorg/apache/http/entity/mime/MinimalField;->getBody()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V

    sget-object p0, Lorg/apache/http/entity/mime/HttpMultipart;->CR_LF:Lorg/apache/http/util/ByteArrayBuffer;

    .line 8
    invoke-static {p0, p2}, Lorg/apache/http/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public addBodyPart(Lorg/apache/http/entity/mime/FormBodyPart;)V
    .locals 1

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lorg/apache/http/entity/mime/HttpMultipart;->parts:Ljava/util/List;

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    return-void
.end method

.method public getBodyParts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/http/entity/mime/FormBodyPart;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/http/entity/mime/HttpMultipart;->parts:Ljava/util/List;

    return-object v0
.end method

.method public getBoundary()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/entity/mime/HttpMultipart;->boundary:Ljava/lang/String;

    return-object v0
.end method

.method public getCharset()Ljava/nio/charset/Charset;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/entity/mime/HttpMultipart;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public getMode()Lorg/apache/http/entity/mime/HttpMultipartMode;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/entity/mime/HttpMultipart;->mode:Lorg/apache/http/entity/mime/HttpMultipartMode;

    return-object v0
.end method

.method public getSubType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/entity/mime/HttpMultipart;->subType:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalLength()J
    .locals 10

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/http/entity/mime/HttpMultipart;->parts:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-wide/16 v1, 0x0

    .line 9
    move-wide v3, v1

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v5

    .line 14
    .line 15
    const-wide/16 v6, -0x1

    .line 16
    .line 17
    if-eqz v5, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v5

    .line 22
    .line 23
    check-cast v5, Lorg/apache/http/entity/mime/FormBodyPart;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v5}, Lorg/apache/http/entity/mime/FormBodyPart;->getBody()Lorg/apache/http/entity/mime/content/ContentBody;

    .line 27
    move-result-object v5

    .line 28
    .line 29
    .line 30
    invoke-interface {v5}, Lorg/apache/http/entity/mime/content/ContentDescriptor;->getContentLength()J

    .line 31
    move-result-wide v8

    .line 32
    .line 33
    cmp-long v5, v8, v1

    .line 34
    .line 35
    if-ltz v5, :cond_0

    .line 36
    add-long/2addr v3, v8

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return-wide v6

    .line 39
    .line 40
    :cond_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 41
    .line 42
    .line 43
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 44
    .line 45
    :try_start_0
    iget-object v1, p0, Lorg/apache/http/entity/mime/HttpMultipart;->mode:Lorg/apache/http/entity/mime/HttpMultipartMode;

    .line 46
    const/4 v2, 0x0

    .line 47
    .line 48
    .line 49
    invoke-direct {p0, v1, v0, v2}, Lorg/apache/http/entity/mime/HttpMultipart;->doWriteTo(Lorg/apache/http/entity/mime/HttpMultipartMode;Ljava/io/OutputStream;Z)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 53
    move-result-object v0

    .line 54
    array-length v0, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    int-to-long v0, v0

    .line 56
    add-long/2addr v3, v0

    .line 57
    return-wide v3

    .line 58
    :catch_0
    return-wide v6
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/http/entity/mime/HttpMultipart;->mode:Lorg/apache/http/entity/mime/HttpMultipartMode;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0, p1, v1}, Lorg/apache/http/entity/mime/HttpMultipart;->doWriteTo(Lorg/apache/http/entity/mime/HttpMultipartMode;Ljava/io/OutputStream;Z)V

    .line 7
    return-void
.end method
