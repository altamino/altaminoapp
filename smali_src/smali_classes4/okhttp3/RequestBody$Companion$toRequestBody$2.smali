.class public final Lokhttp3/RequestBody$Companion$toRequestBody$2;
.super Lokhttp3/RequestBody;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/RequestBody$Companion;->create([BLokhttp3/MediaType;II)Lokhttp3/RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $byteCount:I

.field final synthetic $contentType:Lokhttp3/MediaType;

.field final synthetic $offset:I

.field final synthetic $this_toRequestBody:[B


# direct methods
.method constructor <init>(Lokhttp3/MediaType;I[BI)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lokhttp3/RequestBody$Companion$toRequestBody$2;->$contentType:Lokhttp3/MediaType;

    .line 3
    .line 4
    iput p2, p0, Lokhttp3/RequestBody$Companion$toRequestBody$2;->$byteCount:I

    .line 5
    .line 6
    iput-object p3, p0, Lokhttp3/RequestBody$Companion$toRequestBody$2;->$this_toRequestBody:[B

    .line 7
    .line 8
    iput p4, p0, Lokhttp3/RequestBody$Companion$toRequestBody$2;->$offset:I

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    iget v0, p0, Lokhttp3/RequestBody$Companion$toRequestBody$2;->$byteCount:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lokhttp3/RequestBody$Companion$toRequestBody$2;->$contentType:Lokhttp3/MediaType;

    return-object v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 3
    .param p1    # Lokio/BufferedSink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "sink"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lokhttp3/RequestBody$Companion$toRequestBody$2;->$this_toRequestBody:[B

    .line 8
    .line 9
    iget v1, p0, Lokhttp3/RequestBody$Companion$toRequestBody$2;->$offset:I

    .line 10
    .line 11
    iget v2, p0, Lokhttp3/RequestBody$Companion$toRequestBody$2;->$byteCount:I

    .line 12
    .line 13
    .line 14
    invoke-interface {p1, v0, v1, v2}, Lokio/BufferedSink;->write([BII)Lokio/BufferedSink;

    .line 15
    return-void
.end method
