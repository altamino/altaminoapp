.class public Lt9/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivateKey;


# static fields
.field private static final serialVersionUID:J = 0x76ea24cf15920952L


# instance fields
.field private transient attributes:Lorg/bouncycastle/asn1/d0;

.field private transient keyParams:Ll9/y;

.field private transient treeDigest:Lorg/bouncycastle/asn1/u;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/u;Ll9/y;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt9/c;->treeDigest:Lorg/bouncycastle/asn1/u;

    iput-object p2, p0, Lt9/c;->keyParams:Ll9/y;

    return-void
.end method

.method public constructor <init>(Lv8/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lt9/c;->a(Lv8/b;)V

    return-void
.end method

.method private a(Lv8/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lv8/b;->j()Lorg/bouncycastle/asn1/d0;

    move-result-object v0

    iput-object v0, p0, Lt9/c;->attributes:Lorg/bouncycastle/asn1/d0;

    invoke-virtual {p1}, Lv8/b;->p()Lw8/a;

    move-result-object v0

    invoke-virtual {v0}, Lw8/a;->p()Lorg/bouncycastle/asn1/f;

    move-result-object v0

    invoke-static {v0}, Le9/i;->m(Ljava/lang/Object;)Le9/i;

    move-result-object v0

    invoke-virtual {v0}, Le9/i;->p()Lw8/a;

    move-result-object v0

    invoke-virtual {v0}, Lw8/a;->j()Lorg/bouncycastle/asn1/u;

    move-result-object v0

    iput-object v0, p0, Lt9/c;->treeDigest:Lorg/bouncycastle/asn1/u;

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/util/a;->b(Lv8/b;)Lorg/bouncycastle/crypto/params/a;

    move-result-object p1

    check-cast p1, Ll9/y;

    iput-object p1, p0, Lt9/c;->keyParams:Ll9/y;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-static {p1}, Lv8/b;->m(Ljava/lang/Object;)Lv8/b;

    move-result-object p1

    invoke-direct {p0, p1}, Lt9/c;->a(Lv8/b;)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-virtual {p0}, Lt9/c;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lt9/c;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lt9/c;

    iget-object v1, p0, Lt9/c;->treeDigest:Lorg/bouncycastle/asn1/u;

    iget-object v3, p1, Lt9/c;->treeDigest:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/z;->s(Lorg/bouncycastle/asn1/z;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lt9/c;->keyParams:Ll9/y;

    invoke-virtual {v1}, Ll9/y;->c()[B

    move-result-object v1

    iget-object p1, p1, Lt9/c;->keyParams:Ll9/y;

    invoke-virtual {p1}, Ll9/y;->c()[B

    move-result-object p1

    invoke-static {v1, p1}, Lorg/bouncycastle/util/a;->a([B[B)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "XMSS"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lt9/c;->keyParams:Ll9/y;

    iget-object v1, p0, Lt9/c;->attributes:Lorg/bouncycastle/asn1/d0;

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/crypto/util/b;->a(Lorg/bouncycastle/crypto/params/a;Lorg/bouncycastle/asn1/d0;)Lv8/b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/s;->getEncoded()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "PKCS#8"

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lt9/c;->treeDigest:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/u;->hashCode()I

    move-result v0

    iget-object v1, p0, Lt9/c;->keyParams:Ll9/y;

    invoke-virtual {v1}, Ll9/y;->c()[B

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/util/a;->m([B)I

    move-result v1

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v0, v1

    return v0
.end method
