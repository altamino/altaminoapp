.class abstract Lorg/bouncycastle/asn1/m0;
.super Lorg/bouncycastle/asn1/i0;
.source "SourceFile"


# instance fields
.field final tag:Lorg/bouncycastle/asn1/g0;


# direct methods
.method constructor <init>(Ljava/lang/Class;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/i0;-><init>(Ljava/lang/Class;)V

    const/4 p1, 0x0

    invoke-static {p1, p2}, Lorg/bouncycastle/asn1/g0;->a(II)Lorg/bouncycastle/asn1/g0;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/m0;->tag:Lorg/bouncycastle/asn1/g0;

    return-void
.end method


# virtual methods
.method final a(Lorg/bouncycastle/asn1/z;)Lorg/bouncycastle/asn1/z;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/asn1/i0;->javaClass:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final b([B)Lorg/bouncycastle/asn1/z;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/bouncycastle/asn1/z;->t([B)Lorg/bouncycastle/asn1/z;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/m0;->a(Lorg/bouncycastle/asn1/z;)Lorg/bouncycastle/asn1/z;

    move-result-object p1

    return-object p1
.end method

.method c(Lorg/bouncycastle/asn1/c0;)Lorg/bouncycastle/asn1/z;
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "unexpected implicit constructed encoding"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method d(Lorg/bouncycastle/asn1/r1;)Lorg/bouncycastle/asn1/z;
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "unexpected implicit primitive encoding"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final e(Lorg/bouncycastle/asn1/h0;Z)Lorg/bouncycastle/asn1/z;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/h0;->E()I

    move-result v0

    const/16 v1, 0x80

    if-ne v1, v0, :cond_0

    invoke-virtual {p1, p2, p0}, Lorg/bouncycastle/asn1/h0;->A(ZLorg/bouncycastle/asn1/m0;)Lorg/bouncycastle/asn1/z;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/m0;->a(Lorg/bouncycastle/asn1/z;)Lorg/bouncycastle/asn1/z;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "this method only valid for CONTEXT_SPECIFIC tags"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
