.class public Lorg/bouncycastle/math/ec/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/bouncycastle/math/ec/c;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/c;->i()Lorg/bouncycastle/math/field/a;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/math/ec/a;->b(Lorg/bouncycastle/math/field/a;)Z

    move-result p0

    return p0
.end method

.method public static b(Lorg/bouncycastle/math/field/a;)Z
    .locals 3

    .line 1
    invoke-interface {p0}, Lorg/bouncycastle/math/field/a;->a()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-interface {p0}, Lorg/bouncycastle/math/field/a;->b()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v2, Lorg/bouncycastle/math/ec/b;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of p0, p0, Lorg/bouncycastle/math/field/f;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static c(Lorg/bouncycastle/math/ec/c;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/c;->i()Lorg/bouncycastle/math/field/a;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/math/ec/a;->d(Lorg/bouncycastle/math/field/a;)Z

    move-result p0

    return p0
.end method

.method public static d(Lorg/bouncycastle/math/field/a;)Z
    .locals 1

    .line 1
    invoke-interface {p0}, Lorg/bouncycastle/math/field/a;->a()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static e([Lorg/bouncycastle/math/ec/d;IILorg/bouncycastle/math/ec/d;)V
    .locals 4

    .line 1
    new-array v0, p2, [Lorg/bouncycastle/math/ec/d;

    aget-object v1, p0, p1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    :goto_0
    add-int/lit8 v1, v2, 0x1

    if-ge v1, p2, :cond_0

    aget-object v2, v0, v2

    add-int v3, p1, v1

    aget-object v3, p0, v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/math/ec/d;->i(Lorg/bouncycastle/math/ec/d;)Lorg/bouncycastle/math/ec/d;

    move-result-object v2

    aput-object v2, v0, v1

    move v2, v1

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    aget-object p2, v0, v2

    invoke-virtual {p2, p3}, Lorg/bouncycastle/math/ec/d;->i(Lorg/bouncycastle/math/ec/d;)Lorg/bouncycastle/math/ec/d;

    move-result-object p2

    aput-object p2, v0, v2

    :cond_1
    aget-object p2, v0, v2

    invoke-virtual {p2}, Lorg/bouncycastle/math/ec/d;->f()Lorg/bouncycastle/math/ec/d;

    move-result-object p2

    :goto_1
    if-lez v2, :cond_2

    add-int/lit8 p3, v2, -0x1

    add-int/2addr v2, p1

    aget-object v1, p0, v2

    aget-object v3, v0, p3

    invoke-virtual {v3, p2}, Lorg/bouncycastle/math/ec/d;->i(Lorg/bouncycastle/math/ec/d;)Lorg/bouncycastle/math/ec/d;

    move-result-object v3

    aput-object v3, p0, v2

    invoke-virtual {p2, v1}, Lorg/bouncycastle/math/ec/d;->i(Lorg/bouncycastle/math/ec/d;)Lorg/bouncycastle/math/ec/d;

    move-result-object p2

    move v2, p3

    goto :goto_1

    :cond_2
    aput-object p2, p0, p1

    return-void
.end method
