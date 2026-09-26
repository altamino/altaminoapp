.class Lorg/bouncycastle/math/field/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/math/field/e;


# instance fields
.field protected final exponents:[I


# direct methods
.method constructor <init>([I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/util/a;->f([I)[I

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/math/field/c;->exponents:[I

    return-void
.end method


# virtual methods
.method public a()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/math/field/c;->exponents:[I

    invoke-static {v0}, Lorg/bouncycastle/util/a;->f([I)[I

    move-result-object v0

    return-object v0
.end method

.method public b()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/math/field/c;->exponents:[I

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/math/field/c;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lorg/bouncycastle/math/field/c;

    iget-object v0, p0, Lorg/bouncycastle/math/field/c;->exponents:[I

    iget-object p1, p1, Lorg/bouncycastle/math/field/c;->exponents:[I

    invoke-static {v0, p1}, Lorg/bouncycastle/util/a;->c([I[I)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/math/field/c;->exponents:[I

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([I)I

    move-result v0

    return v0
.end method
