.class public interface abstract Lr8/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final bc:Lorg/bouncycastle/asn1/u;

.field public static final bc_exch:Lorg/bouncycastle/asn1/u;

.field public static final bc_ext:Lorg/bouncycastle/asn1/u;

.field public static final bc_pbe:Lorg/bouncycastle/asn1/u;

.field public static final bc_pbe_sha1:Lorg/bouncycastle/asn1/u;

.field public static final bc_pbe_sha1_pkcs12:Lorg/bouncycastle/asn1/u;

.field public static final bc_pbe_sha1_pkcs12_aes128_cbc:Lorg/bouncycastle/asn1/u;

.field public static final bc_pbe_sha1_pkcs12_aes192_cbc:Lorg/bouncycastle/asn1/u;

.field public static final bc_pbe_sha1_pkcs12_aes256_cbc:Lorg/bouncycastle/asn1/u;

.field public static final bc_pbe_sha1_pkcs5:Lorg/bouncycastle/asn1/u;

.field public static final bc_pbe_sha224:Lorg/bouncycastle/asn1/u;

.field public static final bc_pbe_sha256:Lorg/bouncycastle/asn1/u;

.field public static final bc_pbe_sha256_pkcs12:Lorg/bouncycastle/asn1/u;

.field public static final bc_pbe_sha256_pkcs12_aes128_cbc:Lorg/bouncycastle/asn1/u;

.field public static final bc_pbe_sha256_pkcs12_aes192_cbc:Lorg/bouncycastle/asn1/u;

.field public static final bc_pbe_sha256_pkcs12_aes256_cbc:Lorg/bouncycastle/asn1/u;

.field public static final bc_pbe_sha256_pkcs5:Lorg/bouncycastle/asn1/u;

.field public static final bc_pbe_sha384:Lorg/bouncycastle/asn1/u;

.field public static final bc_pbe_sha512:Lorg/bouncycastle/asn1/u;

.field public static final bc_sig:Lorg/bouncycastle/asn1/u;

.field public static final linkedCertificate:Lorg/bouncycastle/asn1/u;

.field public static final newHope:Lorg/bouncycastle/asn1/u;

.field public static final qTESLA:Lorg/bouncycastle/asn1/u;

.field public static final qTESLA_Rnd1_I:Lorg/bouncycastle/asn1/u;

.field public static final qTESLA_Rnd1_III_size:Lorg/bouncycastle/asn1/u;

.field public static final qTESLA_Rnd1_III_speed:Lorg/bouncycastle/asn1/u;

.field public static final qTESLA_Rnd1_p_I:Lorg/bouncycastle/asn1/u;

.field public static final qTESLA_Rnd1_p_III:Lorg/bouncycastle/asn1/u;

.field public static final qTESLA_p_I:Lorg/bouncycastle/asn1/u;

.field public static final qTESLA_p_III:Lorg/bouncycastle/asn1/u;

.field public static final sphincs256:Lorg/bouncycastle/asn1/u;

.field public static final sphincs256_with_BLAKE512:Lorg/bouncycastle/asn1/u;

.field public static final sphincs256_with_SHA3_512:Lorg/bouncycastle/asn1/u;

.field public static final sphincs256_with_SHA512:Lorg/bouncycastle/asn1/u;

.field public static final xmss:Lorg/bouncycastle/asn1/u;

.field public static final xmss_SHA256:Lorg/bouncycastle/asn1/u;

.field public static final xmss_SHA256ph:Lorg/bouncycastle/asn1/u;

.field public static final xmss_SHA512:Lorg/bouncycastle/asn1/u;

.field public static final xmss_SHA512ph:Lorg/bouncycastle/asn1/u;

.field public static final xmss_SHAKE128:Lorg/bouncycastle/asn1/u;

.field public static final xmss_SHAKE128ph:Lorg/bouncycastle/asn1/u;

.field public static final xmss_SHAKE256:Lorg/bouncycastle/asn1/u;

.field public static final xmss_SHAKE256ph:Lorg/bouncycastle/asn1/u;

.field public static final xmss_mt:Lorg/bouncycastle/asn1/u;

.field public static final xmss_mt_SHA256:Lorg/bouncycastle/asn1/u;

.field public static final xmss_mt_SHA256ph:Lorg/bouncycastle/asn1/u;

.field public static final xmss_mt_SHA512:Lorg/bouncycastle/asn1/u;

.field public static final xmss_mt_SHA512ph:Lorg/bouncycastle/asn1/u;

