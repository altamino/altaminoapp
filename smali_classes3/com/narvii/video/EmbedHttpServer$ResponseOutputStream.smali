.class public Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;
.super Ljava/io/OutputStream;
.source "EmbedHttpServer.java"


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

    .line 223
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

    .line 227
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 228
    iput-object p1, p0, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->os:Ljava/io/OutputStream;

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

    .line 426
    iget v0, p0, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->lv:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/16 v0, 0x194

    .line 427
    invoke-virtual {p0, v0}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->setStatusCode(I)V

    .line 429
    :cond_0
    iget v0, p0, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->lv:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 430
    iget-object v0, p0, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->os:Ljava/io/OutputStream;

    sget-object v2, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->CRLF:[B

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 431
    iput v1, p0, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->lv:I

    .line 433
    :cond_1
    iget v0, p0, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->lv:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    .line 434
    iget-object v0, p0, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 435
    iput v1, p0, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->lv:I

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

    .line 421
    iget-object v0, p0, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public setContentEncoding(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Content-Encoding"

    .line 318
    invoke-virtual {p0, v0, p1}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setContentLength(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Content-Length"

    invoke-virtual {p0, v0, p1}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Content-Type"

    .line 322
    invoke-virtual {p0, v0, p1}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setContentTypeBinary()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "application/octet-stream"

    .line 357
    invoke-virtual {p0, v0}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->setContentType(Ljava/lang/String;)V

    return-void
.end method

.method public setContentTypeHtml()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "text/html"

    .line 343
    invoke-virtual {p0, v0}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->setContentType(Ljava/lang/String;)V

    return-void
.end method

.method public setContentTypeHtmlUtf8()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "text/html; charset=utf-8"

    .line 350
    invoke-virtual {p0, v0}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->setContentType(Ljava/lang/String;)V

    return-void
.end method

.method public setContentTypeJpeg()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "image/jpeg"

    .line 385
    invoke-virtual {p0, v0}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->setContentType(Ljava/lang/String;)V

    return-void
.end method

.method public setContentTypeJson()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "application/json"

    .line 364
    invoke-virtual {p0, v0}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->setContentType(Ljava/lang/String;)V

    return-void
.end method

.method public setContentTypePng()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "image/png"

    .line 392
    invoke-virtual {p0, v0}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->setContentType(Ljava/lang/String;)V

    return-void
.end method

.method public setContentTypeText()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "text/plain"

    .line 329
    invoke-virtual {p0, v0}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->setContentType(Ljava/lang/String;)V

    return-void
.end method

.method public setContentTypeTextUtf8()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "text/plain; charset=utf-8"

    .line 336
    invoke-virtual {p0, v0}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->setContentType(Ljava/lang/String;)V

    return-void
.end method

.method public setContentTypeXml()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "text/xml"

    .line 371
    invoke-virtual {p0, v0}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->setContentType(Ljava/lang/String;)V

    return-void
.end method

.method public setContentTypeZip()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "application/zip"

    .line 378
    invoke-virtual {p0, v0}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->setContentType(Ljava/lang/String;)V

    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 293
    iget v0, p0, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->lv:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/16 v0, 0xc8

    .line 294
    invoke-virtual {p0, v0}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->setStatusCode(I)V

    .line 296
    :cond_0
    iget v0, p0, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->lv:I

    if-ne v0, v1, :cond_1

    .line 297
    iget-object v0, p0, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->os:Ljava/io/OutputStream;

    const-string v1, "ASCII"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 298
    iget-object p1, p0, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->os:Ljava/io/OutputStream;

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 299
    iget-object p1, p0, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->os:Ljava/io/OutputStream;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 300
    iget-object p1, p0, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->os:Ljava/io/OutputStream;

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 301
    iget-object p1, p0, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->os:Ljava/io/OutputStream;

    sget-object p2, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->CRLF:[B

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    return-void

    .line 303
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "headers is already set"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setStatusCode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xce

    if-eq p1, v0, :cond_6

    const/16 v0, 0x12d

    if-eq p1, v0, :cond_5

    const/16 v0, 0x130

    if-eq p1, v0, :cond_4

    const/16 v0, 0x190

    if-eq p1, v0, :cond_3

    const/16 v0, 0x191

    if-eq p1, v0, :cond_2

    const/16 v0, 0x1f4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1f5

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 273
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->setStatusLine(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const-string p1, "405 Method Not Allowed"

    .line 264
    invoke-virtual {p0, p1}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->setStatusLine(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string p1, "404 Not Found"

    .line 261
    invoke-virtual {p0, p1}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->setStatusLine(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string p1, "403 Forbidden"

    .line 258
    invoke-virtual {p0, p1}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->setStatusLine(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string p1, "202 Accepted"

    .line 240
    invoke-virtual {p0, p1}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->setStatusLine(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    const-string p1, "201 Created"

    .line 237
    invoke-virtual {p0, p1}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->setStatusLine(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    const-string p1, "200 OK"

    .line 234
    invoke-virtual {p0, p1}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->setStatusLine(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "501 Not Implemented"

    .line 270
    invoke-virtual {p0, p1}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->setStatusLine(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "500 Internal Server Error"

    .line 267
    invoke-virtual {p0, p1}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->setStatusLine(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "401 Unauthorized"

    .line 255
    invoke-virtual {p0, p1}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->setStatusLine(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p1, "400 Bad Request"

    .line 252
    invoke-virtual {p0, p1}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->setStatusLine(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string p1, "304 Not Modified"

    .line 249
    invoke-virtual {p0, p1}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->setStatusLine(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string p1, "301 Moved Permanently"

    .line 246
    invoke-virtual {p0, p1}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->setStatusLine(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string p1, "206 Partial Content"

    .line 243
    invoke-virtual {p0, p1}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->setStatusLine(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

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

    .line 282
    iget v0, p0, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->lv:I

    if-nez v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->os:Ljava/io/OutputStream;

    const-string v1, "ASCII"

    const-string v2, "HTTP/1.1 "

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 284
    iget-object v0, p0, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->os:Ljava/io/OutputStream;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 285
    iget-object p1, p0, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->os:Ljava/io/OutputStream;

    sget-object v0, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->CRLF:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    const/4 p1, 0x1

    .line 286
    iput p1, p0, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->lv:I

    return-void

    .line 288
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "status line is already set"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 397
    iget v0, p0, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->lv:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/16 v0, 0xc8

    .line 398
    invoke-virtual {p0, v0}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->setStatusCode(I)V

    .line 400
    :cond_0
    iget v0, p0, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->lv:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 401
    iget-object v0, p0, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->os:Ljava/io/OutputStream;

    sget-object v2, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->CRLF:[B

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 402
    iput v1, p0, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->lv:I

    .line 404
    :cond_1
    iget-object v0, p0, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->os:Ljava/io/OutputStream;

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

    .line 409
    iget v0, p0, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->lv:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/16 v0, 0xc8

    .line 410
    invoke-virtual {p0, v0}, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->setStatusCode(I)V

    .line 412
    :cond_0
    iget v0, p0, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->lv:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 413
    iget-object v0, p0, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->os:Ljava/io/OutputStream;

    sget-object v2, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->CRLF:[B

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 414
    iput v1, p0, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->lv:I

    .line 416
    :cond_1
    iget-object v0, p0, Lcom/narvii/video/EmbedHttpServer$ResponseOutputStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
