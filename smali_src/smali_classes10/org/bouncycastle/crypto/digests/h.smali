.class public Lorg/bouncycastle/crypto/digests/h;
.super Lorg/bouncycastle/crypto/digests/c;
.source "SourceFile"


# static fields
.field private static final DIGEST_LENGTH:I = 0x30


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/c;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/digests/h;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/c;-><init>(Lorg/bouncycastle/crypto/digests/c;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/c;-><init>()V

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/digests/c;->s([B)V

    return-void
.end method


# virtual methods
.method public a([BI)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/c;->n()V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/c;->H1:J

    invoke-static {v0, v1, p1, p2}, Lorg/bouncycastle/util/f;->h(J[BI)V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/c;->H2:J

    add-int/lit8 v2, p2, 0x8

    invoke-static {v0, v1, p1, v2}, Lorg/bouncycastle/util/f;->h(J[BI)V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/c;->H3:J

    add-int/lit8 v2, p2, 0x10

    invoke-static {v0, v1, p1, v2}, Lorg/bouncycastle/util/f;->h(J[BI)V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/c;->H4:J

    add-int/lit8 v2, p2, 0x18

    invoke-static {v0, v1, p1, v2}, Lorg/bouncycastle/util/f;->h(J[BI)V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/c;->H5:J

    add-int/lit8 v2, p2, 0x20

    invoke-static {v0, v1, p1, v2}, Lorg/bouncycastle/util/f;->h(J[BI)V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/c;->H6:J

    add-int/lit8 p2, p2, 0x28

    invoke-static {v0, v1, p1, p2}, Lorg/bouncycastle/util/f;->h(J[BI)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/h;->r()V

    const/16 p1, 0x30

    return p1
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "SHA-384"

    return-object v0
.end method

.method public e()I
    .locals 1

    .line 1
    const/16 v0, 0x30

    return v0
.end method

.method public r()V
    .locals 2

    .line 1
    invoke-super {p0}, Lorg/bouncycastle/crypto/digests/c;->r()V

    const-wide v0, -0x344462a23efa6128L    # -6.771107636816954E56

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/c;->H1:J

    const-wide v0, 0x629a292a367cd507L    # 9.641589608180943E166

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/c;->H2:J

    const-wide v0, -0x6ea6fea5cf8f22e9L    # -4.222163200156129E-225

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/c;->H3:J

    const-wide v0, 0x152fecd8f70e5939L

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/c;->H4:J

    const-wide v0, 0x67332667ffc00b31L    # 1.3331733573491853E189

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/c;->H5:J

    const-wide v0, -0x714bb57897a7eaefL    # -7.790218494879152E-238

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/c;->H6:J

    const-wide v0, -0x24f3d1f29b067059L    # -3.9066766103558855E130

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/c;->H7:J

    const-wide v0, 0x47b5481dbefa4fa4L    # 2.8288236605994657E37

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/c;->H8:J

    return-void
.end method
