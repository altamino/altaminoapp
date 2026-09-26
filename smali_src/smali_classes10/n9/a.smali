.class public Ln9/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivateKey;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private params:Lg9/b;


# direct methods
.method public constructor <init>(Lg9/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln9/a;->params:Lg9/b;

    return-void
.end method


# virtual methods
.method public a()Lorg/bouncycastle/pqc/math/linearalgebra/b;
    .locals 1

    .line 1
    iget-object v0, p0, Ln9/a;->params:Lg9/b;

    invoke-virtual {v0}, Lg9/b;->b()Lorg/bouncycastle/pqc/math/linearalgebra/b;

    move-result-object v0

    return-object v0
.end method

.method public b()Lorg/bouncycastle/pqc/math/linearalgebra/j;
    .locals 1

    .line 1
    iget-object v0, p0, Ln9/a;->params:Lg9/b;

    invoke-virtual {v0}, Lg9/b;->c()Lorg/bouncycastle/pqc/math/linearalgebra/j;

    move-result-object v0

    return-object v0
.end method

.method public c()Lorg/bouncycastle/pqc/math/linearalgebra/a;
    .locals 1

    .line 1
    iget-object v0, p0, Ln9/a;->params:Lg9/b;

    invoke-virtual {v0}, Lg9/b;->d()Lorg/bouncycastle/pqc/math/linearalgebra/a;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget-object v0, p0, Ln9/a;->params:Lg9/b;

    invoke-virtual {v0}, Lg9/b;->e()I

    move-result v0

    return v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget-object v0, p0, Ln9/a;->params:Lg9/b;

    invoke-virtual {v0}, Lg9/b;->f()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p1, Ln9/a;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Ln9/a;

    invoke-virtual {p0}, Ln9/a;->e()I

    move-result v1

    invoke-virtual {p1}, Ln9/a;->e()I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Ln9/a;->d()I

    move-result v1

    invoke-virtual {p1}, Ln9/a;->d()I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Ln9/a;->a()Lorg/bouncycastle/pqc/math/linearalgebra/b;

    move-result-object v1

    invoke-virtual {p1}, Ln9/a;->a()Lorg/bouncycastle/pqc/math/linearalgebra/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/b;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ln9/a;->b()Lorg/bouncycastle/pqc/math/linearalgebra/j;

    move-result-object v1

    invoke-virtual {p1}, Ln9/a;->b()Lorg/bouncycastle/pqc/math/linearalgebra/j;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/j;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ln9/a;->f()Lorg/bouncycastle/pqc/math/linearalgebra/i;

    move-result-object v1

    invoke-virtual {p1}, Ln9/a;->f()Lorg/bouncycastle/pqc/math/linearalgebra/i;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/i;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ln9/a;->c()Lorg/bouncycastle/pqc/math/linearalgebra/a;

    move-result-object v1

    invoke-virtual {p1}, Ln9/a;->c()Lorg/bouncycastle/pqc/math/linearalgebra/a;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public f()Lorg/bouncycastle/pqc/math/linearalgebra/i;
    .locals 1

    .line 1
    iget-object v0, p0, Ln9/a;->params:Lg9/b;

    invoke-virtual {v0}, Lg9/b;->g()Lorg/bouncycastle/pqc/math/linearalgebra/i;

    move-result-object v0

    return-object v0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "McEliece-CCA2"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 8

    .line 1
    :try_start_0
    new-instance v7, Le9/a;

    invoke-virtual {p0}, Ln9/a;->e()I

    move-result v1

    invoke-virtual {p0}, Ln9/a;->d()I

    move-result v2

    invoke-virtual {p0}, Ln9/a;->a()Lorg/bouncycastle/pqc/math/linearalgebra/b;

    move-result-object v3

    invoke-virtual {p0}, Ln9/a;->b()Lorg/bouncycastle/pqc/math/linearalgebra/j;

    move-result-object v4

    invoke-virtual {p0}, Ln9/a;->f()Lorg/bouncycastle/pqc/math/linearalgebra/i;

    move-result-object v5

    iget-object v0, p0, Ln9/a;->params:Lg9/b;

    invoke-virtual {v0}, Lg9/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ln9/g;->a(Ljava/lang/String;)Lw8/a;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Le9/a;-><init>(IILorg/bouncycastle/pqc/math/linearalgebra/b;Lorg/bouncycastle/pqc/math/linearalgebra/j;Lorg/bouncycastle/pqc/math/linearalgebra/i;Lw8/a;)V

    new-instance v0, Lw8/a;

    sget-object v1, Le9/e;->mcElieceCca2:Lorg/bouncycastle/asn1/u;

    invoke-direct {v0, v1}, Lw8/a;-><init>(Lorg/bouncycastle/asn1/u;)V

    new-instance v1, Lv8/b;

    invoke-direct {v1, v0, v7}, Lv8/b;-><init>(Lw8/a;Lorg/bouncycastle/asn1/f;)V

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/s;->getEncoded()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "PKCS#8"

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Ln9/a;->params:Lg9/b;

    invoke-virtual {v0}, Lg9/b;->e()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Ln9/a;->params:Lg9/b;

    invoke-virtual {v1}, Lg9/b;->f()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Ln9/a;->params:Lg9/b;

    invoke-virtual {v1}, Lg9/b;->b()Lorg/bouncycastle/pqc/math/linearalgebra/b;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/b;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Ln9/a;->params:Lg9/b;

    invoke-virtual {v1}, Lg9/b;->c()Lorg/bouncycastle/pqc/math/linearalgebra/j;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/j;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Ln9/a;->params:Lg9/b;

    invoke-virtual {v1}, Lg9/b;->g()Lorg/bouncycastle/pqc/math/linearalgebra/i;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/i;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Ln9/a;->params:Lg9/b;

    invoke-virtual {v1}, Lg9/b;->d()Lorg/bouncycastle/pqc/math/linearalgebra/a;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/a;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
