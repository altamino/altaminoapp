.class public Lorg/bouncycastle/pqc/crypto/util/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lorg/bouncycastle/crypto/params/a;)Lw8/b;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lh9/b;

    if-eqz v0, :cond_0

    check-cast p0, Lh9/b;

    invoke-virtual {p0}, Lh9/b;->b()I

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/util/e;->d(I)Lw8/a;

    move-result-object v0

    new-instance v1, Lw8/b;

    invoke-virtual {p0}, Lh9/b;->a()[B

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lw8/b;-><init>(Lw8/a;[B)V

    return-object v1

    :cond_0
    instance-of v0, p0, Lk9/c;

    if-eqz v0, :cond_1

    check-cast p0, Lk9/c;

    new-instance v0, Lw8/a;

    sget-object v1, Le9/e;->sphincs256:Lorg/bouncycastle/asn1/u;

    new-instance v2, Le9/h;

    invoke-virtual {p0}, Lk9/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/pqc/crypto/util/e;->f(Ljava/lang/String;)Lw8/a;

    move-result-object v3

    invoke-direct {v2, v3}, Le9/h;-><init>(Lw8/a;)V

    invoke-direct {v0, v1, v2}, Lw8/a;-><init>(Lorg/bouncycastle/asn1/u;Lorg/bouncycastle/asn1/f;)V

    new-instance v1, Lw8/b;

    invoke-virtual {p0}, Lk9/c;->b()[B

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lw8/b;-><init>(Lw8/a;[B)V

    return-object v1

    :cond_1
    instance-of v0, p0, Lorg/bouncycastle/pqc/crypto/newhope/b;

    if-eqz v0, :cond_2

    check-cast p0, Lorg/bouncycastle/pqc/crypto/newhope/b;

    new-instance v0, Lw8/a;

    sget-object v1, Le9/e;->newHope:Lorg/bouncycastle/asn1/u;

    invoke-direct {v0, v1}, Lw8/a;-><init>(Lorg/bouncycastle/asn1/u;)V

    new-instance v1, Lw8/b;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/newhope/b;->a()[B

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lw8/b;-><init>(Lw8/a;[B)V

    return-object v1

    :cond_2
    instance-of v0, p0, Lorg/bouncycastle/pqc/crypto/lms/m;

    if-eqz v0, :cond_3

    check-cast p0, Lorg/bouncycastle/pqc/crypto/lms/m;

    invoke-static {}, Lorg/bouncycastle/pqc/crypto/lms/a;->f()Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/lms/a;->i(I)Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/pqc/crypto/lms/a;->c(Lorg/bouncycastle/util/c;)Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/a;->b()[B

    move-result-object p0

    new-instance v0, Lw8/a;

    sget-object v1, Lv8/a;->id_alg_hss_lms_hashsig:Lorg/bouncycastle/asn1/u;

    invoke-direct {v0, v1}, Lw8/a;-><init>(Lorg/bouncycastle/asn1/u;)V

    new-instance v1, Lw8/b;

    new-instance v2, Lorg/bouncycastle/asn1/r1;

    invoke-direct {v2, p0}, Lorg/bouncycastle/asn1/r1;-><init>([B)V

    invoke-direct {v1, v0, v2}, Lw8/b;-><init>(Lw8/a;Lorg/bouncycastle/asn1/f;)V

    return-object v1

    :cond_3
    instance-of v0, p0, Lorg/bouncycastle/pqc/crypto/lms/d;

    if-eqz v0, :cond_4

    check-cast p0, Lorg/bouncycastle/pqc/crypto/lms/d;

    invoke-static {}, Lorg/bouncycastle/pqc/crypto/lms/a;->f()Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/d;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/lms/a;->i(I)Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/d;->c()Lorg/bouncycastle/pqc/crypto/lms/m;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/pqc/crypto/lms/a;->c(Lorg/bouncycastle/util/c;)Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/a;->b()[B

    move-result-object p0

    new-instance v0, Lw8/a;

    sget-object v1, Lv8/a;->id_alg_hss_lms_hashsig:Lorg/bouncycastle/asn1/u;

    invoke-direct {v0, v1}, Lw8/a;-><init>(Lorg/bouncycastle/asn1/u;)V

    new-instance v1, Lw8/b;

    new-instance v2, Lorg/bouncycastle/asn1/r1;

    invoke-direct {v2, p0}, Lorg/bouncycastle/asn1/r1;-><init>([B)V

    invoke-direct {v1, v0, v2}, Lw8/b;-><init>(Lw8/a;Lorg/bouncycastle/asn1/f;)V

    return-object v1

    :cond_4
    instance-of v0, p0, Ll9/z;

    if-eqz v0, :cond_6

    check-cast p0, Ll9/z;

    invoke-virtual {p0}, Ll9/z;->c()[B

    move-result-object v0

    invoke-virtual {p0}, Ll9/z;->d()[B

    move-result-object v1

    invoke-virtual {p0}, Ll9/z;->getEncoded()[B

    move-result-object v2

    array-length v3, v2

    array-length v4, v0

    array-length v5, v1

    add-int/2addr v4, v5

    if-le v3, v4, :cond_5

    new-instance p0, Lw8/a;

    sget-object v0, Ls8/a;->id_alg_xmss:Lorg/bouncycastle/asn1/u;

    invoke-direct {p0, v0}, Lw8/a;-><init>(Lorg/bouncycastle/asn1/u;)V

    new-instance v0, Lw8/b;

    new-instance v1, Lorg/bouncycastle/asn1/r1;

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/r1;-><init>([B)V

    invoke-direct {v0, p0, v1}, Lw8/b;-><init>(Lw8/a;Lorg/bouncycastle/asn1/f;)V

    return-object v0

    :cond_5
    new-instance v2, Lw8/a;

    sget-object v3, Le9/e;->xmss:Lorg/bouncycastle/asn1/u;

    new-instance v4, Le9/i;

    invoke-virtual {p0}, Ll9/z;->b()Ll9/x;

    move-result-object v5

    invoke-virtual {v5}, Ll9/x;->b()I

    move-result v5

    invoke-virtual {p0}, Ll9/p;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/util/e;->h(Ljava/lang/String;)Lw8/a;

    move-result-object p0

    invoke-direct {v4, v5, p0}, Le9/i;-><init>(ILw8/a;)V

    invoke-direct {v2, v3, v4}, Lw8/a;-><init>(Lorg/bouncycastle/asn1/u;Lorg/bouncycastle/asn1/f;)V

    new-instance p0, Lw8/b;

    new-instance v3, Le9/n;

    invoke-direct {v3, v0, v1}, Le9/n;-><init>([B[B)V

    invoke-direct {p0, v2, v3}, Lw8/b;-><init>(Lw8/a;Lorg/bouncycastle/asn1/f;)V

    return-object p0

    :cond_6
    instance-of v0, p0, Ll9/t;

    if-eqz v0, :cond_8

    check-cast p0, Ll9/t;

    invoke-virtual {p0}, Ll9/t;->c()[B

    move-result-object v0

    invoke-virtual {p0}, Ll9/t;->d()[B

    move-result-object v1

    invoke-virtual {p0}, Ll9/t;->getEncoded()[B

    move-result-object v2

    array-length v3, v2

    array-length v0, v0

    array-length v1, v1

    add-int/2addr v0, v1

    if-le v3, v0, :cond_7

    new-instance p0, Lw8/a;

    sget-object v0, Ls8/a;->id_alg_xmssmt:Lorg/bouncycastle/asn1/u;

    invoke-direct {p0, v0}, Lw8/a;-><init>(Lorg/bouncycastle/asn1/u;)V

    new-instance v0, Lw8/b;

    new-instance v1, Lorg/bouncycastle/asn1/r1;

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/r1;-><init>([B)V

    invoke-direct {v0, p0, v1}, Lw8/b;-><init>(Lw8/a;Lorg/bouncycastle/asn1/f;)V

    return-object v0

    :cond_7
    new-instance v0, Lw8/a;

    sget-object v1, Le9/e;->xmss_mt:Lorg/bouncycastle/asn1/u;

    new-instance v2, Le9/j;

    invoke-virtual {p0}, Ll9/t;->b()Ll9/r;

    move-result-object v3

    invoke-virtual {v3}, Ll9/r;->a()I

    move-result v3

    invoke-virtual {p0}, Ll9/t;->b()Ll9/r;

    move-result-object v4

    invoke-virtual {v4}, Ll9/r;->b()I

    move-result v4

    invoke-virtual {p0}, Ll9/q;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/pqc/crypto/util/e;->h(Ljava/lang/String;)Lw8/a;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Le9/j;-><init>(IILw8/a;)V

    invoke-direct {v0, v1, v2}, Lw8/a;-><init>(Lorg/bouncycastle/asn1/u;Lorg/bouncycastle/asn1/f;)V

    new-instance v1, Lw8/b;

    new-instance v2, Le9/l;

    invoke-virtual {p0}, Ll9/t;->c()[B

    move-result-object v3

    invoke-virtual {p0}, Ll9/t;->d()[B

    move-result-object p0

    invoke-direct {v2, v3, p0}, Le9/l;-><init>([B[B)V

    invoke-direct {v1, v0, v2}, Lw8/b;-><init>(Lw8/a;Lorg/bouncycastle/asn1/f;)V

    return-object v1

    :cond_8
    instance-of v0, p0, Lg9/c;

    if-eqz v0, :cond_9

    check-cast p0, Lg9/c;

    new-instance v0, Le9/b;

    invoke-virtual {p0}, Lg9/c;->c()I

    move-result v1

    invoke-virtual {p0}, Lg9/c;->d()I

    move-result v2

    invoke-virtual {p0}, Lg9/c;->b()Lorg/bouncycastle/pqc/math/linearalgebra/a;

    move-result-object v3

    invoke-virtual {p0}, Lg9/a;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/util/e;->a(Ljava/lang/String;)Lw8/a;

    move-result-object p0

    invoke-direct {v0, v1, v2, v3, p0}, Le9/b;-><init>(IILorg/bouncycastle/pqc/math/linearalgebra/a;Lw8/a;)V

    new-instance p0, Lw8/a;

    sget-object v1, Le9/e;->mcElieceCca2:Lorg/bouncycastle/asn1/u;

    invoke-direct {p0, v1}, Lw8/a;-><init>(Lorg/bouncycastle/asn1/u;)V

    new-instance v1, Lw8/b;

    invoke-direct {v1, p0, v0}, Lw8/b;-><init>(Lw8/a;Lorg/bouncycastle/asn1/f;)V

    return-object v1

    :cond_9
    new-instance p0, Ljava/io/IOException;

    const-string v0, "key parameters not recognized"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
