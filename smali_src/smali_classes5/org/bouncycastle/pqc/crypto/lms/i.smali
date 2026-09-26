.class Lorg/bouncycastle/pqc/crypto/lms/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final D_INTR:S = -0x7c7ds

.field static final D_LEAF:S = -0x7d7es


# direct methods
.method public static a(Lorg/bouncycastle/pqc/crypto/lms/p;Lorg/bouncycastle/pqc/crypto/lms/e;I[B[B)Lorg/bouncycastle/pqc/crypto/lms/l;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    if-eqz p4, :cond_0

    array-length v0, p4

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/p;->d()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/p;->c()I

    move-result v1

    shl-int v7, v0, v1

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/l;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-object v8, p4

    invoke-direct/range {v2 .. v8}, Lorg/bouncycastle/pqc/crypto/lms/l;-><init>(Lorg/bouncycastle/pqc/crypto/lms/p;Lorg/bouncycastle/pqc/crypto/lms/e;I[BI[B)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "root seed is less than "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/p;->d()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static b(Lorg/bouncycastle/pqc/crypto/lms/j;)Lorg/bouncycastle/pqc/crypto/lms/n;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/j;->h()Lorg/bouncycastle/pqc/crypto/lms/f;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/j;->i()[B

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/j;->f()[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/lms/q;->c(Lorg/bouncycastle/pqc/crypto/lms/f;[B[B)Lorg/bouncycastle/pqc/crypto/lms/h;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/pqc/crypto/lms/n;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/j;->h()Lorg/bouncycastle/pqc/crypto/lms/f;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/lms/f;->d()I

    move-result v2

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/j;->j()Lorg/bouncycastle/pqc/crypto/lms/p;

    move-result-object v3

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/j;->g()[[B

    move-result-object p0

    invoke-direct {v1, v2, v0, v3, p0}, Lorg/bouncycastle/pqc/crypto/lms/n;-><init>(ILorg/bouncycastle/pqc/crypto/lms/h;Lorg/bouncycastle/pqc/crypto/lms/p;[[B)V

    return-object v1
.end method

.method public static c(Lorg/bouncycastle/pqc/crypto/lms/l;[B)Lorg/bouncycastle/pqc/crypto/lms/n;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/l;->d()Lorg/bouncycastle/pqc/crypto/lms/j;

    move-result-object p0

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/bouncycastle/pqc/crypto/lms/j;->update([BII)V

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/lms/i;->b(Lorg/bouncycastle/pqc/crypto/lms/j;)Lorg/bouncycastle/pqc/crypto/lms/n;

    move-result-object p0

    return-object p0
.end method