.field public static final xmss_mt_SHAKE128:Lorg/bouncycastle/asn1/u;

.field public static final xmss_mt_SHAKE128ph:Lorg/bouncycastle/asn1/u;

.field public static final xmss_mt_SHAKE256:Lorg/bouncycastle/asn1/u;

.field public static final xmss_mt_SHAKE256ph:Lorg/bouncycastle/asn1/u;

.field public static final xmss_mt_with_SHA256:Lorg/bouncycastle/asn1/u;

.field public static final xmss_mt_with_SHA512:Lorg/bouncycastle/asn1/u;

.field public static final xmss_mt_with_SHAKE128:Lorg/bouncycastle/asn1/u;

.field public static final xmss_mt_with_SHAKE256:Lorg/bouncycastle/asn1/u;

.field public static final xmss_with_SHA256:Lorg/bouncycastle/asn1/u;

.field public static final xmss_with_SHA512:Lorg/bouncycastle/asn1/u;

.field public static final xmss_with_SHAKE128:Lorg/bouncycastle/asn1/u;

.field public static final xmss_with_SHAKE256:Lorg/bouncycastle/asn1/u;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/u;

    const-string v1, "1.3.6.1.4.1.22554"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/u;-><init>(Ljava/lang/String;)V

    sput-object v0, Lr8/a;->bc:Lorg/bouncycastle/asn1/u;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v2

    sput-object v2, Lr8/a;->bc_pbe:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v2, v1}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v3

    sput-object v3, Lr8/a;->bc_pbe_sha1:Lorg/bouncycastle/asn1/u;

    const-string v4, "2.1"

    invoke-virtual {v2, v4}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v4

    sput-object v4, Lr8/a;->bc_pbe_sha256:Lorg/bouncycastle/asn1/u;

    const-string v5, "2.2"

    invoke-virtual {v2, v5}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v5

    sput-object v5, Lr8/a;->bc_pbe_sha384:Lorg/bouncycastle/asn1/u;

    const-string v5, "2.3"

    invoke-virtual {v2, v5}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v5

    sput-object v5, Lr8/a;->bc_pbe_sha512:Lorg/bouncycastle/asn1/u;

    const-string v5, "2.4"

    invoke-virtual {v2, v5}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v2

    sput-object v2, Lr8/a;->bc_pbe_sha224:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v3, v1}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v2

    sput-object v2, Lr8/a;->bc_pbe_sha1_pkcs5:Lorg/bouncycastle/asn1/u;

    const-string v2, "2"

    invoke-virtual {v3, v2}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v3

    sput-object v3, Lr8/a;->bc_pbe_sha1_pkcs12:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v4, v1}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v5

    sput-object v5, Lr8/a;->bc_pbe_sha256_pkcs5:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v4, v2}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v4

    sput-object v4, Lr8/a;->bc_pbe_sha256_pkcs12:Lorg/bouncycastle/asn1/u;

    const-string v5, "1.2"

    invoke-virtual {v3, v5}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v6

    sput-object v6, Lr8/a;->bc_pbe_sha1_pkcs12_aes128_cbc:Lorg/bouncycastle/asn1/u;

    const-string v6, "1.22"

    invoke-virtual {v3, v6}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v7

    sput-object v7, Lr8/a;->bc_pbe_sha1_pkcs12_aes192_cbc:Lorg/bouncycastle/asn1/u;

    const-string v7, "1.42"

    invoke-virtual {v3, v7}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v3

    sput-object v3, Lr8/a;->bc_pbe_sha1_pkcs12_aes256_cbc:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v3

    sput-object v3, Lr8/a;->bc_pbe_sha256_pkcs12_aes128_cbc:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v4, v6}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v3

    sput-object v3, Lr8/a;->bc_pbe_sha256_pkcs12_aes192_cbc:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v4, v7}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v3

    sput-object v3, Lr8/a;->bc_pbe_sha256_pkcs12_aes256_cbc:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v3

    sput-object v3, Lr8/a;->bc_sig:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v3, v1}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v4

    sput-object v4, Lr8/a;->sphincs256:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v4, v1}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v5

    sput-object v5, Lr8/a;->sphincs256_with_BLAKE512:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v4, v2}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v5

    sput-object v5, Lr8/a;->sphincs256_with_SHA512:Lorg/bouncycastle/asn1/u;

    const-string v5, "3"

    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v4

    sput-object v4, Lr8/a;->sphincs256_with_SHA3_512:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v3, v2}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v4

    sput-object v4, Lr8/a;->xmss:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v4, v1}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v6

    sput-object v6, Lr8/a;->xmss_SHA256ph:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v4, v2}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v7

    sput-object v7, Lr8/a;->xmss_SHA512ph:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v8

    sput-object v8, Lr8/a;->xmss_SHAKE128ph:Lorg/bouncycastle/asn1/u;

    const-string v9, "4"

    invoke-virtual {v4, v9}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v10

    sput-object v10, Lr8/a;->xmss_SHAKE256ph:Lorg/bouncycastle/asn1/u;

    const-string v11, "5"

    invoke-virtual {v4, v11}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v12

    sput-object v12, Lr8/a;->xmss_SHA256:Lorg/bouncycastle/asn1/u;

    const-string v12, "6"

    invoke-virtual {v4, v12}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v13

    sput-object v13, Lr8/a;->xmss_SHA512:Lorg/bouncycastle/asn1/u;

    const-string v13, "7"

    invoke-virtual {v4, v13}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v14

    sput-object v14, Lr8/a;->xmss_SHAKE128:Lorg/bouncycastle/asn1/u;

    const-string v14, "8"

    invoke-virtual {v4, v14}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v4

    sput-object v4, Lr8/a;->xmss_SHAKE256:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v3, v5}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v4

    sput-object v4, Lr8/a;->xmss_mt:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v4, v1}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v15

    sput-object v15, Lr8/a;->xmss_mt_SHA256ph:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v4, v2}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v16

    sput-object v16, Lr8/a;->xmss_mt_SHA512ph:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v17

    sput-object v17, Lr8/a;->xmss_mt_SHAKE128ph:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v4, v9}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v17

    sput-object v17, Lr8/a;->xmss_mt_SHAKE256ph:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v4, v11}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v17

    sput-object v17, Lr8/a;->xmss_mt_SHA256:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v4, v12}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v12

    sput-object v12, Lr8/a;->xmss_mt_SHA512:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v4, v13}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v12

    sput-object v12, Lr8/a;->xmss_mt_SHAKE128:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v4, v14}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v4

    sput-object v4, Lr8/a;->xmss_mt_SHAKE256:Lorg/bouncycastle/asn1/u;

    sput-object v6, Lr8/a;->xmss_with_SHA256:Lorg/bouncycastle/asn1/u;

    sput-object v7, Lr8/a;->xmss_with_SHA512:Lorg/bouncycastle/asn1/u;

    sput-object v8, Lr8/a;->xmss_with_SHAKE128:Lorg/bouncycastle/asn1/u;

    sput-object v10, Lr8/a;->xmss_with_SHAKE256:Lorg/bouncycastle/asn1/u;

    sput-object v15, Lr8/a;->xmss_mt_with_SHA256:Lorg/bouncycastle/asn1/u;

    sput-object v16, Lr8/a;->xmss_mt_with_SHA512:Lorg/bouncycastle/asn1/u;

    sput-object v12, Lr8/a;->xmss_mt_with_SHAKE128:Lorg/bouncycastle/asn1/u;

    sput-object v4, Lr8/a;->xmss_mt_with_SHAKE256:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v3, v9}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v3

    sput-object v3, Lr8/a;->qTESLA:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v3, v1}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v4

    sput-object v4, Lr8/a;->qTESLA_Rnd1_I:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v3, v2}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v2

    sput-object v2, Lr8/a;->qTESLA_Rnd1_III_size:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v3, v5}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v2

    sput-object v2, Lr8/a;->qTESLA_Rnd1_III_speed:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v3, v9}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v2

    sput-object v2, Lr8/a;->qTESLA_Rnd1_p_I:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v3, v11}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v2

    sput-object v2, Lr8/a;->qTESLA_Rnd1_p_III:Lorg/bouncycastle/asn1/u;

    const-string v2, "11"

    invoke-virtual {v3, v2}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v2

    sput-object v2, Lr8/a;->qTESLA_p_I:Lorg/bouncycastle/asn1/u;

    const-string v2, "12"

    invoke-virtual {v3, v2}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v2

    sput-object v2, Lr8/a;->qTESLA_p_III:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v0, v5}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v2

    sput-object v2, Lr8/a;->bc_exch:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v2, v1}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v2

    sput-object v2, Lr8/a;->newHope:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v0, v9}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v0

    sput-object v0, Lr8/a;->bc_ext:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v0

    sput-object v0, Lr8/a;->linkedCertificate:Lorg/bouncycastle/asn1/u;

    return-void
.end method
