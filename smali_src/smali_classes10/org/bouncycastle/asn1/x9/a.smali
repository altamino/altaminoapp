.class public Lorg/bouncycastle/asn1/x9/a;
.super Lorg/bouncycastle/asn1/s;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/x9/g;


# instance fields
.field private curve:Lorg/bouncycastle/math/ec/c;

.field private fieldIdentifier:Lorg/bouncycastle/asn1/u;

.field private seed:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/x9/e;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/asn1/c0;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct/range {p0 .. p0}, Lorg/bouncycastle/asn1/s;-><init>()V

    const/4 v2, 0x0

    iput-object v2, v0, Lorg/bouncycastle/asn1/x9/a;->fieldIdentifier:Lorg/bouncycastle/asn1/u;

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/asn1/x9/e;->j()Lorg/bouncycastle/asn1/u;

    move-result-object v2

    iput-object v2, v0, Lorg/bouncycastle/asn1/x9/a;->fieldIdentifier:Lorg/bouncycastle/asn1/u;

    sget-object v3, Lorg/bouncycastle/asn1/x9/g;->prime_field:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/z;->s(Lorg/bouncycastle/asn1/z;)Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/asn1/x9/e;->m()Lorg/bouncycastle/asn1/z;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/p;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/p;->z()Ljava/math/BigInteger;

    move-result-object v7

    new-instance v8, Ljava/math/BigInteger;

    invoke-virtual {v1, v4}, Lorg/bouncycastle/asn1/c0;->z(I)Lorg/bouncycastle/asn1/f;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/v;->x(Ljava/lang/Object;)Lorg/bouncycastle/asn1/v;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/v;->z()[B

    move-result-object v2

    invoke-direct {v8, v5, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v9, Ljava/math/BigInteger;

    invoke-virtual {v1, v5}, Lorg/bouncycastle/asn1/c0;->z(I)Lorg/bouncycastle/asn1/f;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/v;->x(Ljava/lang/Object;)Lorg/bouncycastle/asn1/v;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/v;->z()[B

    move-result-object v2

    invoke-direct {v9, v5, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v2, Lorg/bouncycastle/math/ec/c$d;

    move-object v6, v2

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    invoke-direct/range {v6 .. v11}, Lorg/bouncycastle/math/ec/c$d;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    :goto_0
    iput-object v2, v0, Lorg/bouncycastle/asn1/x9/a;->curve:Lorg/bouncycastle/math/ec/c;

    goto/16 :goto_2

    :cond_0
    iget-object v2, v0, Lorg/bouncycastle/asn1/x9/a;->fieldIdentifier:Lorg/bouncycastle/asn1/u;

    sget-object v6, Lorg/bouncycastle/asn1/x9/g;->characteristic_two_field:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v2, v6}, Lorg/bouncycastle/asn1/z;->s(Lorg/bouncycastle/asn1/z;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/asn1/x9/e;->m()Lorg/bouncycastle/asn1/z;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/c0;->y(Ljava/lang/Object;)Lorg/bouncycastle/asn1/c0;

    move-result-object v2

    invoke-virtual {v2, v4}, Lorg/bouncycastle/asn1/c0;->z(I)Lorg/bouncycastle/asn1/f;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/asn1/p;

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/p;->C()I

    move-result v8

    invoke-virtual {v2, v5}, Lorg/bouncycastle/asn1/c0;->z(I)Lorg/bouncycastle/asn1/f;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/asn1/u;

    sget-object v7, Lorg/bouncycastle/asn1/x9/g;->tpBasis:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v6, v7}, Lorg/bouncycastle/asn1/z;->s(Lorg/bouncycastle/asn1/z;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/c0;->z(I)Lorg/bouncycastle/asn1/f;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/p;->x(Ljava/lang/Object;)Lorg/bouncycastle/asn1/p;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/p;->C()I

    move-result v2

    move v9, v2

    move v10, v4

    move v11, v10

    goto :goto_1

    :cond_1
    sget-object v7, Lorg/bouncycastle/asn1/x9/g;->ppBasis:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v6, v7}, Lorg/bouncycastle/asn1/z;->s(Lorg/bouncycastle/asn1/z;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/c0;->z(I)Lorg/bouncycastle/asn1/f;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/c0;->y(Ljava/lang/Object;)Lorg/bouncycastle/asn1/c0;

    move-result-object v2

    invoke-virtual {v2, v4}, Lorg/bouncycastle/asn1/c0;->z(I)Lorg/bouncycastle/asn1/f;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/asn1/p;->x(Ljava/lang/Object;)Lorg/bouncycastle/asn1/p;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/p;->C()I

    move-result v6

    invoke-virtual {v2, v5}, Lorg/bouncycastle/asn1/c0;->z(I)Lorg/bouncycastle/asn1/f;

    move-result-object v7

    invoke-static {v7}, Lorg/bouncycastle/asn1/p;->x(Ljava/lang/Object;)Lorg/bouncycastle/asn1/p;

    move-result-object v7

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/p;->C()I

    move-result v7

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/c0;->z(I)Lorg/bouncycastle/asn1/f;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/p;->x(Ljava/lang/Object;)Lorg/bouncycastle/asn1/p;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/p;->C()I

    move-result v2

    move v11, v2

    move v9, v6

    move v10, v7

    :goto_1
    new-instance v12, Ljava/math/BigInteger;

    invoke-virtual {v1, v4}, Lorg/bouncycastle/asn1/c0;->z(I)Lorg/bouncycastle/asn1/f;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/v;->x(Ljava/lang/Object;)Lorg/bouncycastle/asn1/v;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/v;->z()[B

    move-result-object v2

    invoke-direct {v12, v5, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v13, Ljava/math/BigInteger;

    invoke-virtual {v1, v5}, Lorg/bouncycastle/asn1/c0;->z(I)Lorg/bouncycastle/asn1/f;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/v;->x(Ljava/lang/Object;)Lorg/bouncycastle/asn1/v;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/v;->z()[B

    move-result-object v2

    invoke-direct {v13, v5, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v2, Lorg/bouncycastle/math/ec/c$c;

    move-object v7, v2

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    invoke-direct/range {v7 .. v15}, Lorg/bouncycastle/math/ec/c$c;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto/16 :goto_0

    :goto_2
    invoke-virtual/range {p4 .. p4}, Lorg/bouncycastle/asn1/c0;->size()I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_2

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/c0;->z(I)Lorg/bouncycastle/asn1/f;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/h1;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/c;->x()[B

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/asn1/x9/a;->seed:[B

    :cond_2
    return-void

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "This type of EC basis is not implemented"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "This type of ECCurve is not implemented"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Lorg/bouncycastle/math/ec/c;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/x9/a;-><init>(Lorg/bouncycastle/math/ec/c;[B)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/math/ec/c;[B)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lorg/bouncycastle/asn1/s;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x9/a;->fieldIdentifier:Lorg/bouncycastle/asn1/u;

    iput-object p1, p0, Lorg/bouncycastle/asn1/x9/a;->curve:Lorg/bouncycastle/math/ec/c;

    invoke-static {p2}, Lorg/bouncycastle/util/a;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/x9/a;->seed:[B

    invoke-direct {p0}, Lorg/bouncycastle/asn1/x9/a;->j()V

    return-void
.end method

.method private j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/asn1/x9/a;->curve:Lorg/bouncycastle/math/ec/c;

    invoke-static {v0}, Lorg/bouncycastle/math/ec/a;->c(Lorg/bouncycastle/math/ec/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/bouncycastle/asn1/x9/g;->prime_field:Lorg/bouncycastle/asn1/u;

    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/asn1/x9/a;->fieldIdentifier:Lorg/bouncycastle/asn1/u;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/x9/a;->curve:Lorg/bouncycastle/math/ec/c;

    invoke-static {v0}, Lorg/bouncycastle/math/ec/a;->a(Lorg/bouncycastle/math/ec/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/bouncycastle/asn1/x9/g;->characteristic_two_field:Lorg/bouncycastle/asn1/u;

    goto :goto_0

    :goto_1
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This type of ECCurve is not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public g()Lorg/bouncycastle/asn1/z;
    .locals 3

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/g;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/g;-><init>(I)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x9/a;->fieldIdentifier:Lorg/bouncycastle/asn1/u;

    sget-object v2, Lorg/bouncycastle/asn1/x9/g;->prime_field:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/z;->s(Lorg/bouncycastle/asn1/z;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/x9/d;

    iget-object v2, p0, Lorg/bouncycastle/asn1/x9/a;->curve:Lorg/bouncycastle/math/ec/c;

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/c;->f()Lorg/bouncycastle/math/ec/d;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/x9/d;-><init>(Lorg/bouncycastle/math/ec/d;)V

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x9/d;->g()Lorg/bouncycastle/asn1/z;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/g;->a(Lorg/bouncycastle/asn1/f;)V

    new-instance v1, Lorg/bouncycastle/asn1/x9/d;

    iget-object v2, p0, Lorg/bouncycastle/asn1/x9/a;->curve:Lorg/bouncycastle/math/ec/c;

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/c;->g()Lorg/bouncycastle/math/ec/d;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/x9/d;-><init>(Lorg/bouncycastle/math/ec/d;)V

    :goto_0
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x9/d;->g()Lorg/bouncycastle/asn1/z;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/g;->a(Lorg/bouncycastle/asn1/f;)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/x9/a;->fieldIdentifier:Lorg/bouncycastle/asn1/u;

    sget-object v2, Lorg/bouncycastle/asn1/x9/g;->characteristic_two_field:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/z;->s(Lorg/bouncycastle/asn1/z;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lorg/bouncycastle/asn1/x9/d;

    iget-object v2, p0, Lorg/bouncycastle/asn1/x9/a;->curve:Lorg/bouncycastle/math/ec/c;

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/c;->f()Lorg/bouncycastle/math/ec/d;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/x9/d;-><init>(Lorg/bouncycastle/math/ec/d;)V

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x9/d;->g()Lorg/bouncycastle/asn1/z;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/g;->a(Lorg/bouncycastle/asn1/f;)V

    new-instance v1, Lorg/bouncycastle/asn1/x9/d;

    iget-object v2, p0, Lorg/bouncycastle/asn1/x9/a;->curve:Lorg/bouncycastle/math/ec/c;

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/c;->g()Lorg/bouncycastle/math/ec/d;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/x9/d;-><init>(Lorg/bouncycastle/math/ec/d;)V

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/bouncycastle/asn1/x9/a;->seed:[B

    if-eqz v1, :cond_2

    new-instance v1, Lorg/bouncycastle/asn1/h1;

    iget-object v2, p0, Lorg/bouncycastle/asn1/x9/a;->seed:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/h1;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/g;->a(Lorg/bouncycastle/asn1/f;)V

    :cond_2
    new-instance v1, Lorg/bouncycastle/asn1/v1;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/v1;-><init>(Lorg/bouncycastle/asn1/g;)V

    return-object v1
.end method
