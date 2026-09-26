.class Lorg/bouncycastle/pqc/crypto/util/c$h;
.super Lorg/bouncycastle/pqc/crypto/util/c$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/util/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "h"
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
    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/util/c$h;-><init>()V

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
    invoke-virtual {p1}, Lw8/b;->j()Lw8/a;

    move-result-object p2

    invoke-virtual {p2}, Lw8/a;->p()Lorg/bouncycastle/asn1/f;

    move-result-object p2

    invoke-static {p2}, Le9/i;->m(Ljava/lang/Object;)Le9/i;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Le9/i;->p()Lw8/a;

    move-result-object v0

    invoke-virtual {v0}, Lw8/a;->j()Lorg/bouncycastle/asn1/u;

    move-result-object v0

    invoke-virtual {p1}, Lw8/b;->q()Lorg/bouncycastle/asn1/z;

    move-result-object p1

    invoke-static {p1}, Le9/n;->b(Ljava/lang/Object;)Le9/n;

    move-result-object p1

    new-instance v1, Ll9/z$b;

    new-instance v2, Ll9/x;

    invoke-virtual {p2}, Le9/i;->j()I

    move-result p2

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/util/e;->b(Lorg/bouncycastle/asn1/u;)Lx8/c;

    move-result-object v0

    invoke-direct {v2, p2, v0}, Ll9/x;-><init>(ILx8/c;)V

    invoke-direct {v1, v2}, Ll9/z$b;-><init>(Ll9/x;)V

    invoke-virtual {p1}, Le9/n;->j()[B

    move-result-object p2

    invoke-virtual {v1, p2}, Ll9/z$b;->g([B)Ll9/z$b;

    move-result-object p2

    invoke-virtual {p1}, Le9/n;->m()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ll9/z$b;->h([B)Ll9/z$b;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Ll9/z$b;->e()Ll9/z;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lw8/b;->q()Lorg/bouncycastle/asn1/z;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/v;->x(Ljava/lang/Object;)Lorg/bouncycastle/asn1/v;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/v;->z()[B

    move-result-object p1

    new-instance p2, Ll9/z$b;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/bouncycastle/util/f;->a([BI)I

    move-result v0

    invoke-static {v0}, Ll9/x;->k(I)Ll9/x;

    move-result-object v0

    invoke-direct {p2, v0}, Ll9/z$b;-><init>(Ll9/x;)V

    invoke-virtual {p2, p1}, Ll9/z$b;->f([B)Ll9/z$b;

    move-result-object p1

    goto :goto_0
.end method
