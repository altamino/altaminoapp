.class public Lorg/bouncycastle/pqc/crypto/lms/d;
.super Lorg/bouncycastle/pqc/crypto/lms/k;
.source "SourceFile"


# instance fields
.field private final l:I

.field private final lmsPublicKey:Lorg/bouncycastle/pqc/crypto/lms/m;


# direct methods
.method public constructor <init>(ILorg/bouncycastle/pqc/crypto/lms/m;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/lms/k;-><init>(Z)V

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/lms/d;->l:I

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/lms/d;->lmsPublicKey:Lorg/bouncycastle/pqc/crypto/lms/m;

    return-void
.end method

.method public static a(Ljava/lang/Object;)Lorg/bouncycastle/pqc/crypto/lms/d;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lorg/bouncycastle/pqc/crypto/lms/d;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/pqc/crypto/lms/d;

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/io/DataInputStream;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/lms/m;->a(Ljava/lang/Object;)Lorg/bouncycastle/pqc/crypto/lms/m;

    move-result-object p0

    new-instance v1, Lorg/bouncycastle/pqc/crypto/lms/d;

    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/pqc/crypto/lms/d;-><init>(ILorg/bouncycastle/pqc/crypto/lms/m;)V

    return-object v1

    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    check-cast p0, [B

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/lms/d;->a(Ljava/lang/Object;)Lorg/bouncycastle/pqc/crypto/lms/d;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_2
    throw p0

    :cond_3
    instance-of v0, p0, Ljava/io/InputStream;

    if-eqz v0, :cond_4

    check-cast p0, Ljava/io/InputStream;

    invoke-static {p0}, Lv9/a;->c(Ljava/io/InputStream;)[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/lms/d;->a(Ljava/lang/Object;)Lorg/bouncycastle/pqc/crypto/lms/d;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot parse "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/lms/d;->l:I

    return v0
.end method

.method public c()Lorg/bouncycastle/pqc/crypto/lms/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/d;->lmsPublicKey:Lorg/bouncycastle/pqc/crypto/lms/m;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lorg/bouncycastle/pqc/crypto/lms/d;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/lms/d;->l:I

    iget v2, p1, Lorg/bouncycastle/pqc/crypto/lms/d;->l:I

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/d;->lmsPublicKey:Lorg/bouncycastle/pqc/crypto/lms/m;

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/lms/d;->lmsPublicKey:Lorg/bouncycastle/pqc/crypto/lms/m;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/crypto/lms/m;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
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

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/lms/d;->l:I

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/lms/a;->i(I)Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/d;->lmsPublicKey:Lorg/bouncycastle/pqc/crypto/lms/m;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/lms/m;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/lms/a;->d([B)Lorg/bouncycastle/pqc/crypto/lms/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/lms/a;->b()[B

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/lms/d;->l:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/d;->lmsPublicKey:Lorg/bouncycastle/pqc/crypto/lms/m;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/lms/m;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
