.class public Ln9/e;
.super Ljava/security/KeyFactorySpi;
.source "SourceFile"

# interfaces
.implements La9/b;


# static fields
.field public static final OID:Ljava/lang/String; = "1.3.6.1.4.1.8301.3.1.3.4.2"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/security/KeyFactorySpi;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {p1}, Ljava/security/spec/PKCS8EncodedKeySpec;->getEncoded()[B

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Lorg/bouncycastle/asn1/z;->t([B)Lorg/bouncycastle/asn1/z;

    move-result-object p1

    invoke-static {p1}, Lv8/b;->m(Ljava/lang/Object;)Lv8/b;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    sget-object v0, Le9/e;->mcElieceCca2:Lorg/bouncycastle/asn1/u;

    invoke-virtual {p1}, Lv8/b;->p()Lw8/a;

    move-result-object v1

    invoke-virtual {v1}, Lw8/a;->j()Lorg/bouncycastle/asn1/u;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/z;->s(Lorg/bouncycastle/asn1/z;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lv8/b;->s()Lorg/bouncycastle/asn1/f;

    move-result-object p1

    invoke-static {p1}, Le9/a;->q(Ljava/lang/Object;)Le9/a;

    move-result-object p1

    new-instance v0, Ln9/a;

    new-instance v8, Lg9/b;

    invoke-virtual {p1}, Le9/a;->s()I

    move-result v2

    invoke-virtual {p1}, Le9/a;->r()I

    move-result v3

    invoke-virtual {p1}, Le9/a;->m()Lorg/bouncycastle/pqc/math/linearalgebra/b;

    move-result-object v4

    invoke-virtual {p1}, Le9/a;->p()Lorg/bouncycastle/pqc/math/linearalgebra/j;

    move-result-object v5

    invoke-virtual {p1}, Le9/a;->t()Lorg/bouncycastle/pqc/math/linearalgebra/i;

    move-result-object v6

    invoke-virtual {p1}, Le9/a;->j()Lw8/a;

    move-result-object p1

    invoke-static {p1}, Ln9/g;->b(Lw8/a;)Lx8/c;

    move-result-object p1

    invoke-interface {p1}, Lx8/c;->d()Ljava/lang/String;

    move-result-object v7

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lg9/b;-><init>(IILorg/bouncycastle/pqc/math/linearalgebra/b;Lorg/bouncycastle/pqc/math/linearalgebra/j;Lorg/bouncycastle/pqc/math/linearalgebra/i;Ljava/lang/String;)V

    invoke-direct {v0, v8}, Ln9/a;-><init>(Lg9/b;)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    const-string v0, "Unable to recognise OID in McEliece public key"

    invoke-direct {p1, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    const-string v0, "Unable to decode PKCS8EncodedKeySpec."

    invoke-direct {p1, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p1

    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to decode PKCS8EncodedKeySpec: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key specification: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/security/spec/X509EncodedKeySpec;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {p1}, Ljava/security/spec/X509EncodedKeySpec;->getEncoded()[B

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Lorg/bouncycastle/asn1/z;->t([B)Lorg/bouncycastle/asn1/z;

    move-result-object p1

    invoke-static {p1}, Lw8/b;->m(Ljava/lang/Object;)Lw8/b;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    sget-object v0, Le9/e;->mcElieceCca2:Lorg/bouncycastle/asn1/u;

    invoke-virtual {p1}, Lw8/b;->j()Lw8/a;

    move-result-object v1

    invoke-virtual {v1}, Lw8/a;->j()Lorg/bouncycastle/asn1/u;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/z;->s(Lorg/bouncycastle/asn1/z;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lw8/b;->q()Lorg/bouncycastle/asn1/z;

    move-result-object p1

    invoke-static {p1}, Le9/b;->p(Ljava/lang/Object;)Le9/b;

    move-result-object p1

    new-instance v0, Ln9/b;

    new-instance v1, Lg9/c;

    invoke-virtual {p1}, Le9/b;->q()I

    move-result v2

    invoke-virtual {p1}, Le9/b;->r()I

    move-result v3

    invoke-virtual {p1}, Le9/b;->m()Lorg/bouncycastle/pqc/math/linearalgebra/a;

    move-result-object v4

    invoke-virtual {p1}, Le9/b;->j()Lw8/a;

    move-result-object p1

    invoke-static {p1}, Ln9/g;->b(Lw8/a;)Lx8/c;

    move-result-object p1

    invoke-interface {p1}, Lx8/c;->d()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, v3, v4, p1}, Lg9/c;-><init>(IILorg/bouncycastle/pqc/math/linearalgebra/a;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ln9/b;-><init>(Lg9/c;)V

    return-object v0

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    const-string v0, "Unable to recognise OID in McEliece private key"

    invoke-direct {p1, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to decode X509EncodedKeySpec: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception p1

    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key specification: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method
