.class public Lorg/bouncycastle/asn1/w0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/w;


# instance fields
.field private _parser:Lorg/bouncycastle/asn1/e0;


# direct methods
.method constructor <init>(Lorg/bouncycastle/asn1/e0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/w0;->_parser:Lorg/bouncycastle/asn1/e0;

    return-void
.end method

.method static a(Lorg/bouncycastle/asn1/e0;)Lorg/bouncycastle/asn1/v0;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/v0;

    new-instance v1, Lorg/bouncycastle/asn1/e1;

    invoke-direct {v1, p0}, Lorg/bouncycastle/asn1/e1;-><init>(Lorg/bouncycastle/asn1/e0;)V

    invoke-static {v1}, Lv9/a;->c(Ljava/io/InputStream;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/v0;-><init>([B)V

    return-object v0
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
    iget-object v0, p0, Lorg/bouncycastle/asn1/w0;->_parser:Lorg/bouncycastle/asn1/e0;

    invoke-static {v0}, Lorg/bouncycastle/asn1/w0;->a(Lorg/bouncycastle/asn1/e0;)Lorg/bouncycastle/asn1/v0;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/io/InputStream;
    .locals 2

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/e1;

    iget-object v1, p0, Lorg/bouncycastle/asn1/w0;->_parser:Lorg/bouncycastle/asn1/e0;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/e1;-><init>(Lorg/bouncycastle/asn1/e0;)V

    return-object v0
.end method

.method public g()Lorg/bouncycastle/asn1/z;
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/w0;->c()Lorg/bouncycastle/asn1/z;

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
