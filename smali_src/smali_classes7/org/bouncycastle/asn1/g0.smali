.class final Lorg/bouncycastle/asn1/g0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final tagClass:I

.field private final tagNumber:I


# direct methods
.method private constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/asn1/g0;->tagClass:I

    iput p2, p0, Lorg/bouncycastle/asn1/g0;->tagNumber:I

    return-void
.end method

.method static a(II)Lorg/bouncycastle/asn1/g0;
    .locals 1

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/g0;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/asn1/g0;-><init>(II)V

    return-object v0
.end method
