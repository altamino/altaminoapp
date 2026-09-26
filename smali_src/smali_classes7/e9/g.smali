.class public Le9/g;
.super Lorg/bouncycastle/asn1/s;
.source "SourceFile"


# instance fields
.field private coeffQuadratic:[[B

.field private coeffScalar:[B

.field private coeffSingular:[[B

.field private docLength:Lorg/bouncycastle/asn1/p;

.field private oid:Lorg/bouncycastle/asn1/u;

.field private version:Lorg/bouncycastle/asn1/p;


# direct methods
.method public constructor <init>(I[[S[[S[S)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/asn1/s;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/p;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/p;-><init>(J)V

    iput-object v0, p0, Le9/g;->version:Lorg/bouncycastle/asn1/p;

    new-instance v0, Lorg/bouncycastle/asn1/p;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/p;-><init>(J)V

    iput-object v0, p0, Le9/g;->docLength:Lorg/bouncycastle/asn1/p;

    invoke-static {p2}, Lj9/a;->c([[S)[[B

    move-result-object p1

    iput-object p1, p0, Le9/g;->coeffQuadratic:[[B

    invoke-static {p3}, Lj9/a;->c([[S)[[B

    move-result-object p1

    iput-object p1, p0, Le9/g;->coeffSingular:[[B

    invoke-static {p4}, Lj9/a;->a([S)[B

    move-result-object p1

    iput-object p1, p0, Le9/g;->coeffScalar:[B

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/c0;)V
    .locals 5

    .line 2
    invoke-direct {p0}, Lorg/bouncycastle/asn1/s;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/c0;->z(I)Lorg/bouncycastle/asn1/f;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/asn1/p;

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/c0;->z(I)Lorg/bouncycastle/asn1/f;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/p;->x(Ljava/lang/Object;)Lorg/bouncycastle/asn1/p;

    move-result-object v1

    iput-object v1, p0, Le9/g;->version:Lorg/bouncycastle/asn1/p;

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/c0;->z(I)Lorg/bouncycastle/asn1/f;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/u;->B(Ljava/lang/Object;)Lorg/bouncycastle/asn1/u;

    move-result-object v1

    iput-object v1, p0, Le9/g;->oid:Lorg/bouncycastle/asn1/u;

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/c0;->z(I)Lorg/bouncycastle/asn1/f;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/p;->x(Ljava/lang/Object;)Lorg/bouncycastle/asn1/p;

    move-result-object v1

    iput-object v1, p0, Le9/g;->docLength:Lorg/bouncycastle/asn1/p;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/c0;->z(I)Lorg/bouncycastle/asn1/f;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/c0;->y(Ljava/lang/Object;)Lorg/bouncycastle/asn1/c0;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/c0;->size()I

    move-result v2

    new-array v2, v2, [[B

    iput-object v2, p0, Le9/g;->coeffQuadratic:[[B

    move v2, v0

    :goto_1
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/c0;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Le9/g;->coeffQuadratic:[[B

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/c0;->z(I)Lorg/bouncycastle/asn1/f;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/v;->x(Ljava/lang/Object;)Lorg/bouncycastle/asn1/v;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/v;->z()[B

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/c0;->z(I)Lorg/bouncycastle/asn1/f;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/c0;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/c0;->size()I

    move-result v2

    new-array v2, v2, [[B

    iput-object v2, p0, Le9/g;->coeffSingular:[[B

    move v2, v0

    :goto_2
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/c0;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Le9/g;->coeffSingular:[[B

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/c0;->z(I)Lorg/bouncycastle/asn1/f;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/v;->x(Ljava/lang/Object;)Lorg/bouncycastle/asn1/v;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/v;->z()[B

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/c0;->z(I)Lorg/bouncycastle/asn1/f;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/c0;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/c0;->z(I)Lorg/bouncycastle/asn1/f;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/v;->x(Ljava/lang/Object;)Lorg/bouncycastle/asn1/v;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/v;->z()[B

    move-result-object p1

    iput-object p1, p0, Le9/g;->coeffScalar:[B

    return-void
.end method

.method public static r(Ljava/lang/Object;)Le9/g;
    .locals 1

    .line 1
    instance-of v0, p0, Le9/g;

    if-eqz v0, :cond_0

    check-cast p0, Le9/g;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Le9/g;

    invoke-static {p0}, Lorg/bouncycastle/asn1/c0;->y(Ljava/lang/Object;)Lorg/bouncycastle/asn1/c0;

    move-result-object p0

    invoke-direct {v0, p0}, Le9/g;-><init>(Lorg/bouncycastle/asn1/c0;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public g()Lorg/bouncycastle/asn1/z;
    .locals 6

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/g;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/g;-><init>()V

    iget-object v1, p0, Le9/g;->version:Lorg/bouncycastle/asn1/p;

    if-eqz v1, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/g;->a(Lorg/bouncycastle/asn1/f;)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Le9/g;->oid:Lorg/bouncycastle/asn1/u;

    goto :goto_0

    :goto_1
    iget-object v1, p0, Le9/g;->docLength:Lorg/bouncycastle/asn1/p;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/g;->a(Lorg/bouncycastle/asn1/f;)V

    new-instance v1, Lorg/bouncycastle/asn1/g;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/g;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_2
    iget-object v4, p0, Le9/g;->coeffQuadratic:[[B

    array-length v4, v4

    if-ge v3, v4, :cond_1

    new-instance v4, Lorg/bouncycastle/asn1/r1;

    iget-object v5, p0, Le9/g;->coeffQuadratic:[[B

    aget-object v5, v5, v3

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/r1;-><init>([B)V

    invoke-virtual {v1, v4}, Lorg/bouncycastle/asn1/g;->a(Lorg/bouncycastle/asn1/f;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    new-instance v3, Lorg/bouncycastle/asn1/v1;

    invoke-direct {v3, v1}, Lorg/bouncycastle/asn1/v1;-><init>(Lorg/bouncycastle/asn1/g;)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/g;->a(Lorg/bouncycastle/asn1/f;)V

    new-instance v1, Lorg/bouncycastle/asn1/g;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/g;-><init>()V

    :goto_3
    iget-object v3, p0, Le9/g;->coeffSingular:[[B

    array-length v3, v3

    if-ge v2, v3, :cond_2

    new-instance v3, Lorg/bouncycastle/asn1/r1;

    iget-object v4, p0, Le9/g;->coeffSingular:[[B

    aget-object v4, v4, v2

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/r1;-><init>([B)V

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/g;->a(Lorg/bouncycastle/asn1/f;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2
    new-instance v2, Lorg/bouncycastle/asn1/v1;

    invoke-direct {v2, v1}, Lorg/bouncycastle/asn1/v1;-><init>(Lorg/bouncycastle/asn1/g;)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/g;->a(Lorg/bouncycastle/asn1/f;)V

    new-instance v1, Lorg/bouncycastle/asn1/g;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/g;-><init>()V

    new-instance v2, Lorg/bouncycastle/asn1/r1;

    iget-object v3, p0, Le9/g;->coeffScalar:[B

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/r1;-><init>([B)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/g;->a(Lorg/bouncycastle/asn1/f;)V

    new-instance v2, Lorg/bouncycastle/asn1/v1;

    invoke-direct {v2, v1}, Lorg/bouncycastle/asn1/v1;-><init>(Lorg/bouncycastle/asn1/g;)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/g;->a(Lorg/bouncycastle/asn1/f;)V

    new-instance v1, Lorg/bouncycastle/asn1/v1;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/v1;-><init>(Lorg/bouncycastle/asn1/g;)V

    return-object v1
.end method

.method public j()[[S
    .locals 1

    .line 1
    iget-object v0, p0, Le9/g;->coeffQuadratic:[[B

    invoke-static {v0}, Lj9/a;->d([[B)[[S

    move-result-object v0

    return-object v0
.end method

.method public m()[S
    .locals 1

    .line 1
    iget-object v0, p0, Le9/g;->coeffScalar:[B

    invoke-static {v0}, Lj9/a;->b([B)[S

    move-result-object v0

    return-object v0
.end method

.method public p()[[S
    .locals 1

    .line 1
    iget-object v0, p0, Le9/g;->coeffSingular:[[B

    invoke-static {v0}, Lj9/a;->d([[B)[[S

    move-result-object v0

    return-object v0
.end method

.method public q()I
    .locals 1

    .line 1
    iget-object v0, p0, Le9/g;->docLength:Lorg/bouncycastle/asn1/p;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/p;->C()I

    move-result v0

    return v0
.end method
