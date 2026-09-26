.class Lorg/bouncycastle/pqc/crypto/util/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final AlgID_qTESLA_p_I:Lw8/a;

.field static final AlgID_qTESLA_p_III:Lw8/a;

.field static final SPHINCS_SHA3_256:Lw8/a;

.field static final SPHINCS_SHA512_256:Lw8/a;

.field static final XMSS_SHA256:Lw8/a;

.field static final XMSS_SHA512:Lw8/a;

.field static final XMSS_SHAKE128:Lw8/a;

.field static final XMSS_SHAKE256:Lw8/a;

.field static final categories:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lw8/a;

    sget-object v1, Le9/e;->qTESLA_p_I:Lorg/bouncycastle/asn1/u;

    invoke-direct {v0, v1}, Lw8/a;-><init>(Lorg/bouncycastle/asn1/u;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/util/e;->AlgID_qTESLA_p_I:Lw8/a;

    new-instance v0, Lw8/a;

    sget-object v2, Le9/e;->qTESLA_p_III:Lorg/bouncycastle/asn1/u;

    invoke-direct {v0, v2}, Lw8/a;-><init>(Lorg/bouncycastle/asn1/u;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/util/e;->AlgID_qTESLA_p_III:Lw8/a;

    new-instance v0, Lw8/a;

    sget-object v3, Lt8/a;->id_sha3_256:Lorg/bouncycastle/asn1/u;

    invoke-direct {v0, v3}, Lw8/a;-><init>(Lorg/bouncycastle/asn1/u;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/util/e;->SPHINCS_SHA3_256:Lw8/a;

    new-instance v0, Lw8/a;

    sget-object v3, Lt8/a;->id_sha512_256:Lorg/bouncycastle/asn1/u;

    invoke-direct {v0, v3}, Lw8/a;-><init>(Lorg/bouncycastle/asn1/u;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/util/e;->SPHINCS_SHA512_256:Lw8/a;

    new-instance v0, Lw8/a;

    sget-object v3, Lt8/a;->id_sha256:Lorg/bouncycastle/asn1/u;

    invoke-direct {v0, v3}, Lw8/a;-><init>(Lorg/bouncycastle/asn1/u;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/util/e;->XMSS_SHA256:Lw8/a;

    new-instance v0, Lw8/a;

    sget-object v3, Lt8/a;->id_sha512:Lorg/bouncycastle/asn1/u;

    invoke-direct {v0, v3}, Lw8/a;-><init>(Lorg/bouncycastle/asn1/u;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/util/e;->XMSS_SHA512:Lw8/a;

    new-instance v0, Lw8/a;

    sget-object v3, Lt8/a;->id_shake128:Lorg/bouncycastle/asn1/u;

    invoke-direct {v0, v3}, Lw8/a;-><init>(Lorg/bouncycastle/asn1/u;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/util/e;->XMSS_SHAKE128:Lw8/a;

    new-instance v0, Lw8/a;

    sget-object v3, Lt8/a;->id_shake256:Lorg/bouncycastle/asn1/u;

    invoke-direct {v0, v3}, Lw8/a;-><init>(Lorg/bouncycastle/asn1/u;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/util/e;->XMSS_SHAKE256:Lw8/a;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/util/e;->categories:Ljava/util/Map;

    const/4 v3, 0x5

    invoke-static {v3}, Lorg/bouncycastle/util/d;->c(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x6

    invoke-static {v1}, Lorg/bouncycastle/util/d;->c(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lw8/a;
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

.method static b(Lorg/bouncycastle/asn1/u;)Lx8/c;
    .locals 3

    .line 1
    sget-object v0, Lt8/a;->id_sha256:Lorg/bouncycastle/asn1/u;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/z;->s(Lorg/bouncycastle/asn1/z;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lorg/bouncycastle/crypto/digests/g;

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/g;-><init>()V

    return-object p0

    :cond_0
    sget-object v0, Lt8/a;->id_sha512:Lorg/bouncycastle/asn1/u;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/z;->s(Lorg/bouncycastle/asn1/z;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, Lorg/bouncycastle/crypto/digests/j;

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/j;-><init>()V

    return-object p0

    :cond_1
    sget-object v0, Lt8/a;->id_shake128:Lorg/bouncycastle/asn1/u;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/z;->s(Lorg/bouncycastle/asn1/z;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p0, Lorg/bouncycastle/crypto/digests/k;

    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/k;-><init>(I)V

    return-object p0

    :cond_2
    sget-object v0, Lt8/a;->id_shake256:Lorg/bouncycastle/asn1/u;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/z;->s(Lorg/bouncycastle/asn1/z;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p0, Lorg/bouncycastle/crypto/digests/k;

    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/k;-><init>(I)V

    return-object p0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unrecognized digest OID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c(Lorg/bouncycastle/asn1/u;)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lu8/a;->idSHA1:Lorg/bouncycastle/asn1/u;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/z;->s(Lorg/bouncycastle/asn1/z;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "SHA-1"

    return-object p0

    :cond_0
    sget-object v0, Lt8/a;->id_sha224:Lorg/bouncycastle/asn1/u;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/z;->s(Lorg/bouncycastle/asn1/z;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "SHA-224"

    return-object p0

    :cond_1
    sget-object v0, Lt8/a;->id_sha256:Lorg/bouncycastle/asn1/u;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/z;->s(Lorg/bouncycastle/asn1/z;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "SHA-256"

    return-object p0

    :cond_2
    sget-object v0, Lt8/a;->id_sha384:Lorg/bouncycastle/asn1/u;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/z;->s(Lorg/bouncycastle/asn1/z;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "SHA-384"

    return-object p0

    :cond_3
    sget-object v0, Lt8/a;->id_sha512:Lorg/bouncycastle/asn1/u;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/z;->s(Lorg/bouncycastle/asn1/z;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "SHA-512"

    return-object p0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unrecognised digest algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static d(I)Lw8/a;
    .locals 3

    .line 1
    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    sget-object p0, Lorg/bouncycastle/pqc/crypto/util/e;->AlgID_qTESLA_p_III:Lw8/a;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown security category: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object p0, Lorg/bouncycastle/pqc/crypto/util/e;->AlgID_qTESLA_p_I:Lw8/a;

    return-object p0
.end method

.method static e(Lw8/a;)I
    .locals 1

    .line 1
    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/e;->categories:Ljava/util/Map;

    invoke-virtual {p0}, Lw8/a;->j()Lorg/bouncycastle/asn1/u;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method static f(Ljava/lang/String;)Lw8/a;
    .locals 3

    .line 1
    const-string v0, "SHA3-256"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lorg/bouncycastle/pqc/crypto/util/e;->SPHINCS_SHA3_256:Lw8/a;

    return-object p0

    :cond_0
    const-string v0, "SHA-512/256"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lorg/bouncycastle/pqc/crypto/util/e;->SPHINCS_SHA512_256:Lw8/a;

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown tree digest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static g(Le9/h;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Le9/h;->j()Lw8/a;

    move-result-object p0

    invoke-virtual {p0}, Lw8/a;->j()Lorg/bouncycastle/asn1/u;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/pqc/crypto/util/e;->SPHINCS_SHA3_256:Lw8/a;

    invoke-virtual {v1}, Lw8/a;->j()Lorg/bouncycastle/asn1/u;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/z;->s(Lorg/bouncycastle/asn1/z;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "SHA3-256"

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lw8/a;->j()Lorg/bouncycastle/asn1/u;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/pqc/crypto/util/e;->SPHINCS_SHA512_256:Lw8/a;

    invoke-virtual {v1}, Lw8/a;->j()Lorg/bouncycastle/asn1/u;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/z;->s(Lorg/bouncycastle/asn1/z;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "SHA-512/256"

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown tree digest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lw8/a;->j()Lorg/bouncycastle/asn1/u;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static h(Ljava/lang/String;)Lw8/a;
    .locals 3

    .line 1
    const-string v0, "SHA-256"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lorg/bouncycastle/pqc/crypto/util/e;->XMSS_SHA256:Lw8/a;

    return-object p0

    :cond_0
    const-string v0, "SHA-512"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lorg/bouncycastle/pqc/crypto/util/e;->XMSS_SHA512:Lw8/a;

    return-object p0

    :cond_1
    const-string v0, "SHAKE128"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lorg/bouncycastle/pqc/crypto/util/e;->XMSS_SHAKE128:Lw8/a;

    return-object p0

    :cond_2
    const-string v0, "SHAKE256"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lorg/bouncycastle/pqc/crypto/util/e;->XMSS_SHAKE256:Lw8/a;

    return-object p0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown tree digest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
