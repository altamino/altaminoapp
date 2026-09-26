.class public Le9/d;
.super Lorg/bouncycastle/asn1/s;
.source "SourceFile"


# instance fields
.field private final g:Lorg/bouncycastle/pqc/math/linearalgebra/a;

.field private final n:I

.field private final t:I


# direct methods
.method public constructor <init>(IILorg/bouncycastle/pqc/math/linearalgebra/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/asn1/s;-><init>()V

    iput p1, p0, Le9/d;->n:I

    iput p2, p0, Le9/d;->t:I

    new-instance p1, Lorg/bouncycastle/pqc/math/linearalgebra/a;

    invoke-direct {p1, p3}, Lorg/bouncycastle/pqc/math/linearalgebra/a;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/a;)V

    iput-object p1, p0, Le9/d;->g:Lorg/bouncycastle/pqc/math/linearalgebra/a;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/c0;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lorg/bouncycastle/asn1/s;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/c0;->z(I)Lorg/bouncycastle/asn1/f;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/p;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/p;->C()I

    move-result v0

    iput v0, p0, Le9/d;->n:I

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/c0;->z(I)Lorg/bouncycastle/asn1/f;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/p;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/p;->C()I

    move-result v0

    iput v0, p0, Le9/d;->t:I

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/a;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/c0;->z(I)Lorg/bouncycastle/asn1/f;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/v;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/v;->z()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/a;-><init>([B)V

    iput-object v0, p0, Le9/d;->g:Lorg/bouncycastle/pqc/math/linearalgebra/a;

    return-void
.end method

.method public static m(Ljava/lang/Object;)Le9/d;
    .locals 1

    .line 1
    instance-of v0, p0, Le9/d;

    if-eqz v0, :cond_0

    check-cast p0, Le9/d;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Le9/d;

    invoke-static {p0}, Lorg/bouncycastle/asn1/c0;->y(Ljava/lang/Object;)Lorg/bouncycastle/asn1/c0;

    move-result-object p0

    invoke-direct {v0, p0}, Le9/d;-><init>(Lorg/bouncycastle/asn1/c0;)V

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

    iget v2, p0, Le9/d;->n:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/p;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/g;->a(Lorg/bouncycastle/asn1/f;)V

    new-instance v1, Lorg/bouncycastle/asn1/p;

    iget v2, p0, Le9/d;->t:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/p;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/g;->a(Lorg/bouncycastle/asn1/f;)V

    new-instance v1, Lorg/bouncycastle/asn1/r1;

    iget-object v2, p0, Le9/d;->g:Lorg/bouncycastle/pqc/math/linearalgebra/a;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/linearalgebra/a;->h()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/r1;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/g;->a(Lorg/bouncycastle/asn1/f;)V

    new-instance v1, Lorg/bouncycastle/asn1/v1;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/v1;-><init>(Lorg/bouncycastle/asn1/g;)V

    return-object v1
.end method

.method public j()Lorg/bouncycastle/pqc/math/linearalgebra/a;
    .locals 2

    .line 1
    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/a;

    iget-object v1, p0, Le9/d;->g:Lorg/bouncycastle/pqc/math/linearalgebra/a;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/a;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/a;)V

    return-object v0
.end method

.method public p()I
    .locals 1

    .line 1
    iget v0, p0, Le9/d;->n:I

    return v0
.end method

.method public q()I
    .locals 1

    .line 1
    iget v0, p0, Le9/d;->t:I

    return v0
.end method
