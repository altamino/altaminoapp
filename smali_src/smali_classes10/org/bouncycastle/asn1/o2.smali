.class Lorg/bouncycastle/asn1/o2;
.super Lorg/bouncycastle/asn1/c1;
.source "SourceFile"


# instance fields
.field private final _constructed:Z


# direct methods
.method constructor <init>(IIZLorg/bouncycastle/asn1/e0;)V
    .locals 0

    invoke-direct {p0, p1, p2, p4}, Lorg/bouncycastle/asn1/c1;-><init>(IILorg/bouncycastle/asn1/e0;)V

    iput-boolean p3, p0, Lorg/bouncycastle/asn1/o2;->_constructed:Z

    return-void
.end method


# virtual methods
.method public c()Lorg/bouncycastle/asn1/z;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/asn1/c1;->_parser:Lorg/bouncycastle/asn1/e0;

    iget v1, p0, Lorg/bouncycastle/asn1/c1;->_tagClass:I

    iget v2, p0, Lorg/bouncycastle/asn1/c1;->_tagNo:I

    iget-boolean v3, p0, Lorg/bouncycastle/asn1/o2;->_constructed:Z

    invoke-virtual {v0, v1, v2, v3}, Lorg/bouncycastle/asn1/e0;->b(IIZ)Lorg/bouncycastle/asn1/z;

    move-result-object v0

    return-object v0
.end method
