.class public Lg9/b;
.super Lg9/a;
.source "SourceFile"


# instance fields
.field private field:Lorg/bouncycastle/pqc/math/linearalgebra/b;

.field private goppaPoly:Lorg/bouncycastle/pqc/math/linearalgebra/j;

.field private h:Lorg/bouncycastle/pqc/math/linearalgebra/a;

.field private k:I

.field private n:I

.field private p:Lorg/bouncycastle/pqc/math/linearalgebra/i;

.field private qInv:[Lorg/bouncycastle/pqc/math/linearalgebra/j;


# direct methods
.method public constructor <init>(IILorg/bouncycastle/pqc/math/linearalgebra/b;Lorg/bouncycastle/pqc/math/linearalgebra/j;Lorg/bouncycastle/pqc/math/linearalgebra/a;Lorg/bouncycastle/pqc/math/linearalgebra/i;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, v0, p7}, Lg9/a;-><init>(ZLjava/lang/String;)V

    iput p1, p0, Lg9/b;->n:I

    iput p2, p0, Lg9/b;->k:I

    iput-object p3, p0, Lg9/b;->field:Lorg/bouncycastle/pqc/math/linearalgebra/b;

    iput-object p4, p0, Lg9/b;->goppaPoly:Lorg/bouncycastle/pqc/math/linearalgebra/j;

    iput-object p5, p0, Lg9/b;->h:Lorg/bouncycastle/pqc/math/linearalgebra/a;

    iput-object p6, p0, Lg9/b;->p:Lorg/bouncycastle/pqc/math/linearalgebra/i;

    new-instance p1, Lorg/bouncycastle/pqc/math/linearalgebra/l;

    invoke-direct {p1, p3, p4}, Lorg/bouncycastle/pqc/math/linearalgebra/l;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/b;Lorg/bouncycastle/pqc/math/linearalgebra/j;)V

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/l;->c()[Lorg/bouncycastle/pqc/math/linearalgebra/j;

    move-result-object p1

    iput-object p1, p0, Lg9/b;->qInv:[Lorg/bouncycastle/pqc/math/linearalgebra/j;

    return-void
.end method

.method public constructor <init>(IILorg/bouncycastle/pqc/math/linearalgebra/b;Lorg/bouncycastle/pqc/math/linearalgebra/j;Lorg/bouncycastle/pqc/math/linearalgebra/i;Ljava/lang/String;)V
    .locals 8

    .line 2
    invoke-static {p3, p4}, Lorg/bouncycastle/pqc/math/linearalgebra/d;->a(Lorg/bouncycastle/pqc/math/linearalgebra/b;Lorg/bouncycastle/pqc/math/linearalgebra/j;)Lorg/bouncycastle/pqc/math/linearalgebra/a;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lg9/b;-><init>(IILorg/bouncycastle/pqc/math/linearalgebra/b;Lorg/bouncycastle/pqc/math/linearalgebra/j;Lorg/bouncycastle/pqc/math/linearalgebra/a;Lorg/bouncycastle/pqc/math/linearalgebra/i;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public b()Lorg/bouncycastle/pqc/math/linearalgebra/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lg9/b;->field:Lorg/bouncycastle/pqc/math/linearalgebra/b;

    return-object v0
.end method

.method public c()Lorg/bouncycastle/pqc/math/linearalgebra/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lg9/b;->goppaPoly:Lorg/bouncycastle/pqc/math/linearalgebra/j;

    return-object v0
.end method

.method public d()Lorg/bouncycastle/pqc/math/linearalgebra/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lg9/b;->h:Lorg/bouncycastle/pqc/math/linearalgebra/a;

    return-object v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lg9/b;->k:I

    return v0
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lg9/b;->n:I

    return v0
.end method

.method public g()Lorg/bouncycastle/pqc/math/linearalgebra/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lg9/b;->p:Lorg/bouncycastle/pqc/math/linearalgebra/i;

    return-object v0
.end method
