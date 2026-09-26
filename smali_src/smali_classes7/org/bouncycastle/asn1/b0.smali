.class public Lorg/bouncycastle/asn1/b0;
.super Lorg/bouncycastle/asn1/z;
.source "SourceFile"


# static fields
.field private static final LONG_LIMIT:J = 0xffffffffffff80L

.field static final TYPE:Lorg/bouncycastle/asn1/m0;


# instance fields
.field private contents:[B

.field private final identifier:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/b0$a;

    const-class v1, Lorg/bouncycastle/asn1/b0;

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/b0$a;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lorg/bouncycastle/asn1/b0;->TYPE:Lorg/bouncycastle/asn1/m0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/asn1/z;-><init>()V

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/bouncycastle/asn1/b0;->A(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/asn1/b0;->identifier:Ljava/lang/String;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "string "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not a relative OID"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "\'identifier\' cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>([BZ)V
    .locals 16

    .line 2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Lorg/bouncycastle/asn1/z;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v11, v5

    move v8, v7

    const-wide/16 v9, 0x0

    :goto_0
    array-length v12, v1

    if-eq v8, v12, :cond_6

    aget-byte v12, v1, v8

    const-wide v13, 0xffffffffffff80L

    cmp-long v13, v9, v13

    const/16 v14, 0x2e

    const/4 v15, 0x7

    if-gtz v13, :cond_2

    and-int/lit8 v13, v12, 0x7f

    int-to-long v3, v13

    add-long/2addr v9, v3

    and-int/lit16 v3, v12, 0x80

    if-nez v3, :cond_1

    if-eqz v6, :cond_0

    move v6, v7

    goto :goto_1

    :cond_0
    invoke-virtual {v2, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    :goto_2
    const-wide/16 v9, 0x0

    goto :goto_4

    :cond_1
    shl-long/2addr v9, v15

    goto :goto_4

    :cond_2
    if-nez v11, :cond_3

    invoke-static {v9, v10}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v11

    :cond_3
    and-int/lit8 v3, v12, 0x7f

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    and-int/lit16 v4, v12, 0x80

    if-nez v4, :cond_5

    if-eqz v6, :cond_4

    move v6, v7

    goto :goto_3

    :cond_4
    invoke-virtual {v2, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-object v11, v5

    goto :goto_2

    :cond_5
    invoke-virtual {v3, v15}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v11

    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/bouncycastle/asn1/b0;->identifier:Ljava/lang/String;

    if-eqz p2, :cond_7

    invoke-static/range {p1 .. p1}, Lorg/bouncycastle/util/a;->e([B)[B

    move-result-object v1

    :cond_7
    iput-object v1, v0, Lorg/bouncycastle/asn1/b0;->contents:[B

    return-void
.end method

.method static A(Ljava/lang/String;I)Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    add-int/lit8 v3, v0, -0x1

    const/16 v4, 0x30

    const/4 v5, 0x1

    if-lt v3, p1, :cond_4

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2e

    if-ne v6, v7, :cond_2

    if-eqz v2, :cond_1

    if-le v2, v5, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_0

    goto :goto_1

    :cond_0
    move v2, v1

    goto :goto_2

    :cond_1
    :goto_1
    return v1

    :cond_2
    if-gt v4, v6, :cond_3

    const/16 v0, 0x39

    if-gt v6, v0, :cond_3

    add-int/lit8 v2, v2, 0x1

    :goto_2
    move v0, v3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    if-eqz v2, :cond_6

    if-le v2, v5, :cond_5

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-ne p0, v4, :cond_5

    goto :goto_3

    :cond_5
    return v5

    :cond_6
    :goto_3
    return v1
.end method

.method static B(Ljava/io/ByteArrayOutputStream;J)V
    .locals 5

    .line 1
    const/16 v0, 0x9

    new-array v0, v0, [B

    long-to-int v1, p1

    and-int/lit8 v1, v1, 0x7f

    int-to-byte v1, v1

    const/16 v2, 0x8

    aput-byte v1, v0, v2

    :goto_0
    const-wide/16 v3, 0x80

    cmp-long v1, p1, v3

    if-ltz v1, :cond_0

    const/4 v1, 0x7

    shr-long/2addr p1, v1

    add-int/lit8 v2, v2, -0x1

    long-to-int v1, p1

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    goto :goto_0

    :cond_0
    rsub-int/lit8 p1, v2, 0x9

    invoke-virtual {p0, v0, v2, p1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void
.end method

.method static C(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    const/4 v1, 0x7

    div-int/2addr v0, v1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    :cond_0
    new-array v3, v0, [B

    add-int/lit8 v4, v0, -0x1

    move v5, v4

    :goto_0
    if-ltz v5, :cond_1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_1
    aget-byte p1, v3, v4

    and-int/lit8 p1, p1, 0x7f

    int-to-byte p1, p1

    aput-byte p1, v3, v4

    invoke-virtual {p0, v3, v2, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :goto_1
    return-void
.end method

.method static w([BZ)Lorg/bouncycastle/asn1/b0;
    .locals 1

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/b0;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/asn1/b0;-><init>([BZ)V

    return-object v0
.end method

.method private x(Ljava/io/ByteArrayOutputStream;)V
    .locals 4

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/w2;

    iget-object v1, p0, Lorg/bouncycastle/asn1/b0;->identifier:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/w2;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/w2;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/w2;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x12

    if-gt v2, v3, :cond_0

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Lorg/bouncycastle/asn1/b0;->B(Ljava/io/ByteArrayOutputStream;J)V

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v2}, Lorg/bouncycastle/asn1/b0;->C(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private declared-synchronized y()[B
    .locals 1

    .line 1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/b0;->contents:[B

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/b0;->x(Ljava/io/ByteArrayOutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/b0;->contents:[B

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/b0;->contents:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method b(Lorg/bouncycastle/asn1/z;)Z
    .locals 1

    .line 1
    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/asn1/b0;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lorg/bouncycastle/asn1/b0;

    iget-object v0, p0, Lorg/bouncycastle/asn1/b0;->identifier:Ljava/lang/String;

    iget-object p1, p1, Lorg/bouncycastle/asn1/b0;->identifier:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/b0;->identifier:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

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
    const/16 v0, 0xd

    invoke-direct {p0}, Lorg/bouncycastle/asn1/b0;->y()[B

    move-result-object v1

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
    invoke-direct {p0}, Lorg/bouncycastle/asn1/b0;->y()[B

    move-result-object v0

    array-length v0, v0

    invoke-static {p1, v0}, Lorg/bouncycastle/asn1/x;->g(ZI)I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/b0;->z()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public z()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/asn1/b0;->identifier:Ljava/lang/String;

    return-object v0
.end method
