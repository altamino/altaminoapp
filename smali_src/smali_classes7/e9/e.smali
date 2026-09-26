.class public interface abstract Le9/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final gmss:Lorg/bouncycastle/asn1/u;

.field public static final gmssWithSha1:Lorg/bouncycastle/asn1/u;

.field public static final gmssWithSha224:Lorg/bouncycastle/asn1/u;

.field public static final gmssWithSha256:Lorg/bouncycastle/asn1/u;

.field public static final gmssWithSha384:Lorg/bouncycastle/asn1/u;

.field public static final gmssWithSha512:Lorg/bouncycastle/asn1/u;

.field public static final mcEliece:Lorg/bouncycastle/asn1/u;

.field public static final mcElieceCca2:Lorg/bouncycastle/asn1/u;

.field public static final mcElieceFujisaki:Lorg/bouncycastle/asn1/u;

.field public static final mcElieceKobara_Imai:Lorg/bouncycastle/asn1/u;

.field public static final mcEliecePointcheval:Lorg/bouncycastle/asn1/u;

.field public static final newHope:Lorg/bouncycastle/asn1/u;

.field public static final qTESLA:Lorg/bouncycastle/asn1/u;

.field public static final qTESLA_p_I:Lorg/bouncycastle/asn1/u;

.field public static final qTESLA_p_III:Lorg/bouncycastle/asn1/u;

.field public static final rainbow:Lorg/bouncycastle/asn1/u;

.field public static final rainbowWithSha1:Lorg/bouncycastle/asn1/u;

.field public static final rainbowWithSha224:Lorg/bouncycastle/asn1/u;

.field public static final rainbowWithSha256:Lorg/bouncycastle/asn1/u;

.field public static final rainbowWithSha384:Lorg/bouncycastle/asn1/u;

