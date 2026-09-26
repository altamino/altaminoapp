.class public Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/video/EmbedHttpServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResponseOutputStream"
.end annotation


# static fields
.field private static final CRLF:[B


# instance fields
.field private lv:I

.field private os:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->CRLF:[B

    return-void

    nop

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->os:Ljava/io/OutputStream;

    .line 6
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->lv:I

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    const/16 v0, 0x194

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->setStatusCode(I)V

    .line 11
    .line 12
    :cond_0
    iget v0, p0, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->lv:I

    .line 13
    const/4 v1, 0x2

    .line 14
    .line 15
    if-ge v0, v1, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->os:Ljava/io/OutputStream;

    .line 18
    .line 19
    sget-object v2, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->CRLF:[B

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 23
    .line 24
    iput v1, p0, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->lv:I

    .line 25
    .line 26
    :cond_1
    iget v0, p0, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->lv:I

    .line 27
    const/4 v1, 0x3

    .line 28
    .line 29
    if-ge v0, v1, :cond_2

    .line 30
    .line 31
    iget-object v0, p0, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->os:Ljava/io/OutputStream;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 35
    .line 36
    iput v1, p0, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->lv:I

    .line 37
    :cond_2
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->os:Ljava/io/OutputStream;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 6
    return-void
.end method

.method public setContentEncoding(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "Content-Encoding"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public setContentLength(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "Content-Length"

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0, p1}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "Content-Type"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public setContentTypeBinary()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "application/octet-stream"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->setContentType(Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public setContentTypeHtml()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "text/html"

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->setContentType(Ljava/lang/String;)V

    .line 7
    return-void
.end method

.method public setContentTypeHtmlUtf8()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "text/html; charset=utf-8"

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->setContentType(Ljava/lang/String;)V

    .line 7
    return-void
.end method

.method public setContentTypeJpeg()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "image/jpeg"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->setContentType(Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public setContentTypeJson()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "application/json"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->setContentType(Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public setContentTypePng()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "image/png"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->setContentType(Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public setContentTypeText()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "text/plain"

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->setContentType(Ljava/lang/String;)V

    .line 7
    return-void
.end method

.method public setContentTypeTextUtf8()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "text/plain; charset=utf-8"

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->setContentType(Ljava/lang/String;)V

    .line 7
    return-void
.end method

.method public setContentTypeXml()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "text/xml"

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->setContentType(Ljava/lang/String;)V

    .line 7
    return-void
.end method

.method public setContentTypeZip()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "application/zip"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->setContentType(Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->lv:I

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    const/16 v0, 0xc8

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->setStatusCode(I)V

    .line 11
    .line 12
    :cond_0
    iget v0, p0, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->lv:I

    .line 13
    .line 14
    if-ne v0, v1, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->os:Ljava/io/OutputStream;

    .line 17
    .line 18
    const-string v1, "ASCII"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 26
    .line 27
    iget-object p1, p0, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->os:Ljava/io/OutputStream;

    .line 28
    .line 29
    const/16 v0, 0x3a

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 33
    .line 34
    iget-object p1, p0, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->os:Ljava/io/OutputStream;

    .line 35
    .line 36
    const/16 v0, 0x20

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 40
    .line 41
    iget-object p1, p0, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->os:Ljava/io/OutputStream;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 45
    move-result-object p2

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 49
    .line 50
    iget-object p1, p0, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->os:Ljava/io/OutputStream;

    .line 51
    .line 52
    sget-object p2, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->CRLF:[B

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 56
    return-void

    .line 57
    .line 58
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 59
    .line 60
    const-string p2, "headers is already set"

    .line 61
    .line 62
    .line 63
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 64
    throw p1
.end method

.method public setStatusCode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    const/16 v0, 0xce

    .line 3
    .line 4
    if-eq p1, v0, :cond_6

    .line 5
    .line 6
    const/16 v0, 0x12d

    .line 7
    .line 8
    if-eq p1, v0, :cond_5

    .line 9
    .line 10
    const/16 v0, 0x130

    .line 11
    .line 12
    if-eq p1, v0, :cond_4

    .line 13
    .line 14
    const/16 v0, 0x190

    .line 15
    .line 16
    if-eq p1, v0, :cond_3

    .line 17
    .line 18
    const/16 v0, 0x191

    .line 19
    .line 20
    if-eq p1, v0, :cond_2

    .line 21
    .line 22
    const/16 v0, 0x1f4

    .line 23
    .line 24
    if-eq p1, v0, :cond_1

    .line 25
    .line 26
    const/16 v0, 0x1f5

    .line 27
    .line 28
    if-eq p1, v0, :cond_0

    .line 29
    .line 30
    .line 31
    packed-switch p1, :pswitch_data_0

    .line 32
    .line 33
    .line 34
    packed-switch p1, :pswitch_data_1

    .line 35
    .line 36
    .line 37
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p1}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->setStatusLine(Ljava/lang/String;)V

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :pswitch_0
    const-string p1, "405 Method Not Allowed"

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, p1}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->setStatusLine(Ljava/lang/String;)V

    .line 48
    goto :goto_0

    .line 49
    .line 50
    :pswitch_1
    const-string p1, "404 Not Found"

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->setStatusLine(Ljava/lang/String;)V

    .line 54
    goto :goto_0

    .line 55
    .line 56
    :pswitch_2
    const-string p1, "403 Forbidden"

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, p1}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->setStatusLine(Ljava/lang/String;)V

    .line 60
    goto :goto_0

    .line 61
    .line 62
    :pswitch_3
    const-string p1, "202 Accepted"

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, p1}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->setStatusLine(Ljava/lang/String;)V

    .line 66
    goto :goto_0

    .line 67
    .line 68
    :pswitch_4
    const-string p1, "201 Created"

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, p1}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->setStatusLine(Ljava/lang/String;)V

    .line 72
    goto :goto_0

    .line 73
    .line 74
    :pswitch_5
    const-string p1, "200 OK"

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, p1}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->setStatusLine(Ljava/lang/String;)V

    .line 78
    goto :goto_0

    .line 79
    .line 80
    :cond_0
    const-string p1, "501 Not Implemented"

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, p1}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->setStatusLine(Ljava/lang/String;)V

    .line 84
    goto :goto_0

    .line 85
    .line 86
    :cond_1
    const-string p1, "500 Internal Server Error"

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, p1}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->setStatusLine(Ljava/lang/String;)V

    .line 90
    goto :goto_0

    .line 91
    .line 92
    :cond_2
    const-string p1, "401 Unauthorized"

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, p1}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->setStatusLine(Ljava/lang/String;)V

    .line 96
    goto :goto_0

    .line 97
    .line 98
    :cond_3
    const-string p1, "400 Bad Request"

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, p1}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->setStatusLine(Ljava/lang/String;)V

    .line 102
    goto :goto_0

    .line 103
    .line 104
    :cond_4
    const-string p1, "304 Not Modified"

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, p1}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->setStatusLine(Ljava/lang/String;)V

    .line 108
    goto :goto_0

    .line 109
    .line 110
    :cond_5
    const-string p1, "301 Moved Permanently"

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, p1}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->setStatusLine(Ljava/lang/String;)V

    .line 114
    goto :goto_0

    .line 115
    .line 116
    :cond_6
    const-string p1, "206 Partial Content"

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0, p1}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->setStatusLine(Ljava/lang/String;)V

    .line 120
    :goto_0
    return-void

    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    :pswitch_data_1
    .packed-switch 0x193
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setStatusLine(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->lv:I

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->os:Ljava/io/OutputStream;

    .line 7
    .line 8
    const-string v1, "HTTP/1.1 "

    .line 9
    .line 10
    const-string v2, "ASCII"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->os:Ljava/io/OutputStream;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 27
    .line 28
    iget-object p1, p0, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->os:Ljava/io/OutputStream;

    .line 29
    .line 30
    sget-object v0, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->CRLF:[B

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 34
    const/4 p1, 0x1

    .line 35
    .line 36
    iput p1, p0, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->lv:I

    .line 37
    return-void

    .line 38
    .line 39
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 40
    .line 41
    const-string v0, "status line is already set"

    .line 42
    .line 43
    .line 44
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 45
    throw p1
.end method

.method public write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->lv:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/16 v0, 0xc8

    .line 1
    invoke-virtual {p0, v0}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->setStatusCode(I)V

    :cond_0
    iget v0, p0, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->lv:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->os:Ljava/io/OutputStream;

    sget-object v2, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->CRLF:[B

    .line 2
    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    iput v1, p0, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->lv:I

    :cond_1
    iget-object v0, p0, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->os:Ljava/io/OutputStream;

    .line 3
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public write([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->lv:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/16 v0, 0xc8

    .line 4
    invoke-virtual {p0, v0}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->setStatusCode(I)V

    :cond_0
    iget v0, p0, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->lv:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->os:Ljava/io/OutputStream;

    sget-object v2, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->CRLF:[B

    .line 5
    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    iput v1, p0, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->lv:I

    :cond_1
    iget-object v0, p0, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->os:Ljava/io/OutputStream;

    .line 6
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
