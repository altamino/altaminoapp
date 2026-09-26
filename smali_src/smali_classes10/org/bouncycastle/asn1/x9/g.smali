.class public interface abstract Lorg/bouncycastle/asn1/x9/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ansi_X9_42:Lorg/bouncycastle/asn1/u;

.field public static final ansi_X9_62:Lorg/bouncycastle/asn1/u;

.field public static final c2onb191v4:Lorg/bouncycastle/asn1/u;

.field public static final c2onb191v5:Lorg/bouncycastle/asn1/u;

.field public static final c2onb239v4:Lorg/bouncycastle/asn1/u;

.field public static final c2onb239v5:Lorg/bouncycastle/asn1/u;

.field public static final c2pnb163v1:Lorg/bouncycastle/asn1/u;

.field public static final c2pnb163v2:Lorg/bouncycastle/asn1/u;

.field public static final c2pnb163v3:Lorg/bouncycastle/asn1/u;

.field public static final c2pnb176w1:Lorg/bouncycastle/asn1/u;

.field public static final c2pnb208w1:Lorg/bouncycastle/asn1/u;

.field public static final c2pnb272w1:Lorg/bouncycastle/asn1/u;

.field public static final c2pnb304w1:Lorg/bouncycastle/asn1/u;

.field public static final c2pnb368w1:Lorg/bouncycastle/asn1/u;

.field public static final c2tnb191v1:Lorg/bouncycastle/asn1/u;

.field public static final c2tnb191v2:Lorg/bouncycastle/asn1/u;

.field public static final c2tnb191v3:Lorg/bouncycastle/asn1/u;

.field public static final c2tnb239v1:Lorg/bouncycastle/asn1/u;

.field public static final c2tnb239v2:Lorg/bouncycastle/asn1/u;

.field public static final c2tnb239v3:Lorg/bouncycastle/asn1/u;

.field public static final c2tnb359v1:Lorg/bouncycastle/asn1/u;

.field public static final c2tnb431r1:Lorg/bouncycastle/asn1/u;

.field public static final cTwoCurve:Lorg/bouncycastle/asn1/u;

.field public static final characteristic_two_field:Lorg/bouncycastle/asn1/u;

.field public static final dhEphem:Lorg/bouncycastle/asn1/u;

.field public static final dhHybrid1:Lorg/bouncycastle/asn1/u;

.field public static final dhHybrid2:Lorg/bouncycastle/asn1/u;

.field public static final dhHybridOneFlow:Lorg/bouncycastle/asn1/u;

.field public static final dhOneFlow:Lorg/bouncycastle/asn1/u;

.field public static final dhSinglePass_cofactorDH_sha1kdf_scheme:Lorg/bouncycastle/asn1/u;

.field public static final dhSinglePass_stdDH_sha1kdf_scheme:Lorg/bouncycastle/asn1/u;

.field public static final dhStatic:Lorg/bouncycastle/asn1/u;

.field public static final dhpublicnumber:Lorg/bouncycastle/asn1/u;

.field public static final ecdsa_with_SHA1:Lorg/bouncycastle/asn1/u;

.field public static final ecdsa_with_SHA2:Lorg/bouncycastle/asn1/u;

.field public static final ecdsa_with_SHA224:Lorg/bouncycastle/asn1/u;

.field public static final ecdsa_with_SHA256:Lorg/bouncycastle/asn1/u;

.field public static final ecdsa_with_SHA384:Lorg/bouncycastle/asn1/u;

.field public static final ecdsa_with_SHA512:Lorg/bouncycastle/asn1/u;

.field public static final ellipticCurve:Lorg/bouncycastle/asn1/u;

.field public static final gnBasis:Lorg/bouncycastle/asn1/u;

.field public static final id_dsa:Lorg/bouncycastle/asn1/u;

.field public static final id_dsa_with_sha1:Lorg/bouncycastle/asn1/u;

.field public static final id_ecPublicKey:Lorg/bouncycastle/asn1/u;

.field public static final id_ecSigType:Lorg/bouncycastle/asn1/u;

.field public static final id_fieldType:Lorg/bouncycastle/asn1/u;

