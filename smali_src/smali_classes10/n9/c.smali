.class public Ln9/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivateKey;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private params:Lg9/f;


# direct methods
.method public constructor <init>(Lg9/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln9/c;->params:Lg9/f;

    return-void
.end method


# virtual methods
.method public a()Lorg/bouncycastle/pqc/math/linearalgebra/b;
    .locals 1

    .line 1
    iget-object v0, p0, Ln9/c;->params:Lg9/f;

    invoke-virtual {v0}, Lg9/f;->a()Lorg/bouncycastle/pqc/math/linearalgebra/b;

    move-result-object v0

    return-object v0
.end method

.method public b()Lorg/bouncycastle/pqc/math/linearalgebra/j;
    .locals 1

    .line 1
    iget-object v0, p0, Ln9/c;->params:Lg9/f;

    invoke-virtual {v0}, Lg9/f;->b()Lorg/bouncycastle/pqc/math/linearalgebra/j;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget-object v0, p0, Ln9/c;->params:Lg9/f;

    invoke-virtual {v0}, Lg9/f;->c()I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget-object v0, p0, Ln9/c;->params:Lg9/f;

    invoke-virtual {v0}, Lg9/f;->d()I

    move-result v0

    return v0
.end method

.method public e()Lorg/bouncycastle/pqc/math/linearalgebra/i;
    .locals 1

    .line 1
    iget-object v0, p0, Ln9/c;->params:Lg9/f;

    invoke-virtual {v0}, Lg9/f;->e()Lorg/bouncycastle/pqc/math/linearalgebra/i;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Ln9/c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Ln9/c;

    invoke-virtual {p0}, Ln9/c;->d()I

    move-result v0

    invoke-virtual {p1}, Ln9/c;->d()I

    move-result v2

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Ln9/c;->c()I

    move-result v0

    invoke-virtual {p1}, Ln9/c;->c()I

    move-result v2

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Ln9/c;->a()Lorg/bouncycastle/pqc/math/linearalgebra/b;

    move-result-object v0

    invoke-virtual {p1}, Ln9/c;->a()Lorg/bouncycastle/pqc/math/linearalgebra/b;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ln9/c;->b()Lorg/bouncycastle/pqc/math/linearalgebra/j;

    move-result-object v0

    invoke-virtual {p1}, Ln9/c;->b()Lorg/bouncycastle/pqc/math/linearalgebra/j;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/j;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ln9/c;->g()Lorg/bouncycastle/pqc/math/linearalgebra/a;

    move-result-object v0

    invoke-virtual {p1}, Ln9/c;->g()Lorg/bouncycastle/pqc/math/linearalgebra/a;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ln9/c;->e()Lorg/bouncycastle/pqc/math/linearalgebra/i;

    move-result-object v0

    invoke-virtual {p1}, Ln9/c;->e()Lorg/bouncycastle/pqc/math/linearalgebra/i;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/i;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ln9/c;->f()Lorg/bouncycastle/pqc/math/linearalgebra/i;

    move-result-object v0

    invoke-virtual {p1}, Ln9/c;->f()Lorg/bouncycastle/pqc/math/linearalgebra/i;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/i;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public f()Lorg/bouncycastle/pqc/math/linearalgebra/i;
    .locals 1

    .line 1
    iget-object v0, p0, Ln9/c;->params:Lg9/f;

    invoke-virtual {v0}, Lg9/f;->f()Lorg/bouncycastle/pqc/math/linearalgebra/i;

    move-result-object v0

    return-object v0
.end method

.method public g()Lorg/bouncycastle/pqc/math/linearalgebra/a;
    .locals 1

    .line 1
    iget-object v0, p0, Ln9/c;->params:Lg9/f;

    invoke-virtual {v0}, Lg9/f;->g()Lorg/bouncycastle/pqc/math/linearalgebra/a;

    move-result-object v0

    return-object v0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "McEliece"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 9

    .line 1
    new-instance v8, Le9/c;

    iget-object v0, p0, Ln9/c;->params:Lg9/f;

    invoke-virtual {v0}, Lg9/f;->d()I

    move-result v1

    iget-object v0, p0, Ln9/c;->params:Lg9/f;

    invoke-virtual {v0}, Lg9/f;->c()I

    move-result v2

    iget-object v0, p0, Ln9/c;->params:Lg9/f;

    invoke-virtual {v0}, Lg9/f;->a()Lorg/bouncycastle/pqc/math/linearalgebra/b;

    move-result-object v3

    iget-object v0, p0, Ln9/c;->params:Lg9/f;

    invoke-virtual {v0}, Lg9/f;->b()Lorg/bouncycastle/pqc/math/linearalgebra/j;

    move-result-object v4

    iget-object v0, p0, Ln9/c;->params:Lg9/f;

    invoke-virtual {v0}, Lg9/f;->e()Lorg/bouncycastle/pqc/math/linearalgebra/i;

    move-result-object v5

    iget-object v0, p0, Ln9/c;->params:Lg9/f;

    invoke-virtual {v0}, Lg9/f;->f()Lorg/bouncycastle/pqc/math/linearalgebra/i;

    move-result-object v6

    iget-object v0, p0, Ln9/c;->params:Lg9/f;

    invoke-virtual {v0}, Lg9/f;->g()Lorg/bouncycastle/pqc/math/linearalgebra/a;

    move-result-object v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Le9/c;-><init>(IILorg/bouncycastle/pqc/math/linearalgebra/b;Lorg/bouncycastle/pqc/math/linearalgebra/j;Lorg/bouncycastle/pqc/math/linearalgebra/i;Lorg/bouncycastle/pqc/math/linearalgebra/i;Lorg/bouncycastle/pqc/math/linearalgebra/a;)V

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lw8/a;

    sget-object v2, Le9/e;->mcEliece:Lorg/bouncycastle/asn1/u;

    invoke-direct {v1, v2}, Lw8/a;-><init>(Lorg/bouncycastle/asn1/u;)V

    new-instance v2, Lv8/b;

    invoke-direct {v2, v1, v8}, Lv8/b;-><init>(Lw8/a;Lorg/bouncycastle/asn1/f;)V

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/s;->getEncoded()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
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
    iget-object v0, p0, Ln9/c;->params:Lg9/f;

    invoke-virtual {v0}, Lg9/f;->c()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Ln9/c;->params:Lg9/f;

    invoke-virtual {v1}, Lg9/f;->d()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Ln9/c;->params:Lg9/f;

    invoke-virtual {v1}, Lg9/f;->a()Lorg/bouncycastle/pqc/math/linearalgebra/b;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/b;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Ln9/c;->params:Lg9/f;

    invoke-virtual {v1}, Lg9/f;->b()Lorg/bouncycastle/pqc/math/linearalgebra/j;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/j;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Ln9/c;->params:Lg9/f;

    invoke-virtual {v1}, Lg9/f;->e()Lorg/bouncycastle/pqc/math/linearalgebra/i;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/i;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Ln9/c;->params:Lg9/f;

    invoke-virtual {v1}, Lg9/f;->f()Lorg/bouncycastle/pqc/math/linearalgebra/i;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/i;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Ln9/c;->params:Lg9/f;

    invoke-virtual {v1}, Lg9/f;->g()Lorg/bouncycastle/pqc/math/linearalgebra/a;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/a;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
