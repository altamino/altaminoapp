.class public abstract Lorg/bouncycastle/asn1/h0;
.super Lorg/bouncycastle/asn1/z;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/r2;


# static fields
.field private static final DECLARED_EXPLICIT:I = 0x1

.field private static final DECLARED_IMPLICIT:I = 0x2

.field private static final PARSED_EXPLICIT:I = 0x3

.field private static final PARSED_IMPLICIT:I = 0x4


# instance fields
.field final explicitness:I

.field final obj:Lorg/bouncycastle/asn1/f;

.field final tagClass:I

.field final tagNo:I


# direct methods
.method constructor <init>(IIILorg/bouncycastle/asn1/f;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/asn1/z;-><init>()V

    if-eqz p4, :cond_1

    if-eqz p2, :cond_0

    and-int/lit16 v0, p2, 0xc0

    if-ne v0, p2, :cond_0

    iput p1, p0, Lorg/bouncycastle/asn1/h0;->explicitness:I

    iput p2, p0, Lorg/bouncycastle/asn1/h0;->tagClass:I

    iput p3, p0, Lorg/bouncycastle/asn1/h0;->tagNo:I

    iput-object p4, p0, Lorg/bouncycastle/asn1/h0;->obj:Lorg/bouncycastle/asn1/f;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "invalid tag class: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "\'obj\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected constructor <init>(ZIILorg/bouncycastle/asn1/f;)V
    .locals 0

    .line 2
    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/asn1/h0;-><init>(IIILorg/bouncycastle/asn1/f;)V

    return-void
.end method

.method protected constructor <init>(ZILorg/bouncycastle/asn1/f;)V
    .locals 1

    .line 3
    const/16 v0, 0x80

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/bouncycastle/asn1/h0;-><init>(ZIILorg/bouncycastle/asn1/f;)V

    return-void
.end method

.method public static C(Ljava/lang/Object;)Lorg/bouncycastle/asn1/h0;
    .locals 3

    .line 1
    if-eqz p0, :cond_3

    instance-of v0, p0, Lorg/bouncycastle/asn1/h0;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/f;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/f;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/f;->g()Lorg/bouncycastle/asn1/z;

    move-result-object v0

    instance-of v1, v0, Lorg/bouncycastle/asn1/h0;

    if-eqz v1, :cond_2

    check-cast v0, Lorg/bouncycastle/asn1/h0;

    return-object v0

    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_2

    :try_start_0
    check-cast p0, [B

    invoke-static {p0}, Lorg/bouncycastle/asn1/z;->t([B)Lorg/bouncycastle/asn1/z;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/h0;->w(Lorg/bouncycastle/asn1/z;)Lorg/bouncycastle/asn1/h0;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to construct tagged object from byte[]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    check-cast p0, Lorg/bouncycastle/asn1/h0;

    return-object p0
.end method

.method private static w(Lorg/bouncycastle/asn1/z;)Lorg/bouncycastle/asn1/h0;
    .locals 3

    .line 1
    instance-of v0, p0, Lorg/bouncycastle/asn1/h0;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/h0;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static x(IILorg/bouncycastle/asn1/g;)Lorg/bouncycastle/asn1/z;
    .locals 2

    .line 1
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/g;->f()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/n2;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lorg/bouncycastle/asn1/g;->d(I)Lorg/bouncycastle/asn1/f;

    move-result-object p2

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0, p1, p2}, Lorg/bouncycastle/asn1/n2;-><init>(IIILorg/bouncycastle/asn1/f;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/n2;

    const/4 v1, 0x4

    invoke-static {p2}, Lorg/bouncycastle/asn1/h2;->a(Lorg/bouncycastle/asn1/g;)Lorg/bouncycastle/asn1/j2;

    move-result-object p2

    invoke-direct {v0, v1, p0, p1, p2}, Lorg/bouncycastle/asn1/n2;-><init>(IIILorg/bouncycastle/asn1/f;)V

    :goto_0
    const/16 p1, 0x40

    if-eq p0, p1, :cond_1

    return-object v0

    :cond_1
    new-instance p0, Lorg/bouncycastle/asn1/d2;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/d2;-><init>(Lorg/bouncycastle/asn1/h0;)V

    return-object p0
.end method

.method static y(IILorg/bouncycastle/asn1/g;)Lorg/bouncycastle/asn1/z;
    .locals 2

    .line 1
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/g;->f()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/b1;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lorg/bouncycastle/asn1/g;->d(I)Lorg/bouncycastle/asn1/f;

    move-result-object p2

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0, p1, p2}, Lorg/bouncycastle/asn1/b1;-><init>(IIILorg/bouncycastle/asn1/f;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/b1;

    const/4 v1, 0x4

    invoke-static {p2}, Lorg/bouncycastle/asn1/u0;->a(Lorg/bouncycastle/asn1/g;)Lorg/bouncycastle/asn1/x0;

    move-result-object p2

    invoke-direct {v0, v1, p0, p1, p2}, Lorg/bouncycastle/asn1/b1;-><init>(IIILorg/bouncycastle/asn1/f;)V

    :goto_0
    const/16 p1, 0x40

    if-eq p0, p1, :cond_1

    return-object v0

    :cond_1
    new-instance p0, Lorg/bouncycastle/asn1/q0;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/q0;-><init>(Lorg/bouncycastle/asn1/h0;)V

    return-object p0
.end method

.method static z(II[B)Lorg/bouncycastle/asn1/z;
    .locals 2

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/n2;

    new-instance v1, Lorg/bouncycastle/asn1/r1;

    invoke-direct {v1, p2}, Lorg/bouncycastle/asn1/r1;-><init>([B)V

    const/4 p2, 0x4

    invoke-direct {v0, p2, p0, p1, v1}, Lorg/bouncycastle/asn1/n2;-><init>(IIILorg/bouncycastle/asn1/f;)V

    const/16 p1, 0x40

    if-eq p0, p1, :cond_0

    return-object v0

    :cond_0
    new-instance p0, Lorg/bouncycastle/asn1/d2;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/d2;-><init>(Lorg/bouncycastle/asn1/h0;)V

    return-object p0
.end method


# virtual methods
.method A(ZLorg/bouncycastle/asn1/m0;)Lorg/bouncycastle/asn1/z;
    .locals 2

    .line 1
    const-string v0, "object explicit - implicit expected."

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/h0;->G()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/bouncycastle/asn1/h0;->obj:Lorg/bouncycastle/asn1/f;

    invoke-interface {p1}, Lorg/bouncycastle/asn1/f;->g()Lorg/bouncycastle/asn1/z;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/bouncycastle/asn1/m0;->a(Lorg/bouncycastle/asn1/z;)Lorg/bouncycastle/asn1/z;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p1, 0x1

    iget v1, p0, Lorg/bouncycastle/asn1/h0;->explicitness:I

    if-eq p1, v1, :cond_5

    iget-object p1, p0, Lorg/bouncycastle/asn1/h0;->obj:Lorg/bouncycastle/asn1/f;

    invoke-interface {p1}, Lorg/bouncycastle/asn1/f;->g()Lorg/bouncycastle/asn1/z;

    move-result-object p1

    iget v0, p0, Lorg/bouncycastle/asn1/h0;->explicitness:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    invoke-virtual {p2, p1}, Lorg/bouncycastle/asn1/m0;->a(Lorg/bouncycastle/asn1/z;)Lorg/bouncycastle/asn1/z;

    move-result-object p1

    return-object p1

    :cond_2
    instance-of v0, p1, Lorg/bouncycastle/asn1/c0;

    if-eqz v0, :cond_3

    check-cast p1, Lorg/bouncycastle/asn1/c0;

    invoke-virtual {p2, p1}, Lorg/bouncycastle/asn1/m0;->c(Lorg/bouncycastle/asn1/c0;)Lorg/bouncycastle/asn1/z;

    move-result-object p1

    return-object p1

    :cond_3
    check-cast p1, Lorg/bouncycastle/asn1/r1;

    invoke-virtual {p2, p1}, Lorg/bouncycastle/asn1/m0;->d(Lorg/bouncycastle/asn1/r1;)Lorg/bouncycastle/asn1/z;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/h0;->H(Lorg/bouncycastle/asn1/z;)Lorg/bouncycastle/asn1/c0;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/bouncycastle/asn1/m0;->c(Lorg/bouncycastle/asn1/c0;)Lorg/bouncycastle/asn1/z;

    move-result-object p1

    return-object p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public B()Lorg/bouncycastle/asn1/s;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/h0;->G()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/asn1/h0;->obj:Lorg/bouncycastle/asn1/f;

    instance-of v1, v0, Lorg/bouncycastle/asn1/s;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/bouncycastle/asn1/s;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/bouncycastle/asn1/f;->g()Lorg/bouncycastle/asn1/z;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "object implicit - explicit expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public D()Lorg/bouncycastle/asn1/z;
    .locals 2

    .line 1
    const/16 v0, 0x80

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/h0;->E()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/h0;->obj:Lorg/bouncycastle/asn1/f;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/f;->g()Lorg/bouncycastle/asn1/z;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "this method only valid for CONTEXT_SPECIFIC tags"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public E()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/bouncycastle/asn1/h0;->tagClass:I

    return v0
.end method

.method public F()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/bouncycastle/asn1/h0;->tagNo:I

    return v0
.end method

.method public G()Z
    .locals 3

    .line 1
    iget v0, p0, Lorg/bouncycastle/asn1/h0;->explicitness:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1
.end method

.method abstract H(Lorg/bouncycastle/asn1/z;)Lorg/bouncycastle/asn1/c0;
.end method

.method b(Lorg/bouncycastle/asn1/z;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Lorg/bouncycastle/asn1/a;

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Lorg/bouncycastle/asn1/z;->s(Lorg/bouncycastle/asn1/z;)Z

    move-result p1

    return p1

    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/asn1/h0;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    check-cast p1, Lorg/bouncycastle/asn1/h0;

    iget v0, p0, Lorg/bouncycastle/asn1/h0;->tagNo:I

    iget v2, p1, Lorg/bouncycastle/asn1/h0;->tagNo:I

    if-ne v0, v2, :cond_6

    iget v0, p0, Lorg/bouncycastle/asn1/h0;->tagClass:I

    iget v2, p1, Lorg/bouncycastle/asn1/h0;->tagClass:I

    if-eq v0, v2, :cond_2

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/bouncycastle/asn1/h0;->explicitness:I

    iget v2, p1, Lorg/bouncycastle/asn1/h0;->explicitness:I

    if-eq v0, v2, :cond_3

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/h0;->G()Z

    move-result v0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/h0;->G()Z

    move-result v2

    if-eq v0, v2, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/asn1/h0;->obj:Lorg/bouncycastle/asn1/f;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/f;->g()Lorg/bouncycastle/asn1/z;

    move-result-object v0

    iget-object v2, p1, Lorg/bouncycastle/asn1/h0;->obj:Lorg/bouncycastle/asn1/f;

    invoke-interface {v2}, Lorg/bouncycastle/asn1/f;->g()Lorg/bouncycastle/asn1/z;

    move-result-object v2

    if-ne v0, v2, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/h0;->G()Z

    move-result v3

    if-nez v3, :cond_5

    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/s;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/s;->getEncoded()[B

    move-result-object p1

    invoke-static {v0, p1}, Lorg/bouncycastle/util/a;->a([B[B)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v1

    :cond_5
    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/z;->b(Lorg/bouncycastle/asn1/z;)Z

    move-result p1

    return p1

    :cond_6
    :goto_0
    return v1
.end method

.method public final c()Lorg/bouncycastle/asn1/z;
    .locals 0

    .line 1
    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lorg/bouncycastle/asn1/h0;->tagClass:I

    mul-int/lit16 v0, v0, 0x1eef

    iget v1, p0, Lorg/bouncycastle/asn1/h0;->tagNo:I

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/h0;->G()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xf

    goto :goto_0

    :cond_0
    const/16 v1, 0xf0

    :goto_0
    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/asn1/h0;->obj:Lorg/bouncycastle/asn1/f;

    invoke-interface {v1}, Lorg/bouncycastle/asn1/f;->g()Lorg/bouncycastle/asn1/z;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/z;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/bouncycastle/asn1/h0;->tagClass:I

    iget v2, p0, Lorg/bouncycastle/asn1/h0;->tagNo:I

    invoke-static {v1, v2}, Lorg/bouncycastle/asn1/n0;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/bouncycastle/asn1/h0;->obj:Lorg/bouncycastle/asn1/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method u()Lorg/bouncycastle/asn1/z;
    .locals 5

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/y1;

    iget v1, p0, Lorg/bouncycastle/asn1/h0;->explicitness:I

    iget v2, p0, Lorg/bouncycastle/asn1/h0;->tagClass:I

    iget v3, p0, Lorg/bouncycastle/asn1/h0;->tagNo:I

    iget-object v4, p0, Lorg/bouncycastle/asn1/h0;->obj:Lorg/bouncycastle/asn1/f;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/asn1/y1;-><init>(IIILorg/bouncycastle/asn1/f;)V

    return-object v0
.end method

.method v()Lorg/bouncycastle/asn1/z;
    .locals 5

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/n2;

    iget v1, p0, Lorg/bouncycastle/asn1/h0;->explicitness:I

    iget v2, p0, Lorg/bouncycastle/asn1/h0;->tagClass:I

    iget v3, p0, Lorg/bouncycastle/asn1/h0;->tagNo:I

    iget-object v4, p0, Lorg/bouncycastle/asn1/h0;->obj:Lorg/bouncycastle/asn1/f;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/asn1/n2;-><init>(IIILorg/bouncycastle/asn1/f;)V

    return-object v0
.end method
