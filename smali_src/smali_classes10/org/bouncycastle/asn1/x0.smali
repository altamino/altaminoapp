.class public Lorg/bouncycastle/asn1/x0;
.super Lorg/bouncycastle/asn1/c0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/asn1/c0;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/f;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/c0;-><init>(Lorg/bouncycastle/asn1/f;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/g;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/c0;-><init>(Lorg/bouncycastle/asn1/g;)V

    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/f;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/c0;-><init>([Lorg/bouncycastle/asn1/f;)V

    return-void
.end method


# virtual methods
.method B()Lorg/bouncycastle/asn1/c;
    .locals 2

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/s0;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/c0;->w()[Lorg/bouncycastle/asn1/c;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/s0;-><init>([Lorg/bouncycastle/asn1/c;)V

    return-object v0
.end method

.method C()Lorg/bouncycastle/asn1/j;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/c0;->v()Lorg/bouncycastle/asn1/z;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/c0;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/c0;->C()Lorg/bouncycastle/asn1/j;

    move-result-object v0

    return-object v0
.end method

.method D()Lorg/bouncycastle/asn1/v;
    .locals 2

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/v0;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/c0;->x()[Lorg/bouncycastle/asn1/v;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/v0;-><init>([Lorg/bouncycastle/asn1/v;)V

    return-object v0
.end method

.method E()Lorg/bouncycastle/asn1/d0;
    .locals 3

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/z0;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/c0;->F()[Lorg/bouncycastle/asn1/f;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/z0;-><init>(Z[Lorg/bouncycastle/asn1/f;)V

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
    const/16 v0, 0x30

    iget-object v1, p0, Lorg/bouncycastle/asn1/c0;->elements:[Lorg/bouncycastle/asn1/f;

    invoke-virtual {p1, p2, v0, v1}, Lorg/bouncycastle/asn1/x;->r(ZI[Lorg/bouncycastle/asn1/f;)V

    return-void
.end method

.method r(Z)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/c0;->elements:[Lorg/bouncycastle/asn1/f;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/asn1/c0;->elements:[Lorg/bouncycastle/asn1/f;

    aget-object v2, v2, v1

    invoke-interface {v2}, Lorg/bouncycastle/asn1/f;->g()Lorg/bouncycastle/asn1/z;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/z;->r(Z)I

    move-result v2

    add-int/2addr p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return p1
.end method
