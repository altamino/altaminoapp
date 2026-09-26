.class Lorg/bouncycastle/pqc/crypto/lms/r;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a([BLx8/c;)V
    .locals 2

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    invoke-interface {p1, p0, v1, v0}, Lx8/c;->update([BII)V

    return-void
.end method

.method static b(SLx8/c;)V
    .locals 1

    .line 1
    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    invoke-interface {p1, v0}, Lx8/c;->c(B)V

    int-to-byte p0, p0

    invoke-interface {p1, p0}, Lx8/c;->c(B)V

    return-void
.end method

.method static c(ILx8/c;)V
    .locals 1

    .line 1
    ushr-int/lit8 v0, p0, 0x18

    int-to-byte v0, v0

    invoke-interface {p1, v0}, Lx8/c;->c(B)V

    ushr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    invoke-interface {p1, v0}, Lx8/c;->c(B)V

    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    invoke-interface {p1, v0}, Lx8/c;->c(B)V

    int-to-byte p0, p0

    invoke-interface {p1, p0}, Lx8/c;->c(B)V

    return-void
.end method
