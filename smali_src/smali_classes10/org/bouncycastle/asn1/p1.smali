.class public Lorg/bouncycastle/asn1/p1;
.super Lorg/bouncycastle/asn1/q;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lorg/bouncycastle/asn1/p1;

.field private static final zeroBytes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/p1;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/p1;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/p1;->INSTANCE:Lorg/bouncycastle/asn1/p1;

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/bouncycastle/asn1/p1;->zeroBytes:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/q;-><init>()V

    return-void
.end method


# virtual methods
.method j(Lorg/bouncycastle/asn1/x;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x5

    sget-object v1, Lorg/bouncycastle/asn1/p1;->zeroBytes:[B

    invoke-virtual {p1, p2, v0, v1}, Lorg/bouncycastle/asn1/x;->o(ZI[B)V

    return-void
.end method

.method m()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method r(Z)I
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/bouncycastle/asn1/x;->g(ZI)I

    move-result p1

    return p1
.end method
