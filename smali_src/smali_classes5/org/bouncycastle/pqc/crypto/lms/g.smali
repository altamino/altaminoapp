.class Lorg/bouncycastle/pqc/crypto/lms/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/util/c;


# instance fields
.field private final I:[B

.field private final K:[B

.field private final parameter:Lorg/bouncycastle/pqc/crypto/lms/e;

.field private final q:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/lms/e;[BI[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/lms/g;->parameter:Lorg/bouncycastle/pqc/crypto/lms/e;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/lms/g;->I:[B

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/lms/g;->q:I

    iput-object p4, p0, Lorg/bouncycastle/pqc/crypto/lms/g;->K:[B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lorg/bouncycastle/pqc/crypto/lms/g;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/lms/g;->q:I

    iget v2, p1, Lorg/bouncycastle/pqc/crypto/lms/g;->q:I

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/g;->parameter:Lorg/bouncycastle/pqc/crypto/lms/e;

    if-eqz v1, :cond_3

    iget-object v2, p1, Lorg/bouncycastle/pqc/crypto/lms/g;->parameter:Lorg/bouncycastle/pqc/crypto/lms/e;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_3
    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/lms/g;->parameter:Lorg/bouncycastle/pqc/crypto/lms/e;

    if-eqz v1, :cond_4

    :goto_0
    return v0

    :cond_4
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/g;->I:[B

    iget-object v2, p1, Lorg/bouncycastle/pqc/crypto/lms/g;->I:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_5

    return v0

    :cond_5
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/g;->K:[B

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/lms/g;->K:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1

    :cond_6
    :goto_1
    return v0
.end method

.method public getEncoded()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lorg/bouncycastle/pqc/crypto/lms/a;->f()Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/g;->parameter:Lorg/bouncycastle/pqc/crypto/lms/e;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/lms/e;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/lms/a;->i(I)Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/g;->I:[B

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/lms/a;->d([B)Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/lms/g;->q:I

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/lms/a;->i(I)Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/g;->K:[B

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/lms/a;->d([B)Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/lms/a;->b()[B

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/g;->parameter:Lorg/bouncycastle/pqc/crypto/lms/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/g;->I:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/lms/g;->q:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/g;->K:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
