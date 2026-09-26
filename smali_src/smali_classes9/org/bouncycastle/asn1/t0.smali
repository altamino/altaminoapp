.class public Lorg/bouncycastle/asn1/t0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/d;


# instance fields
.field private _bitStream:Lorg/bouncycastle/asn1/d1;

.field private _parser:Lorg/bouncycastle/asn1/e0;


# direct methods
.method constructor <init>(Lorg/bouncycastle/asn1/e0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/t0;->_parser:Lorg/bouncycastle/asn1/e0;

    return-void
.end method

.method static a(Lorg/bouncycastle/asn1/e0;)Lorg/bouncycastle/asn1/s0;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/d1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/asn1/d1;-><init>(Lorg/bouncycastle/asn1/e0;Z)V

    invoke-static {v0}, Lv9/a;->c(Ljava/io/InputStream;)[B

    move-result-object p0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/d1;->h()I

    move-result v0

    new-instance v1, Lorg/bouncycastle/asn1/s0;

    invoke-direct {v1, p0, v0}, Lorg/bouncycastle/asn1/s0;-><init>([BI)V

    return-object v1
.end method


# virtual methods
.method public c()Lorg/bouncycastle/asn1/z;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/asn1/t0;->_parser:Lorg/bouncycastle/asn1/e0;

    invoke-static {v0}, Lorg/bouncycastle/asn1/t0;->a(Lorg/bouncycastle/asn1/e0;)Lorg/bouncycastle/asn1/s0;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/d1;

    iget-object v1, p0, Lorg/bouncycastle/asn1/t0;->_parser:Lorg/bouncycastle/asn1/e0;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/d1;-><init>(Lorg/bouncycastle/asn1/e0;Z)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/t0;->_bitStream:Lorg/bouncycastle/asn1/d1;

    return-object v0
.end method

.method public f()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/asn1/t0;->_bitStream:Lorg/bouncycastle/asn1/d1;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/d1;->h()I

    move-result v0

    return v0
.end method

.method public g()Lorg/bouncycastle/asn1/z;
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/t0;->c()Lorg/bouncycastle/asn1/z;

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
