.class Lorg/bouncycastle/pqc/crypto/util/c$b;
.super Lorg/bouncycastle/pqc/crypto/util/c$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/util/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/util/c$g;-><init>(Lorg/bouncycastle/pqc/crypto/util/c$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/pqc/crypto/util/c$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/util/c$b;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lw8/b;Ljava/lang/Object;)Lorg/bouncycastle/crypto/params/a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lw8/b;->q()Lorg/bouncycastle/asn1/z;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/v;->x(Ljava/lang/Object;)Lorg/bouncycastle/asn1/v;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/v;->z()[B

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/bouncycastle/util/f;->a([BI)I

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p2, v0, :cond_0

    array-length p2, p1

    invoke-static {p1, v1, p2}, Lorg/bouncycastle/util/a;->j([BII)[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/lms/m;->a(Ljava/lang/Object;)Lorg/bouncycastle/pqc/crypto/lms/m;

    move-result-object p1

    return-object p1

    :cond_0
    array-length p2, p1

    const/16 v0, 0x40

    if-ne p2, v0, :cond_1

    array-length p2, p1

    invoke-static {p1, v1, p2}, Lorg/bouncycastle/util/a;->j([BII)[B

    move-result-object p1

    :cond_1
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/lms/d;->a(Ljava/lang/Object;)Lorg/bouncycastle/pqc/crypto/lms/d;

    move-result-object p1

    return-object p1
.end method
