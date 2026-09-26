.class Lorg/bouncycastle/pqc/crypto/lms/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final I:[B

.field private final masterSecret:[B

.field private final parameter:Lorg/bouncycastle/pqc/crypto/lms/e;

.field private final q:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/lms/e;[BI[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/lms/f;->parameter:Lorg/bouncycastle/pqc/crypto/lms/e;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/lms/f;->I:[B

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/lms/f;->q:I

    iput-object p4, p0, Lorg/bouncycastle/pqc/crypto/lms/f;->masterSecret:[B

    return-void
.end method


# virtual methods
.method a()Lorg/bouncycastle/pqc/crypto/lms/s;
    .locals 4

    .line 1
    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/s;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/f;->I:[B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/lms/f;->masterSecret:[B

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/lms/f;->parameter:Lorg/bouncycastle/pqc/crypto/lms/e;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/lms/e;->b()Lorg/bouncycastle/asn1/u;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/pqc/crypto/lms/b;->a(Lorg/bouncycastle/asn1/u;)Lx8/c;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/lms/s;-><init>([B[BLx8/c;)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/lms/f;->q:I

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/lms/s;->e(I)V

    return-object v0
.end method

.method public b()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/f;->I:[B

    return-object v0
.end method

.method public c()Lorg/bouncycastle/pqc/crypto/lms/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/f;->parameter:Lorg/bouncycastle/pqc/crypto/lms/e;

    return-object v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/lms/f;->q:I

    return v0
.end method

.method e(Lorg/bouncycastle/pqc/crypto/lms/p;[[B)Lorg/bouncycastle/pqc/crypto/lms/j;
    .locals 7

    .line 1
    const/16 v0, 0x20

    new-array v5, v0, [B

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/f;->a()Lorg/bouncycastle/pqc/crypto/lms/s;

    move-result-object v0

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/lms/s;->d(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v5, v1}, Lorg/bouncycastle/pqc/crypto/lms/s;->a([BZ)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/f;->parameter:Lorg/bouncycastle/pqc/crypto/lms/e;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/lms/e;->b()Lorg/bouncycastle/asn1/u;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/lms/b;->a(Lorg/bouncycastle/asn1/u;)Lx8/c;

    move-result-object v4

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/f;->b()[B

    move-result-object v0

    invoke-static {v0, v4}, Lorg/bouncycastle/pqc/crypto/lms/r;->a([BLx8/c;)V

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/f;->d()I

    move-result v0

    invoke-static {v0, v4}, Lorg/bouncycastle/pqc/crypto/lms/r;->c(ILx8/c;)V

    const/16 v0, -0x7e7f

    invoke-static {v0, v4}, Lorg/bouncycastle/pqc/crypto/lms/r;->b(SLx8/c;)V

    invoke-static {v5, v4}, Lorg/bouncycastle/pqc/crypto/lms/r;->a([BLx8/c;)V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/j;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/lms/j;-><init>(Lorg/bouncycastle/pqc/crypto/lms/f;Lorg/bouncycastle/pqc/crypto/lms/p;Lx8/c;[B[[B)V

    return-object v0
.end method
