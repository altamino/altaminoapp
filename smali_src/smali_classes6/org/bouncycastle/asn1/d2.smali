.class public Lorg/bouncycastle/asn1/d2;
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

    invoke-direct {p0, v0, p1, p2}, Lorg/bouncycastle/asn1/d2;-><init>(ZILorg/bouncycastle/asn1/f;)V

    return-void
.end method

.method public constructor <init>(ILorg/bouncycastle/asn1/g;)V
    .locals 3

    .line 2
    new-instance v0, Lorg/bouncycastle/asn1/n2;

    const/16 v1, 0x40

    invoke-static {p2}, Lorg/bouncycastle/asn1/h2;->a(Lorg/bouncycastle/asn1/g;)Lorg/bouncycastle/asn1/j2;

    move-result-object p2

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p1, p2}, Lorg/bouncycastle/asn1/n2;-><init>(ZIILorg/bouncycastle/asn1/f;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/a;-><init>(Lorg/bouncycastle/asn1/h0;)V

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 3

    .line 3
    new-instance v0, Lorg/bouncycastle/asn1/n2;

    new-instance v1, Lorg/bouncycastle/asn1/r1;

    invoke-direct {v1, p2}, Lorg/bouncycastle/asn1/r1;-><init>([B)V

    const/4 p2, 0x0

    const/16 v2, 0x40

    invoke-direct {v0, p2, v2, p1, v1}, Lorg/bouncycastle/asn1/n2;-><init>(ZIILorg/bouncycastle/asn1/f;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/a;-><init>(Lorg/bouncycastle/asn1/h0;)V

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/asn1/h0;)V
    .locals 0

    .line 4
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

    .line 5
    new-instance v0, Lorg/bouncycastle/asn1/n2;

    const/16 v1, 0x40

    invoke-direct {v0, p1, v1, p2, p3}, Lorg/bouncycastle/asn1/n2;-><init>(ZIILorg/bouncycastle/asn1/f;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/a;-><init>(Lorg/bouncycastle/asn1/h0;)V

    return-void
.end method


# virtual methods
.method v()Lorg/bouncycastle/asn1/z;
    .locals 0

    .line 1
    return-object p0
.end method
