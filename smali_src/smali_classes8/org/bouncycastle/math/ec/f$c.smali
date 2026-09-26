.class public Lorg/bouncycastle/math/ec/f$c;
.super Lorg/bouncycastle/math/ec/f$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/math/ec/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method constructor <init>(Lorg/bouncycastle/math/ec/c;Lorg/bouncycastle/math/ec/d;Lorg/bouncycastle/math/ec/d;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/math/ec/f$a;-><init>(Lorg/bouncycastle/math/ec/c;Lorg/bouncycastle/math/ec/d;Lorg/bouncycastle/math/ec/d;)V

    return-void
.end method


# virtual methods
.method protected e()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/f;->j()Lorg/bouncycastle/math/ec/d;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/d;->h()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/f;->k()Lorg/bouncycastle/math/ec/d;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/f;->g()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_1

    const/4 v4, 0x6

    if-eq v3, v4, :cond_1

    invoke-virtual {v1, v0}, Lorg/bouncycastle/math/ec/d;->c(Lorg/bouncycastle/math/ec/d;)Lorg/bouncycastle/math/ec/d;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/d;->l()Z

    move-result v0

    return v0

    :cond_1
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/d;->l()Z

    move-result v1

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/d;->l()Z

    move-result v0

    if-eq v1, v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method public m()Lorg/bouncycastle/math/ec/d;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/f;->g()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x6

    if-eq v0, v1, :cond_0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/math/ec/f;->y:Lorg/bouncycastle/math/ec/d;

    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/math/ec/f;->x:Lorg/bouncycastle/math/ec/d;

    iget-object v3, p0, Lorg/bouncycastle/math/ec/f;->y:Lorg/bouncycastle/math/ec/d;

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/f;->o()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/d;->h()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v1}, Lorg/bouncycastle/math/ec/d;->a(Lorg/bouncycastle/math/ec/d;)Lorg/bouncycastle/math/ec/d;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/bouncycastle/math/ec/d;->i(Lorg/bouncycastle/math/ec/d;)Lorg/bouncycastle/math/ec/d;

    move-result-object v1

    if-ne v2, v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/math/ec/f;->zs:[Lorg/bouncycastle/math/ec/d;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/d;->g()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1, v0}, Lorg/bouncycastle/math/ec/d;->c(Lorg/bouncycastle/math/ec/d;)Lorg/bouncycastle/math/ec/d;

    move-result-object v1

    :cond_2
    return-object v1

    :cond_3
    :goto_0
    return-object v3
.end method
