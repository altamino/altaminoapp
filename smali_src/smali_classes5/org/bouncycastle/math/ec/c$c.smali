.class public Lorg/bouncycastle/math/ec/c$c;
.super Lorg/bouncycastle/math/ec/c$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/math/ec/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field private static final F2M_DEFAULT_COORDS:I = 0x6


# instance fields
.field private infinity:Lorg/bouncycastle/math/ec/f$c;

.field private k1:I

.field private k2:I

.field private k3:I

.field private m:I


# direct methods
.method public constructor <init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 9

    .line 1
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/math/ec/c$c;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/math/ec/c$a;-><init>(IIII)V

    iput p1, p0, Lorg/bouncycastle/math/ec/c$c;->m:I

    iput p2, p0, Lorg/bouncycastle/math/ec/c$c;->k1:I

    iput p3, p0, Lorg/bouncycastle/math/ec/c$c;->k2:I

    iput p4, p0, Lorg/bouncycastle/math/ec/c$c;->k3:I

    iput-object p7, p0, Lorg/bouncycastle/math/ec/c;->order:Ljava/math/BigInteger;

    iput-object p8, p0, Lorg/bouncycastle/math/ec/c;->cofactor:Ljava/math/BigInteger;

    new-instance p1, Lorg/bouncycastle/math/ec/f$c;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2, p2}, Lorg/bouncycastle/math/ec/f$c;-><init>(Lorg/bouncycastle/math/ec/c;Lorg/bouncycastle/math/ec/d;Lorg/bouncycastle/math/ec/d;)V

    iput-object p1, p0, Lorg/bouncycastle/math/ec/c$c;->infinity:Lorg/bouncycastle/math/ec/f$c;

    invoke-virtual {p0, p5}, Lorg/bouncycastle/math/ec/c$c;->e(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/d;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/math/ec/c;->a:Lorg/bouncycastle/math/ec/d;

    invoke-virtual {p0, p6}, Lorg/bouncycastle/math/ec/c$c;->e(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/d;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/math/ec/c;->b:Lorg/bouncycastle/math/ec/d;

    const/4 p1, 0x6

    iput p1, p0, Lorg/bouncycastle/math/ec/c;->coord:I

    return-void
.end method

.method public constructor <init>(IILjava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 9

    .line 3
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/math/ec/c$c;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(IILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 9

    .line 4
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/math/ec/c$c;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-void
.end method


# virtual methods
.method protected c(Lorg/bouncycastle/math/ec/d;Lorg/bouncycastle/math/ec/d;)Lorg/bouncycastle/math/ec/f;
    .locals 1

    .line 1
    new-instance v0, Lorg/bouncycastle/math/ec/f$c;

    invoke-direct {v0, p0, p1, p2}, Lorg/bouncycastle/math/ec/f$c;-><init>(Lorg/bouncycastle/math/ec/c;Lorg/bouncycastle/math/ec/d;Lorg/bouncycastle/math/ec/d;)V

    return-object v0
.end method

.method public e(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/d;
    .locals 7

    .line 1
    new-instance v6, Lorg/bouncycastle/math/ec/d$c;

    iget v1, p0, Lorg/bouncycastle/math/ec/c$c;->m:I

    iget v2, p0, Lorg/bouncycastle/math/ec/c$c;->k1:I

    iget v3, p0, Lorg/bouncycastle/math/ec/c$c;->k2:I

    iget v4, p0, Lorg/bouncycastle/math/ec/c$c;->k3:I

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/math/ec/d$c;-><init>(IIIILjava/math/BigInteger;)V

    return-object v6
.end method

.method public j()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/bouncycastle/math/ec/c$c;->m:I

    return v0
.end method

.method public k()Lorg/bouncycastle/math/ec/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/math/ec/c$c;->infinity:Lorg/bouncycastle/math/ec/f$c;

    return-object v0
.end method
