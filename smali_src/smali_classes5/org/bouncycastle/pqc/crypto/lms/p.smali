.class public Lorg/bouncycastle/pqc/crypto/lms/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final lms_sha256_n32_h10:Lorg/bouncycastle/pqc/crypto/lms/p;

.field public static final lms_sha256_n32_h15:Lorg/bouncycastle/pqc/crypto/lms/p;

.field public static final lms_sha256_n32_h20:Lorg/bouncycastle/pqc/crypto/lms/p;

.field public static final lms_sha256_n32_h25:Lorg/bouncycastle/pqc/crypto/lms/p;

.field public static final lms_sha256_n32_h5:Lorg/bouncycastle/pqc/crypto/lms/p;

.field private static paramBuilders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lorg/bouncycastle/pqc/crypto/lms/p;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final digestOid:Lorg/bouncycastle/asn1/u;

.field private final h:I

.field private final m:I

.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/p;

    sget-object v1, Lt8/a;->id_sha256:Lorg/bouncycastle/asn1/u;

    const/4 v2, 0x5

    const/16 v3, 0x20

    invoke-direct {v0, v2, v3, v2, v1}, Lorg/bouncycastle/pqc/crypto/lms/p;-><init>(IIILorg/bouncycastle/asn1/u;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/p;->lms_sha256_n32_h5:Lorg/bouncycastle/pqc/crypto/lms/p;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/p;

    const/4 v2, 0x6

    const/16 v4, 0xa

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/bouncycastle/pqc/crypto/lms/p;-><init>(IIILorg/bouncycastle/asn1/u;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/p;->lms_sha256_n32_h10:Lorg/bouncycastle/pqc/crypto/lms/p;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/p;

    const/4 v2, 0x7

    const/16 v4, 0xf

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/bouncycastle/pqc/crypto/lms/p;-><init>(IIILorg/bouncycastle/asn1/u;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/p;->lms_sha256_n32_h15:Lorg/bouncycastle/pqc/crypto/lms/p;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/p;

    const/16 v2, 0x8

    const/16 v4, 0x14

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/bouncycastle/pqc/crypto/lms/p;-><init>(IIILorg/bouncycastle/asn1/u;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/p;->lms_sha256_n32_h20:Lorg/bouncycastle/pqc/crypto/lms/p;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/p;

    const/16 v2, 0x9

    const/16 v4, 0x19

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/bouncycastle/pqc/crypto/lms/p;-><init>(IIILorg/bouncycastle/asn1/u;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/p;->lms_sha256_n32_h25:Lorg/bouncycastle/pqc/crypto/lms/p;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/p$a;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/lms/p$a;-><init>()V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/p;->paramBuilders:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(IIILorg/bouncycastle/asn1/u;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/lms/p;->type:I

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/lms/p;->m:I

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/lms/p;->h:I

    iput-object p4, p0, Lorg/bouncycastle/pqc/crypto/lms/p;->digestOid:Lorg/bouncycastle/asn1/u;

    return-void
.end method

.method static synthetic a(Lorg/bouncycastle/pqc/crypto/lms/p;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/bouncycastle/pqc/crypto/lms/p;->type:I

    return p0
.end method

.method static e(I)Lorg/bouncycastle/pqc/crypto/lms/p;
    .locals 1

    .line 1
    sget-object v0, Lorg/bouncycastle/pqc/crypto/lms/p;->paramBuilders:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/pqc/crypto/lms/p;

    return-object p0
.end method


# virtual methods
.method public b()Lorg/bouncycastle/asn1/u;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/p;->digestOid:Lorg/bouncycastle/asn1/u;

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/lms/p;->h:I

    return v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/lms/p;->m:I

    return v0
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/lms/p;->type:I

    return v0
.end method
