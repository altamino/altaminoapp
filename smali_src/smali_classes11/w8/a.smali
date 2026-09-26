.class public Lw8/a;
.super Lorg/bouncycastle/asn1/s;
.source "SourceFile"


# instance fields
.field private algorithm:Lorg/bouncycastle/asn1/u;

.field private parameters:Lorg/bouncycastle/asn1/f;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/c0;)V
    .locals 3

    .line 3
    invoke-direct {p0}, Lorg/bouncycastle/asn1/s;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/c0;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/c0;->size()I

    move-result v0

    const/4 v2, 0x2

    if-gt v0, v2, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/c0;->z(I)Lorg/bouncycastle/asn1/f;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/u;->B(Ljava/lang/Object;)Lorg/bouncycastle/asn1/u;

    move-result-object v0

    iput-object v0, p0, Lw8/a;->algorithm:Lorg/bouncycastle/asn1/u;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/c0;->size()I

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/c0;->z(I)Lorg/bouncycastle/asn1/f;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lw8/a;->parameters:Lorg/bouncycastle/asn1/f;

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad sequence size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/c0;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/u;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/asn1/s;-><init>()V

    iput-object p1, p0, Lw8/a;->algorithm:Lorg/bouncycastle/asn1/u;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/u;Lorg/bouncycastle/asn1/f;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/bouncycastle/asn1/s;-><init>()V

    iput-object p1, p0, Lw8/a;->algorithm:Lorg/bouncycastle/asn1/u;

    iput-object p2, p0, Lw8/a;->parameters:Lorg/bouncycastle/asn1/f;

    return-void
.end method

.method public static m(Ljava/lang/Object;)Lw8/a;
    .locals 1

    .line 1
    instance-of v0, p0, Lw8/a;

    if-eqz v0, :cond_0

    check-cast p0, Lw8/a;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lw8/a;

    invoke-static {p0}, Lorg/bouncycastle/asn1/c0;->y(Ljava/lang/Object;)Lorg/bouncycastle/asn1/c0;

    move-result-object p0

    invoke-direct {v0, p0}, Lw8/a;-><init>(Lorg/bouncycastle/asn1/c0;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public g()Lorg/bouncycastle/asn1/z;
    .locals 2

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/g;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/g;-><init>(I)V

    iget-object v1, p0, Lw8/a;->algorithm:Lorg/bouncycastle/asn1/u;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/g;->a(Lorg/bouncycastle/asn1/f;)V

    iget-object v1, p0, Lw8/a;->parameters:Lorg/bouncycastle/asn1/f;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/g;->a(Lorg/bouncycastle/asn1/f;)V

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/v1;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/v1;-><init>(Lorg/bouncycastle/asn1/g;)V

    return-object v1
.end method

.method public j()Lorg/bouncycastle/asn1/u;
    .locals 1

    .line 1
    iget-object v0, p0, Lw8/a;->algorithm:Lorg/bouncycastle/asn1/u;

    return-object v0
.end method

.method public p()Lorg/bouncycastle/asn1/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lw8/a;->parameters:Lorg/bouncycastle/asn1/f;

    return-object v0
.end method
