.class public abstract Lorg/bouncycastle/asn1/a0;
.super Lorg/bouncycastle/asn1/z;
.source "SourceFile"


# static fields
.field static final TYPE:Lorg/bouncycastle/asn1/m0;


# instance fields
.field final contents:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/a0$a;

    const-class v1, Lorg/bouncycastle/asn1/a0;

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/a0$a;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lorg/bouncycastle/asn1/a0;->TYPE:Lorg/bouncycastle/asn1/m0;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/asn1/z;-><init>()V

    if-eqz p2, :cond_1

    invoke-static {p1}, Lorg/bouncycastle/asn1/a0;->y(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "string contains illegal characters"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-static {p1}, Lorg/bouncycastle/util/h;->e(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/a0;->contents:[B

    return-void
.end method

.method constructor <init>([BZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/bouncycastle/asn1/z;-><init>()V

    if-eqz p2, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/util/a;->e([B)[B

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lorg/bouncycastle/asn1/a0;->contents:[B

    return-void
.end method

.method static w([B)Lorg/bouncycastle/asn1/a0;
    .locals 2

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/u1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/asn1/u1;-><init>([BZ)V

    return-object v0
.end method

.method public static y(Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_5

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x7f

    const/4 v4, 0x0

    if-le v2, v3, :cond_0

    return v4

    :cond_0
    const/16 v3, 0x61

    if-gt v3, v2, :cond_1

    const/16 v3, 0x7a

    if-gt v2, v3, :cond_1

    goto :goto_1

    :cond_1
    const/16 v3, 0x41

    if-gt v3, v2, :cond_2

    const/16 v3, 0x5a

    if-gt v2, v3, :cond_2

    goto :goto_1

    :cond_2
    const/16 v3, 0x30

    if-gt v3, v2, :cond_3

    const/16 v3, 0x39

    if-gt v2, v3, :cond_3

    goto :goto_1

    :cond_3
    const/16 v3, 0x20

    if-eq v2, v3, :cond_4

    const/16 v3, 0x3a

    if-eq v2, v3, :cond_4

    const/16 v3, 0x3d

    if-eq v2, v3, :cond_4

    const/16 v3, 0x3f

    if-eq v2, v3, :cond_4

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    return v4

    :cond_4
    :goto_1
    :pswitch_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    return v1

    :pswitch_data_0
    .packed-switch 0x27
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method final b(Lorg/bouncycastle/asn1/z;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/bouncycastle/asn1/a0;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lorg/bouncycastle/asn1/a0;

    iget-object v0, p0, Lorg/bouncycastle/asn1/a0;->contents:[B

    iget-object p1, p1, Lorg/bouncycastle/asn1/a0;->contents:[B

    invoke-static {v0, p1}, Lorg/bouncycastle/util/a;->a([B[B)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/a0;->contents:[B

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
    const/16 v0, 0x13

    iget-object v1, p0, Lorg/bouncycastle/asn1/a0;->contents:[B

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
    iget-object v0, p0, Lorg/bouncycastle/asn1/a0;->contents:[B

    array-length v0, v0

    invoke-static {p1, v0}, Lorg/bouncycastle/asn1/x;->g(ZI)I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/a0;->x()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final x()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/asn1/a0;->contents:[B

    invoke-static {v0}, Lorg/bouncycastle/util/h;->b([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
