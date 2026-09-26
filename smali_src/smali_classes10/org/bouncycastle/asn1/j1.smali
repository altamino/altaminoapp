.class public Lorg/bouncycastle/asn1/j1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/f;
.implements Lorg/bouncycastle/asn1/r2;


# instance fields
.field private _parser:Lorg/bouncycastle/asn1/e0;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/e0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/j1;->_parser:Lorg/bouncycastle/asn1/e0;

    return-void
.end method

.method static a(Lorg/bouncycastle/asn1/e0;)Lorg/bouncycastle/asn1/g2;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lorg/bouncycastle/asn1/g2;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/e0;->h()Lorg/bouncycastle/asn1/g;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/g2;-><init>(Lorg/bouncycastle/asn1/g;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/bouncycastle/asn1/i;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/asn1/i;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
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
    iget-object v0, p0, Lorg/bouncycastle/asn1/j1;->_parser:Lorg/bouncycastle/asn1/e0;

    invoke-static {v0}, Lorg/bouncycastle/asn1/j1;->a(Lorg/bouncycastle/asn1/e0;)Lorg/bouncycastle/asn1/g2;

    move-result-object v0

    return-object v0
.end method

.method public g()Lorg/bouncycastle/asn1/z;
    .locals 3

    .line 1
    const-string v0, "unable to get DER object"

    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/j1;->c()Lorg/bouncycastle/asn1/z;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    new-instance v2, Lorg/bouncycastle/asn1/y;

    invoke-direct {v2, v0, v1}, Lorg/bouncycastle/asn1/y;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v1

    new-instance v2, Lorg/bouncycastle/asn1/y;

    invoke-direct {v2, v0, v1}, Lorg/bouncycastle/asn1/y;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
