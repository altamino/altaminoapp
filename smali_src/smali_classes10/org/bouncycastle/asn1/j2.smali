.class public Lorg/bouncycastle/asn1/j2;
.super Lorg/bouncycastle/asn1/c0;
.source "SourceFile"


# instance fields
.field private contentsLength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/asn1/c0;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/asn1/j2;->contentsLength:I

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/f;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/c0;-><init>(Lorg/bouncycastle/asn1/f;)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/bouncycastle/asn1/j2;->contentsLength:I

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/g;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/c0;-><init>(Lorg/bouncycastle/asn1/g;)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/bouncycastle/asn1/j2;->contentsLength:I

    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/f;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/c0;-><init>([Lorg/bouncycastle/asn1/f;)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/bouncycastle/asn1/j2;->contentsLength:I

    return-void
.end method

.method constructor <init>([Lorg/bouncycastle/asn1/f;Z)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/asn1/c0;-><init>([Lorg/bouncycastle/asn1/f;Z)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/bouncycastle/asn1/j2;->contentsLength:I

    return-void
.end method

.method private G()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/bouncycastle/asn1/j2;->contentsLength:I

    if-gez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/asn1/c0;->elements:[Lorg/bouncycastle/asn1/f;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v3, p0, Lorg/bouncycastle/asn1/c0;->elements:[Lorg/bouncycastle/asn1/f;

    aget-object v3, v3, v1

    invoke-interface {v3}, Lorg/bouncycastle/asn1/f;->g()Lorg/bouncycastle/asn1/z;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/z;->v()Lorg/bouncycastle/asn1/z;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/z;->r(Z)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput v2, p0, Lorg/bouncycastle/asn1/j2;->contentsLength:I

    :cond_1
    iget v0, p0, Lorg/bouncycastle/asn1/j2;->contentsLength:I

    return v0
.end method


# virtual methods
.method B()Lorg/bouncycastle/asn1/c;
    .locals 3

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/e2;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/c0;->w()[Lorg/bouncycastle/asn1/c;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/s0;->E([Lorg/bouncycastle/asn1/c;)[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/e2;-><init>([BZ)V

    return-object v0
.end method

.method C()Lorg/bouncycastle/asn1/j;
    .locals 1

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/g2;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/g2;-><init>(Lorg/bouncycastle/asn1/j2;)V

    return-object v0
.end method

.method D()Lorg/bouncycastle/asn1/v;
    .locals 2

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/r1;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/c0;->x()[Lorg/bouncycastle/asn1/v;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/v0;->A([Lorg/bouncycastle/asn1/v;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/r1;-><init>([B)V

    return-object v0
.end method

.method E()Lorg/bouncycastle/asn1/d0;
    .locals 3

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/l2;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/c0;->F()[Lorg/bouncycastle/asn1/f;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/l2;-><init>(Z[Lorg/bouncycastle/asn1/f;)V

    return-object v0
.end method

.method j(Lorg/bouncycastle/asn1/x;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/16 v0, 0x30

    invoke-virtual {p1, p2, v0}, Lorg/bouncycastle/asn1/x;->s(ZI)V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x;->e()Lorg/bouncycastle/asn1/i2;

    move-result-object p2

    iget-object v0, p0, Lorg/bouncycastle/asn1/c0;->elements:[Lorg/bouncycastle/asn1/f;

    array-length v0, v0

    iget v1, p0, Lorg/bouncycastle/asn1/j2;->contentsLength:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gez v1, :cond_2

    const/16 v1, 0x10

    if-le v0, v1, :cond_0

    goto :goto_2

    :cond_0
    new-array v1, v0, [Lorg/bouncycastle/asn1/z;

    move v4, v2

    move v5, v4

    :goto_0
    if-ge v4, v0, :cond_1

    iget-object v6, p0, Lorg/bouncycastle/asn1/c0;->elements:[Lorg/bouncycastle/asn1/f;

    aget-object v6, v6, v4

    invoke-interface {v6}, Lorg/bouncycastle/asn1/f;->g()Lorg/bouncycastle/asn1/z;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/z;->v()Lorg/bouncycastle/asn1/z;

    move-result-object v6

    aput-object v6, v1, v4

    invoke-virtual {v6, v3}, Lorg/bouncycastle/asn1/z;->r(Z)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iput v5, p0, Lorg/bouncycastle/asn1/j2;->contentsLength:I

    invoke-virtual {p1, v5}, Lorg/bouncycastle/asn1/x;->k(I)V

    :goto_1
    if-ge v2, v0, :cond_3

    aget-object p1, v1, v2

    invoke-virtual {p2, p1, v3}, Lorg/bouncycastle/asn1/x;->u(Lorg/bouncycastle/asn1/z;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    invoke-direct {p0}, Lorg/bouncycastle/asn1/j2;->G()I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/x;->k(I)V

    :goto_3
    if-ge v2, v0, :cond_3

    iget-object p1, p0, Lorg/bouncycastle/asn1/c0;->elements:[Lorg/bouncycastle/asn1/f;

    aget-object p1, p1, v2

    invoke-interface {p1}, Lorg/bouncycastle/asn1/f;->g()Lorg/bouncycastle/asn1/z;

    move-result-object p1

    invoke-virtual {p2, p1, v3}, Lorg/bouncycastle/asn1/x;->u(Lorg/bouncycastle/asn1/z;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
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
    invoke-direct {p0}, Lorg/bouncycastle/asn1/j2;->G()I

    move-result v0

    invoke-static {p1, v0}, Lorg/bouncycastle/asn1/x;->g(ZI)I

    move-result p1

    return p1
.end method

.method v()Lorg/bouncycastle/asn1/z;
    .locals 0

    .line 1
    return-object p0
.end method
