.class public Lorg/bouncycastle/pqc/crypto/util/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lorg/bouncycastle/crypto/params/a;Lorg/bouncycastle/asn1/d0;)Lv8/b;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lh9/a;

    if-eqz v0, :cond_0

    check-cast p0, Lh9/a;

    invoke-virtual {p0}, Lh9/a;->b()I

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/util/e;->d(I)Lw8/a;

    move-result-object v0

    new-instance v1, Lv8/b;

    new-instance v2, Lorg/bouncycastle/asn1/r1;

    invoke-virtual {p0}, Lh9/a;->a()[B

    move-result-object p0

    invoke-direct {v2, p0}, Lorg/bouncycastle/asn1/r1;-><init>([B)V

    invoke-direct {v1, v0, v2, p1}, Lv8/b;-><init>(Lw8/a;Lorg/bouncycastle/asn1/f;Lorg/bouncycastle/asn1/d0;)V

    return-object v1

    :cond_0
    instance-of v0, p0, Lk9/b;

    if-eqz v0, :cond_1

    check-cast p0, Lk9/b;

    new-instance p1, Lw8/a;

    sget-object v0, Le9/e;->sphincs256:Lorg/bouncycastle/asn1/u;

    new-instance v1, Le9/h;

    invoke-virtual {p0}, Lk9/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/util/e;->f(Ljava/lang/String;)Lw8/a;

    move-result-object v2

    invoke-direct {v1, v2}, Le9/h;-><init>(Lw8/a;)V

    invoke-direct {p1, v0, v1}, Lw8/a;-><init>(Lorg/bouncycastle/asn1/u;Lorg/bouncycastle/asn1/f;)V

    new-instance v0, Lv8/b;

    new-instance v1, Lorg/bouncycastle/asn1/r1;

    invoke-virtual {p0}, Lk9/b;->b()[B

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/bouncycastle/asn1/r1;-><init>([B)V

    invoke-direct {v0, p1, v1}, Lv8/b;-><init>(Lw8/a;Lorg/bouncycastle/asn1/f;)V

    return-object v0

    :cond_1
    instance-of v0, p0, Lorg/bouncycastle/pqc/crypto/newhope/a;

    if-eqz v0, :cond_3

    check-cast p0, Lorg/bouncycastle/pqc/crypto/newhope/a;

    new-instance p1, Lw8/a;

    sget-object v0, Le9/e;->newHope:Lorg/bouncycastle/asn1/u;

    invoke-direct {p1, v0}, Lw8/a;-><init>(Lorg/bouncycastle/asn1/u;)V

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/newhope/a;->a()[S

    move-result-object p0

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-eq v1, v2, :cond_2

    aget-short v2, p0, v1

    mul-int/lit8 v3, v1, 0x2

    invoke-static {v2, v0, v3}, Lorg/bouncycastle/util/f;->l(S[BI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Lv8/b;

    new-instance v1, Lorg/bouncycastle/asn1/r1;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/r1;-><init>([B)V

    invoke-direct {p0, p1, v1}, Lv8/b;-><init>(Lw8/a;Lorg/bouncycastle/asn1/f;)V

    return-object p0

    :cond_3
    instance-of v0, p0, Lorg/bouncycastle/pqc/crypto/lms/l;

    if-eqz v0, :cond_4

    check-cast p0, Lorg/bouncycastle/pqc/crypto/lms/l;

    invoke-static {}, Lorg/bouncycastle/pqc/crypto/lms/a;->f()Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/lms/a;->i(I)Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/pqc/crypto/lms/a;->c(Lorg/bouncycastle/util/c;)Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/lms/a;->b()[B

    move-result-object v0

    invoke-static {}, Lorg/bouncycastle/pqc/crypto/lms/a;->f()Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/bouncycastle/pqc/crypto/lms/a;->i(I)Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/l;->l()Lorg/bouncycastle/pqc/crypto/lms/m;

    move-result-object p0

    invoke-virtual {v1, p0}, Lorg/bouncycastle/pqc/crypto/lms/a;->c(Lorg/bouncycastle/util/c;)Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/a;->b()[B

    move-result-object p0

    new-instance v1, Lw8/a;

    sget-object v2, Lv8/a;->id_alg_hss_lms_hashsig:Lorg/bouncycastle/asn1/u;

    invoke-direct {v1, v2}, Lw8/a;-><init>(Lorg/bouncycastle/asn1/u;)V

    new-instance v2, Lv8/b;

    new-instance v3, Lorg/bouncycastle/asn1/r1;

    invoke-direct {v3, v0}, Lorg/bouncycastle/asn1/r1;-><init>([B)V

    invoke-direct {v2, v1, v3, p1, p0}, Lv8/b;-><init>(Lw8/a;Lorg/bouncycastle/asn1/f;Lorg/bouncycastle/asn1/d0;[B)V

    return-object v2

    :cond_4
    instance-of v0, p0, Lorg/bouncycastle/pqc/crypto/lms/c;

    if-eqz v0, :cond_5

    check-cast p0, Lorg/bouncycastle/pqc/crypto/lms/c;

    invoke-static {}, Lorg/bouncycastle/pqc/crypto/lms/a;->f()Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/c;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/lms/a;->i(I)Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/pqc/crypto/lms/a;->c(Lorg/bouncycastle/util/c;)Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/lms/a;->b()[B

    move-result-object v0

    invoke-static {}, Lorg/bouncycastle/pqc/crypto/lms/a;->f()Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/c;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/lms/a;->i(I)Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/c;->f()Lorg/bouncycastle/pqc/crypto/lms/d;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/d;->c()Lorg/bouncycastle/pqc/crypto/lms/m;

    move-result-object p0

    invoke-virtual {v1, p0}, Lorg/bouncycastle/pqc/crypto/lms/a;->c(Lorg/bouncycastle/util/c;)Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/a;->b()[B

    move-result-object p0

    new-instance v1, Lw8/a;

    sget-object v2, Lv8/a;->id_alg_hss_lms_hashsig:Lorg/bouncycastle/asn1/u;

    invoke-direct {v1, v2}, Lw8/a;-><init>(Lorg/bouncycastle/asn1/u;)V

    new-instance v2, Lv8/b;

    new-instance v3, Lorg/bouncycastle/asn1/r1;

    invoke-direct {v3, v0}, Lorg/bouncycastle/asn1/r1;-><init>([B)V

    invoke-direct {v2, v1, v3, p1, p0}, Lv8/b;-><init>(Lw8/a;Lorg/bouncycastle/asn1/f;Lorg/bouncycastle/asn1/d0;[B)V

    return-object v2

    :cond_5
    instance-of v0, p0, Ll9/y;

    if-eqz v0, :cond_6

    check-cast p0, Ll9/y;

    new-instance v0, Lw8/a;

    sget-object v1, Le9/e;->xmss:Lorg/bouncycastle/asn1/u;

    new-instance v2, Le9/i;

    invoke-virtual {p0}, Ll9/y;->b()Ll9/x;

    move-result-object v3

    invoke-virtual {v3}, Ll9/x;->b()I

    move-result v3

    invoke-virtual {p0}, Ll9/p;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/pqc/crypto/util/e;->h(Ljava/lang/String;)Lw8/a;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Le9/i;-><init>(ILw8/a;)V

    invoke-direct {v0, v1, v2}, Lw8/a;-><init>(Lorg/bouncycastle/asn1/u;Lorg/bouncycastle/asn1/f;)V

    new-instance v1, Lv8/b;

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/util/b;->b(Ll9/y;)Le9/m;

    move-result-object p0

    invoke-direct {v1, v0, p0, p1}, Lv8/b;-><init>(Lw8/a;Lorg/bouncycastle/asn1/f;Lorg/bouncycastle/asn1/d0;)V

    return-object v1

    :cond_6
    instance-of v0, p0, Ll9/s;

    if-eqz v0, :cond_7

    check-cast p0, Ll9/s;

    new-instance v0, Lw8/a;

    sget-object v1, Le9/e;->xmss_mt:Lorg/bouncycastle/asn1/u;

    new-instance v2, Le9/j;

    invoke-virtual {p0}, Ll9/s;->b()Ll9/r;

    move-result-object v3

    invoke-virtual {v3}, Ll9/r;->a()I

    move-result v3

    invoke-virtual {p0}, Ll9/s;->b()Ll9/r;

    move-result-object v4

    invoke-virtual {v4}, Ll9/r;->b()I

    move-result v4

    invoke-virtual {p0}, Ll9/q;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/pqc/crypto/util/e;->h(Ljava/lang/String;)Lw8/a;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Le9/j;-><init>(IILw8/a;)V

    invoke-direct {v0, v1, v2}, Lw8/a;-><init>(Lorg/bouncycastle/asn1/u;Lorg/bouncycastle/asn1/f;)V

    new-instance v1, Lv8/b;

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/util/b;->c(Ll9/s;)Le9/k;

    move-result-object p0

    invoke-direct {v1, v0, p0, p1}, Lv8/b;-><init>(Lw8/a;Lorg/bouncycastle/asn1/f;Lorg/bouncycastle/asn1/d0;)V

    return-object v1

    :cond_7
    instance-of p1, p0, Lg9/b;

    if-eqz p1, :cond_8

    check-cast p0, Lg9/b;

    new-instance p1, Le9/a;

    invoke-virtual {p0}, Lg9/b;->f()I

    move-result v1

    invoke-virtual {p0}, Lg9/b;->e()I

    move-result v2

    invoke-virtual {p0}, Lg9/b;->b()Lorg/bouncycastle/pqc/math/linearalgebra/b;

    move-result-object v3

    invoke-virtual {p0}, Lg9/b;->c()Lorg/bouncycastle/pqc/math/linearalgebra/j;

    move-result-object v4

    invoke-virtual {p0}, Lg9/b;->g()Lorg/bouncycastle/pqc/math/linearalgebra/i;

    move-result-object v5

    invoke-virtual {p0}, Lg9/a;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/util/e;->a(Ljava/lang/String;)Lw8/a;

    move-result-object v6

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Le9/a;-><init>(IILorg/bouncycastle/pqc/math/linearalgebra/b;Lorg/bouncycastle/pqc/math/linearalgebra/j;Lorg/bouncycastle/pqc/math/linearalgebra/i;Lw8/a;)V

    new-instance p0, Lw8/a;

    sget-object v0, Le9/e;->mcElieceCca2:Lorg/bouncycastle/asn1/u;

    invoke-direct {p0, v0}, Lw8/a;-><init>(Lorg/bouncycastle/asn1/u;)V

    new-instance v0, Lv8/b;

    invoke-direct {v0, p0, p1}, Lv8/b;-><init>(Lw8/a;Lorg/bouncycastle/asn1/f;)V

    return-object v0

    :cond_8
    new-instance p0, Ljava/io/IOException;

    const-string p1, "key parameters not recognized"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static b(Ll9/y;)Le9/m;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ll9/y;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p0}, Ll9/y;->b()Ll9/x;

    move-result-object v1

    invoke-virtual {v1}, Ll9/x;->h()I

    move-result v1

    invoke-virtual {p0}, Ll9/y;->b()Ll9/x;

    move-result-object p0

    invoke-virtual {p0}, Ll9/x;->b()I

    move-result p0

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {v0, v2, v3}, Ll9/a0;->a([BII)J

    move-result-wide v4

    long-to-int v7, v4

    int-to-long v4, v7

    invoke-static {p0, v4, v5}, Ll9/a0;->l(IJ)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0, v3, v1}, Ll9/a0;->g([BII)[B

    move-result-object v8

    add-int/2addr v3, v1

    invoke-static {v0, v3, v1}, Ll9/a0;->g([BII)[B

    move-result-object v9

    add-int/2addr v3, v1

    invoke-static {v0, v3, v1}, Ll9/a0;->g([BII)[B

    move-result-object v10

    add-int/2addr v3, v1

    invoke-static {v0, v3, v1}, Ll9/a0;->g([BII)[B

    move-result-object v11

    add-int/2addr v3, v1

    array-length v1, v0

    sub-int/2addr v1, v3

    invoke-static {v0, v3, v1}, Ll9/a0;->g([BII)[B

    move-result-object v12

    :try_start_0
    const-class v0, Ll9/a;

    invoke-static {v12, v0}, Ll9/a0;->f([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll9/a;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ll9/a;->c()I

    move-result v1

    const/4 v2, 0x1

    shl-int p0, v2, p0

    sub-int/2addr p0, v2

    if-eq v1, p0, :cond_0

    new-instance p0, Le9/m;

    invoke-virtual {v0}, Ll9/a;->c()I

    move-result v13

    move-object v6, p0

    invoke-direct/range {v6 .. v13}, Le9/m;-><init>(I[B[B[B[B[BI)V

    return-object p0

    :cond_0
    new-instance p0, Le9/m;

    move-object v6, p0

    invoke-direct/range {v6 .. v12}, Le9/m;-><init>(I[B[B[B[B[B)V

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot parse BDS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "index out of bounds"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static c(Ll9/s;)Le9/k;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ll9/s;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p0}, Ll9/s;->b()Ll9/r;

    move-result-object v1

    invoke-virtual {v1}, Ll9/r;->f()I

    move-result v1

    invoke-virtual {p0}, Ll9/s;->b()Ll9/r;

    move-result-object p0

    invoke-virtual {p0}, Ll9/r;->a()I

    move-result p0

    add-int/lit8 v2, p0, 0x7

    div-int/lit8 v2, v2, 0x8

    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Ll9/a0;->a([BII)J

    move-result-wide v3

    long-to-int v3, v3

    int-to-long v5, v3

    invoke-static {p0, v5, v6}, Ll9/a0;->l(IJ)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v0, v2, v1}, Ll9/a0;->g([BII)[B

    move-result-object v7

    add-int/2addr v2, v1

    invoke-static {v0, v2, v1}, Ll9/a0;->g([BII)[B

    move-result-object v8

    add-int/2addr v2, v1

    invoke-static {v0, v2, v1}, Ll9/a0;->g([BII)[B

    move-result-object v9

    add-int/2addr v2, v1

    invoke-static {v0, v2, v1}, Ll9/a0;->g([BII)[B

    move-result-object v10

    add-int/2addr v2, v1

    array-length v1, v0

    sub-int/2addr v1, v2

    invoke-static {v0, v2, v1}, Ll9/a0;->g([BII)[B

    move-result-object v11

    :try_start_0
    const-class v0, Ll9/b;

    invoke-static {v11, v0}, Ll9/a0;->f([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll9/b;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ll9/b;->b()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    shl-long v12, v3, p0

    sub-long/2addr v12, v3

    cmp-long p0, v1, v12

    if-eqz p0, :cond_0

    new-instance p0, Le9/k;

    invoke-virtual {v0}, Ll9/b;->b()J

    move-result-wide v12

    move-object v4, p0

    invoke-direct/range {v4 .. v13}, Le9/k;-><init>(J[B[B[B[B[BJ)V

    return-object p0

    :cond_0
    new-instance p0, Le9/k;

    move-object v4, p0

    invoke-direct/range {v4 .. v11}, Le9/k;-><init>(J[B[B[B[B[B)V

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot parse BDSStateMap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "index out of bounds"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
