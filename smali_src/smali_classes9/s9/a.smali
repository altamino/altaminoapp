.class public Ls9/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lw8/a;Lorg/bouncycastle/asn1/f;)[B
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Lw8/b;

    invoke-direct {v0, p0, p1}, Lw8/b;-><init>(Lw8/a;Lorg/bouncycastle/asn1/f;)V

    invoke-static {v0}, Ls9/a;->b(Lw8/b;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Lw8/b;)[B
    .locals 1

    .line 1
    :try_start_0
    const-string v0, "DER"

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/s;->a(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method
