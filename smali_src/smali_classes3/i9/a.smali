.class public Li9/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private coeff_alpha:[[[S

.field private coeff_beta:[[[S

.field private coeff_eta:[S

.field private coeff_gamma:[[S

.field private oi:I

.field private vi:I

.field private viNext:I


# direct methods
.method public constructor <init>(BB[[[S[[[S[[S[S)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit16 p1, p1, 0xff

    iput p1, p0, Li9/a;->vi:I

    and-int/lit16 p2, p2, 0xff

    iput p2, p0, Li9/a;->viNext:I

    sub-int/2addr p2, p1

    iput p2, p0, Li9/a;->oi:I

    iput-object p3, p0, Li9/a;->coeff_alpha:[[[S

    iput-object p4, p0, Li9/a;->coeff_beta:[[[S

    iput-object p5, p0, Li9/a;->coeff_gamma:[[S

    iput-object p6, p0, Li9/a;->coeff_eta:[S

    return-void
.end method

.method public constructor <init>(IILjava/security/SecureRandom;)V
    .locals 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Li9/a;->vi:I

    iput p2, p0, Li9/a;->viNext:I

    sub-int/2addr p2, p1

    iput p2, p0, Li9/a;->oi:I

    filled-new-array {p2, p2, p1}, [I

    move-result-object p1

    sget-object p2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {p2, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[[S

    iput-object p1, p0, Li9/a;->coeff_alpha:[[[S

    iget p1, p0, Li9/a;->oi:I

    iget v0, p0, Li9/a;->vi:I

    filled-new-array {p1, v0, v0}, [I

    move-result-object p1

    invoke-static {p2, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[[S

    iput-object p1, p0, Li9/a;->coeff_beta:[[[S

    iget p1, p0, Li9/a;->oi:I

    iget v0, p0, Li9/a;->viNext:I

    filled-new-array {p1, v0}, [I

    move-result-object p1

    invoke-static {p2, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[S

    iput-object p1, p0, Li9/a;->coeff_gamma:[[S

    iget p1, p0, Li9/a;->oi:I

    new-array p2, p1, [S

    iput-object p2, p0, Li9/a;->coeff_eta:[S

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    if-ge v0, p1, :cond_2

    move v1, p2

    :goto_1
    iget v2, p0, Li9/a;->oi:I

    if-ge v1, v2, :cond_1

    move v2, p2

    :goto_2
    iget v3, p0, Li9/a;->vi:I

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Li9/a;->coeff_alpha:[[[S

    aget-object v3, v3, v0

    aget-object v3, v3, v1

    invoke-virtual {p3}, Ljava/util/Random;->nextInt()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-short v4, v4

    aput-short v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, p2

    :goto_3
    if-ge v0, p1, :cond_5

    move v1, p2

    :goto_4
    iget v2, p0, Li9/a;->vi:I

    if-ge v1, v2, :cond_4

    move v2, p2

    :goto_5
    iget v3, p0, Li9/a;->vi:I

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Li9/a;->coeff_beta:[[[S

    aget-object v3, v3, v0

    aget-object v3, v3, v1

    invoke-virtual {p3}, Ljava/util/Random;->nextInt()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-short v4, v4

    aput-short v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    move v0, p2

    :goto_6
    if-ge v0, p1, :cond_7

    move v1, p2

    :goto_7
    iget v2, p0, Li9/a;->viNext:I

    if-ge v1, v2, :cond_6

    iget-object v2, p0, Li9/a;->coeff_gamma:[[S

    aget-object v2, v2, v0

    invoke-virtual {p3}, Ljava/util/Random;->nextInt()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-short v3, v3

    aput-short v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_7
    :goto_8
    if-ge p2, p1, :cond_8

    iget-object v0, p0, Li9/a;->coeff_eta:[S

    invoke-virtual {p3}, Ljava/util/Random;->nextInt()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-short v1, v1

    aput-short v1, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_8

    :cond_8
    return-void
.end method


# virtual methods
.method public a()[[[S
    .locals 1

    .line 1
    iget-object v0, p0, Li9/a;->coeff_alpha:[[[S

    return-object v0
.end method

.method public b()[[[S
    .locals 1

    .line 1
    iget-object v0, p0, Li9/a;->coeff_beta:[[[S

    return-object v0
.end method

.method public c()[S
    .locals 1

    .line 1
    iget-object v0, p0, Li9/a;->coeff_eta:[S

    return-object v0
.end method

.method public d()[[S
    .locals 1

    .line 1
    iget-object v0, p0, Li9/a;->coeff_gamma:[[S

    return-object v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Li9/a;->oi:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p1, Li9/a;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Li9/a;

    iget v1, p0, Li9/a;->vi:I

    invoke-virtual {p1}, Li9/a;->f()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget v1, p0, Li9/a;->viNext:I

    invoke-virtual {p1}, Li9/a;->g()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget v1, p0, Li9/a;->oi:I

    invoke-virtual {p1}, Li9/a;->e()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Li9/a;->coeff_alpha:[[[S

    invoke-virtual {p1}, Li9/a;->a()[[[S

    move-result-object v2

    invoke-static {v1, v2}, Lj9/a;->k([[[S[[[S)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Li9/a;->coeff_beta:[[[S

    invoke-virtual {p1}, Li9/a;->b()[[[S

    move-result-object v2

    invoke-static {v1, v2}, Lj9/a;->k([[[S[[[S)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Li9/a;->coeff_gamma:[[S

    invoke-virtual {p1}, Li9/a;->d()[[S

    move-result-object v2

    invoke-static {v1, v2}, Lj9/a;->j([[S[[S)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Li9/a;->coeff_eta:[S

    invoke-virtual {p1}, Li9/a;->c()[S

    move-result-object p1

    invoke-static {v1, p1}, Lj9/a;->i([S[S)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Li9/a;->vi:I

    return v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Li9/a;->viNext:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Li9/a;->vi:I

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Li9/a;->viNext:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Li9/a;->oi:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Li9/a;->coeff_alpha:[[[S

    invoke-static {v1}, Lorg/bouncycastle/util/a;->s([[[S)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Li9/a;->coeff_beta:[[[S

    invoke-static {v1}, Lorg/bouncycastle/util/a;->s([[[S)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Li9/a;->coeff_gamma:[[S

    invoke-static {v1}, Lorg/bouncycastle/util/a;->r([[S)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Li9/a;->coeff_eta:[S

    invoke-static {v1}, Lorg/bouncycastle/util/a;->q([S)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
