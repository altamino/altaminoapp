.class Lorg/bouncycastle/asn1/h2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final EMPTY_SEQUENCE:Lorg/bouncycastle/asn1/j2;

.field static final EMPTY_SET:Lorg/bouncycastle/asn1/l2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/j2;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/j2;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/h2;->EMPTY_SEQUENCE:Lorg/bouncycastle/asn1/j2;

    new-instance v0, Lorg/bouncycastle/asn1/l2;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/l2;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/h2;->EMPTY_SET:Lorg/bouncycastle/asn1/l2;

    return-void
.end method

.method static a(Lorg/bouncycastle/asn1/g;)Lorg/bouncycastle/asn1/j2;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/g;->f()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    sget-object p0, Lorg/bouncycastle/asn1/h2;->EMPTY_SEQUENCE:Lorg/bouncycastle/asn1/j2;

    return-object p0

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/j2;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/j2;-><init>(Lorg/bouncycastle/asn1/g;)V

    return-object v0
.end method

.method static b(Lorg/bouncycastle/asn1/g;)Lorg/bouncycastle/asn1/l2;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/g;->f()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    sget-object p0, Lorg/bouncycastle/asn1/h2;->EMPTY_SET:Lorg/bouncycastle/asn1/l2;

    return-object p0

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/l2;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/l2;-><init>(Lorg/bouncycastle/asn1/g;)V

    return-object v0
.end method
