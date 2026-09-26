.class public abstract Lorg/bouncycastle/math/ec/f$b;
.super Lorg/bouncycastle/math/ec/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/math/ec/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# direct methods
.method protected constructor <init>(Lorg/bouncycastle/math/ec/c;Lorg/bouncycastle/math/ec/d;Lorg/bouncycastle/math/ec/d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/math/ec/f;-><init>(Lorg/bouncycastle/math/ec/c;Lorg/bouncycastle/math/ec/d;Lorg/bouncycastle/math/ec/d;)V

    return-void
.end method

.method protected constructor <init>(Lorg/bouncycastle/math/ec/c;Lorg/bouncycastle/math/ec/d;Lorg/bouncycastle/math/ec/d;[Lorg/bouncycastle/math/ec/d;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/math/ec/f;-><init>(Lorg/bouncycastle/math/ec/c;Lorg/bouncycastle/math/ec/d;Lorg/bouncycastle/math/ec/d;[Lorg/bouncycastle/math/ec/d;)V

    return-void
.end method


# virtual methods
.method protected e()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/f;->d()Lorg/bouncycastle/math/ec/d;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/d;->l()Z

    move-result v0

    return v0
.end method
