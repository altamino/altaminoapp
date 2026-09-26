.class public Lorg/bouncycastle/math/ec/c$d;
.super Lorg/bouncycastle/math/ec/c$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/math/ec/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# static fields
.field private static final FP_DEFAULT_COORDS:I = 0x4


# instance fields
.field infinity:Lorg/bouncycastle/math/ec/f$d;

.field q:Ljava/math/BigInteger;

.field r:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 6

    .line 1
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/math/ec/c$d;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lorg/bouncycastle/math/ec/c$b;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, Lorg/bouncycastle/math/ec/c$d;->q:Ljava/math/BigInteger;

    invoke-static {p1}, Lorg/bouncycastle/math/ec/d$d;->n(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/math/ec/c$d;->r:Ljava/math/BigInteger;

    new-instance p1, Lorg/bouncycastle/math/ec/f$d;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0, v0}, Lorg/bouncycastle/math/ec/f$d;-><init>(Lorg/bouncycastle/math/ec/c;Lorg/bouncycastle/math/ec/d;Lorg/bouncycastle/math/ec/d;)V

    iput-object p1, p0, Lorg/bouncycastle/math/ec/c$d;->infinity:Lorg/bouncycastle/math/ec/f$d;

    invoke-virtual {p0, p2}, Lorg/bouncycastle/math/ec/c$d;->e(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/d;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/math/ec/c;->a:Lorg/bouncycastle/math/ec/d;

    invoke-virtual {p0, p3}, Lorg/bouncycastle/math/ec/c$d;->e(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/d;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/math/ec/c;->b:Lorg/bouncycastle/math/ec/d;

    iput-object p4, p0, Lorg/bouncycastle/math/ec/c;->order:Ljava/math/BigInteger;

    iput-object p5, p0, Lorg/bouncycastle/math/ec/c;->cofactor:Ljava/math/BigInteger;

    const/4 p1, 0x4

    iput p1, p0, Lorg/bouncycastle/math/ec/c;->coord:I

    return-void
.end method


# virtual methods
.method protected c(Lorg/bouncycastle/math/ec/d;Lorg/bouncycastle/math/ec/d;)Lorg/bouncycastle/math/ec/f;
    .locals 1

    .line 1
    new-instance v0, Lorg/bouncycastle/math/ec/f$d;

    invoke-direct {v0, p0, p1, p2}, Lorg/bouncycastle/math/ec/f$d;-><init>(Lorg/bouncycastle/math/ec/c;Lorg/bouncycastle/math/ec/d;Lorg/bouncycastle/math/ec/d;)V

    return-object v0
.end method

.method public e(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/d;
    .locals 3

    .line 1
    new-instance v0, Lorg/bouncycastle/math/ec/d$d;

    iget-object v1, p0, Lorg/bouncycastle/math/ec/c$d;->q:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/bouncycastle/math/ec/c$d;->r:Ljava/math/BigInteger;

    invoke-direct {v0, v1, v2, p1}, Lorg/bouncycastle/math/ec/d$d;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public k()Lorg/bouncycastle/math/ec/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/math/ec/c$d;->infinity:Lorg/bouncycastle/math/ec/f$d;

    return-object v0
.end method

.method public l(Lorg/bouncycastle/math/ec/f;)Lorg/bouncycastle/math/ec/f;
    .locals 5

    .line 1
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/f;->f()Lorg/bouncycastle/math/ec/c;

    move-result-object v0

    if-eq p0, v0, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/c;->h()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/f;->o()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/f;->f()Lorg/bouncycastle/math/ec/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/c;->h()I

    move-result v0

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/math/ec/f$d;

    iget-object v1, p1, Lorg/bouncycastle/math/ec/f;->x:Lorg/bouncycastle/math/ec/d;

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/d;->m()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/math/ec/c$d;->e(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/d;

    move-result-object v1

    iget-object v2, p1, Lorg/bouncycastle/math/ec/f;->y:Lorg/bouncycastle/math/ec/d;

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/d;->m()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/bouncycastle/math/ec/c$d;->e(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/d;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Lorg/bouncycastle/math/ec/d;

    iget-object p1, p1, Lorg/bouncycastle/math/ec/f;->zs:[Lorg/bouncycastle/math/ec/d;

    const/4 v4, 0x0

    aget-object p1, p1, v4

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/d;->m()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/math/ec/c$d;->e(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/d;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/bouncycastle/math/ec/f$d;-><init>(Lorg/bouncycastle/math/ec/c;Lorg/bouncycastle/math/ec/d;Lorg/bouncycastle/math/ec/d;[Lorg/bouncycastle/math/ec/d;)V

    return-object v0

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lorg/bouncycastle/math/ec/c;->l(Lorg/bouncycastle/math/ec/f;)Lorg/bouncycastle/math/ec/f;

    move-result-object p1

    return-object p1
.end method
