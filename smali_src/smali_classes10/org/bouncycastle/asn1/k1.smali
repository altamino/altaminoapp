.class Lorg/bouncycastle/asn1/k1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final EMPTY_SEQUENCE:Lorg/bouncycastle/asn1/v1;

.field static final EMPTY_SET:Lorg/bouncycastle/asn1/w1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/v1;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/v1;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/k1;->EMPTY_SEQUENCE:Lorg/bouncycastle/asn1/v1;

    new-instance v0, Lorg/bouncycastle/asn1/w1;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/w1;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/k1;->EMPTY_SET:Lorg/bouncycastle/asn1/w1;

    return-void
.end method

.method static a(Lorg/bouncycastle/asn1/g;)Lorg/bouncycastle/asn1/v1;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/g;->f()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    sget-object p0, Lorg/bouncycastle/asn1/k1;->EMPTY_SEQUENCE:Lorg/bouncycastle/asn1/v1;

    return-object p0

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/v1;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/v1;-><init>(Lorg/bouncycastle/asn1/g;)V

    return-object v0
.end method
