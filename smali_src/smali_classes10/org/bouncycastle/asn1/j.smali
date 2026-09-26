.class public abstract Lorg/bouncycastle/asn1/j;
.super Lorg/bouncycastle/asn1/z;
.source "SourceFile"


# static fields
.field static final TYPE:Lorg/bouncycastle/asn1/m0;


# instance fields
.field dataValueDescriptor:Lorg/bouncycastle/asn1/z;

.field directReference:Lorg/bouncycastle/asn1/u;

.field encoding:I

.field externalContent:Lorg/bouncycastle/asn1/z;

.field indirectReference:Lorg/bouncycastle/asn1/p;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/j$a;

    const-class v1, Lorg/bouncycastle/asn1/j;

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/j$a;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lorg/bouncycastle/asn1/j;->TYPE:Lorg/bouncycastle/asn1/m0;

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/asn1/c0;)V
    .locals 4

    .line 3
    invoke-direct {p0}, Lorg/bouncycastle/asn1/z;-><init>()V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/bouncycastle/asn1/j;->A(Lorg/bouncycastle/asn1/c0;I)Lorg/bouncycastle/asn1/z;

    move-result-object v1

    instance-of v2, v1, Lorg/bouncycastle/asn1/u;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    check-cast v1, Lorg/bouncycastle/asn1/u;

    iput-object v1, p0, Lorg/bouncycastle/asn1/j;->directReference:Lorg/bouncycastle/asn1/u;

    invoke-static {p1, v3}, Lorg/bouncycastle/asn1/j;->A(Lorg/bouncycastle/asn1/c0;I)Lorg/bouncycastle/asn1/z;

    move-result-object v1

    move v0, v3

    :cond_0
    instance-of v2, v1, Lorg/bouncycastle/asn1/p;

    if-eqz v2, :cond_1

    check-cast v1, Lorg/bouncycastle/asn1/p;

    iput-object v1, p0, Lorg/bouncycastle/asn1/j;->indirectReference:Lorg/bouncycastle/asn1/p;

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lorg/bouncycastle/asn1/j;->A(Lorg/bouncycastle/asn1/c0;I)Lorg/bouncycastle/asn1/z;

    move-result-object v1

    :cond_1
    instance-of v2, v1, Lorg/bouncycastle/asn1/h0;

    if-nez v2, :cond_2

    iput-object v1, p0, Lorg/bouncycastle/asn1/j;->dataValueDescriptor:Lorg/bouncycastle/asn1/z;

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lorg/bouncycastle/asn1/j;->A(Lorg/bouncycastle/asn1/c0;I)Lorg/bouncycastle/asn1/z;

    move-result-object v1

    :cond_2
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/c0;->size()I

    move-result p1

    add-int/2addr v0, v3

    if-ne p1, v0, :cond_4

    instance-of p1, v1, Lorg/bouncycastle/asn1/h0;

    if-eqz p1, :cond_3

    check-cast v1, Lorg/bouncycastle/asn1/h0;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/h0;->F()I

    move-result p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/j;->x(I)I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/asn1/j;->encoding:I

    invoke-static {v1}, Lorg/bouncycastle/asn1/j;->z(Lorg/bouncycastle/asn1/h0;)Lorg/bouncycastle/asn1/z;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/j;->externalContent:Lorg/bouncycastle/asn1/z;

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No tagged object found in sequence. Structure doesn\'t seem to be of type External"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "input sequence too large"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor <init>(Lorg/bouncycastle/asn1/u;Lorg/bouncycastle/asn1/p;Lorg/bouncycastle/asn1/z;ILorg/bouncycastle/asn1/z;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/asn1/z;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/j;->directReference:Lorg/bouncycastle/asn1/u;

    iput-object p2, p0, Lorg/bouncycastle/asn1/j;->indirectReference:Lorg/bouncycastle/asn1/p;

    iput-object p3, p0, Lorg/bouncycastle/asn1/j;->dataValueDescriptor:Lorg/bouncycastle/asn1/z;

    invoke-static {p4}, Lorg/bouncycastle/asn1/j;->x(I)I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/asn1/j;->encoding:I

    invoke-static {p4, p5}, Lorg/bouncycastle/asn1/j;->y(ILorg/bouncycastle/asn1/z;)Lorg/bouncycastle/asn1/z;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/j;->externalContent:Lorg/bouncycastle/asn1/z;

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/asn1/u;Lorg/bouncycastle/asn1/p;Lorg/bouncycastle/asn1/z;Lorg/bouncycastle/asn1/y1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/bouncycastle/asn1/z;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/j;->directReference:Lorg/bouncycastle/asn1/u;

    iput-object p2, p0, Lorg/bouncycastle/asn1/j;->indirectReference:Lorg/bouncycastle/asn1/p;

    iput-object p3, p0, Lorg/bouncycastle/asn1/j;->dataValueDescriptor:Lorg/bouncycastle/asn1/z;

    invoke-virtual {p4}, Lorg/bouncycastle/asn1/h0;->F()I

    move-result p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/j;->x(I)I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/asn1/j;->encoding:I

    invoke-static {p4}, Lorg/bouncycastle/asn1/j;->z(Lorg/bouncycastle/asn1/h0;)Lorg/bouncycastle/asn1/z;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/j;->externalContent:Lorg/bouncycastle/asn1/z;

    return-void
