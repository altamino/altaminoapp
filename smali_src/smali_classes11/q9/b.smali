.class public Lq9/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PublicKey;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private coeffquadratic:[[S

.field private coeffscalar:[S

.field private coeffsingular:[[S

.field private docLength:I

.field private rainbowParams:Li9/c;


# direct methods
.method public constructor <init>(I[[S[[S[S)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lq9/b;->docLength:I

    iput-object p2, p0, Lq9/b;->coeffquadratic:[[S

    iput-object p3, p0, Lq9/b;->coeffsingular:[[S

    iput-object p4, p0, Lq9/b;->coeffscalar:[S

    return-void
.end method

.method public constructor <init>(Li9/e;)V
    .locals 3

    .line 2
    invoke-virtual {p1}, Li9/b;->a()I

    move-result v0

    invoke-virtual {p1}, Li9/e;->b()[[S

    move-result-object v1

    invoke-virtual {p1}, Li9/e;->d()[[S

    move-result-object v2

    invoke-virtual {p1}, Li9/e;->c()[S

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, Lq9/b;-><init>(I[[S[[S[S)V

    return-void
.end method

.method public constructor <init>(Lu9/b;)V
    .locals 3

    .line 3
    invoke-virtual {p1}, Lu9/b;->d()I

    move-result v0

    invoke-virtual {p1}, Lu9/b;->a()[[S

    move-result-object v1

    invoke-virtual {p1}, Lu9/b;->c()[[S

    move-result-object v2

    invoke-virtual {p1}, Lu9/b;->b()[S

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, Lq9/b;-><init>(I[[S[[S[S)V

    return-void
.end method


# virtual methods
.method public a()[[S
    .locals 1

    .line 1
    iget-object v0, p0, Lq9/b;->coeffquadratic:[[S

    return-object v0
.end method

.method public b()[S
    .locals 1

    .line 1
    iget-object v0, p0, Lq9/b;->coeffscalar:[S

    invoke-static {v0}, Lorg/bouncycastle/util/a;->h([S)[S

    move-result-object v0

    return-object v0
.end method

.method public c()[[S
    .locals 4

    .line 1
    iget-object v0, p0, Lq9/b;->coeffsingular:[[S

    array-length v0, v0

    new-array v0, v0, [[S

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lq9/b;->coeffsingular:[[S

    array-length v3, v2

    if-eq v1, v3, :cond_0

    aget-object v2, v2, v1

    invoke-static {v2}, Lorg/bouncycastle/util/a;->h([S)[S

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lq9/b;->docLength:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p1, Lq9/b;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lq9/b;

    iget v1, p0, Lq9/b;->docLength:I

    invoke-virtual {p1}, Lq9/b;->d()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lq9/b;->coeffquadratic:[[S

    invoke-virtual {p1}, Lq9/b;->a()[[S

    move-result-object v2

    invoke-static {v1, v2}, Lj9/a;->j([[S[[S)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lq9/b;->coeffsingular:[[S

    invoke-virtual {p1}, Lq9/b;->c()[[S

    move-result-object v2

    invoke-static {v1, v2}, Lj9/a;->j([[S[[S)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lq9/b;->coeffscalar:[S

    invoke-virtual {p1}, Lq9/b;->b()[S

    move-result-object p1

    invoke-static {v1, p1}, Lj9/a;->i([S[S)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Rainbow"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 5

    .line 1
    new-instance v0, Le9/g;

    iget v1, p0, Lq9/b;->docLength:I

    iget-object v2, p0, Lq9/b;->coeffquadratic:[[S

    iget-object v3, p0, Lq9/b;->coeffsingular:[[S

    iget-object v4, p0, Lq9/b;->coeffscalar:[S

    invoke-direct {v0, v1, v2, v3, v4}, Le9/g;-><init>(I[[S[[S[S)V

    new-instance v1, Lw8/a;

    sget-object v2, Le9/e;->rainbow:Lorg/bouncycastle/asn1/u;

    sget-object v3, Lorg/bouncycastle/asn1/p1;->INSTANCE:Lorg/bouncycastle/asn1/p1;

    invoke-direct {v1, v2, v3}, Lw8/a;-><init>(Lorg/bouncycastle/asn1/u;Lorg/bouncycastle/asn1/f;)V

    invoke-static {v1, v0}, Ls9/a;->a(Lw8/a;Lorg/bouncycastle/asn1/f;)[B

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "X.509"

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lq9/b;->docLength:I

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lq9/b;->coeffquadratic:[[S

    invoke-static {v1}, Lorg/bouncycastle/util/a;->r([[S)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lq9/b;->coeffsingular:[[S

    invoke-static {v1}, Lorg/bouncycastle/util/a;->r([[S)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lq9/b;->coeffscalar:[S

    invoke-static {v1}, Lorg/bouncycastle/util/a;->q([S)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
