.class public Lorg/bouncycastle/asn1/x9/c;
.super Lorg/bouncycastle/asn1/s;
.source "SourceFile"


# instance fields
.field private c:Lorg/bouncycastle/math/ec/c;

.field private final encoding:Lorg/bouncycastle/asn1/v;

.field private p:Lorg/bouncycastle/math/ec/f;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/math/ec/c;Lorg/bouncycastle/asn1/v;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/v;->z()[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/asn1/x9/c;-><init>(Lorg/bouncycastle/math/ec/c;[B)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/math/ec/c;[B)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/bouncycastle/asn1/s;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/x9/c;->c:Lorg/bouncycastle/math/ec/c;

    new-instance p1, Lorg/bouncycastle/asn1/r1;

    invoke-static {p2}, Lorg/bouncycastle/util/a;->e([B)[B

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/r1;-><init>([B)V

    iput-object p1, p0, Lorg/bouncycastle/asn1/x9/c;->encoding:Lorg/bouncycastle/asn1/v;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/math/ec/f;Z)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lorg/bouncycastle/asn1/s;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/f;->q()Lorg/bouncycastle/math/ec/f;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x9/c;->p:Lorg/bouncycastle/math/ec/f;

    new-instance v0, Lorg/bouncycastle/asn1/r1;

    invoke-virtual {p1, p2}, Lorg/bouncycastle/math/ec/f;->h(Z)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/r1;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x9/c;->encoding:Lorg/bouncycastle/asn1/v;

    return-void
.end method


# virtual methods
.method public g()Lorg/bouncycastle/asn1/z;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/asn1/x9/c;->encoding:Lorg/bouncycastle/asn1/v;

    return-object v0
.end method
