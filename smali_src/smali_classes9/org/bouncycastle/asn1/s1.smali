.class public Lorg/bouncycastle/asn1/s1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/w;


# instance fields
.field private stream:Lorg/bouncycastle/asn1/q2;


# direct methods
.method constructor <init>(Lorg/bouncycastle/asn1/q2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/s1;->stream:Lorg/bouncycastle/asn1/q2;

    return-void
.end method


# virtual methods
.method public c()Lorg/bouncycastle/asn1/z;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/r1;

    iget-object v1, p0, Lorg/bouncycastle/asn1/s1;->stream:Lorg/bouncycastle/asn1/q2;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/q2;->k()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/r1;-><init>([B)V

    return-object v0
.end method

.method public e()Ljava/io/InputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/asn1/s1;->stream:Lorg/bouncycastle/asn1/q2;

    return-object v0
.end method

.method public g()Lorg/bouncycastle/asn1/z;
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/s1;->c()Lorg/bouncycastle/asn1/z;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/asn1/y;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException converting stream to byte array: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/asn1/y;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
