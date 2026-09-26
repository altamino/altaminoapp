.class Ln9/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Ljava/lang/String;)Lw8/a;
    .locals 3

    .line 1
    const-string v0, "SHA-1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lw8/a;

    sget-object v0, Lu8/a;->idSHA1:Lorg/bouncycastle/asn1/u;

    sget-object v1, Lorg/bouncycastle/asn1/p1;->INSTANCE:Lorg/bouncycastle/asn1/p1;

    invoke-direct {p0, v0, v1}, Lw8/a;-><init>(Lorg/bouncycastle/asn1/u;Lorg/bouncycastle/asn1/f;)V

    return-object p0

    :cond_0
    const-string v0, "SHA-224"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, Lw8/a;

    sget-object v0, Lt8/a;->id_sha224:Lorg/bouncycastle/asn1/u;

    invoke-direct {p0, v0}, Lw8/a;-><init>(Lorg/bouncycastle/asn1/u;)V

    return-object p0

    :cond_1
    const-string v0, "SHA-256"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p0, Lw8/a;

    sget-object v0, Lt8/a;->id_sha256:Lorg/bouncycastle/asn1/u;

    invoke-direct {p0, v0}, Lw8/a;-><init>(Lorg/bouncycastle/asn1/u;)V

    return-object p0

    :cond_2
    const-string v0, "SHA-384"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p0, Lw8/a;

    sget-object v0, Lt8/a;->id_sha384:Lorg/bouncycastle/asn1/u;

    invoke-direct {p0, v0}, Lw8/a;-><init>(Lorg/bouncycastle/asn1/u;)V

    return-object p0

    :cond_3
    const-string v0, "SHA-512"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance p0, Lw8/a;

    sget-object v0, Lt8/a;->id_sha512:Lorg/bouncycastle/asn1/u;

    invoke-direct {p0, v0}, Lw8/a;-><init>(Lorg/bouncycastle/asn1/u;)V

    return-object p0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unrecognised digest algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static b(Lw8/a;)Lx8/c;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lw8/a;->j()Lorg/bouncycastle/asn1/u;

    move-result-object v0

    sget-object v1, Lu8/a;->idSHA1:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/z;->s(Lorg/bouncycastle/asn1/z;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ly8/a;->b()Lx8/c;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lw8/a;->j()Lorg/bouncycastle/asn1/u;

    move-result-object v0

    sget-object v1, Lt8/a;->id_sha224:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/z;->s(Lorg/bouncycastle/asn1/z;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ly8/a;->c()Lx8/c;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lw8/a;->j()Lorg/bouncycastle/asn1/u;

    move-result-object v0

    sget-object v1, Lt8/a;->id_sha256:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/z;->s(Lorg/bouncycastle/asn1/z;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Ly8/a;->d()Lx8/c;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lw8/a;->j()Lorg/bouncycastle/asn1/u;

    move-result-object v0

    sget-object v1, Lt8/a;->id_sha384:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/z;->s(Lorg/bouncycastle/asn1/z;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Ly8/a;->e()Lx8/c;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0}, Lw8/a;->j()Lorg/bouncycastle/asn1/u;

    move-result-object v0

    sget-object v1, Lt8/a;->id_sha512:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/z;->s(Lorg/bouncycastle/asn1/z;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Ly8/a;->j()Lx8/c;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unrecognised OID in digest algorithm identifier: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lw8/a;->j()Lorg/bouncycastle/asn1/u;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
