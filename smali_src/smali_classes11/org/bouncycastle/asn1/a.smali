.class public abstract Lorg/bouncycastle/asn1/a;
.super Lorg/bouncycastle/asn1/z;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/r2;


# instance fields
.field final taggedObject:Lorg/bouncycastle/asn1/h0;


# direct methods
.method constructor <init>(Lorg/bouncycastle/asn1/h0;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/z;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/h0;->E()I

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/a;->w(I)I

    iput-object p1, p0, Lorg/bouncycastle/asn1/a;->taggedObject:Lorg/bouncycastle/asn1/h0;

    return-void
.end method

.method private static w(I)I
    .locals 1

    .line 1
    const/16 v0, 0x40

    if-ne v0, p0, :cond_0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method b(Lorg/bouncycastle/asn1/z;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/bouncycastle/asn1/a;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/bouncycastle/asn1/a;

    iget-object p1, p1, Lorg/bouncycastle/asn1/a;->taggedObject:Lorg/bouncycastle/asn1/h0;

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/asn1/h0;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/bouncycastle/asn1/h0;

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/a;->taggedObject:Lorg/bouncycastle/asn1/h0;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/z;->s(Lorg/bouncycastle/asn1/z;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final c()Lorg/bouncycastle/asn1/z;
    .locals 0

    .line 1
    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/a;->taggedObject:Lorg/bouncycastle/asn1/h0;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/h0;->hashCode()I

    move-result v0

    return v0
.end method

.method j(Lorg/bouncycastle/asn1/x;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/asn1/a;->taggedObject:Lorg/bouncycastle/asn1/h0;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/asn1/z;->j(Lorg/bouncycastle/asn1/x;Z)V

    return-void
.end method

.method m()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/asn1/a;->taggedObject:Lorg/bouncycastle/asn1/h0;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/z;->m()Z

    move-result v0

    return v0
.end method

.method r(Z)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/asn1/a;->taggedObject:Lorg/bouncycastle/asn1/h0;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/z;->r(Z)I

    move-result p1

    return p1
.end method

.method u()Lorg/bouncycastle/asn1/z;
    .locals 2

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/f1;

    iget-object v1, p0, Lorg/bouncycastle/asn1/a;->taggedObject:Lorg/bouncycastle/asn1/h0;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/h0;->u()Lorg/bouncycastle/asn1/z;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/h0;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/f1;-><init>(Lorg/bouncycastle/asn1/h0;)V

    return-object v0
.end method

.method v()Lorg/bouncycastle/asn1/z;
    .locals 2

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/d2;

    iget-object v1, p0, Lorg/bouncycastle/asn1/a;->taggedObject:Lorg/bouncycastle/asn1/h0;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/h0;->v()Lorg/bouncycastle/asn1/z;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/h0;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/d2;-><init>(Lorg/bouncycastle/asn1/h0;)V

    return-object v0
.end method