.field public static final id_kdf_kdf2:Lorg/bouncycastle/asn1/u;

.field public static final id_kdf_kdf3:Lorg/bouncycastle/asn1/u;

.field public static final id_publicKeyType:Lorg/bouncycastle/asn1/u;

.field public static final mqv1:Lorg/bouncycastle/asn1/u;

.field public static final mqv2:Lorg/bouncycastle/asn1/u;

.field public static final mqvSinglePass_sha1kdf_scheme:Lorg/bouncycastle/asn1/u;

.field public static final ppBasis:Lorg/bouncycastle/asn1/u;

.field public static final prime192v1:Lorg/bouncycastle/asn1/u;

.field public static final prime192v2:Lorg/bouncycastle/asn1/u;

.field public static final prime192v3:Lorg/bouncycastle/asn1/u;

.field public static final prime239v1:Lorg/bouncycastle/asn1/u;

.field public static final prime239v2:Lorg/bouncycastle/asn1/u;

.field public static final prime239v3:Lorg/bouncycastle/asn1/u;

.field public static final prime256v1:Lorg/bouncycastle/asn1/u;

.field public static final primeCurve:Lorg/bouncycastle/asn1/u;

.field public static final prime_field:Lorg/bouncycastle/asn1/u;

.field public static final tpBasis:Lorg/bouncycastle/asn1/u;

.field public static final x9_42_schemes:Lorg/bouncycastle/asn1/u;

.field public static final x9_44:Lorg/bouncycastle/asn1/u;

.field public static final x9_44_components:Lorg/bouncycastle/asn1/u;

