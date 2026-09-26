.class public final Lh9/a;
.super Lorg/bouncycastle/crypto/params/a;
.source "SourceFile"


# instance fields
.field private privateKey:[B

.field private securityCategory:I


# direct methods
.method public constructor <init>(I[B)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/params/a;-><init>(Z)V

    array-length v0, p2

    invoke-static {p1}, Lh9/c;->b(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iput p1, p0, Lh9/a;->securityCategory:I

    invoke-static {p2}, Lorg/bouncycastle/util/a;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Lh9/a;->privateKey:[B

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid key size for security category"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lh9/a;->privateKey:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->e([B)[B

    move-result-object v0

    return-object v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lh9/a;->securityCategory:I

    return v0
.end method
