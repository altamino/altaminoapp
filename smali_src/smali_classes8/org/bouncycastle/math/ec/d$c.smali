.class public Lorg/bouncycastle/math/ec/d$c;
.super Lorg/bouncycastle/math/ec/d$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/math/ec/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field public static final GNB:I = 0x1

.field public static final PPB:I = 0x3

.field public static final TPB:I = 0x2


# instance fields
.field private ks:[I

.field private m:I

.field private representation:I

.field x:Lorg/bouncycastle/math/ec/g;


# direct methods
.method constructor <init>(IIIILjava/math/BigInteger;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/math/ec/d$a;-><init>()V

    if-eqz p5, :cond_3

    invoke-virtual {p5}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_3

    invoke-virtual {p5}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    if-gt v0, p1, :cond_3

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    const/4 p3, 0x2

    iput p3, p0, Lorg/bouncycastle/math/ec/d$c;->representation:I

    filled-new-array {p2}, [I

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/math/ec/d$c;->ks:[I

    goto :goto_0

    :cond_0
    if-ge p3, p4, :cond_2

    if-lez p3, :cond_1

    const/4 v0, 0x3

    iput v0, p0, Lorg/bouncycastle/math/ec/d$c;->representation:I

    filled-new-array {p2, p3, p4}, [I

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/math/ec/d$c;->ks:[I

    :goto_0
    iput p1, p0, Lorg/bouncycastle/math/ec/d$c;->m:I

    new-instance p1, Lorg/bouncycastle/math/ec/g;

    invoke-direct {p1, p5}, Lorg/bouncycastle/math/ec/g;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, Lorg/bouncycastle/math/ec/d$c;->x:Lorg/bouncycastle/math/ec/g;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "k2 must be larger than 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "k2 must be smaller than k3"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "x value invalid in F2m field element"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor <init>(I[ILorg/bouncycastle/math/ec/g;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/bouncycastle/math/ec/d$a;-><init>()V

    iput p1, p0, Lorg/bouncycastle/math/ec/d$c;->m:I

    array-length p1, p2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    :goto_0
    iput p1, p0, Lorg/bouncycastle/math/ec/d$c;->representation:I

    iput-object p2, p0, Lorg/bouncycastle/math/ec/d$c;->ks:[I

    iput-object p3, p0, Lorg/bouncycastle/math/ec/d$c;->x:Lorg/bouncycastle/math/ec/g;

    return-void
.end method


# virtual methods
.method public a(Lorg/bouncycastle/math/ec/d;)Lorg/bouncycastle/math/ec/d;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/math/ec/d$c;->x:Lorg/bouncycastle/math/ec/g;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/math/ec/g;

    check-cast p1, Lorg/bouncycastle/math/ec/d$c;

    iget-object p1, p1, Lorg/bouncycastle/math/ec/d$c;->x:Lorg/bouncycastle/math/ec/g;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/bouncycastle/math/ec/g;->f(Lorg/bouncycastle/math/ec/g;I)V

    new-instance p1, Lorg/bouncycastle/math/ec/d$c;

    iget v1, p0, Lorg/bouncycastle/math/ec/d$c;->m:I

    iget-object v2, p0, Lorg/bouncycastle/math/ec/d$c;->ks:[I

    invoke-direct {p1, v1, v2, v0}, Lorg/bouncycastle/math/ec/d$c;-><init>(I[ILorg/bouncycastle/math/ec/g;)V

    return-object p1
.end method

.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/math/ec/d$c;->x:Lorg/bouncycastle/math/ec/g;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/g;->j()I

    move-result v0

    return v0
.end method

.method public c(Lorg/bouncycastle/math/ec/d;)Lorg/bouncycastle/math/ec/d;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/d;->f()Lorg/bouncycastle/math/ec/d;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/math/ec/d$c;->i(Lorg/bouncycastle/math/ec/d;)Lorg/bouncycastle/math/ec/d;

    move-result-object p1

    return-object p1
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/bouncycastle/math/ec/d$c;->m:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/bouncycastle/math/ec/d$c;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/bouncycastle/math/ec/d$c;

    iget v1, p0, Lorg/bouncycastle/math/ec/d$c;->m:I

    iget v3, p1, Lorg/bouncycastle/math/ec/d$c;->m:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lorg/bouncycastle/math/ec/d$c;->representation:I

    iget v3, p1, Lorg/bouncycastle/math/ec/d$c;->representation:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/math/ec/d$c;->ks:[I

    iget-object v3, p1, Lorg/bouncycastle/math/ec/d$c;->ks:[I

    invoke-static {v1, v3}, Lorg/bouncycastle/util/a;->c([I[I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/math/ec/d$c;->x:Lorg/bouncycastle/math/ec/g;

    iget-object p1, p1, Lorg/bouncycastle/math/ec/d$c;->x:Lorg/bouncycastle/math/ec/g;

    invoke-virtual {v1, p1}, Lorg/bouncycastle/math/ec/g;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public f()Lorg/bouncycastle/math/ec/d;
    .locals 4

    .line 1
    new-instance v0, Lorg/bouncycastle/math/ec/d$c;

    iget v1, p0, Lorg/bouncycastle/math/ec/d$c;->m:I

    iget-object v2, p0, Lorg/bouncycastle/math/ec/d$c;->ks:[I

    iget-object v3, p0, Lorg/bouncycastle/math/ec/d$c;->x:Lorg/bouncycastle/math/ec/g;

    invoke-virtual {v3, v1, v2}, Lorg/bouncycastle/math/ec/g;->t(I[I)Lorg/bouncycastle/math/ec/g;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/math/ec/d$c;-><init>(I[ILorg/bouncycastle/math/ec/g;)V

    return-object v0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/math/ec/d$c;->x:Lorg/bouncycastle/math/ec/g;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/g;->r()Z

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/math/ec/d$c;->x:Lorg/bouncycastle/math/ec/g;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/g;->s()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/math/ec/d$c;->x:Lorg/bouncycastle/math/ec/g;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/g;->hashCode()I

    move-result v0

    iget v1, p0, Lorg/bouncycastle/math/ec/d$c;->m:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/math/ec/d$c;->ks:[I

    invoke-static {v1}, Lorg/bouncycastle/util/a;->p([I)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public i(Lorg/bouncycastle/math/ec/d;)Lorg/bouncycastle/math/ec/d;
    .locals 4

    .line 1
    new-instance v0, Lorg/bouncycastle/math/ec/d$c;

    iget v1, p0, Lorg/bouncycastle/math/ec/d$c;->m:I

    iget-object v2, p0, Lorg/bouncycastle/math/ec/d$c;->ks:[I

    iget-object v3, p0, Lorg/bouncycastle/math/ec/d$c;->x:Lorg/bouncycastle/math/ec/g;

    check-cast p1, Lorg/bouncycastle/math/ec/d$c;

    iget-object p1, p1, Lorg/bouncycastle/math/ec/d$c;->x:Lorg/bouncycastle/math/ec/g;

    invoke-virtual {v3, p1, v1, v2}, Lorg/bouncycastle/math/ec/g;->u(Lorg/bouncycastle/math/ec/g;I[I)Lorg/bouncycastle/math/ec/g;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lorg/bouncycastle/math/ec/d$c;-><init>(I[ILorg/bouncycastle/math/ec/g;)V

    return-object v0
.end method

.method public j()Lorg/bouncycastle/math/ec/d;
    .locals 0

    .line 1
    return-object p0
.end method

.method public k()Lorg/bouncycastle/math/ec/d;
    .locals 4

    .line 1
    new-instance v0, Lorg/bouncycastle/math/ec/d$c;

    iget v1, p0, Lorg/bouncycastle/math/ec/d$c;->m:I

    iget-object v2, p0, Lorg/bouncycastle/math/ec/d$c;->ks:[I

    iget-object v3, p0, Lorg/bouncycastle/math/ec/d$c;->x:Lorg/bouncycastle/math/ec/g;

    invoke-virtual {v3, v1, v2}, Lorg/bouncycastle/math/ec/g;->v(I[I)Lorg/bouncycastle/math/ec/g;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/math/ec/d$c;-><init>(I[ILorg/bouncycastle/math/ec/g;)V

    return-object v0
.end method

.method public l()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/math/ec/d$c;->x:Lorg/bouncycastle/math/ec/g;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/g;->H()Z

    move-result v0

    return v0
.end method

.method public m()Ljava/math/BigInteger;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/math/ec/d$c;->x:Lorg/bouncycastle/math/ec/g;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/g;->I()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
