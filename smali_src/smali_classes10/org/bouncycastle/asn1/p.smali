.class public Lorg/bouncycastle/asn1/p;
.super Lorg/bouncycastle/asn1/z;
.source "SourceFile"


# static fields
.field static final SIGN_EXT_SIGNED:I = -0x1

.field static final SIGN_EXT_UNSIGNED:I = 0xff

.field static final TYPE:Lorg/bouncycastle/asn1/m0;


# instance fields
.field private final bytes:[B

.field private final start:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/p$a;

    const-class v1, Lorg/bouncycastle/asn1/p;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/p$a;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lorg/bouncycastle/asn1/p;->TYPE:Lorg/bouncycastle/asn1/m0;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/asn1/z;-><init>()V

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/p;->bytes:[B

    const/4 p1, 0x0

    iput p1, p0, Lorg/bouncycastle/asn1/p;->start:I

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/bouncycastle/asn1/z;-><init>()V

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/p;->bytes:[B

    const/4 p1, 0x0

    iput p1, p0, Lorg/bouncycastle/asn1/p;->start:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 3
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/p;-><init>([BZ)V

    return-void
.end method

.method constructor <init>([BZ)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lorg/bouncycastle/asn1/z;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/asn1/p;->D([B)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/util/a;->e([B)[B

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    iput-object p2, p0, Lorg/bouncycastle/asn1/p;->bytes:[B

    invoke-static {p1}, Lorg/bouncycastle/asn1/p;->G([B)I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/asn1/p;->start:I

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "malformed integer"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static B([BII)I
    .locals 2

    .line 1
    array-length v0, p0

    add-int/lit8 v1, v0, -0x4

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    aget-byte v1, p0, p1

    and-int/2addr p2, v1

    :goto_0
    add-int/lit8 p1, p1, 0x1

    if-ge p1, v0, :cond_0

    shl-int/lit8 p2, p2, 0x8

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr p2, v1

    goto :goto_0

    :cond_0
    return p2
.end method

.method static D([B)Z
    .locals 3

    .line 1
    array-length v0, p0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    aget-byte v0, p0, v2

    aget-byte p0, p0, v1

    shr-int/lit8 p0, p0, 0x7

    if-ne v0, p0, :cond_0

    const-string p0, "org.bouncycastle.asn1.allow_unsafe_integer"

    invoke-static {p0}, Lorg/bouncycastle/util/g;->b(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    return v2

    :cond_2
    return v1
.end method

.method static E([BII)J
    .locals 5

    .line 1
    array-length v0, p0

    add-int/lit8 v1, v0, -0x8

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    aget-byte v1, p0, p1

    and-int/2addr p2, v1

    int-to-long v1, p2

    :goto_0
    add-int/lit8 p1, p1, 0x1

    if-ge p1, v0, :cond_0

    const/16 p2, 0x8

    shl-long/2addr v1, p2

    aget-byte p2, p0, p1

    and-int/lit16 p2, p2, 0xff

    int-to-long v3, p2

    or-long/2addr v1, v3

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method static G([B)I
    .locals 5

    .line 1
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-byte v2, p0, v1

    add-int/lit8 v3, v1, 0x1

    aget-byte v4, p0, v3

    shr-int/lit8 v4, v4, 0x7

    if-ne v2, v4, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    return v1
.end method

.method static w([B)Lorg/bouncycastle/asn1/p;
    .locals 2

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/p;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/asn1/p;-><init>([BZ)V

    return-object v0
.end method

.method public static x(Ljava/lang/Object;)Lorg/bouncycastle/asn1/p;
    .locals 3

    .line 1
    if-eqz p0, :cond_2

    instance-of v0, p0, Lorg/bouncycastle/asn1/p;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    :try_start_0
    sget-object v0, Lorg/bouncycastle/asn1/p;->TYPE:Lorg/bouncycastle/asn1/m0;

    check-cast p0, [B

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/m0;->b([B)Lorg/bouncycastle/asn1/z;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/p;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encoding error in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    check-cast p0, Lorg/bouncycastle/asn1/p;

    return-object p0
.end method

.method public static y(Lorg/bouncycastle/asn1/h0;Z)Lorg/bouncycastle/asn1/p;
    .locals 1

    .line 1
    sget-object v0, Lorg/bouncycastle/asn1/p;->TYPE:Lorg/bouncycastle/asn1/m0;

    invoke-virtual {v0, p0, p1}, Lorg/bouncycastle/asn1/m0;->e(Lorg/bouncycastle/asn1/h0;Z)Lorg/bouncycastle/asn1/z;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/p;

    return-object p0
.end method


# virtual methods
.method public A(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/asn1/p;->bytes:[B

    array-length v1, v0

    iget v2, p0, Lorg/bouncycastle/asn1/p;->start:I

    sub-int/2addr v1, v2

    const/4 v3, 0x4

    if-gt v1, v3, :cond_0

    const/4 v1, -0x1

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/asn1/p;->B([BII)I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public C()I
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/asn1/p;->bytes:[B

    array-length v1, v0

    iget v2, p0, Lorg/bouncycastle/asn1/p;->start:I

    sub-int/2addr v1, v2

    const/4 v3, 0x4

    if-gt v1, v3, :cond_0

    const/4 v1, -0x1

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/asn1/p;->B([BII)I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "ASN.1 Integer out of int range"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public F()J
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/asn1/p;->bytes:[B

    array-length v1, v0

    iget v2, p0, Lorg/bouncycastle/asn1/p;->start:I

    sub-int/2addr v1, v2

    const/16 v3, 0x8

    if-gt v1, v3, :cond_0

    const/4 v1, -0x1

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/asn1/p;->E([BII)J

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "ASN.1 Integer out of long range"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method b(Lorg/bouncycastle/asn1/z;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/bouncycastle/asn1/p;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lorg/bouncycastle/asn1/p;

    iget-object v0, p0, Lorg/bouncycastle/asn1/p;->bytes:[B

    iget-object p1, p1, Lorg/bouncycastle/asn1/p;->bytes:[B

    invoke-static {v0, p1}, Lorg/bouncycastle/util/a;->a([B[B)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/p;->bytes:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->m([B)I

    move-result v0

    return v0
.end method

.method j(Lorg/bouncycastle/asn1/x;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    iget-object v1, p0, Lorg/bouncycastle/asn1/p;->bytes:[B

    invoke-virtual {p1, p2, v0, v1}, Lorg/bouncycastle/asn1/x;->o(ZI[B)V

    return-void
.end method

.method m()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method r(Z)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/asn1/p;->bytes:[B

    array-length v0, v0

    invoke-static {p1, v0}, Lorg/bouncycastle/asn1/x;->g(ZI)I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/p;->z()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public z()Ljava/math/BigInteger;
    .locals 2

    .line 1
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/bouncycastle/asn1/p;->bytes:[B

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0
.end method
