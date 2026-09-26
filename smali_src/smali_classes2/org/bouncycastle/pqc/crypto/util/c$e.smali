.class Lorg/bouncycastle/pqc/crypto/util/c$e;
.super Lorg/bouncycastle/pqc/crypto/util/c$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/util/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
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
    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/util/c$e;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lw8/b;Ljava/lang/Object;)Lorg/bouncycastle/crypto/params/a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance p2, Lh9/b;

    invoke-virtual {p1}, Lw8/b;->j()Lw8/a;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/util/e;->e(Lw8/a;)I

    move-result v0

    invoke-virtual {p1}, Lw8/b;->p()Lorg/bouncycastle/asn1/c;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/c;->B()[B

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lh9/b;-><init>(I[B)V

    return-object p2
.end method
