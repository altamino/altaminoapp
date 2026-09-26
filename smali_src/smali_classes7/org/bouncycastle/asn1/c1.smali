.class public Lorg/bouncycastle/asn1/c1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/f;
.implements Lorg/bouncycastle/asn1/r2;


# instance fields
.field final _parser:Lorg/bouncycastle/asn1/e0;

.field final _tagClass:I

.field final _tagNo:I


# direct methods
.method constructor <init>(IILorg/bouncycastle/asn1/e0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/asn1/c1;->_tagClass:I

    iput p2, p0, Lorg/bouncycastle/asn1/c1;->_tagNo:I

    iput-object p3, p0, Lorg/bouncycastle/asn1/c1;->_parser:Lorg/bouncycastle/asn1/e0;

    return-void
.end method


# virtual methods
.method public c()Lorg/bouncycastle/asn1/z;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/asn1/c1;->_parser:Lorg/bouncycastle/asn1/e0;

    iget v1, p0, Lorg/bouncycastle/asn1/c1;->_tagClass:I

    iget v2, p0, Lorg/bouncycastle/asn1/c1;->_tagNo:I

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/asn1/e0;->c(II)Lorg/bouncycastle/asn1/z;

    move-result-object v0

    return-object v0
.end method

.method public g()Lorg/bouncycastle/asn1/z;
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/c1;->c()Lorg/bouncycastle/asn1/z;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/asn1/y;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/y;-><init>(Ljava/lang/String;)V

    throw v1
.end method
