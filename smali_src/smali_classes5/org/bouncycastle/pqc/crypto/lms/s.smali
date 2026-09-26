.class Lorg/bouncycastle/pqc/crypto/lms/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final I:[B

.field private final digest:Lx8/c;

.field private j:I

.field private final masterSeed:[B

.field private q:I


# direct methods
.method public constructor <init>([B[BLx8/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/lms/s;->I:[B

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/lms/s;->masterSeed:[B

    iput-object p3, p0, Lorg/bouncycastle/pqc/crypto/lms/s;->digest:Lx8/c;

    return-void
.end method


# virtual methods
.method public a([BZ)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/bouncycastle/pqc/crypto/lms/s;->b([BZI)V

    return-void
.end method

.method public b([BZI)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p3}, Lorg/bouncycastle/pqc/crypto/lms/s;->c([BI)[B

    if-eqz p2, :cond_0

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/lms/s;->j:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/lms/s;->j:I

    :cond_0
    return-void
.end method

.method public c([BI)[B
    .locals 4

    .line 1
    array-length v0, p1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/s;->digest:Lx8/c;

    invoke-interface {v1}, Lx8/c;->e()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/s;->digest:Lx8/c;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/s;->I:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lx8/c;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/s;->digest:Lx8/c;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/lms/s;->q:I

    ushr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    invoke-interface {v0, v1}, Lx8/c;->c(B)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/s;->digest:Lx8/c;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/lms/s;->q:I

    ushr-int/lit8 v1, v1, 0x10

    int-to-byte v1, v1

    invoke-interface {v0, v1}, Lx8/c;->c(B)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/s;->digest:Lx8/c;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/lms/s;->q:I

    ushr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    invoke-interface {v0, v1}, Lx8/c;->c(B)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/s;->digest:Lx8/c;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/lms/s;->q:I

    int-to-byte v1, v1

    invoke-interface {v0, v1}, Lx8/c;->c(B)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/s;->digest:Lx8/c;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/lms/s;->j:I

    ushr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    invoke-interface {v0, v1}, Lx8/c;->c(B)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/s;->digest:Lx8/c;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/lms/s;->j:I

    int-to-byte v1, v1

    invoke-interface {v0, v1}, Lx8/c;->c(B)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/s;->digest:Lx8/c;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lx8/c;->c(B)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/s;->digest:Lx8/c;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/s;->masterSeed:[B

    array-length v2, v1

    invoke-interface {v0, v1, v3, v2}, Lx8/c;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/s;->digest:Lx8/c;

    invoke-interface {v0, p1, p2}, Lx8/c;->a([BI)I

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "target length is less than digest size."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/lms/s;->j:I

    return-void
.end method

.method public e(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/lms/s;->q:I

    return-void
.end method
