.class public Lorg/bouncycastle/asn1/m2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/f;
.implements Lorg/bouncycastle/asn1/r2;


# instance fields
.field private _parser:Lorg/bouncycastle/asn1/e0;


# direct methods
.method constructor <init>(Lorg/bouncycastle/asn1/e0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/m2;->_parser:Lorg/bouncycastle/asn1/e0;

    return-void
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
    iget-object v0, p0, Lorg/bouncycastle/asn1/m2;->_parser:Lorg/bouncycastle/asn1/e0;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/e0;->h()Lorg/bouncycastle/asn1/g;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/h2;->b(Lorg/bouncycastle/asn1/g;)Lorg/bouncycastle/asn1/l2;

    move-result-object v0

    return-object v0
.end method

.method public g()Lorg/bouncycastle/asn1/z;
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/m2;->c()Lorg/bouncycastle/asn1/z;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/asn1/y;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/asn1/y;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
