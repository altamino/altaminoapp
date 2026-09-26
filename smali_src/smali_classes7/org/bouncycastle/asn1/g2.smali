.class public Lorg/bouncycastle/asn1/g2;
.super Lorg/bouncycastle/asn1/j;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/g;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/bouncycastle/asn1/h2;->a(Lorg/bouncycastle/asn1/g;)Lorg/bouncycastle/asn1/j2;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/g2;-><init>(Lorg/bouncycastle/asn1/j2;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/j2;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/j;-><init>(Lorg/bouncycastle/asn1/c0;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/u;Lorg/bouncycastle/asn1/p;Lorg/bouncycastle/asn1/z;ILorg/bouncycastle/asn1/z;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p5}, Lorg/bouncycastle/asn1/j;-><init>(Lorg/bouncycastle/asn1/u;Lorg/bouncycastle/asn1/p;Lorg/bouncycastle/asn1/z;ILorg/bouncycastle/asn1/z;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/u;Lorg/bouncycastle/asn1/p;Lorg/bouncycastle/asn1/z;Lorg/bouncycastle/asn1/y1;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/asn1/j;-><init>(Lorg/bouncycastle/asn1/u;Lorg/bouncycastle/asn1/p;Lorg/bouncycastle/asn1/z;Lorg/bouncycastle/asn1/y1;)V

    return-void
.end method


# virtual methods
.method v()Lorg/bouncycastle/asn1/z;
    .locals 0

    .line 1
    return-object p0
.end method

.method w()Lorg/bouncycastle/asn1/c0;
    .locals 5

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/g;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/g;-><init>(I)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/j;->directReference:Lorg/bouncycastle/asn1/u;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/g;->a(Lorg/bouncycastle/asn1/f;)V

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/j;->indirectReference:Lorg/bouncycastle/asn1/p;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/g;->a(Lorg/bouncycastle/asn1/f;)V

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/asn1/j;->dataValueDescriptor:Lorg/bouncycastle/asn1/z;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/z;->v()Lorg/bouncycastle/asn1/z;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/g;->a(Lorg/bouncycastle/asn1/f;)V

    :cond_2
    new-instance v1, Lorg/bouncycastle/asn1/n2;

    iget v2, p0, Lorg/bouncycastle/asn1/j;->encoding:I

    if-nez v2, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lorg/bouncycastle/asn1/j;->externalContent:Lorg/bouncycastle/asn1/z;

    invoke-direct {v1, v3, v2, v4}, Lorg/bouncycastle/asn1/n2;-><init>(ZILorg/bouncycastle/asn1/f;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/g;->a(Lorg/bouncycastle/asn1/f;)V

    new-instance v1, Lorg/bouncycastle/asn1/j2;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/j2;-><init>(Lorg/bouncycastle/asn1/g;)V

    return-object v1
.end method
