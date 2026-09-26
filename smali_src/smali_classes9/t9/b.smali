.class public Lt9/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PublicKey;


# static fields
.field private static final serialVersionUID:J = 0x2cd46aae865a66a3L


# instance fields
.field private transient keyParams:Ll9/t;

.field private transient treeDigest:Lorg/bouncycastle/asn1/u;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/u;Ll9/t;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt9/b;->treeDigest:Lorg/bouncycastle/asn1/u;

    iput-object p2, p0, Lt9/b;->keyParams:Ll9/t;

    return-void
.end method

.method public constructor <init>(Lw8/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lt9/b;->a(Lw8/b;)V

    return-void
.end method

.method private a(Lw8/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/util/c;->a(Lw8/b;)Lorg/bouncycastle/crypto/params/a;

    move-result-object p1

    check-cast p1, Ll9/t;

    iput-object p1, p0, Lt9/b;->keyParams:Ll9/t;

    invoke-virtual {p1}, Ll9/q;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lt9/e;->a(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object p1

    iput-object p1, p0, Lt9/b;->treeDigest:Lorg/bouncycastle/asn1/u;

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

    invoke-static {p1}, Lw8/b;->m(Ljava/lang/Object;)Lw8/b;

    move-result-object p1

    invoke-direct {p0, p1}, Lt9/b;->a(Lw8/b;)V

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

    invoke-virtual {p0}, Lt9/b;->getEncoded()[B

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
    instance-of v1, p1, Lt9/b;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lt9/b;

    iget-object v1, p0, Lt9/b;->treeDigest:Lorg/bouncycastle/asn1/u;

    iget-object v3, p1, Lt9/b;->treeDigest:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/z;->s(Lorg/bouncycastle/asn1/z;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lt9/b;->keyParams:Ll9/t;

    invoke-virtual {v1}, Ll9/t;->e()[B

    move-result-object v1

    iget-object p1, p1, Lt9/b;->keyParams:Ll9/t;

    invoke-virtual {p1}, Ll9/t;->e()[B

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

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "XMSSMT"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lt9/b;->keyParams:Ll9/t;

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/util/d;->a(Lorg/bouncycastle/crypto/params/a;)Lw8/b;

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
    const-string v0, "X.509"

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lt9/b;->treeDigest:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/u;->hashCode()I

    move-result v0

    iget-object v1, p0, Lt9/b;->keyParams:Ll9/t;

    invoke-virtual {v1}, Ll9/t;->e()[B

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/util/a;->m([B)I

    move-result v1

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v0, v1

    return v0
.end method
