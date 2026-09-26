.class public Le9/a;
.super Lorg/bouncycastle/asn1/s;
.source "SourceFile"


# instance fields
.field private digest:Lw8/a;

.field private encField:[B

.field private encGp:[B

.field private encP:[B

.field private k:I

.field private n:I


# direct methods
.method public constructor <init>(IILorg/bouncycastle/pqc/math/linearalgebra/b;Lorg/bouncycastle/pqc/math/linearalgebra/j;Lorg/bouncycastle/pqc/math/linearalgebra/i;Lw8/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/asn1/s;-><init>()V

    iput p1, p0, Le9/a;->n:I

    iput p2, p0, Le9/a;->k:I

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/math/linearalgebra/b;->e()[B

    move-result-object p1

    iput-object p1, p0, Le9/a;->encField:[B

    invoke-virtual {p4}, Lorg/bouncycastle/pqc/math/linearalgebra/j;->j()[B

    move-result-object p1

    iput-object p1, p0, Le9/a;->encGp:[B

    invoke-virtual {p5}, Lorg/bouncycastle/pqc/math/linearalgebra/i;->a()[B

    move-result-object p1

    iput-object p1, p0, Le9/a;->encP:[B

    iput-object p6, p0, Le9/a;->digest:Lw8/a;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/c0;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/bouncycastle/asn1/s;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/c0;->z(I)Lorg/bouncycastle/asn1/f;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/p;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/p;->C()I

    move-result v0

    iput v0, p0, Le9/a;->n:I

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/c0;->z(I)Lorg/bouncycastle/asn1/f;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/p;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/p;->C()I

    move-result v0

    iput v0, p0, Le9/a;->k:I

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/c0;->z(I)Lorg/bouncycastle/asn1/f;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/v;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/v;->z()[B

    move-result-object v0

    iput-object v0, p0, Le9/a;->encField:[B

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/c0;->z(I)Lorg/bouncycastle/asn1/f;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/v;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/v;->z()[B

    move-result-object v0

    iput-object v0, p0, Le9/a;->encGp:[B

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/c0;->z(I)Lorg/bouncycastle/asn1/f;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/v;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/v;->z()[B

    move-result-object v0

    iput-object v0, p0, Le9/a;->encP:[B

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/c0;->z(I)Lorg/bouncycastle/asn1/f;

    move-result-object p1

    invoke-static {p1}, Lw8/a;->m(Ljava/lang/Object;)Lw8/a;

    move-result-object p1

    iput-object p1, p0, Le9/a;->digest:Lw8/a;

    return-void
.end method

.method public static q(Ljava/lang/Object;)Le9/a;
    .locals 1

    .line 1
    instance-of v0, p0, Le9/a;

    if-eqz v0, :cond_0

    check-cast p0, Le9/a;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Le9/a;

    invoke-static {p0}, Lorg/bouncycastle/asn1/c0;->y(Ljava/lang/Object;)Lorg/bouncycastle/asn1/c0;

    move-result-object p0

    invoke-direct {v0, p0}, Le9/a;-><init>(Lorg/bouncycastle/asn1/c0;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public g()Lorg/bouncycastle/asn1/z;
    .locals 4

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/g;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/g;-><init>()V

    new-instance v1, Lorg/bouncycastle/asn1/p;

    iget v2, p0, Le9/a;->n:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/p;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/g;->a(Lorg/bouncycastle/asn1/f;)V

    new-instance v1, Lorg/bouncycastle/asn1/p;

    iget v2, p0, Le9/a;->k:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/p;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/g;->a(Lorg/bouncycastle/asn1/f;)V

    new-instance v1, Lorg/bouncycastle/asn1/r1;

    iget-object v2, p0, Le9/a;->encField:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/r1;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/g;->a(Lorg/bouncycastle/asn1/f;)V

    new-instance v1, Lorg/bouncycastle/asn1/r1;

    iget-object v2, p0, Le9/a;->encGp:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/r1;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/g;->a(Lorg/bouncycastle/asn1/f;)V

    new-instance v1, Lorg/bouncycastle/asn1/r1;

    iget-object v2, p0, Le9/a;->encP:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/r1;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/g;->a(Lorg/bouncycastle/asn1/f;)V

    iget-object v1, p0, Le9/a;->digest:Lw8/a;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/g;->a(Lorg/bouncycastle/asn1/f;)V

    new-instance v1, Lorg/bouncycastle/asn1/v1;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/v1;-><init>(Lorg/bouncycastle/asn1/g;)V

    return-object v1
.end method

.method public j()Lw8/a;
    .locals 1

    .line 1
    iget-object v0, p0, Le9/a;->digest:Lw8/a;

    return-object v0
.end method

.method public m()Lorg/bouncycastle/pqc/math/linearalgebra/b;
    .locals 2

    .line 1
    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/b;

    iget-object v1, p0, Le9/a;->encField:[B

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/b;-><init>([B)V

    return-object v0
.end method

.method public p()Lorg/bouncycastle/pqc/math/linearalgebra/j;
    .locals 3

    .line 1
    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/j;

    invoke-virtual {p0}, Le9/a;->m()Lorg/bouncycastle/pqc/math/linearalgebra/b;

    move-result-object v1

    iget-object v2, p0, Le9/a;->encGp:[B

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/j;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/b;[B)V

    return-object v0
.end method

.method public r()I
    .locals 1

    .line 1
    iget v0, p0, Le9/a;->k:I

    return v0
.end method

.method public s()I
    .locals 1

    .line 1
    iget v0, p0, Le9/a;->n:I

    return v0
.end method

.method public t()Lorg/bouncycastle/pqc/math/linearalgebra/i;
    .locals 2

    .line 1
    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/i;

    iget-object v1, p0, Le9/a;->encP:[B

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/i;-><init>([B)V

    return-object v0
.end method