.end method

.method private static A(Lorg/bouncycastle/asn1/c0;I)Lorg/bouncycastle/asn1/z;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/c0;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/c0;->z(I)Lorg/bouncycastle/asn1/f;

    move-result-object p0

    invoke-interface {p0}, Lorg/bouncycastle/asn1/f;->g()Lorg/bouncycastle/asn1/z;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "too few objects in input sequence"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static x(I)I
    .locals 3

    .line 1
    if-ltz p0, :cond_0

    const/4 v0, 0x2

    if-gt p0, v0, :cond_0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid encoding value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static y(ILorg/bouncycastle/asn1/z;)Lorg/bouncycastle/asn1/z;
    .locals 1

    .line 1
    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    return-object p1

    :cond_0
    sget-object p0, Lorg/bouncycastle/asn1/c;->TYPE:Lorg/bouncycastle/asn1/m0;

    :goto_0
    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/m0;->a(Lorg/bouncycastle/asn1/z;)Lorg/bouncycastle/asn1/z;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object p0, Lorg/bouncycastle/asn1/v;->TYPE:Lorg/bouncycastle/asn1/m0;

    goto :goto_0
.end method

.method private static z(Lorg/bouncycastle/asn1/h0;)Lorg/bouncycastle/asn1/z;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/h0;->E()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/h0;->F()I

    move-result v1

    const/16 v2, 0x80

    const-string v3, "invalid tag: "

    if-ne v2, v0, :cond_3

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-static {p0, v4}, Lorg/bouncycastle/asn1/c;->A(Lorg/bouncycastle/asn1/h0;Z)Lorg/bouncycastle/asn1/c;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lorg/bouncycastle/asn1/n0;->a(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p0, v4}, Lorg/bouncycastle/asn1/v;->y(Lorg/bouncycastle/asn1/h0;Z)Lorg/bouncycastle/asn1/v;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/h0;->B()Lorg/bouncycastle/asn1/s;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/s;->g()Lorg/bouncycastle/asn1/z;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lorg/bouncycastle/asn1/n0;->a(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method b(Lorg/bouncycastle/asn1/z;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/bouncycastle/asn1/j;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/bouncycastle/asn1/j;

    iget-object v1, p0, Lorg/bouncycastle/asn1/j;->directReference:Lorg/bouncycastle/asn1/u;

    iget-object v3, p1, Lorg/bouncycastle/asn1/j;->directReference:Lorg/bouncycastle/asn1/u;

    invoke-static {v1, v3}, Lorg/bouncycastle/util/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/asn1/j;->indirectReference:Lorg/bouncycastle/asn1/p;

    iget-object v3, p1, Lorg/bouncycastle/asn1/j;->indirectReference:Lorg/bouncycastle/asn1/p;

    invoke-static {v1, v3}, Lorg/bouncycastle/util/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/asn1/j;->dataValueDescriptor:Lorg/bouncycastle/asn1/z;

    iget-object v3, p1, Lorg/bouncycastle/asn1/j;->dataValueDescriptor:Lorg/bouncycastle/asn1/z;

    invoke-static {v1, v3}, Lorg/bouncycastle/util/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lorg/bouncycastle/asn1/j;->encoding:I

    iget v3, p1, Lorg/bouncycastle/asn1/j;->encoding:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/asn1/j;->externalContent:Lorg/bouncycastle/asn1/z;

    iget-object p1, p1, Lorg/bouncycastle/asn1/j;->externalContent:Lorg/bouncycastle/asn1/z;

    invoke-virtual {v1, p1}, Lorg/bouncycastle/asn1/z;->s(Lorg/bouncycastle/asn1/z;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/j;->directReference:Lorg/bouncycastle/asn1/u;

    invoke-static {v0}, Lorg/bouncycastle/util/e;->b(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/asn1/j;->indirectReference:Lorg/bouncycastle/asn1/p;

    invoke-static {v1}, Lorg/bouncycastle/util/e;->b(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/asn1/j;->dataValueDescriptor:Lorg/bouncycastle/asn1/z;

    invoke-static {v1}, Lorg/bouncycastle/util/e;->b(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget v1, p0, Lorg/bouncycastle/asn1/j;->encoding:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/asn1/j;->externalContent:Lorg/bouncycastle/asn1/z;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/z;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

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
    const/16 v0, 0x28

    invoke-virtual {p1, p2, v0}, Lorg/bouncycastle/asn1/x;->s(ZI)V

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/j;->w()Lorg/bouncycastle/asn1/c0;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lorg/bouncycastle/asn1/z;->j(Lorg/bouncycastle/asn1/x;Z)V

    return-void
.end method

.method m()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

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
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/j;->w()Lorg/bouncycastle/asn1/c0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/z;->r(Z)I

    move-result p1

    return p1
.end method

.method u()Lorg/bouncycastle/asn1/z;
    .locals 7

    .line 1
    new-instance v6, Lorg/bouncycastle/asn1/i1;

    iget-object v1, p0, Lorg/bouncycastle/asn1/j;->directReference:Lorg/bouncycastle/asn1/u;

    iget-object v2, p0, Lorg/bouncycastle/asn1/j;->indirectReference:Lorg/bouncycastle/asn1/p;

    iget-object v3, p0, Lorg/bouncycastle/asn1/j;->dataValueDescriptor:Lorg/bouncycastle/asn1/z;

    iget v4, p0, Lorg/bouncycastle/asn1/j;->encoding:I

    iget-object v5, p0, Lorg/bouncycastle/asn1/j;->externalContent:Lorg/bouncycastle/asn1/z;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/asn1/i1;-><init>(Lorg/bouncycastle/asn1/u;Lorg/bouncycastle/asn1/p;Lorg/bouncycastle/asn1/z;ILorg/bouncycastle/asn1/z;)V

    return-object v6
.end method

.method v()Lorg/bouncycastle/asn1/z;
    .locals 7

    .line 1
    new-instance v6, Lorg/bouncycastle/asn1/g2;

    iget-object v1, p0, Lorg/bouncycastle/asn1/j;->directReference:Lorg/bouncycastle/asn1/u;

    iget-object v2, p0, Lorg/bouncycastle/asn1/j;->indirectReference:Lorg/bouncycastle/asn1/p;

    iget-object v3, p0, Lorg/bouncycastle/asn1/j;->dataValueDescriptor:Lorg/bouncycastle/asn1/z;

    iget v4, p0, Lorg/bouncycastle/asn1/j;->encoding:I

    iget-object v5, p0, Lorg/bouncycastle/asn1/j;->externalContent:Lorg/bouncycastle/asn1/z;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/asn1/g2;-><init>(Lorg/bouncycastle/asn1/u;Lorg/bouncycastle/asn1/p;Lorg/bouncycastle/asn1/z;ILorg/bouncycastle/asn1/z;)V

    return-object v6
.end method

.method abstract w()Lorg/bouncycastle/asn1/c0;
.end method
