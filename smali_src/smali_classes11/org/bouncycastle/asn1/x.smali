.class public Lorg/bouncycastle/asn1/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private os:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/x;->os:Ljava/io/OutputStream;

    return-void
.end method

.method public static a(Ljava/io/OutputStream;)Lorg/bouncycastle/asn1/x;
    .locals 1

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/x;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public static b(Ljava/io/OutputStream;Ljava/lang/String;)Lorg/bouncycastle/asn1/x;
    .locals 1

    .line 1
    const-string v0, "DER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lorg/bouncycastle/asn1/t1;

    invoke-direct {p1, p0}, Lorg/bouncycastle/asn1/t1;-><init>(Ljava/io/OutputStream;)V

    return-object p1

    :cond_0
    const-string v0, "DL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lorg/bouncycastle/asn1/i2;

    invoke-direct {p1, p0}, Lorg/bouncycastle/asn1/i2;-><init>(Ljava/io/OutputStream;)V

    return-object p1

    :cond_1
    new-instance p1, Lorg/bouncycastle/asn1/x;

    invoke-direct {p1, p0}, Lorg/bouncycastle/asn1/x;-><init>(Ljava/io/OutputStream;)V

    return-object p1
.end method

.method static f(I)I
    .locals 1

    .line 1
    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    ushr-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method static g(ZI)I
    .locals 1

    .line 1
    invoke-static {p1}, Lorg/bouncycastle/asn1/x;->f(I)I

    move-result v0

    add-int/2addr p0, v0

    add-int/2addr p0, p1

    return p0
.end method

.method static h(I)I
    .locals 1

    .line 1
    const/16 v0, 0x1f

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    ushr-int/lit8 p0, p0, 0x7

    if-eqz p0, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method c()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    return-void
.end method

.method d()Lorg/bouncycastle/asn1/t1;
    .locals 2

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/t1;

    iget-object v1, p0, Lorg/bouncycastle/asn1/x;->os:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/t1;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method e()Lorg/bouncycastle/asn1/i2;
    .locals 2

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/i2;

    iget-object v1, p0, Lorg/bouncycastle/asn1/x;->os:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/i2;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method final i(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/asn1/x;->os:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method final j([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/asn1/x;->os:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method final k(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/x;->i(I)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x5

    new-array v2, v1, [B

    :goto_0
    add-int/lit8 v3, v1, -0x1

    int-to-byte v4, p1

    aput-byte v4, v2, v3

    ushr-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_1

    rsub-int/lit8 p1, v3, 0x5

    add-int/lit8 v1, v1, -0x2

    or-int/2addr p1, v0

    int-to-byte p1, p1

    aput-byte p1, v2, v1

    rsub-int/lit8 p1, v3, 0x6

    invoke-virtual {p0, v2, v1, p1}, Lorg/bouncycastle/asn1/x;->j([BII)V

    :goto_1
    return-void

    :cond_1
    move v1, v3

    goto :goto_0
.end method

.method l([Lorg/bouncycastle/asn1/f;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-interface {v2}, Lorg/bouncycastle/asn1/f;->g()Lorg/bouncycastle/asn1/z;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p0, v3}, Lorg/bouncycastle/asn1/z;->j(Lorg/bouncycastle/asn1/x;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method final m(ZIB)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/asn1/x;->s(ZI)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/x;->k(I)V

    invoke-virtual {p0, p3}, Lorg/bouncycastle/asn1/x;->i(I)V

    return-void
.end method

.method final n(ZIB[BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/asn1/x;->s(ZI)V

    add-int/lit8 p1, p6, 0x1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/x;->k(I)V

    invoke-virtual {p0, p3}, Lorg/bouncycastle/asn1/x;->i(I)V

    invoke-virtual {p0, p4, p5, p6}, Lorg/bouncycastle/asn1/x;->j([BII)V

    return-void
.end method

.method final o(ZI[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/asn1/x;->s(ZI)V

    array-length p1, p3

    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/x;->k(I)V

    const/4 p1, 0x0

    array-length p2, p3

    invoke-virtual {p0, p3, p1, p2}, Lorg/bouncycastle/asn1/x;->j([BII)V

    return-void
.end method

.method final p(ZI[BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/asn1/x;->s(ZI)V

    invoke-virtual {p0, p5}, Lorg/bouncycastle/asn1/x;->k(I)V

    invoke-virtual {p0, p3, p4, p5}, Lorg/bouncycastle/asn1/x;->j([BII)V

    return-void
.end method

.method final q(ZI[BIIB)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/asn1/x;->s(ZI)V

    add-int/lit8 p1, p5, 0x1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/x;->k(I)V

    invoke-virtual {p0, p3, p4, p5}, Lorg/bouncycastle/asn1/x;->j([BII)V

    invoke-virtual {p0, p6}, Lorg/bouncycastle/asn1/x;->i(I)V

    return-void
.end method

.method final r(ZI[Lorg/bouncycastle/asn1/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/asn1/x;->s(ZI)V

    const/16 p1, 0x80

    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/x;->i(I)V

    invoke-virtual {p0, p3}, Lorg/bouncycastle/asn1/x;->l([Lorg/bouncycastle/asn1/f;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/x;->i(I)V

    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/x;->i(I)V

    return-void
.end method

.method final s(ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lorg/bouncycastle/asn1/x;->i(I)V

    :cond_0
    return-void
.end method

.method final t(ZII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/16 p1, 0x1f

    if-ge p3, p1, :cond_1

    or-int p1, p2, p3

    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/x;->i(I)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x6

    new-array v0, v0, [B

    and-int/lit8 v1, p3, 0x7f

    int-to-byte v1, v1

    const/4 v2, 0x5

    aput-byte v1, v0, v2

    :goto_0
    const/16 v1, 0x7f

    if-le p3, v1, :cond_2

    ushr-int/lit8 p3, p3, 0x7

    add-int/lit8 v2, v2, -0x1

    and-int/lit8 v1, p3, 0x7f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, -0x1

    or-int/2addr p1, p2

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    rsub-int/lit8 p1, v2, 0x6

    invoke-virtual {p0, v0, v2, p1}, Lorg/bouncycastle/asn1/x;->j([BII)V

    :goto_1
    return-void
.end method

.method u(Lorg/bouncycastle/asn1/z;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p0, p2}, Lorg/bouncycastle/asn1/z;->j(Lorg/bouncycastle/asn1/x;Z)V

    return-void
.end method

.method v([Lorg/bouncycastle/asn1/z;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    const/4 v3, 0x1

    invoke-virtual {v2, p0, v3}, Lorg/bouncycastle/asn1/z;->j(Lorg/bouncycastle/asn1/x;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
