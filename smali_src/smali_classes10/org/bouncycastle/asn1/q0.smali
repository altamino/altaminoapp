.class public Lorg/bouncycastle/asn1/q0;
.super Lorg/bouncycastle/asn1/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(ILorg/bouncycastle/asn1/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lorg/bouncycastle/asn1/q0;-><init>(ZILorg/bouncycastle/asn1/f;)V

    return-void
.end method

.method public constructor <init>(ILorg/bouncycastle/asn1/g;)V
    .locals 3

    .line 2
    new-instance v0, Lorg/bouncycastle/asn1/b1;

    const/16 v1, 0x40

    invoke-static {p2}, Lorg/bouncycastle/asn1/u0;->a(Lorg/bouncycastle/asn1/g;)Lorg/bouncycastle/asn1/x0;

    move-result-object p2

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p1, p2}, Lorg/bouncycastle/asn1/b1;-><init>(ZIILorg/bouncycastle/asn1/f;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/a;-><init>(Lorg/bouncycastle/asn1/h0;)V

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/asn1/h0;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/a;-><init>(Lorg/bouncycastle/asn1/h0;)V

    return-void
.end method

.method public constructor <init>(ZILorg/bouncycastle/asn1/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    new-instance v0, Lorg/bouncycastle/asn1/b1;

    const/16 v1, 0x40

    invoke-direct {v0, p1, v1, p2, p3}, Lorg/bouncycastle/asn1/b1;-><init>(ZIILorg/bouncycastle/asn1/f;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/a;-><init>(Lorg/bouncycastle/asn1/h0;)V

    return-void
.end method
