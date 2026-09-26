.class public Lg9/g;
.super Lg9/d;
.source "SourceFile"


# instance fields
.field private g:Lorg/bouncycastle/pqc/math/linearalgebra/a;

.field private n:I

.field private t:I


# direct methods
.method public constructor <init>(IILorg/bouncycastle/pqc/math/linearalgebra/a;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lg9/d;-><init>(ZLg9/e;)V

    iput p1, p0, Lg9/g;->n:I

    iput p2, p0, Lg9/g;->t:I

    new-instance p1, Lorg/bouncycastle/pqc/math/linearalgebra/a;

    invoke-direct {p1, p3}, Lorg/bouncycastle/pqc/math/linearalgebra/a;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/a;)V

    iput-object p1, p0, Lg9/g;->g:Lorg/bouncycastle/pqc/math/linearalgebra/a;

    return-void
.end method


# virtual methods
.method public a()Lorg/bouncycastle/pqc/math/linearalgebra/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lg9/g;->g:Lorg/bouncycastle/pqc/math/linearalgebra/a;

    return-object v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lg9/g;->n:I

    return v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lg9/g;->t:I

    return v0
.end method
