.class public Lo9/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/Key;
.implements Ljava/security/PublicKey;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient params:Lorg/bouncycastle/pqc/crypto/newhope/b;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/newhope/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo9/b;->params:Lorg/bouncycastle/pqc/crypto/newhope/b;

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

    invoke-direct {p0, p1}, Lo9/b;->a(Lw8/b;)V

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

    check-cast p1, Lorg/bouncycastle/pqc/crypto/newhope/b;

    iput-object p1, p0, Lo9/b;->params:Lorg/bouncycastle/pqc/crypto/newhope/b;

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

    invoke-direct {p0, p1}, Lo9/b;->a(Lw8/b;)V

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

    invoke-virtual {p0}, Lo9/b;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    instance-of v0, p1, Lo9/b;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lo9/b;

    iget-object v0, p0, Lo9/b;->params:Lorg/bouncycastle/pqc/crypto/newhope/b;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/newhope/b;->a()[B

    move-result-object v0

    iget-object p1, p1, Lo9/b;->params:Lorg/bouncycastle/pqc/crypto/newhope/b;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/newhope/b;->a()[B

    move-result-object p1

    invoke-static {v0, p1}, Lorg/bouncycastle/util/a;->a([B[B)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "NH"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lo9/b;->params:Lorg/bouncycastle/pqc/crypto/newhope/b;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lo9/b;->params:Lorg/bouncycastle/pqc/crypto/newhope/b;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/newhope/b;->a()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/a;->m([B)I

    move-result v0

    return v0
.end method
