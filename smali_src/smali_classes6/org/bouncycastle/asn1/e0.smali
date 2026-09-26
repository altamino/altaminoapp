.class public Lorg/bouncycastle/asn1/e0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final _in:Ljava/io/InputStream;

.field private final _limit:I

.field private final tmpBuffers:[[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lorg/bouncycastle/asn1/x2;->a(Ljava/io/InputStream;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/e0;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1

    .line 2
    const/16 v0, 0xb

    new-array v0, v0, [[B

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/asn1/e0;-><init>(Ljava/io/InputStream;I[[B)V

    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;I[[B)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/e0;->_in:Ljava/io/InputStream;

    iput p2, p0, Lorg/bouncycastle/asn1/e0;->_limit:I

    iput-object p3, p0, Lorg/bouncycastle/asn1/e0;->tmpBuffers:[[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 4
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length p1, p1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/asn1/e0;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method private i(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/asn1/e0;->_in:Ljava/io/InputStream;

    instance-of v1, v0, Lorg/bouncycastle/asn1/s2;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/bouncycastle/asn1/s2;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/s2;->i(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method a(I)Lorg/bouncycastle/asn1/f;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/e0;->i(Z)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/e0;->_in:Ljava/io/InputStream;

    invoke-static {v1, p1}, Lorg/bouncycastle/asn1/o;->n(Ljava/io/InputStream;I)I

    move-result v1

    iget-object v2, p0, Lorg/bouncycastle/asn1/e0;->_in:Ljava/io/InputStream;

    iget v3, p0, Lorg/bouncycastle/asn1/e0;->_limit:I

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eq v1, v4, :cond_1

    const/4 v4, 0x4

    if-eq v1, v4, :cond_1

    const/16 v4, 0x10

    if-eq v1, v4, :cond_1

    const/16 v4, 0x11

    if-eq v1, v4, :cond_1

    const/16 v4, 0x8

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v5

    :goto_1
    invoke-static {v2, v3, v4}, Lorg/bouncycastle/asn1/o;->l(Ljava/io/InputStream;IZ)I

    move-result v2

    const/16 v3, 0x40

    if-gez v2, :cond_5

    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_4

    new-instance v0, Lorg/bouncycastle/asn1/s2;

    iget-object v2, p0, Lorg/bouncycastle/asn1/e0;->_in:Ljava/io/InputStream;

    iget v4, p0, Lorg/bouncycastle/asn1/e0;->_limit:I

    invoke-direct {v0, v2, v4}, Lorg/bouncycastle/asn1/s2;-><init>(Ljava/io/InputStream;I)V

    new-instance v2, Lorg/bouncycastle/asn1/e0;

    iget v4, p0, Lorg/bouncycastle/asn1/e0;->_limit:I

    iget-object v5, p0, Lorg/bouncycastle/asn1/e0;->tmpBuffers:[[B

    invoke-direct {v2, v0, v4, v5}, Lorg/bouncycastle/asn1/e0;-><init>(Ljava/io/InputStream;I[[B)V

    and-int/lit16 p1, p1, 0xc0

    if-eqz p1, :cond_3

    if-ne v3, p1, :cond_2

    new-instance p1, Lorg/bouncycastle/asn1/r0;

    invoke-direct {p1, v1, v2}, Lorg/bouncycastle/asn1/r0;-><init>(ILorg/bouncycastle/asn1/e0;)V

    return-object p1

    :cond_2
    new-instance v0, Lorg/bouncycastle/asn1/c1;

    invoke-direct {v0, p1, v1, v2}, Lorg/bouncycastle/asn1/c1;-><init>(IILorg/bouncycastle/asn1/e0;)V

    return-object v0

    :cond_3
    invoke-virtual {v2, v1}, Lorg/bouncycastle/asn1/e0;->e(I)Lorg/bouncycastle/asn1/f;

    move-result-object p1

    return-object p1

    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string v0, "indefinite-length primitive encoding encountered"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance v4, Lorg/bouncycastle/asn1/q2;

    iget-object v6, p0, Lorg/bouncycastle/asn1/e0;->_in:Ljava/io/InputStream;

    iget v7, p0, Lorg/bouncycastle/asn1/e0;->_limit:I

    invoke-direct {v4, v6, v2, v7}, Lorg/bouncycastle/asn1/q2;-><init>(Ljava/io/InputStream;II)V

    and-int/lit16 v2, p1, 0xe0

    if-nez v2, :cond_6

    invoke-virtual {p0, v1, v4}, Lorg/bouncycastle/asn1/e0;->f(ILorg/bouncycastle/asn1/q2;)Lorg/bouncycastle/asn1/f;

    move-result-object p1

    return-object p1

    :cond_6
    new-instance v2, Lorg/bouncycastle/asn1/e0;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/v2;->d()I

    move-result v6

    iget-object v7, p0, Lorg/bouncycastle/asn1/e0;->tmpBuffers:[[B

    invoke-direct {v2, v4, v6, v7}, Lorg/bouncycastle/asn1/e0;-><init>(Ljava/io/InputStream;I[[B)V

    and-int/lit16 v4, p1, 0xc0

    if-eqz v4, :cond_9

    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_7

    move v0, v5

    :cond_7
    if-ne v3, v4, :cond_8

    invoke-virtual {v2, v4, v1, v0}, Lorg/bouncycastle/asn1/e0;->b(IIZ)Lorg/bouncycastle/asn1/z;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/d2;

    return-object p1

    :cond_8
    new-instance p1, Lorg/bouncycastle/asn1/o2;

    invoke-direct {p1, v4, v1, v0, v2}, Lorg/bouncycastle/asn1/o2;-><init>(IIZLorg/bouncycastle/asn1/e0;)V

    return-object p1

    :cond_9
    invoke-virtual {v2, v1}, Lorg/bouncycastle/asn1/e0;->d(I)Lorg/bouncycastle/asn1/f;

    move-result-object p1

    return-object p1
.end method

.method b(IIZ)Lorg/bouncycastle/asn1/z;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    if-nez p3, :cond_0

    iget-object p3, p0, Lorg/bouncycastle/asn1/e0;->_in:Ljava/io/InputStream;

    check-cast p3, Lorg/bouncycastle/asn1/q2;

    invoke-virtual {p3}, Lorg/bouncycastle/asn1/q2;->k()[B

    move-result-object p3

    invoke-static {p1, p2, p3}, Lorg/bouncycastle/asn1/h0;->z(II[B)Lorg/bouncycastle/asn1/z;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/e0;->h()Lorg/bouncycastle/asn1/g;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lorg/bouncycastle/asn1/h0;->x(IILorg/bouncycastle/asn1/g;)Lorg/bouncycastle/asn1/z;

    move-result-object p1

    return-object p1
.end method

.method c(II)Lorg/bouncycastle/asn1/z;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/e0;->h()Lorg/bouncycastle/asn1/g;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lorg/bouncycastle/asn1/h0;->y(IILorg/bouncycastle/asn1/g;)Lorg/bouncycastle/asn1/z;

    move-result-object p1

    return-object p1
.end method

.method d(I)Lorg/bouncycastle/asn1/f;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    const/16 v0, 0x10

    if-eq p1, v0, :cond_1

    const/16 v0, 0x11

    if-ne p1, v0, :cond_0

    new-instance p1, Lorg/bouncycastle/asn1/m2;

    invoke-direct {p1, p0}, Lorg/bouncycastle/asn1/m2;-><init>(Lorg/bouncycastle/asn1/e0;)V

    return-object p1

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/i;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown DL object encountered: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p1, Lorg/bouncycastle/asn1/k2;

    invoke-direct {p1, p0}, Lorg/bouncycastle/asn1/k2;-><init>(Lorg/bouncycastle/asn1/e0;)V

    return-object p1

    :cond_2
    new-instance p1, Lorg/bouncycastle/asn1/j1;

    invoke-direct {p1, p0}, Lorg/bouncycastle/asn1/j1;-><init>(Lorg/bouncycastle/asn1/e0;)V

    return-object p1

    :cond_3
    new-instance p1, Lorg/bouncycastle/asn1/w0;

    invoke-direct {p1, p0}, Lorg/bouncycastle/asn1/w0;-><init>(Lorg/bouncycastle/asn1/e0;)V

    return-object p1

    :cond_4
    new-instance p1, Lorg/bouncycastle/asn1/t0;

    invoke-direct {p1, p0}, Lorg/bouncycastle/asn1/t0;-><init>(Lorg/bouncycastle/asn1/e0;)V

    return-object p1
.end method

.method e(I)Lorg/bouncycastle/asn1/f;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    const/16 v0, 0x10

    if-eq p1, v0, :cond_1

    const/16 v0, 0x11

    if-ne p1, v0, :cond_0

    new-instance p1, Lorg/bouncycastle/asn1/a1;

    invoke-direct {p1, p0}, Lorg/bouncycastle/asn1/a1;-><init>(Lorg/bouncycastle/asn1/e0;)V

    return-object p1

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/i;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown BER object encountered: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p1, Lorg/bouncycastle/asn1/y0;

    invoke-direct {p1, p0}, Lorg/bouncycastle/asn1/y0;-><init>(Lorg/bouncycastle/asn1/e0;)V

    return-object p1

    :cond_2
    new-instance p1, Lorg/bouncycastle/asn1/j1;

    invoke-direct {p1, p0}, Lorg/bouncycastle/asn1/j1;-><init>(Lorg/bouncycastle/asn1/e0;)V

    return-object p1

    :cond_3
    new-instance p1, Lorg/bouncycastle/asn1/w0;

    invoke-direct {p1, p0}, Lorg/bouncycastle/asn1/w0;-><init>(Lorg/bouncycastle/asn1/e0;)V

    return-object p1

    :cond_4
    new-instance p1, Lorg/bouncycastle/asn1/t0;

    invoke-direct {p1, p0}, Lorg/bouncycastle/asn1/t0;-><init>(Lorg/bouncycastle/asn1/e0;)V

    return-object p1
.end method

.method f(ILorg/bouncycastle/asn1/q2;)Lorg/bouncycastle/asn1/f;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    const/16 v0, 0x10

    if-eq p1, v0, :cond_1

    const/16 v0, 0x11

    if-eq p1, v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/e0;->tmpBuffers:[[B

    invoke-static {p1, p2, v0}, Lorg/bouncycastle/asn1/o;->e(ILorg/bouncycastle/asn1/q2;[[B)Lorg/bouncycastle/asn1/z;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/asn1/i;

    const-string v0, "corrupted stream detected"

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/asn1/i;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    new-instance p1, Lorg/bouncycastle/asn1/i;

    const-string p2, "sequences must use constructed encoding (see X.690 8.9.1/8.10.1)"

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/i;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lorg/bouncycastle/asn1/i;

    const-string p2, "sets must use constructed encoding (see X.690 8.11.1/8.12.1)"

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/i;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lorg/bouncycastle/asn1/i;

    const-string p2, "externals must use constructed encoding (see X.690 8.18)"

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/i;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Lorg/bouncycastle/asn1/s1;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/s1;-><init>(Lorg/bouncycastle/asn1/q2;)V

    return-object p1

    :cond_4
    new-instance p1, Lorg/bouncycastle/asn1/f2;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/f2;-><init>(Lorg/bouncycastle/asn1/q2;)V

    return-object p1
.end method

.method public g()Lorg/bouncycastle/asn1/f;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/asn1/e0;->_in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/e0;->a(I)Lorg/bouncycastle/asn1/f;

    move-result-object v0

    return-object v0
.end method

.method h()Lorg/bouncycastle/asn1/g;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/asn1/e0;->_in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/g;-><init>(I)V

    return-object v0

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/g;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/g;-><init>()V

    :cond_1
    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/e0;->a(I)Lorg/bouncycastle/asn1/f;

    move-result-object v0

    instance-of v2, v0, Lorg/bouncycastle/asn1/r2;

    if-eqz v2, :cond_2

    check-cast v0, Lorg/bouncycastle/asn1/r2;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/r2;->c()Lorg/bouncycastle/asn1/z;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/g;->a(Lorg/bouncycastle/asn1/f;)V

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Lorg/bouncycastle/asn1/f;->g()Lorg/bouncycastle/asn1/z;

    move-result-object v0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lorg/bouncycastle/asn1/e0;->_in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-gez v0, :cond_1

    return-object v1
.end method