.field public static final rainbowWithSha512:Lorg/bouncycastle/asn1/u;

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
    .locals 8

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/u;

    const-string v1, "1.3.6.1.4.1.8301.3.1.3.5.3.2"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/u;-><init>(Ljava/lang/String;)V

    sput-object v0, Le9/e;->rainbow:Lorg/bouncycastle/asn1/u;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v2

    sput-object v2, Le9/e;->rainbowWithSha1:Lorg/bouncycastle/asn1/u;

    const-string v2, "2"

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v3

    sput-object v3, Le9/e;->rainbowWithSha224:Lorg/bouncycastle/asn1/u;

    const-string v3, "3"

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v4

    sput-object v4, Le9/e;->rainbowWithSha256:Lorg/bouncycastle/asn1/u;

    const-string v4, "4"

    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v5

    sput-object v5, Le9/e;->rainbowWithSha384:Lorg/bouncycastle/asn1/u;

    const-string v5, "5"

    invoke-virtual {v0, v5}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v0

    sput-object v0, Le9/e;->rainbowWithSha512:Lorg/bouncycastle/asn1/u;

    new-instance v0, Lorg/bouncycastle/asn1/u;

    const-string v6, "1.3.6.1.4.1.8301.3.1.3.3"

    invoke-direct {v0, v6}, Lorg/bouncycastle/asn1/u;-><init>(Ljava/lang/String;)V

    sput-object v0, Le9/e;->gmss:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v1

    sput-object v1, Le9/e;->gmssWithSha1:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v1

    sput-object v1, Le9/e;->gmssWithSha224:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v1

    sput-object v1, Le9/e;->gmssWithSha256:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v1

    sput-object v1, Le9/e;->gmssWithSha384:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v0, v5}, Lorg/bouncycastle/asn1/u;->w(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object v0

    sput-object v0, Le9/e;->gmssWithSha512:Lorg/bouncycastle/asn1/u;

    new-instance v0, Lorg/bouncycastle/asn1/u;

    const-string v1, "1.3.6.1.4.1.8301.3.1.3.4.1"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/u;-><init>(Ljava/lang/String;)V

    sput-object v0, Le9/e;->mcEliece:Lorg/bouncycastle/asn1/u;

    new-instance v0, Lorg/bouncycastle/asn1/u;

    const-string v1, "1.3.6.1.4.1.8301.3.1.3.4.2"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/u;-><init>(Ljava/lang/String;)V

    sput-object v0, Le9/e;->mcElieceCca2:Lorg/bouncycastle/asn1/u;

    new-instance v0, Lorg/bouncycastle/asn1/u;

    const-string v1, "1.3.6.1.4.1.8301.3.1.3.4.2.1"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/u;-><init>(Ljava/lang/String;)V

    sput-object v0, Le9/e;->mcElieceFujisaki:Lorg/bouncycastle/asn1/u;

    new-instance v0, Lorg/bouncycastle/asn1/u;

    const-string v1, "1.3.6.1.4.1.8301.3.1.3.4.2.2"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/u;-><init>(Ljava/lang/String;)V

    sput-object v0, Le9/e;->mcEliecePointcheval:Lorg/bouncycastle/asn1/u;

    new-instance v0, Lorg/bouncycastle/asn1/u;

    const-string v1, "1.3.6.1.4.1.8301.3.1.3.4.2.3"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/u;-><init>(Ljava/lang/String;)V

    sput-object v0, Le9/e;->mcElieceKobara_Imai:Lorg/bouncycastle/asn1/u;

    sget-object v0, Lr8/a;->sphincs256:Lorg/bouncycastle/asn1/u;

    sput-object v0, Le9/e;->sphincs256:Lorg/bouncycastle/asn1/u;

    sget-object v0, Lr8/a;->sphincs256_with_BLAKE512:Lorg/bouncycastle/asn1/u;

    sput-object v0, Le9/e;->sphincs256_with_BLAKE512:Lorg/bouncycastle/asn1/u;

    sget-object v0, Lr8/a;->sphincs256_with_SHA512:Lorg/bouncycastle/asn1/u;

    sput-object v0, Le9/e;->sphincs256_with_SHA512:Lorg/bouncycastle/asn1/u;

    sget-object v0, Lr8/a;->sphincs256_with_SHA3_512:Lorg/bouncycastle/asn1/u;

    sput-object v0, Le9/e;->sphincs256_with_SHA3_512:Lorg/bouncycastle/asn1/u;

    sget-object v0, Lr8/a;->newHope:Lorg/bouncycastle/asn1/u;

    sput-object v0, Le9/e;->newHope:Lorg/bouncycastle/asn1/u;

    sget-object v0, Lr8/a;->xmss:Lorg/bouncycastle/asn1/u;

    sput-object v0, Le9/e;->xmss:Lorg/bouncycastle/asn1/u;

    sget-object v0, Lr8/a;->xmss_SHA256ph:Lorg/bouncycastle/asn1/u;

    sput-object v0, Le9/e;->xmss_SHA256ph:Lorg/bouncycastle/asn1/u;

    sget-object v1, Lr8/a;->xmss_SHA512ph:Lorg/bouncycastle/asn1/u;

    sput-object v1, Le9/e;->xmss_SHA512ph:Lorg/bouncycastle/asn1/u;

    sget-object v2, Lr8/a;->xmss_SHAKE128ph:Lorg/bouncycastle/asn1/u;

    sput-object v2, Le9/e;->xmss_SHAKE128ph:Lorg/bouncycastle/asn1/u;

    sget-object v3, Lr8/a;->xmss_SHAKE256ph:Lorg/bouncycastle/asn1/u;

    sput-object v3, Le9/e;->xmss_SHAKE256ph:Lorg/bouncycastle/asn1/u;

    sget-object v4, Lr8/a;->xmss_SHA256:Lorg/bouncycastle/asn1/u;

    sput-object v4, Le9/e;->xmss_SHA256:Lorg/bouncycastle/asn1/u;

    sget-object v4, Lr8/a;->xmss_SHA512:Lorg/bouncycastle/asn1/u;

    sput-object v4, Le9/e;->xmss_SHA512:Lorg/bouncycastle/asn1/u;

    sget-object v4, Lr8/a;->xmss_SHAKE128:Lorg/bouncycastle/asn1/u;

    sput-object v4, Le9/e;->xmss_SHAKE128:Lorg/bouncycastle/asn1/u;

    sget-object v4, Lr8/a;->xmss_SHAKE256:Lorg/bouncycastle/asn1/u;

    sput-object v4, Le9/e;->xmss_SHAKE256:Lorg/bouncycastle/asn1/u;

    sget-object v4, Lr8/a;->xmss_mt:Lorg/bouncycastle/asn1/u;

    sput-object v4, Le9/e;->xmss_mt:Lorg/bouncycastle/asn1/u;

    sget-object v4, Lr8/a;->xmss_mt_SHA256ph:Lorg/bouncycastle/asn1/u;

    sput-object v4, Le9/e;->xmss_mt_SHA256ph:Lorg/bouncycastle/asn1/u;

    sget-object v5, Lr8/a;->xmss_mt_SHA512ph:Lorg/bouncycastle/asn1/u;

    sput-object v5, Le9/e;->xmss_mt_SHA512ph:Lorg/bouncycastle/asn1/u;

    sget-object v6, Lr8/a;->xmss_mt_SHAKE128ph:Lorg/bouncycastle/asn1/u;

    sput-object v6, Le9/e;->xmss_mt_SHAKE128ph:Lorg/bouncycastle/asn1/u;

    sget-object v6, Lr8/a;->xmss_mt_SHAKE256ph:Lorg/bouncycastle/asn1/u;

    sput-object v6, Le9/e;->xmss_mt_SHAKE256ph:Lorg/bouncycastle/asn1/u;

    sget-object v6, Lr8/a;->xmss_mt_SHA256:Lorg/bouncycastle/asn1/u;

    sput-object v6, Le9/e;->xmss_mt_SHA256:Lorg/bouncycastle/asn1/u;

    sget-object v6, Lr8/a;->xmss_mt_SHA512:Lorg/bouncycastle/asn1/u;

    sput-object v6, Le9/e;->xmss_mt_SHA512:Lorg/bouncycastle/asn1/u;

    sget-object v6, Lr8/a;->xmss_mt_SHAKE128:Lorg/bouncycastle/asn1/u;

    sput-object v6, Le9/e;->xmss_mt_SHAKE128:Lorg/bouncycastle/asn1/u;

    sget-object v7, Lr8/a;->xmss_mt_SHAKE256:Lorg/bouncycastle/asn1/u;

    sput-object v7, Le9/e;->xmss_mt_SHAKE256:Lorg/bouncycastle/asn1/u;

    sput-object v0, Le9/e;->xmss_with_SHA256:Lorg/bouncycastle/asn1/u;

    sput-object v1, Le9/e;->xmss_with_SHA512:Lorg/bouncycastle/asn1/u;

    sput-object v2, Le9/e;->xmss_with_SHAKE128:Lorg/bouncycastle/asn1/u;

    sput-object v3, Le9/e;->xmss_with_SHAKE256:Lorg/bouncycastle/asn1/u;

    sput-object v4, Le9/e;->xmss_mt_with_SHA256:Lorg/bouncycastle/asn1/u;

    sput-object v5, Le9/e;->xmss_mt_with_SHA512:Lorg/bouncycastle/asn1/u;

    sput-object v6, Le9/e;->xmss_mt_with_SHAKE128:Lorg/bouncycastle/asn1/u;

    sput-object v7, Le9/e;->xmss_mt_with_SHAKE256:Lorg/bouncycastle/asn1/u;

    sget-object v0, Lr8/a;->qTESLA:Lorg/bouncycastle/asn1/u;

    sput-object v0, Le9/e;->qTESLA:Lorg/bouncycastle/asn1/u;

    sget-object v0, Lr8/a;->qTESLA_p_I:Lorg/bouncycastle/asn1/u;

    sput-object v0, Le9/e;->qTESLA_p_I:Lorg/bouncycastle/asn1/u;

    sget-object v0, Lr8/a;->qTESLA_p_III:Lorg/bouncycastle/asn1/u;

    sput-object v0, Le9/e;->qTESLA_p_III:Lorg/bouncycastle/asn1/u;

    return-void
.end method
