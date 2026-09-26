.class public Lq9/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivateKey;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private A1inv:[[S

.field private A2inv:[[S

.field private b1:[S

.field private b2:[S

.field private layers:[Li9/a;

.field private vi:[I


# direct methods
.method public constructor <init>(Li9/d;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Li9/d;->d()[[S

    move-result-object v1

    invoke-virtual {p1}, Li9/d;->b()[S

    move-result-object v2

    invoke-virtual {p1}, Li9/d;->e()[[S

    move-result-object v3

    invoke-virtual {p1}, Li9/d;->c()[S

    move-result-object v4

    invoke-virtual {p1}, Li9/d;->g()[I

    move-result-object v5

    invoke-virtual {p1}, Li9/d;->f()[Li9/a;

    move-result-object v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lq9/a;-><init>([[S[S[[S[S[I[Li9/a;)V

    return-void
.end method

.method public constructor <init>(Lu9/a;)V
    .locals 7

    .line 2
    invoke-virtual {p1}, Lu9/a;->c()[[S

    move-result-object v1

    invoke-virtual {p1}, Lu9/a;->a()[S

    move-result-object v2

    invoke-virtual {p1}, Lu9/a;->d()[[S

    move-result-object v3

    invoke-virtual {p1}, Lu9/a;->b()[S

    move-result-object v4

    invoke-virtual {p1}, Lu9/a;->f()[I

    move-result-object v5

    invoke-virtual {p1}, Lu9/a;->e()[Li9/a;

    move-result-object v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lq9/a;-><init>([[S[S[[S[S[I[Li9/a;)V

    return-void
.end method

.method public constructor <init>([[S[S[[S[S[I[Li9/a;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq9/a;->A1inv:[[S

    iput-object p2, p0, Lq9/a;->b1:[S

    iput-object p3, p0, Lq9/a;->A2inv:[[S

    iput-object p4, p0, Lq9/a;->b2:[S

    iput-object p5, p0, Lq9/a;->vi:[I

    iput-object p6, p0, Lq9/a;->layers:[Li9/a;

    return-void
.end method


# virtual methods
.method public a()[S
    .locals 1

    .line 1
    iget-object v0, p0, Lq9/a;->b1:[S

    return-object v0
.end method

.method public b()[S
    .locals 1

    .line 1
    iget-object v0, p0, Lq9/a;->b2:[S

    return-object v0
.end method

.method public c()[[S
    .locals 1

    .line 1
    iget-object v0, p0, Lq9/a;->A1inv:[[S

    return-object v0
.end method

.method public d()[[S
    .locals 1

    .line 1
    iget-object v0, p0, Lq9/a;->A2inv:[[S

    return-object v0
.end method

.method public e()[Li9/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lq9/a;->layers:[Li9/a;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    instance-of v1, p1, Lq9/a;

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    check-cast p1, Lq9/a;

    iget-object v1, p0, Lq9/a;->A1inv:[[S

    invoke-virtual {p1}, Lq9/a;->c()[[S

    move-result-object v2

    invoke-static {v1, v2}, Lj9/a;->j([[S[[S)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lq9/a;->A2inv:[[S

    invoke-virtual {p1}, Lq9/a;->d()[[S

    move-result-object v3

    invoke-static {v1, v3}, Lj9/a;->j([[S[[S)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lq9/a;->b1:[S

    invoke-virtual {p1}, Lq9/a;->a()[S

    move-result-object v3

    invoke-static {v1, v3}, Lj9/a;->i([S[S)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lq9/a;->b2:[S

    invoke-virtual {p1}, Lq9/a;->b()[S

    move-result-object v3

    invoke-static {v1, v3}, Lj9/a;->i([S[S)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lq9/a;->vi:[I

    invoke-virtual {p1}, Lq9/a;->f()[I

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    iget-object v3, p0, Lq9/a;->layers:[Li9/a;

    array-length v3, v3

    invoke-virtual {p1}, Lq9/a;->e()[Li9/a;

    move-result-object v4

    array-length v4, v4

    if-eq v3, v4, :cond_2

    return v0

    :cond_2
    iget-object v0, p0, Lq9/a;->layers:[Li9/a;

    array-length v0, v0

    sub-int/2addr v0, v2

    :goto_1
    if-ltz v0, :cond_3

    iget-object v2, p0, Lq9/a;->layers:[Li9/a;

    aget-object v2, v2, v0

    invoke-virtual {p1}, Lq9/a;->e()[Li9/a;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Li9/a;->equals(Ljava/lang/Object;)Z

    move-result v2

    and-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    return v1

    :cond_4
    :goto_2
    return v0
.end method

.method public f()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lq9/a;->vi:[I

    return-object v0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Rainbow"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 8

    .line 1
    new-instance v7, Le9/f;

    iget-object v1, p0, Lq9/a;->A1inv:[[S

    iget-object v2, p0, Lq9/a;->b1:[S

    iget-object v3, p0, Lq9/a;->A2inv:[[S

    iget-object v4, p0, Lq9/a;->b2:[S

    iget-object v5, p0, Lq9/a;->vi:[I

    iget-object v6, p0, Lq9/a;->layers:[Li9/a;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Le9/f;-><init>([[S[S[[S[S[I[Li9/a;)V

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lw8/a;

    sget-object v2, Le9/e;->rainbow:Lorg/bouncycastle/asn1/u;

    sget-object v3, Lorg/bouncycastle/asn1/p1;->INSTANCE:Lorg/bouncycastle/asn1/p1;

    invoke-direct {v1, v2, v3}, Lw8/a;-><init>(Lorg/bouncycastle/asn1/u;Lorg/bouncycastle/asn1/f;)V

    new-instance v2, Lv8/b;

    invoke-direct {v2, v1, v7}, Lv8/b;-><init>(Lw8/a;Lorg/bouncycastle/asn1/f;)V

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
    .locals 3

    .line 1
    iget-object v0, p0, Lq9/a;->layers:[Li9/a;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lq9/a;->A1inv:[[S

    invoke-static {v1}, Lorg/bouncycastle/util/a;->r([[S)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lq9/a;->b1:[S

    invoke-static {v1}, Lorg/bouncycastle/util/a;->q([S)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lq9/a;->A2inv:[[S

    invoke-static {v1}, Lorg/bouncycastle/util/a;->r([[S)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lq9/a;->b2:[S

    invoke-static {v1}, Lorg/bouncycastle/util/a;->q([S)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lq9/a;->vi:[I

    invoke-static {v1}, Lorg/bouncycastle/util/a;->p([I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lq9/a;->layers:[Li9/a;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lq9/a;->layers:[Li9/a;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Li9/a;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return v0
.end method
