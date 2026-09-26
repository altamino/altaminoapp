.class public Lorg/bouncycastle/pqc/crypto/lms/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final reserved:I

.field public static final sha256_n32_w1:Lorg/bouncycastle/pqc/crypto/lms/e;

.field public static final sha256_n32_w2:Lorg/bouncycastle/pqc/crypto/lms/e;

.field public static final sha256_n32_w4:Lorg/bouncycastle/pqc/crypto/lms/e;

.field public static final sha256_n32_w8:Lorg/bouncycastle/pqc/crypto/lms/e;

.field private static final suppliers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lorg/bouncycastle/pqc/crypto/lms/e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final digestOID:Lorg/bouncycastle/asn1/u;

.field private final ls:I

.field private final n:I

.field private final p:I

.field private final sigLen:I

.field private final type:I

.field private final w:I


# direct methods
.method static constructor <clinit>()V
    .locals 18

    new-instance v8, Lorg/bouncycastle/pqc/crypto/lms/e;

    const/4 v1, 0x1

    const/16 v2, 0x20

    const/4 v3, 0x1

    const/16 v4, 0x109

    const/4 v5, 0x7

    const/16 v6, 0x2144

    sget-object v17, Lt8/a;->id_sha256:Lorg/bouncycastle/asn1/u;

    move-object v0, v8

    move-object/from16 v7, v17

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/lms/e;-><init>(IIIIIILorg/bouncycastle/asn1/u;)V

    sput-object v8, Lorg/bouncycastle/pqc/crypto/lms/e;->sha256_n32_w1:Lorg/bouncycastle/pqc/crypto/lms/e;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/e;

    const/4 v10, 0x2

    const/16 v11, 0x20

    const/4 v12, 0x2

    const/16 v13, 0x85

    const/4 v14, 0x6

    const/16 v15, 0x10c4

    move-object v9, v0

    move-object/from16 v16, v17

    invoke-direct/range {v9 .. v16}, Lorg/bouncycastle/pqc/crypto/lms/e;-><init>(IIIIIILorg/bouncycastle/asn1/u;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/e;->sha256_n32_w2:Lorg/bouncycastle/pqc/crypto/lms/e;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/e;

    const/4 v10, 0x3

    const/4 v12, 0x4

    const/16 v13, 0x43

    const/4 v14, 0x4

    const/16 v15, 0x884

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lorg/bouncycastle/pqc/crypto/lms/e;-><init>(IIIIIILorg/bouncycastle/asn1/u;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/e;->sha256_n32_w4:Lorg/bouncycastle/pqc/crypto/lms/e;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/e;

    const/4 v10, 0x4

    const/16 v12, 0x8

    const/16 v13, 0x22

    const/4 v14, 0x0

    const/16 v15, 0x464

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lorg/bouncycastle/pqc/crypto/lms/e;-><init>(IIIIIILorg/bouncycastle/asn1/u;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/e;->sha256_n32_w8:Lorg/bouncycastle/pqc/crypto/lms/e;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/e$a;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/lms/e$a;-><init>()V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/e;->suppliers:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(IIIIIILorg/bouncycastle/asn1/u;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/lms/e;->type:I

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/lms/e;->n:I

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/lms/e;->w:I

    iput p4, p0, Lorg/bouncycastle/pqc/crypto/lms/e;->p:I

    iput p5, p0, Lorg/bouncycastle/pqc/crypto/lms/e;->ls:I

    iput p6, p0, Lorg/bouncycastle/pqc/crypto/lms/e;->sigLen:I

    iput-object p7, p0, Lorg/bouncycastle/pqc/crypto/lms/e;->digestOID:Lorg/bouncycastle/asn1/u;

    return-void
.end method

.method static synthetic a(Lorg/bouncycastle/pqc/crypto/lms/e;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/bouncycastle/pqc/crypto/lms/e;->type:I

    return p0
.end method

.method public static f(I)Lorg/bouncycastle/pqc/crypto/lms/e;
    .locals 1

    .line 1
    sget-object v0, Lorg/bouncycastle/pqc/crypto/lms/e;->suppliers:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/pqc/crypto/lms/e;

    return-object p0
.end method


# virtual methods
.method public b()Lorg/bouncycastle/asn1/u;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/e;->digestOID:Lorg/bouncycastle/asn1/u;

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/lms/e;->ls:I

    return v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/lms/e;->n:I

    return v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/lms/e;->p:I

    return v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/lms/e;->type:I

    return v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/lms/e;->w:I

    return v0
.end method
