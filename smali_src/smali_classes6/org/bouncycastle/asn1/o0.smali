.class public abstract Lorg/bouncycastle/asn1/o0;
.super Lorg/bouncycastle/asn1/z;
.source "SourceFile"


# static fields
.field static final TYPE:Lorg/bouncycastle/asn1/m0;


# instance fields
.field final contents:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/o0$a;

    const-class v1, Lorg/bouncycastle/asn1/o0;

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/o0$a;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lorg/bouncycastle/asn1/o0;->TYPE:Lorg/bouncycastle/asn1/m0;

    return-void
.end method

.method constructor <init>([BZ)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/z;-><init>()V

    if-eqz p2, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/util/a;->e([B)[B

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lorg/bouncycastle/asn1/o0;->contents:[B

    return-void
.end method

.method static w([B)Lorg/bouncycastle/asn1/o0;
    .locals 2

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/b2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/asn1/b2;-><init>([BZ)V

    return-object v0
.end method


# virtual methods
.method final b(Lorg/bouncycastle/asn1/z;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/bouncycastle/asn1/o0;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lorg/bouncycastle/asn1/o0;

    iget-object v0, p0, Lorg/bouncycastle/asn1/o0;->contents:[B

    iget-object p1, p1, Lorg/bouncycastle/asn1/o0;->contents:[B

    invoke-static {v0, p1}, Lorg/bouncycastle/util/a;->a([B[B)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/o0;->contents:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->m([B)I

    move-result v0

    return v0
.end method

.method final j(Lorg/bouncycastle/asn1/x;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/16 v0, 0x15

    iget-object v1, p0, Lorg/bouncycastle/asn1/o0;->contents:[B

    invoke-virtual {p1, p2, v0, v1}, Lorg/bouncycastle/asn1/x;->o(ZI[B)V

    return-void
.end method

.method final m()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method final r(Z)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/asn1/o0;->contents:[B

    array-length v0, v0

    invoke-static {p1, v0}, Lorg/bouncycastle/asn1/x;->g(ZI)I

    move-result p1

    return p1
.end method