.field public static final x9_63_scheme:Lorg/bouncycastle/asn1/u;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lorg/bouncycastle/asn1/u;

    const-string v1, "1.2.840.10045"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/u;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x9/g;->ansi_X9_62:Lorg/bouncycastle/asn1/u;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v2

    sput-object v2, Lorg/bouncycastle/asn1/x9/g;->id_fieldType:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v2, v1}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v3

    sput-object v3, Lorg/bouncycastle/asn1/x9/g;->prime_field:Lorg/bouncycastle/asn1/u;

    const-string v3, "2"

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v2

    sput-object v2, Lorg/bouncycastle/asn1/x9/g;->characteristic_two_field:Lorg/bouncycastle/asn1/u;

    const-string v4, "3.1"

    invoke-virtual {v2, v4}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v4

    sput-object v4, Lorg/bouncycastle/asn1/x9/g;->gnBasis:Lorg/bouncycastle/asn1/u;

    const-string v4, "3.2"

    invoke-virtual {v2, v4}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v4

    sput-object v4, Lorg/bouncycastle/asn1/x9/g;->tpBasis:Lorg/bouncycastle/asn1/u;

    const-string v4, "3.3"

    invoke-virtual {v2, v4}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v2

    sput-object v2, Lorg/bouncycastle/asn1/x9/g;->ppBasis:Lorg/bouncycastle/asn1/u;

    const-string v2, "4"

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v4

    sput-object v4, Lorg/bouncycastle/asn1/x9/g;->id_ecSigType:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v4, v1}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v5

    sput-object v5, Lorg/bouncycastle/asn1/x9/g;->ecdsa_with_SHA1:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v5

    sput-object v5, Lorg/bouncycastle/asn1/x9/g;->id_publicKeyType:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v5, v1}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v5

    sput-object v5, Lorg/bouncycastle/asn1/x9/g;->id_ecPublicKey:Lorg/bouncycastle/asn1/u;

    const-string v5, "3"

    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v4

    sput-object v4, Lorg/bouncycastle/asn1/x9/g;->ecdsa_with_SHA2:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v4, v1}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v6

    sput-object v6, Lorg/bouncycastle/asn1/x9/g;->ecdsa_with_SHA224:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v4, v3}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v6

    sput-object v6, Lorg/bouncycastle/asn1/x9/g;->ecdsa_with_SHA256:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v6

    sput-object v6, Lorg/bouncycastle/asn1/x9/g;->ecdsa_with_SHA384:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v4, v2}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v4

    sput-object v4, Lorg/bouncycastle/asn1/x9/g;->ecdsa_with_SHA512:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v0, v5}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x9/g;->ellipticCurve:Lorg/bouncycastle/asn1/u;

    const-string v4, "0"

    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v4

    sput-object v4, Lorg/bouncycastle/asn1/x9/g;->cTwoCurve:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v4, v1}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v6

    sput-object v6, Lorg/bouncycastle/asn1/x9/g;->c2pnb163v1:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v4, v3}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v6

    sput-object v6, Lorg/bouncycastle/asn1/x9/g;->c2pnb163v2:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v6

    sput-object v6, Lorg/bouncycastle/asn1/x9/g;->c2pnb163v3:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v4, v2}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v6

    sput-object v6, Lorg/bouncycastle/asn1/x9/g;->c2pnb176w1:Lorg/bouncycastle/asn1/u;

    const-string v6, "5"

    invoke-virtual {v4, v6}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v7

    sput-object v7, Lorg/bouncycastle/asn1/x9/g;->c2tnb191v1:Lorg/bouncycastle/asn1/u;

    const-string v7, "6"

    invoke-virtual {v4, v7}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v8

    sput-object v8, Lorg/bouncycastle/asn1/x9/g;->c2tnb191v2:Lorg/bouncycastle/asn1/u;

    const-string v8, "7"

    invoke-virtual {v4, v8}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v9

    sput-object v9, Lorg/bouncycastle/asn1/x9/g;->c2tnb191v3:Lorg/bouncycastle/asn1/u;

    const-string v9, "8"

    invoke-virtual {v4, v9}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v10

    sput-object v10, Lorg/bouncycastle/asn1/x9/g;->c2onb191v4:Lorg/bouncycastle/asn1/u;

    const-string v10, "9"

    invoke-virtual {v4, v10}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v10

    sput-object v10, Lorg/bouncycastle/asn1/x9/g;->c2onb191v5:Lorg/bouncycastle/asn1/u;

    const-string v10, "10"

    invoke-virtual {v4, v10}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v10

    sput-object v10, Lorg/bouncycastle/asn1/x9/g;->c2pnb208w1:Lorg/bouncycastle/asn1/u;

    const-string v10, "11"

    invoke-virtual {v4, v10}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v10

    sput-object v10, Lorg/bouncycastle/asn1/x9/g;->c2tnb239v1:Lorg/bouncycastle/asn1/u;

    const-string v10, "12"

    invoke-virtual {v4, v10}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v10

    sput-object v10, Lorg/bouncycastle/asn1/x9/g;->c2tnb239v2:Lorg/bouncycastle/asn1/u;

    const-string v10, "13"

    invoke-virtual {v4, v10}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v10

    sput-object v10, Lorg/bouncycastle/asn1/x9/g;->c2tnb239v3:Lorg/bouncycastle/asn1/u;

    const-string v10, "14"

    invoke-virtual {v4, v10}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v10

    sput-object v10, Lorg/bouncycastle/asn1/x9/g;->c2onb239v4:Lorg/bouncycastle/asn1/u;

    const-string v10, "15"

    invoke-virtual {v4, v10}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v10

    sput-object v10, Lorg/bouncycastle/asn1/x9/g;->c2onb239v5:Lorg/bouncycastle/asn1/u;

    const-string v10, "16"

    invoke-virtual {v4, v10}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v11

    sput-object v11, Lorg/bouncycastle/asn1/x9/g;->c2pnb272w1:Lorg/bouncycastle/asn1/u;

    const-string v11, "17"

    invoke-virtual {v4, v11}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v11

    sput-object v11, Lorg/bouncycastle/asn1/x9/g;->c2pnb304w1:Lorg/bouncycastle/asn1/u;

    const-string v11, "18"

    invoke-virtual {v4, v11}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v11

    sput-object v11, Lorg/bouncycastle/asn1/x9/g;->c2tnb359v1:Lorg/bouncycastle/asn1/u;

    const-string v11, "19"

    invoke-virtual {v4, v11}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v11

    sput-object v11, Lorg/bouncycastle/asn1/x9/g;->c2pnb368w1:Lorg/bouncycastle/asn1/u;

    const-string v11, "20"

    invoke-virtual {v4, v11}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v4

    sput-object v4, Lorg/bouncycastle/asn1/x9/g;->c2tnb431r1:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x9/g;->primeCurve:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v4

    sput-object v4, Lorg/bouncycastle/asn1/x9/g;->prime192v1:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v4

    sput-object v4, Lorg/bouncycastle/asn1/x9/g;->prime192v2:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v0, v5}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v4

    sput-object v4, Lorg/bouncycastle/asn1/x9/g;->prime192v3:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v4

    sput-object v4, Lorg/bouncycastle/asn1/x9/g;->prime239v1:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v0, v6}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v4

    sput-object v4, Lorg/bouncycastle/asn1/x9/g;->prime239v2:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v0, v7}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v4

    sput-object v4, Lorg/bouncycastle/asn1/x9/g;->prime239v3:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v0, v8}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x9/g;->prime256v1:Lorg/bouncycastle/asn1/u;

    new-instance v0, Lorg/bouncycastle/asn1/u;

    const-string v4, "1.2.840.10040.4.1"

    invoke-direct {v0, v4}, Lorg/bouncycastle/asn1/u;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x9/g;->id_dsa:Lorg/bouncycastle/asn1/u;

    new-instance v0, Lorg/bouncycastle/asn1/u;

    const-string v4, "1.2.840.10040.4.3"

    invoke-direct {v0, v4}, Lorg/bouncycastle/asn1/u;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x9/g;->id_dsa_with_sha1:Lorg/bouncycastle/asn1/u;

    new-instance v0, Lorg/bouncycastle/asn1/u;

    const-string v4, "1.3.133.16.840.63.0"

    invoke-direct {v0, v4}, Lorg/bouncycastle/asn1/u;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x9/g;->x9_63_scheme:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v4

    sput-object v4, Lorg/bouncycastle/asn1/x9/g;->dhSinglePass_stdDH_sha1kdf_scheme:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v0, v5}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v4

    sput-object v4, Lorg/bouncycastle/asn1/x9/g;->dhSinglePass_cofactorDH_sha1kdf_scheme:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v0, v10}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x9/g;->mqvSinglePass_sha1kdf_scheme:Lorg/bouncycastle/asn1/u;

    new-instance v0, Lorg/bouncycastle/asn1/u;

    const-string v4, "1.2.840.10046"

    invoke-direct {v0, v4}, Lorg/bouncycastle/asn1/u;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x9/g;->ansi_X9_42:Lorg/bouncycastle/asn1/u;

    const-string v4, "2.1"

    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v4

    sput-object v4, Lorg/bouncycastle/asn1/x9/g;->dhpublicnumber:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v0, v5}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x9/g;->x9_42_schemes:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v4

    sput-object v4, Lorg/bouncycastle/asn1/x9/g;->dhStatic:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v4

    sput-object v4, Lorg/bouncycastle/asn1/x9/g;->dhEphem:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v0, v5}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v4

    sput-object v4, Lorg/bouncycastle/asn1/x9/g;->dhOneFlow:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v2

    sput-object v2, Lorg/bouncycastle/asn1/x9/g;->dhHybrid1:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v0, v6}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v2

    sput-object v2, Lorg/bouncycastle/asn1/x9/g;->dhHybrid2:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v0, v7}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v2

    sput-object v2, Lorg/bouncycastle/asn1/x9/g;->dhHybridOneFlow:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v0, v8}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v2

    sput-object v2, Lorg/bouncycastle/asn1/x9/g;->mqv2:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v0, v9}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x9/g;->mqv1:Lorg/bouncycastle/asn1/u;

    new-instance v0, Lorg/bouncycastle/asn1/u;

    const-string v2, "1.3.133.16.840.9.44"

    invoke-direct {v0, v2}, Lorg/bouncycastle/asn1/u;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x9/g;->x9_44:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x9/g;->x9_44_components:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/asn1/x9/g;->id_kdf_kdf2:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/x9/g;->id_kdf_kdf3:Lorg/bouncycastle/asn1/u;

    return-void
.end method
