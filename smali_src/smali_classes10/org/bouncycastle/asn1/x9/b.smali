.class public Lorg/bouncycastle/asn1/x9/b;
.super Lorg/bouncycastle/asn1/s;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/x9/g;


# static fields
.field private static final ONE:Ljava/math/BigInteger;


# instance fields
.field private curve:Lorg/bouncycastle/math/ec/c;

.field private fieldID:Lorg/bouncycastle/asn1/x9/e;

.field private g:Lorg/bouncycastle/asn1/x9/c;

.field private h:Ljava/math/BigInteger;

.field private n:Ljava/math/BigInteger;

.field private seed:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x9/b;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/math/ec/c;Lorg/bouncycastle/asn1/x9/c;Ljava/math/BigInteger;)V
    .locals 6

    .line 1
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/asn1/x9/b;-><init>(Lorg/bouncycastle/math/ec/c;Lorg/bouncycastle/asn1/x9/c;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/math/ec/c;Lorg/bouncycastle/asn1/x9/c;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 6

    .line 2
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/asn1/x9/b;-><init>(Lorg/bouncycastle/math/ec/c;Lorg/bouncycastle/asn1/x9/c;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/math/ec/c;Lorg/bouncycastle/asn1/x9/c;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lorg/bouncycastle/asn1/s;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/x9/b;->curve:Lorg/bouncycastle/math/ec/c;

    iput-object p2, p0, Lorg/bouncycastle/asn1/x9/b;->g:Lorg/bouncycastle/asn1/x9/c;

    iput-object p3, p0, Lorg/bouncycastle/asn1/x9/b;->n:Ljava/math/BigInteger;

    iput-object p4, p0, Lorg/bouncycastle/asn1/x9/b;->h:Ljava/math/BigInteger;

    invoke-static {p5}, Lorg/bouncycastle/util/a;->e([B)[B

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/asn1/x9/b;->seed:[B

    invoke-static {p1}, Lorg/bouncycastle/math/ec/a;->c(Lorg/bouncycastle/math/ec/c;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lorg/bouncycastle/asn1/x9/e;

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/c;->i()Lorg/bouncycastle/math/field/a;

    move-result-object p1

    invoke-interface {p1}, Lorg/bouncycastle/math/field/a;->b()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/bouncycastle/asn1/x9/e;-><init>(Ljava/math/BigInteger;)V

    :goto_0
    iput-object p2, p0, Lorg/bouncycastle/asn1/x9/b;->fieldID:Lorg/bouncycastle/asn1/x9/e;

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/math/ec/a;->a(Lorg/bouncycastle/math/ec/c;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/c;->i()Lorg/bouncycastle/math/field/a;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/math/field/f;

    invoke-interface {p1}, Lorg/bouncycastle/math/field/f;->c()Lorg/bouncycastle/math/field/e;

    move-result-object p1

    invoke-interface {p1}, Lorg/bouncycastle/math/field/e;->a()[I

    move-result-object p1

    array-length p2, p1

    const/4 p3, 0x1

    const/4 p4, 0x2

    const/4 p5, 0x3

    if-ne p2, p5, :cond_1

    new-instance p2, Lorg/bouncycastle/asn1/x9/e;

    aget p4, p1, p4

    aget p1, p1, p3

    invoke-direct {p2, p4, p1}, Lorg/bouncycastle/asn1/x9/e;-><init>(II)V

    goto :goto_0

    :cond_1
    array-length p2, p1

    const/4 v0, 0x5

    if-ne p2, v0, :cond_2

    new-instance p2, Lorg/bouncycastle/asn1/x9/e;

    const/4 v0, 0x4

    aget v0, p1, v0

    aget p3, p1, p3

    aget p4, p1, p4

    aget p1, p1, p5

    invoke-direct {p2, v0, p3, p4, p1}, Lorg/bouncycastle/asn1/x9/e;-><init>(IIII)V

    goto :goto_0

    :goto_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Only trinomial and pentomial curves are supported"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'curve\' is of an unsupported type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public g()Lorg/bouncycastle/asn1/z;
    .locals 4

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/g;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/g;-><init>(I)V

    new-instance v1, Lorg/bouncycastle/asn1/p;

    sget-object v2, Lorg/bouncycastle/asn1/x9/b;->ONE:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/p;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/g;->a(Lorg/bouncycastle/asn1/f;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x9/b;->fieldID:Lorg/bouncycastle/asn1/x9/e;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/g;->a(Lorg/bouncycastle/asn1/f;)V

    new-instance v1, Lorg/bouncycastle/asn1/x9/a;

    iget-object v2, p0, Lorg/bouncycastle/asn1/x9/b;->curve:Lorg/bouncycastle/math/ec/c;

    iget-object v3, p0, Lorg/bouncycastle/asn1/x9/b;->seed:[B

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/x9/a;-><init>(Lorg/bouncycastle/math/ec/c;[B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/g;->a(Lorg/bouncycastle/asn1/f;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x9/b;->g:Lorg/bouncycastle/asn1/x9/c;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/g;->a(Lorg/bouncycastle/asn1/f;)V

    new-instance v1, Lorg/bouncycastle/asn1/p;

    iget-object v2, p0, Lorg/bouncycastle/asn1/x9/b;->n:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/p;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/g;->a(Lorg/bouncycastle/asn1/f;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x9/b;->h:Ljava/math/BigInteger;

    if-eqz v1, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/p;

    iget-object v2, p0, Lorg/bouncycastle/asn1/x9/b;->h:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/p;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/g;->a(Lorg/bouncycastle/asn1/f;)V

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/v1;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/v1;-><init>(Lorg/bouncycastle/asn1/g;)V

    return-object v1
.end method
