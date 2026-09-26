.class Lorg/bouncycastle/asn1/u$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/asn1/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final contents:[B

.field private final key:I


# direct methods
.method constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/util/a;->m([B)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/asn1/u$b;->key:I

    iput-object p1, p0, Lorg/bouncycastle/asn1/u$b;->contents:[B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/bouncycastle/asn1/u$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/u$b;->contents:[B

    check-cast p1, Lorg/bouncycastle/asn1/u$b;

    iget-object p1, p1, Lorg/bouncycastle/asn1/u$b;->contents:[B

    invoke-static {v0, p1}, Lorg/bouncycastle/util/a;->a([B[B)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/asn1/u$b;->key:I

    return v0
.end method
