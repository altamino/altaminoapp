.class public abstract Lorg/bouncycastle/asn1/z;
.super Lorg/bouncycastle/asn1/s;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/s;-><init>()V

    return-void
.end method

.method public static t([B)Lorg/bouncycastle/asn1/z;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/o;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/o;-><init>([B)V

    :try_start_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/o;->m()Lorg/bouncycastle/asn1/z;

    move-result-object p0

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Extra data detected in stream"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "cannot recognise object in stream"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method abstract b(Lorg/bouncycastle/asn1/z;)Z
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/bouncycastle/asn1/f;

    if-eqz v1, :cond_1

    check-cast p1, Lorg/bouncycastle/asn1/f;

    invoke-interface {p1}, Lorg/bouncycastle/asn1/f;->g()Lorg/bouncycastle/asn1/z;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/z;->b(Lorg/bouncycastle/asn1/z;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final g()Lorg/bouncycastle/asn1/z;
    .locals 0

    .line 1
    return-object p0
.end method

.method public abstract hashCode()I
.end method

.method abstract j(Lorg/bouncycastle/asn1/x;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract m()Z
.end method

.method public p(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/bouncycastle/asn1/x;->a(Ljava/io/OutputStream;)Lorg/bouncycastle/asn1/x;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lorg/bouncycastle/asn1/x;->u(Lorg/bouncycastle/asn1/z;Z)V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x;->c()V

    return-void
.end method

.method public q(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lorg/bouncycastle/asn1/x;->b(Ljava/io/OutputStream;Ljava/lang/String;)Lorg/bouncycastle/asn1/x;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p0, p2}, Lorg/bouncycastle/asn1/x;->u(Lorg/bouncycastle/asn1/z;Z)V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x;->c()V

    return-void
.end method

.method abstract r(Z)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final s(Lorg/bouncycastle/asn1/z;)Z
    .locals 0

    .line 1
    if-eq p0, p1, :cond_1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/z;->b(Lorg/bouncycastle/asn1/z;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method u()Lorg/bouncycastle/asn1/z;
    .locals 0

    .line 1
    return-object p0
.end method

.method v()Lorg/bouncycastle/asn1/z;
    .locals 0

    .line 1
    return-object p0
.end method
