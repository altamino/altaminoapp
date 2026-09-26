.class public Lg9/f;
.super Lg9/d;
.source "SourceFile"


# instance fields
.field private field:Lorg/bouncycastle/pqc/math/linearalgebra/b;

.field private goppaPoly:Lorg/bouncycastle/pqc/math/linearalgebra/j;

.field private h:Lorg/bouncycastle/pqc/math/linearalgebra/a;

.field private k:I

.field private n:I

.field private oid:Ljava/lang/String;

.field private p1:Lorg/bouncycastle/pqc/math/linearalgebra/i;

.field private p2:Lorg/bouncycastle/pqc/math/linearalgebra/i;

.field private qInv:[Lorg/bouncycastle/pqc/math/linearalgebra/j;

.field private sInv:Lorg/bouncycastle/pqc/math/linearalgebra/a;


# direct methods
.method public constructor <init>(IILorg/bouncycastle/pqc/math/linearalgebra/b;Lorg/bouncycastle/pqc/math/linearalgebra/j;Lorg/bouncycastle/pqc/math/linearalgebra/i;Lorg/bouncycastle/pqc/math/linearalgebra/i;Lorg/bouncycastle/pqc/math/linearalgebra/a;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lg9/d;-><init>(ZLg9/e;)V

    iput p2, p0, Lg9/f;->k:I

    iput p1, p0, Lg9/f;->n:I

    iput-object p3, p0, Lg9/f;->field:Lorg/bouncycastle/pqc/math/linearalgebra/b;

    iput-object p4, p0, Lg9/f;->goppaPoly:Lorg/bouncycastle/pqc/math/linearalgebra/j;

    iput-object p7, p0, Lg9/f;->sInv:Lorg/bouncycastle/pqc/math/linearalgebra/a;

    iput-object p5, p0, Lg9/f;->p1:Lorg/bouncycastle/pqc/math/linearalgebra/i;

    iput-object p6, p0, Lg9/f;->p2:Lorg/bouncycastle/pqc/math/linearalgebra/i;

    invoke-static {p3, p4}, Lorg/bouncycastle/pqc/math/linearalgebra/d;->a(Lorg/bouncycastle/pqc/math/linearalgebra/b;Lorg/bouncycastle/pqc/math/linearalgebra/j;)Lorg/bouncycastle/pqc/math/linearalgebra/a;

    move-result-object p1

    iput-object p1, p0, Lg9/f;->h:Lorg/bouncycastle/pqc/math/linearalgebra/a;

    new-instance p1, Lorg/bouncycastle/pqc/math/linearalgebra/l;

    invoke-direct {p1, p3, p4}, Lorg/bouncycastle/pqc/math/linearalgebra/l;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/b;Lorg/bouncycastle/pqc/math/linearalgebra/j;)V

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/l;->c()[Lorg/bouncycastle/pqc/math/linearalgebra/j;

    move-result-object p1

    iput-object p1, p0, Lg9/f;->qInv:[Lorg/bouncycastle/pqc/math/linearalgebra/j;

    return-void
.end method

.method public constructor <init>(II[B[B[B[B[B[B[[B)V
    .locals 2

    .line 2
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lg9/d;-><init>(ZLg9/e;)V

    iput p1, p0, Lg9/f;->n:I

    iput p2, p0, Lg9/f;->k:I

    new-instance p1, Lorg/bouncycastle/pqc/math/linearalgebra/b;

    invoke-direct {p1, p3}, Lorg/bouncycastle/pqc/math/linearalgebra/b;-><init>([B)V

    iput-object p1, p0, Lg9/f;->field:Lorg/bouncycastle/pqc/math/linearalgebra/b;

    new-instance p2, Lorg/bouncycastle/pqc/math/linearalgebra/j;

    invoke-direct {p2, p1, p4}, Lorg/bouncycastle/pqc/math/linearalgebra/j;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/b;[B)V

    iput-object p2, p0, Lg9/f;->goppaPoly:Lorg/bouncycastle/pqc/math/linearalgebra/j;

    new-instance p1, Lorg/bouncycastle/pqc/math/linearalgebra/a;

    invoke-direct {p1, p5}, Lorg/bouncycastle/pqc/math/linearalgebra/a;-><init>([B)V

    iput-object p1, p0, Lg9/f;->sInv:Lorg/bouncycastle/pqc/math/linearalgebra/a;

    new-instance p1, Lorg/bouncycastle/pqc/math/linearalgebra/i;

    invoke-direct {p1, p6}, Lorg/bouncycastle/pqc/math/linearalgebra/i;-><init>([B)V

    iput-object p1, p0, Lg9/f;->p1:Lorg/bouncycastle/pqc/math/linearalgebra/i;

    new-instance p1, Lorg/bouncycastle/pqc/math/linearalgebra/i;

    invoke-direct {p1, p7}, Lorg/bouncycastle/pqc/math/linearalgebra/i;-><init>([B)V

    iput-object p1, p0, Lg9/f;->p2:Lorg/bouncycastle/pqc/math/linearalgebra/i;

    new-instance p1, Lorg/bouncycastle/pqc/math/linearalgebra/a;

    invoke-direct {p1, p8}, Lorg/bouncycastle/pqc/math/linearalgebra/a;-><init>([B)V

    iput-object p1, p0, Lg9/f;->h:Lorg/bouncycastle/pqc/math/linearalgebra/a;

    array-length p1, p9

    new-array p1, p1, [Lorg/bouncycastle/pqc/math/linearalgebra/j;

    iput-object p1, p0, Lg9/f;->qInv:[Lorg/bouncycastle/pqc/math/linearalgebra/j;

    const/4 p1, 0x0

    :goto_0
    array-length p2, p9

    if-ge p1, p2, :cond_0

    iget-object p2, p0, Lg9/f;->qInv:[Lorg/bouncycastle/pqc/math/linearalgebra/j;

    new-instance p3, Lorg/bouncycastle/pqc/math/linearalgebra/j;

    iget-object p4, p0, Lg9/f;->field:Lorg/bouncycastle/pqc/math/linearalgebra/b;

    aget-object p5, p9, p1

    invoke-direct {p3, p4, p5}, Lorg/bouncycastle/pqc/math/linearalgebra/j;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/b;[B)V

    aput-object p3, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lorg/bouncycastle/pqc/math/linearalgebra/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lg9/f;->field:Lorg/bouncycastle/pqc/math/linearalgebra/b;

    return-object v0
.end method

.method public b()Lorg/bouncycastle/pqc/math/linearalgebra/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lg9/f;->goppaPoly:Lorg/bouncycastle/pqc/math/linearalgebra/j;

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lg9/f;->k:I

    return v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lg9/f;->n:I

    return v0
.end method

.method public e()Lorg/bouncycastle/pqc/math/linearalgebra/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lg9/f;->p1:Lorg/bouncycastle/pqc/math/linearalgebra/i;

    return-object v0
.end method

.method public f()Lorg/bouncycastle/pqc/math/linearalgebra/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lg9/f;->p2:Lorg/bouncycastle/pqc/math/linearalgebra/i;

    return-object v0
.end method

.method public g()Lorg/bouncycastle/pqc/math/linearalgebra/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lg9/f;->sInv:Lorg/bouncycastle/pqc/math/linearalgebra/a;

    return-object v0
.end method
