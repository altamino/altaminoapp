.class public Lorg/bouncycastle/asn1/y1;
.super Lorg/bouncycastle/asn1/h0;
.source "SourceFile"


# direct methods
.method constructor <init>(IIILorg/bouncycastle/asn1/f;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/asn1/h0;-><init>(IIILorg/bouncycastle/asn1/f;)V

    return-void
.end method

.method public constructor <init>(IILorg/bouncycastle/asn1/f;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/bouncycastle/asn1/h0;-><init>(ZIILorg/bouncycastle/asn1/f;)V

    return-void
.end method

.method public constructor <init>(ILorg/bouncycastle/asn1/f;)V
    .locals 1

    .line 3
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lorg/bouncycastle/asn1/h0;-><init>(ZILorg/bouncycastle/asn1/f;)V

    return-void
.end method

.method public constructor <init>(ZIILorg/bouncycastle/asn1/f;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/asn1/h0;-><init>(ZIILorg/bouncycastle/asn1/f;)V

    return-void
.end method

.method public constructor <init>(ZILorg/bouncycastle/asn1/f;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/asn1/h0;-><init>(ZILorg/bouncycastle/asn1/f;)V

    return-void
.end method


# virtual methods
.method H(Lorg/bouncycastle/asn1/z;)Lorg/bouncycastle/asn1/c0;
    .locals 1

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/v1;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/v1;-><init>(Lorg/bouncycastle/asn1/f;)V

    return-object v0
.end method

.method j(Lorg/bouncycastle/asn1/x;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/asn1/h0;->obj:Lorg/bouncycastle/asn1/f;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/f;->g()Lorg/bouncycastle/asn1/z;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/z;->u()Lorg/bouncycastle/asn1/z;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/h0;->G()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz p2, :cond_2

    iget p2, p0, Lorg/bouncycastle/asn1/h0;->tagClass:I

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/z;->m()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    or-int/lit8 p2, p2, 0x20

    :cond_1
    iget v3, p0, Lorg/bouncycastle/asn1/h0;->tagNo:I

    invoke-virtual {p1, v2, p2, v3}, Lorg/bouncycastle/asn1/x;->t(ZII)V

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/z;->r(Z)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/bouncycastle/asn1/x;->k(I)V

    :cond_3
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x;->d()Lorg/bouncycastle/asn1/t1;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lorg/bouncycastle/asn1/z;->j(Lorg/bouncycastle/asn1/x;Z)V

    return-void
.end method

.method m()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/h0;->G()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/asn1/h0;->obj:Lorg/bouncycastle/asn1/f;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/f;->g()Lorg/bouncycastle/asn1/z;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/z;->u()Lorg/bouncycastle/asn1/z;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/z;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method r(Z)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/asn1/h0;->obj:Lorg/bouncycastle/asn1/f;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/f;->g()Lorg/bouncycastle/asn1/z;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/z;->u()Lorg/bouncycastle/asn1/z;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/h0;->G()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/z;->r(Z)I

    move-result v0

    if-eqz v1, :cond_0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x;->f(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    if-eqz p1, :cond_1

    iget p1, p0, Lorg/bouncycastle/asn1/h0;->tagNo:I

    invoke-static {p1}, Lorg/bouncycastle/asn1/x;->h(I)I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    add-int/2addr v0, p1

    return v0
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
