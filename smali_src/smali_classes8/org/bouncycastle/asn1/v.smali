.class public abstract Lorg/bouncycastle/asn1/v;
.super Lorg/bouncycastle/asn1/z;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/w;


# static fields
.field static final EMPTY_OCTETS:[B

.field static final TYPE:Lorg/bouncycastle/asn1/m0;


# instance fields
.field string:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/v$a;

    const-class v1, Lorg/bouncycastle/asn1/v;

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/v$a;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lorg/bouncycastle/asn1/v;->TYPE:Lorg/bouncycastle/asn1/m0;

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/bouncycastle/asn1/v;->EMPTY_OCTETS:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/z;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/asn1/v;->string:[B

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "\'string\' cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static w([B)Lorg/bouncycastle/asn1/v;
    .locals 1

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/r1;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/r1;-><init>([B)V

    return-object v0
.end method

.method public static x(Ljava/lang/Object;)Lorg/bouncycastle/asn1/v;
    .locals 3

    .line 1
    if-eqz p0, :cond_3

    instance-of v0, p0, Lorg/bouncycastle/asn1/v;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/f;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/f;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/f;->g()Lorg/bouncycastle/asn1/z;

    move-result-object v0

    instance-of v1, v0, Lorg/bouncycastle/asn1/v;

    if-eqz v1, :cond_2

    check-cast v0, Lorg/bouncycastle/asn1/v;

    return-object v0

    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_2

    :try_start_0
    sget-object v0, Lorg/bouncycastle/asn1/v;->TYPE:Lorg/bouncycastle/asn1/m0;

    check-cast p0, [B

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/m0;->b([B)Lorg/bouncycastle/asn1/z;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/v;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to construct OCTET STRING from byte[]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
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

    :cond_3
    :goto_0
    check-cast p0, Lorg/bouncycastle/asn1/v;

    return-object p0
.end method

.method public static y(Lorg/bouncycastle/asn1/h0;Z)Lorg/bouncycastle/asn1/v;
    .locals 1

    .line 1
    sget-object v0, Lorg/bouncycastle/asn1/v;->TYPE:Lorg/bouncycastle/asn1/m0;

    invoke-virtual {v0, p0, p1}, Lorg/bouncycastle/asn1/m0;->e(Lorg/bouncycastle/asn1/h0;Z)Lorg/bouncycastle/asn1/z;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/v;

    return-object p0
.end method


# virtual methods
.method b(Lorg/bouncycastle/asn1/z;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/bouncycastle/asn1/v;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lorg/bouncycastle/asn1/v;

    iget-object v0, p0, Lorg/bouncycastle/asn1/v;->string:[B

    iget-object p1, p1, Lorg/bouncycastle/asn1/v;->string:[B

    invoke-static {v0, p1}, Lorg/bouncycastle/util/a;->a([B[B)Z

    move-result p1

    return p1
.end method

.method public c()Lorg/bouncycastle/asn1/z;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/z;->g()Lorg/bouncycastle/asn1/z;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/io/InputStream;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lorg/bouncycastle/asn1/v;->string:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/v;->z()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/a;->m([B)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/bouncycastle/asn1/v;->string:[B

    invoke-static {v1}, Lorg/bouncycastle/util/encoders/f;->b([B)[B

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/util/h;->b([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method u()Lorg/bouncycastle/asn1/z;
    .locals 2

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/r1;

    iget-object v1, p0, Lorg/bouncycastle/asn1/v;->string:[B

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/r1;-><init>([B)V

    return-object v0
.end method

.method v()Lorg/bouncycastle/asn1/z;
    .locals 2

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/r1;

    iget-object v1, p0, Lorg/bouncycastle/asn1/v;->string:[B

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/r1;-><init>([B)V

    return-object v0
.end method

.method public z()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/asn1/v;->string:[B

    return-object v0
.end method
