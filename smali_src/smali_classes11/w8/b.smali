.class public Lw8/b;
.super Lorg/bouncycastle/asn1/s;
.source "SourceFile"


# instance fields
.field private algId:Lw8/a;

.field private keyData:Lorg/bouncycastle/asn1/c;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/c0;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/asn1/s;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/c0;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/c0;->A()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lw8/a;->m(Ljava/lang/Object;)Lw8/a;

    move-result-object v0

    iput-object v0, p0, Lw8/b;->algId:Lw8/a;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/h1;->G(Ljava/lang/Object;)Lorg/bouncycastle/asn1/h1;

    move-result-object p1

    iput-object p1, p0, Lw8/b;->keyData:Lorg/bouncycastle/asn1/c;

    return-void

    :cond_0
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

.method public constructor <init>(Lw8/a;Lorg/bouncycastle/asn1/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lorg/bouncycastle/asn1/s;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/h1;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/h1;-><init>(Lorg/bouncycastle/asn1/f;)V

    iput-object v0, p0, Lw8/b;->keyData:Lorg/bouncycastle/asn1/c;

    iput-object p1, p0, Lw8/b;->algId:Lw8/a;

    return-void
.end method

.method public constructor <init>(Lw8/a;[B)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lorg/bouncycastle/asn1/s;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/h1;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/h1;-><init>([B)V

    iput-object v0, p0, Lw8/b;->keyData:Lorg/bouncycastle/asn1/c;

    iput-object p1, p0, Lw8/b;->algId:Lw8/a;

    return-void
.end method

.method public static m(Ljava/lang/Object;)Lw8/b;
    .locals 1

    .line 1
    instance-of v0, p0, Lw8/b;

    if-eqz v0, :cond_0

    check-cast p0, Lw8/b;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lw8/b;

    invoke-static {p0}, Lorg/bouncycastle/asn1/c0;->y(Ljava/lang/Object;)Lorg/bouncycastle/asn1/c0;

    move-result-object p0

    invoke-direct {v0, p0}, Lw8/b;-><init>(Lorg/bouncycastle/asn1/c0;)V

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

    iget-object v1, p0, Lw8/b;->algId:Lw8/a;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/g;->a(Lorg/bouncycastle/asn1/f;)V

    iget-object v1, p0, Lw8/b;->keyData:Lorg/bouncycastle/asn1/c;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/g;->a(Lorg/bouncycastle/asn1/f;)V

    new-instance v1, Lorg/bouncycastle/asn1/v1;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/v1;-><init>(Lorg/bouncycastle/asn1/g;)V

    return-object v1
.end method

.method public j()Lw8/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lw8/b;->algId:Lw8/a;

    return-object v0
.end method

.method public p()Lorg/bouncycastle/asn1/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lw8/b;->keyData:Lorg/bouncycastle/asn1/c;

    return-object v0
.end method

.method public q()Lorg/bouncycastle/asn1/z;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lw8/b;->keyData:Lorg/bouncycastle/asn1/c;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/c;->B()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/z;->t([B)Lorg/bouncycastle/asn1/z;

    move-result-object v0

    return-object v0
.end method
