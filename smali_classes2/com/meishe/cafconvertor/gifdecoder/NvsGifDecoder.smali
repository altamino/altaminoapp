.class public Lcom/meishe/cafconvertor/gifdecoder/NvsGifDecoder;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/meishe/cafconvertor/gifdecoder/GifHeaderParser;

.field private c:Lcom/meishe/cafconvertor/gifdecoder/GifHeader;

.field private d:Lcom/meishe/cafconvertor/gifdecoder/GifDecoder;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "NvsGifDecoder"

    iput-object v0, p0, Lcom/meishe/cafconvertor/gifdecoder/NvsGifDecoder;->a:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/io/InputStream;)[B
    .locals 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    new-array v1, v1, [B

    :goto_0
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public getFrameCount()I
    .locals 1

    iget-object v0, p0, Lcom/meishe/cafconvertor/gifdecoder/NvsGifDecoder;->c:Lcom/meishe/cafconvertor/gifdecoder/GifHeader;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/meishe/cafconvertor/gifdecoder/NvsGifDecoder;->isGif()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meishe/cafconvertor/gifdecoder/NvsGifDecoder;->c:Lcom/meishe/cafconvertor/gifdecoder/GifHeader;

    iget v0, v0, Lcom/meishe/cafconvertor/gifdecoder/GifHeader;->c:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getGifDecoder()Lcom/meishe/cafconvertor/gifdecoder/GifDecoder;
    .locals 1

    invoke-virtual {p0}, Lcom/meishe/cafconvertor/gifdecoder/NvsGifDecoder;->isGif()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meishe/cafconvertor/gifdecoder/NvsGifDecoder;->d:Lcom/meishe/cafconvertor/gifdecoder/GifDecoder;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isGif()Z
    .locals 3

    iget-object v0, p0, Lcom/meishe/cafconvertor/gifdecoder/NvsGifDecoder;->b:Lcom/meishe/cafconvertor/gifdecoder/GifHeaderParser;

    const/4 v1, 0x0

    const-string v2, "NvsGifDecoder"

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/meishe/cafconvertor/gifdecoder/GifHeaderParser;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string v0, "isGif: this file is not gif!"

    :goto_0
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const-string v0, "isGif: headerParser is null!"

    goto :goto_0
.end method

.method public read(Ljava/io/InputStream;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/meishe/cafconvertor/gifdecoder/NvsGifDecoder;->a(Ljava/io/InputStream;)[B

    move-result-object p1

    new-instance v0, Lcom/meishe/cafconvertor/gifdecoder/GifHeaderParser;

    invoke-direct {v0}, Lcom/meishe/cafconvertor/gifdecoder/GifHeaderParser;-><init>()V

    iput-object v0, p0, Lcom/meishe/cafconvertor/gifdecoder/NvsGifDecoder;->b:Lcom/meishe/cafconvertor/gifdecoder/GifHeaderParser;

    iget-object v0, p0, Lcom/meishe/cafconvertor/gifdecoder/NvsGifDecoder;->b:Lcom/meishe/cafconvertor/gifdecoder/GifHeaderParser;

    invoke-virtual {v0, p1}, Lcom/meishe/cafconvertor/gifdecoder/GifHeaderParser;->setData([B)Lcom/meishe/cafconvertor/gifdecoder/GifHeaderParser;

    iget-object v0, p0, Lcom/meishe/cafconvertor/gifdecoder/NvsGifDecoder;->b:Lcom/meishe/cafconvertor/gifdecoder/GifHeaderParser;

    invoke-virtual {v0}, Lcom/meishe/cafconvertor/gifdecoder/GifHeaderParser;->parseHeader()Lcom/meishe/cafconvertor/gifdecoder/GifHeader;

    move-result-object v0

    iput-object v0, p0, Lcom/meishe/cafconvertor/gifdecoder/NvsGifDecoder;->c:Lcom/meishe/cafconvertor/gifdecoder/GifHeader;

    new-instance v0, Lcom/meishe/cafconvertor/gifdecoder/NvsGifDecoder$1;

    invoke-direct {v0, p0}, Lcom/meishe/cafconvertor/gifdecoder/NvsGifDecoder$1;-><init>(Lcom/meishe/cafconvertor/gifdecoder/NvsGifDecoder;)V

    new-instance v1, Lcom/meishe/cafconvertor/gifdecoder/GifDecoder;

    invoke-direct {v1, v0}, Lcom/meishe/cafconvertor/gifdecoder/GifDecoder;-><init>(Lcom/meishe/cafconvertor/gifdecoder/GifDecoder$BitmapProvider;)V

    iput-object v1, p0, Lcom/meishe/cafconvertor/gifdecoder/NvsGifDecoder;->d:Lcom/meishe/cafconvertor/gifdecoder/GifDecoder;

    iget-object v0, p0, Lcom/meishe/cafconvertor/gifdecoder/NvsGifDecoder;->d:Lcom/meishe/cafconvertor/gifdecoder/GifDecoder;

    iget-object v1, p0, Lcom/meishe/cafconvertor/gifdecoder/NvsGifDecoder;->c:Lcom/meishe/cafconvertor/gifdecoder/GifHeader;

    invoke-virtual {v0, v1, p1}, Lcom/meishe/cafconvertor/gifdecoder/GifDecoder;->setData(Lcom/meishe/cafconvertor/gifdecoder/GifHeader;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "NvsGifDecoder"

    const-string v1, "read: InputStream to bytes exception!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
