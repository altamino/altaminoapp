.class abstract Lorg/bouncycastle/asn1/v2;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field protected final _in:Ljava/io/InputStream;

.field private _limit:I


# direct methods
.method constructor <init>(Ljava/io/InputStream;I)V
    .locals 0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/v2;->_in:Ljava/io/InputStream;

    iput p2, p0, Lorg/bouncycastle/asn1/v2;->_limit:I

    return-void
.end method


# virtual methods
.method d()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/bouncycastle/asn1/v2;->_limit:I

    return v0
.end method

.method protected e(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/asn1/v2;->_in:Ljava/io/InputStream;

    instance-of v1, v0, Lorg/bouncycastle/asn1/s2;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/bouncycastle/asn1/s2;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/s2;->i(Z)V

    :cond_0
    return-void
.end method
