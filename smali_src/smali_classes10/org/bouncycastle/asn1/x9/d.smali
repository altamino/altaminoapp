.class public Lorg/bouncycastle/asn1/x9/d;
.super Lorg/bouncycastle/asn1/s;
.source "SourceFile"


# static fields
.field private static converter:Lorg/bouncycastle/asn1/x9/f;


# instance fields
.field protected f:Lorg/bouncycastle/math/ec/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/x9/f;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x9/f;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/x9/d;->converter:Lorg/bouncycastle/asn1/x9/f;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/math/ec/d;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/s;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/x9/d;->f:Lorg/bouncycastle/math/ec/d;

    return-void
.end method


# virtual methods
.method public g()Lorg/bouncycastle/asn1/z;
    .locals 3

    .line 1
    sget-object v0, Lorg/bouncycastle/asn1/x9/d;->converter:Lorg/bouncycastle/asn1/x9/f;

    iget-object v1, p0, Lorg/bouncycastle/asn1/x9/d;->f:Lorg/bouncycastle/math/ec/d;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/x9/f;->a(Lorg/bouncycastle/math/ec/d;)I

    move-result v0

    sget-object v1, Lorg/bouncycastle/asn1/x9/d;->converter:Lorg/bouncycastle/asn1/x9/f;

    iget-object v2, p0, Lorg/bouncycastle/asn1/x9/d;->f:Lorg/bouncycastle/math/ec/d;

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/d;->m()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/bouncycastle/asn1/x9/f;->b(Ljava/math/BigInteger;I)[B

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/asn1/r1;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/r1;-><init>([B)V

    return-object v1
.end method
