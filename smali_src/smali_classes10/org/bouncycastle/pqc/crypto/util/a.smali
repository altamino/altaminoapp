.class public Lorg/bouncycastle/pqc/crypto/util/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([B)[S
    .locals 4

    .line 1
    array-length v0, p0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [S

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_0

    mul-int/lit8 v3, v2, 0x2

    invoke-static {p0, v3}, Lorg/bouncycastle/util/f;->g([BI)S

    move-result v3

    aput-short v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static b(Lv8/b;)Lorg/bouncycastle/crypto/params/a;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lv8/b;->p()Lw8/a;

    move-result-object v0

    invoke-virtual {v0}, Lw8/a;->j()Lorg/bouncycastle/asn1/u;

    move-result-object v0

    sget-object v1, Lr8/a;->qTESLA:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/u;->E(Lorg/bouncycastle/asn1/u;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lv8/b;->s()Lorg/bouncycastle/asn1/f;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/v;->x(Ljava/lang/Object;)Lorg/bouncycastle/asn1/v;

    move-result-object v0

    new-instance v1, Lh9/a;

    invoke-virtual {p0}, Lv8/b;->p()Lw8/a;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/util/e;->e(Lw8/a;)I

    move-result p0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/v;->z()[B

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lh9/a;-><init>(I[B)V

    return-object v1

    :cond_0
    sget-object v1, Lr8/a;->sphincs256:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/z;->s(Lorg/bouncycastle/asn1/z;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lk9/b;

    invoke-virtual {p0}, Lv8/b;->s()Lorg/bouncycastle/asn1/f;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/v;->x(Ljava/lang/Object;)Lorg/bouncycastle/asn1/v;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/v;->z()[B

    move-result-object v1

    invoke-virtual {p0}, Lv8/b;->p()Lw8/a;

    move-result-object p0

    invoke-virtual {p0}, Lw8/a;->p()Lorg/bouncycastle/asn1/f;

    move-result-object p0

    invoke-static {p0}, Le9/h;->b(Ljava/lang/Object;)Le9/h;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/util/e;->g(Le9/h;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lk9/b;-><init>([BLjava/lang/String;)V

    return-object v0

    :cond_1
    sget-object v1, Lr8/a;->newHope:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/z;->s(Lorg/bouncycastle/asn1/z;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lorg/bouncycastle/pqc/crypto/newhope/a;

    invoke-virtual {p0}, Lv8/b;->s()Lorg/bouncycastle/asn1/f;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/v;->x(Ljava/lang/Object;)Lorg/bouncycastle/asn1/v;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/v;->z()[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/util/a;->a([B)[S

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/crypto/newhope/a;-><init>([S)V

    return-object v0

    :cond_2
    sget-object v1, Lv8/a;->id_alg_hss_lms_hashsig:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/z;->s(Lorg/bouncycastle/asn1/z;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lv8/b;->s()Lorg/bouncycastle/asn1/f;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/v;->x(Ljava/lang/Object;)Lorg/bouncycastle/asn1/v;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/v;->z()[B

    move-result-object v0

    invoke-virtual {p0}, Lv8/b;->q()Lorg/bouncycastle/asn1/c;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/util/f;->a([BI)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-ne v1, v2, :cond_4

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/c;->B()[B

    move-result-object p0

    array-length v1, v0

    invoke-static {v0, v3, v1}, Lorg/bouncycastle/util/a;->j([BII)[B

    move-result-object v0

    array-length v1, p0

    invoke-static {p0, v3, v1}, Lorg/bouncycastle/util/a;->j([BII)[B

    move-result-object p0

    invoke-static {v0, p0}, Lorg/bouncycastle/pqc/crypto/lms/l;->h([B[B)Lorg/bouncycastle/pqc/crypto/lms/l;

    move-result-object p0

    return-object p0

    :cond_3
    array-length p0, v0

    invoke-static {v0, v3, p0}, Lorg/bouncycastle/util/a;->j([BII)[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/lms/l;->g(Ljava/lang/Object;)Lorg/bouncycastle/pqc/crypto/lms/l;

    move-result-object p0

    return-object p0

    :cond_4
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/c;->B()[B

    move-result-object p0

    array-length v1, v0

    invoke-static {v0, v3, v1}, Lorg/bouncycastle/util/a;->j([BII)[B

    move-result-object v0

    invoke-static {v0, p0}, Lorg/bouncycastle/pqc/crypto/lms/c;->c([B[B)Lorg/bouncycastle/pqc/crypto/lms/c;

    move-result-object p0

    return-object p0

    :cond_5
    array-length p0, v0

    invoke-static {v0, v3, p0}, Lorg/bouncycastle/util/a;->j([BII)[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/lms/c;->b(Ljava/lang/Object;)Lorg/bouncycastle/pqc/crypto/lms/c;

    move-result-object p0

    return-object p0

    :cond_6
    sget-object v1, Lr8/a;->xmss:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/z;->s(Lorg/bouncycastle/asn1/z;)Z

    move-result v1

    const-string v2, "ClassNotFoundException processing BDS state: "

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lv8/b;->p()Lw8/a;

    move-result-object v0

    invoke-virtual {v0}, Lw8/a;->p()Lorg/bouncycastle/asn1/f;

    move-result-object v0

    invoke-static {v0}, Le9/i;->m(Ljava/lang/Object;)Le9/i;

    move-result-object v0

    invoke-virtual {v0}, Le9/i;->p()Lw8/a;

    move-result-object v1

    invoke-virtual {v1}, Lw8/a;->j()Lorg/bouncycastle/asn1/u;

    move-result-object v1

    invoke-virtual {p0}, Lv8/b;->s()Lorg/bouncycastle/asn1/f;

    move-result-object p0

    invoke-static {p0}, Le9/m;->p(Ljava/lang/Object;)Le9/m;

    move-result-object p0

    :try_start_0
    new-instance v3, Ll9/y$b;

    new-instance v4, Ll9/x;

    invoke-virtual {v0}, Le9/i;->j()I

    move-result v0

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/util/e;->b(Lorg/bouncycastle/asn1/u;)Lx8/c;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Ll9/x;-><init>(ILx8/c;)V

    invoke-direct {v3, v4}, Ll9/y$b;-><init>(Ll9/x;)V

    invoke-virtual {p0}, Le9/m;->m()I

    move-result v0

    invoke-virtual {v3, v0}, Ll9/y$b;->l(I)Ll9/y$b;

    move-result-object v0

    invoke-virtual {p0}, Le9/m;->u()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ll9/y$b;->q([B)Ll9/y$b;

    move-result-object v0

    invoke-virtual {p0}, Le9/m;->t()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ll9/y$b;->p([B)Ll9/y$b;

    move-result-object v0

    invoke-virtual {p0}, Le9/m;->r()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ll9/y$b;->n([B)Ll9/y$b;

    move-result-object v0

    invoke-virtual {p0}, Le9/m;->s()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ll9/y$b;->o([B)Ll9/y$b;

    move-result-object v0

    invoke-virtual {p0}, Le9/m;->v()I

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Le9/m;->q()I

    move-result v3

    invoke-virtual {v0, v3}, Ll9/y$b;->m(I)Ll9/y$b;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_7
    :goto_0
    invoke-virtual {p0}, Le9/m;->j()[B

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Le9/m;->j()[B

    move-result-object p0

    const-class v3, Ll9/a;

    invoke-static {p0, v3}, Ll9/a0;->f([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ll9/a;

    invoke-virtual {p0, v1}, Ll9/a;->h(Lorg/bouncycastle/asn1/u;)Ll9/a;

    move-result-object p0

    invoke-virtual {v0, p0}, Ll9/y$b;->k(Ll9/a;)Ll9/y$b;

    :cond_8
    invoke-virtual {v0}, Ll9/y$b;->j()Ll9/y;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    sget-object v1, Le9/e;->xmss_mt:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/z;->s(Lorg/bouncycastle/asn1/z;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p0}, Lv8/b;->p()Lw8/a;

    move-result-object v0

    invoke-virtual {v0}, Lw8/a;->p()Lorg/bouncycastle/asn1/f;

    move-result-object v0

    invoke-static {v0}, Le9/j;->m(Ljava/lang/Object;)Le9/j;

    move-result-object v0

    invoke-virtual {v0}, Le9/j;->q()Lw8/a;

    move-result-object v1

    invoke-virtual {v1}, Lw8/a;->j()Lorg/bouncycastle/asn1/u;

    move-result-object v1

    :try_start_1
    invoke-virtual {p0}, Lv8/b;->s()Lorg/bouncycastle/asn1/f;

    move-result-object p0

    invoke-static {p0}, Le9/k;->p(Ljava/lang/Object;)Le9/k;

    move-result-object p0

    new-instance v3, Ll9/s$b;

    new-instance v4, Ll9/r;

    invoke-virtual {v0}, Le9/j;->j()I

    move-result v5

    invoke-virtual {v0}, Le9/j;->p()I

    move-result v0

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/util/e;->b(Lorg/bouncycastle/asn1/u;)Lx8/c;

    move-result-object v6

    invoke-direct {v4, v5, v0, v6}, Ll9/r;-><init>(IILx8/c;)V

    invoke-direct {v3, v4}, Ll9/s$b;-><init>(Ll9/r;)V

    invoke-virtual {p0}, Le9/k;->m()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ll9/s$b;->m(J)Ll9/s$b;

    move-result-object v0

    invoke-virtual {p0}, Le9/k;->u()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ll9/s$b;->r([B)Ll9/s$b;

    move-result-object v0

    invoke-virtual {p0}, Le9/k;->t()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ll9/s$b;->q([B)Ll9/s$b;

    move-result-object v0

    invoke-virtual {p0}, Le9/k;->r()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ll9/s$b;->o([B)Ll9/s$b;

    move-result-object v0

    invoke-virtual {p0}, Le9/k;->s()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ll9/s$b;->p([B)Ll9/s$b;

    move-result-object v0

    invoke-virtual {p0}, Le9/k;->v()I

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {p0}, Le9/k;->q()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ll9/s$b;->n(J)Ll9/s$b;

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_3

    :cond_a
    :goto_2
    invoke-virtual {p0}, Le9/k;->j()[B

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual {p0}, Le9/k;->j()[B

    move-result-object p0

    const-class v3, Ll9/b;

    invoke-static {p0, v3}, Ll9/a0;->f([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ll9/b;

    invoke-virtual {p0, v1}, Ll9/b;->f(Lorg/bouncycastle/asn1/u;)Ll9/b;

    move-result-object p0

    invoke-virtual {v0, p0}, Ll9/s$b;->l(Ll9/b;)Ll9/s$b;

    :cond_b
    invoke-virtual {v0}, Ll9/s$b;->k()Ll9/s;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :goto_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    sget-object v1, Le9/e;->mcElieceCca2:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/z;->s(Lorg/bouncycastle/asn1/z;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lv8/b;->s()Lorg/bouncycastle/asn1/f;

    move-result-object p0

    invoke-static {p0}, Le9/a;->q(Ljava/lang/Object;)Le9/a;

    move-result-object p0

    new-instance v7, Lg9/b;

    invoke-virtual {p0}, Le9/a;->s()I

    move-result v1

    invoke-virtual {p0}, Le9/a;->r()I

    move-result v2

    invoke-virtual {p0}, Le9/a;->m()Lorg/bouncycastle/pqc/math/linearalgebra/b;

    move-result-object v3

    invoke-virtual {p0}, Le9/a;->p()Lorg/bouncycastle/pqc/math/linearalgebra/j;

    move-result-object v4

    invoke-virtual {p0}, Le9/a;->t()Lorg/bouncycastle/pqc/math/linearalgebra/i;

    move-result-object v5

    invoke-virtual {p0}, Le9/a;->j()Lw8/a;

    move-result-object p0

    invoke-virtual {p0}, Lw8/a;->j()Lorg/bouncycastle/asn1/u;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/util/e;->c(Lorg/bouncycastle/asn1/u;)Ljava/lang/String;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lg9/b;-><init>(IILorg/bouncycastle/pqc/math/linearalgebra/b;Lorg/bouncycastle/pqc/math/linearalgebra/j;Lorg/bouncycastle/pqc/math/linearalgebra/i;Ljava/lang/String;)V

    return-object v7

    :cond_d
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "algorithm identifier in private key not recognised"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
