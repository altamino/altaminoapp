.class Lorg/bouncycastle/pqc/crypto/util/c$c;
.super Lorg/bouncycastle/pqc/crypto/util/c$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/util/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
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
    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/util/c$c;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lw8/b;Ljava/lang/Object;)Lorg/bouncycastle/crypto/params/a;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lw8/b;->q()Lorg/bouncycastle/asn1/z;

    move-result-object p1

    invoke-static {p1}, Le9/b;->p(Ljava/lang/Object;)Le9/b;

    move-result-object p1

    new-instance p2, Lg9/c;

    invoke-virtual {p1}, Le9/b;->q()I

    move-result v0

    invoke-virtual {p1}, Le9/b;->r()I

    move-result v1

    invoke-virtual {p1}, Le9/b;->m()Lorg/bouncycastle/pqc/math/linearalgebra/a;

    move-result-object v2

    invoke-virtual {p1}, Le9/b;->j()Lw8/a;

    move-result-object p1

    invoke-virtual {p1}, Lw8/a;->j()Lorg/bouncycastle/asn1/u;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/util/e;->c(Lorg/bouncycastle/asn1/u;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, v1, v2, p1}, Lg9/c;-><init>(IILorg/bouncycastle/pqc/math/linearalgebra/a;Ljava/lang/String;)V

    return-object p2
.end method
