.class Lorg/bouncycastle/asn1/u2;
.super Lorg/bouncycastle/asn1/c0;
.source "SourceFile"


# instance fields
.field private encoded:[B


# direct methods
.method constructor <init>([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/asn1/c0;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/asn1/u2;->encoded:[B

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "\'encoded\' cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private declared-synchronized G()V
    .locals 4

    .line 1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/u2;->encoded:[B

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/o;

    iget-object v1, p0, Lorg/bouncycastle/asn1/u2;->encoded:[B

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/o;-><init>([BZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/o;->p()Lorg/bouncycastle/asn1/g;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/g;->g()[Lorg/bouncycastle/asn1/f;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/c0;->elements:[Lorg/bouncycastle/asn1/f;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/u2;->encoded:[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v1, Lorg/bouncycastle/asn1/y;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "malformed ASN.1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/asn1/y;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized H()[B
    .locals 1

    .line 1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/u2;->encoded:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public A()Ljava/util/Enumeration;
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/asn1/u2;->H()[B

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/t2;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/t2;-><init>([B)V

    return-object v1

    :cond_0
    invoke-super {p0}, Lorg/bouncycastle/asn1/c0;->A()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method B()Lorg/bouncycastle/asn1/c;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/u2;->v()Lorg/bouncycastle/asn1/z;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/c0;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/c0;->B()Lorg/bouncycastle/asn1/c;

    move-result-object v0

    return-object v0
.end method

.method C()Lorg/bouncycastle/asn1/j;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/u2;->v()Lorg/bouncycastle/asn1/z;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/c0;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/c0;->C()Lorg/bouncycastle/asn1/j;

    move-result-object v0

    return-object v0
.end method

.method D()Lorg/bouncycastle/asn1/v;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/u2;->v()Lorg/bouncycastle/asn1/z;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/c0;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/c0;->D()Lorg/bouncycastle/asn1/v;

    move-result-object v0

    return-object v0
.end method

.method E()Lorg/bouncycastle/asn1/d0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/u2;->v()Lorg/bouncycastle/asn1/z;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/c0;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/c0;->E()Lorg/bouncycastle/asn1/d0;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/u2;->G()V

    invoke-super {p0}, Lorg/bouncycastle/asn1/c0;->hashCode()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/bouncycastle/asn1/f;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/asn1/u2;->G()V

    invoke-super {p0}, Lorg/bouncycastle/asn1/c0;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method j(Lorg/bouncycastle/asn1/x;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/asn1/u2;->H()[B

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x30

    invoke-virtual {p1, p2, v1, v0}, Lorg/bouncycastle/asn1/x;->o(ZI[B)V

    return-void

    :cond_0
    invoke-super {p0}, Lorg/bouncycastle/asn1/c0;->v()Lorg/bouncycastle/asn1/z;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/asn1/z;->j(Lorg/bouncycastle/asn1/x;Z)V

    return-void
.end method

.method r(Z)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/asn1/u2;->H()[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v0, v0

    invoke-static {p1, v0}, Lorg/bouncycastle/asn1/x;->g(ZI)I

    move-result p1

    return p1

    :cond_0
    invoke-super {p0}, Lorg/bouncycastle/asn1/c0;->v()Lorg/bouncycastle/asn1/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/z;->r(Z)I

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/u2;->G()V

    invoke-super {p0}, Lorg/bouncycastle/asn1/c0;->size()I

    move-result v0

    return v0
.end method

.method u()Lorg/bouncycastle/asn1/z;
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/asn1/u2;->G()V

    invoke-super {p0}, Lorg/bouncycastle/asn1/c0;->u()Lorg/bouncycastle/asn1/z;

    move-result-object v0

    return-object v0
.end method

.method v()Lorg/bouncycastle/asn1/z;
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/asn1/u2;->G()V

    invoke-super {p0}, Lorg/bouncycastle/asn1/c0;->v()Lorg/bouncycastle/asn1/z;

    move-result-object v0

    return-object v0
.end method

.method public z(I)Lorg/bouncycastle/asn1/f;
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/asn1/u2;->G()V

    invoke-super {p0, p1}, Lorg/bouncycastle/asn1/c0;->z(I)Lorg/bouncycastle/asn1/f;

    move-result-object p1

    return-object p1
.end method
