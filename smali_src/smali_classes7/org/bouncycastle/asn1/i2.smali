.class Lorg/bouncycastle/asn1/i2;
.super Lorg/bouncycastle/asn1/x;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/x;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method e()Lorg/bouncycastle/asn1/i2;
    .locals 0

    .line 1
    return-object p0
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

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/z;->v()Lorg/bouncycastle/asn1/z;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p0, v3}, Lorg/bouncycastle/asn1/z;->j(Lorg/bouncycastle/asn1/x;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
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
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/z;->v()Lorg/bouncycastle/asn1/z;

    move-result-object p1

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

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/z;->v()Lorg/bouncycastle/asn1/z;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p0, v3}, Lorg/bouncycastle/asn1/z;->j(Lorg/bouncycastle/asn1/x;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
