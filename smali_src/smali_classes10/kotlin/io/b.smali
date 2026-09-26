.class public final Lkotlin/io/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/io/InputStream;Ljava/io/OutputStream;I)J
    .locals 5
    .param p0    # Ljava/io/InputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/io/OutputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "out"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    new-array p2, p2, [B

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    .line 16
    move-result v0

    .line 17
    .line 18
    const-wide/16 v1, 0x0

    .line 19
    .line 20
    :goto_0
    if-ltz v0, :cond_0

    .line 21
    const/4 v3, 0x0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 25
    int-to-long v3, v0

    .line 26
    add-long/2addr v1, v3

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    .line 30
    move-result v0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-wide v1
.end method

.method public static synthetic b(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p3, p3, 0x2

    .line 3
    .line 4
    if-eqz p3, :cond_0

    .line 5
    .line 6
    const/16 p2, 0x2000

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-static {p0, p1, p2}, Lkotlin/io/b;->a(Ljava/io/InputStream;Ljava/io/OutputStream;I)J

    .line 10
    move-result-wide p0

    .line 11
    return-wide p0
.end method

.method public static final c(Ljava/io/InputStream;)[B
    .locals 4
    .param p0    # Ljava/io/InputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    .line 11
    move-result v1

    .line 12
    .line 13
    const/16 v2, 0x2000

    .line 14
    .line 15
    .line 16
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 17
    move-result v1

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 21
    const/4 v1, 0x2

    .line 22
    const/4 v2, 0x0

    .line 23
    const/4 v3, 0x0

    .line 24
    .line 25
    .line 26
    invoke-static {p0, v0, v3, v1, v2}, Lkotlin/io/b;->b(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 30
    move-result-object p0

    .line 31
    .line 32
    const-string v0, "toByteArray(...)"

    .line 33
    .line 34
    .line 35
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    return-object p0
.end method
