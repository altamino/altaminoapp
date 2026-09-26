.class public Lorg/bouncycastle/math/ec/f$d;
.super Lorg/bouncycastle/math/ec/f$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/math/ec/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# direct methods
.method constructor <init>(Lorg/bouncycastle/math/ec/c;Lorg/bouncycastle/math/ec/d;Lorg/bouncycastle/math/ec/d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/math/ec/f$b;-><init>(Lorg/bouncycastle/math/ec/c;Lorg/bouncycastle/math/ec/d;Lorg/bouncycastle/math/ec/d;)V

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/math/ec/c;Lorg/bouncycastle/math/ec/d;Lorg/bouncycastle/math/ec/d;[Lorg/bouncycastle/math/ec/d;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/math/ec/f$b;-><init>(Lorg/bouncycastle/math/ec/c;Lorg/bouncycastle/math/ec/d;Lorg/bouncycastle/math/ec/d;[Lorg/bouncycastle/math/ec/d;)V

    return-void
.end method


# virtual methods
.method public n(I)Lorg/bouncycastle/math/ec/d;
    .locals 2

    .line 1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/f;->g()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/f$d;->t()Lorg/bouncycastle/math/ec/d;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lorg/bouncycastle/math/ec/f;->n(I)Lorg/bouncycastle/math/ec/d;

    move-result-object p1

    return-object p1
.end method

.method protected s(Lorg/bouncycastle/math/ec/d;Lorg/bouncycastle/math/ec/d;)Lorg/bouncycastle/math/ec/d;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/f;->f()Lorg/bouncycastle/math/ec/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/c;->f()Lorg/bouncycastle/math/ec/d;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/d;->h()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/d;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/d;->k()Lorg/bouncycastle/math/ec/d;

    move-result-object p2

    :cond_1
    invoke-virtual {p2}, Lorg/bouncycastle/math/ec/d;->k()Lorg/bouncycastle/math/ec/d;

    move-result-object p1

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/d;->j()Lorg/bouncycastle/math/ec/d;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bouncycastle/math/ec/d;->b()I

    move-result v1

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/d;->b()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p1, p2}, Lorg/bouncycastle/math/ec/d;->i(Lorg/bouncycastle/math/ec/d;)Lorg/bouncycastle/math/ec/d;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/d;->j()Lorg/bouncycastle/math/ec/d;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v0}, Lorg/bouncycastle/math/ec/d;->i(Lorg/bouncycastle/math/ec/d;)Lorg/bouncycastle/math/ec/d;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_3
    :goto_1
    return-object v0
.end method

.method protected t()Lorg/bouncycastle/math/ec/d;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/math/ec/f;->zs:[Lorg/bouncycastle/math/ec/d;

    const/4 v1, 0x1

    aget-object v2, v0, v1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/bouncycastle/math/ec/f$d;->s(Lorg/bouncycastle/math/ec/d;Lorg/bouncycastle/math/ec/d;)Lorg/bouncycastle/math/ec/d;

    move-result-object v2

    aput-object v2, v0, v1

    :cond_0
    return-object v2
.end method
