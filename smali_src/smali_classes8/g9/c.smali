.class public Lg9/c;
.super Lg9/a;
.source "SourceFile"


# instance fields
.field private matrixG:Lorg/bouncycastle/pqc/math/linearalgebra/a;

.field private n:I

.field private t:I


# direct methods
.method public constructor <init>(IILorg/bouncycastle/pqc/math/linearalgebra/a;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0, p4}, Lg9/a;-><init>(ZLjava/lang/String;)V

    iput p1, p0, Lg9/c;->n:I

    iput p2, p0, Lg9/c;->t:I

    new-instance p1, Lorg/bouncycastle/pqc/math/linearalgebra/a;

    invoke-direct {p1, p3}, Lorg/bouncycastle/pqc/math/linearalgebra/a;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/a;)V

    iput-object p1, p0, Lg9/c;->matrixG:Lorg/bouncycastle/pqc/math/linearalgebra/a;

    return-void
.end method


# virtual methods
.method public b()Lorg/bouncycastle/pqc/math/linearalgebra/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lg9/c;->matrixG:Lorg/bouncycastle/pqc/math/linearalgebra/a;

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lg9/c;->n:I

    return v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lg9/c;->t:I

    return v0
.end method
