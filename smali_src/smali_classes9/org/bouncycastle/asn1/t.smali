.class public final Lorg/bouncycastle/asn1/t;
.super Lorg/bouncycastle/asn1/z;
.source "SourceFile"


# static fields
.field static final TYPE:Lorg/bouncycastle/asn1/m0;


# instance fields
.field private final baseGraphicString:Lorg/bouncycastle/asn1/m;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/t$a;

    const-class v1, Lorg/bouncycastle/asn1/t;

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/t$a;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lorg/bouncycastle/asn1/t;->TYPE:Lorg/bouncycastle/asn1/m0;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/m;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/z;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/asn1/t;->baseGraphicString:Lorg/bouncycastle/asn1/m;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "\'baseGraphicString\' cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static w([B)Lorg/bouncycastle/asn1/t;
    .locals 1

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/t;

    invoke-static {p0}, Lorg/bouncycastle/asn1/m;->w([B)Lorg/bouncycastle/asn1/m;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/t;-><init>(Lorg/bouncycastle/asn1/m;)V

    return-object v0
.end method


# virtual methods
.method b(Lorg/bouncycastle/asn1/z;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/bouncycastle/asn1/t;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lorg/bouncycastle/asn1/t;

    iget-object v0, p0, Lorg/bouncycastle/asn1/t;->baseGraphicString:Lorg/bouncycastle/asn1/m;

    iget-object p1, p1, Lorg/bouncycastle/asn1/t;->baseGraphicString:Lorg/bouncycastle/asn1/m;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/m;->b(Lorg/bouncycastle/asn1/z;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/t;->baseGraphicString:Lorg/bouncycastle/asn1/m;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/m;->hashCode()I

    move-result v0

    not-int v0, v0

    return v0
.end method

.method j(Lorg/bouncycastle/asn1/x;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x7

    invoke-virtual {p1, p2, v0}, Lorg/bouncycastle/asn1/x;->s(ZI)V

    iget-object p2, p0, Lorg/bouncycastle/asn1/t;->baseGraphicString:Lorg/bouncycastle/asn1/m;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lorg/bouncycastle/asn1/m;->j(Lorg/bouncycastle/asn1/x;Z)V

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
    iget-object v0, p0, Lorg/bouncycastle/asn1/t;->baseGraphicString:Lorg/bouncycastle/asn1/m;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/m;->r(Z)I

    move-result p1

    return p1
.end method

.method u()Lorg/bouncycastle/asn1/z;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/asn1/t;->baseGraphicString:Lorg/bouncycastle/asn1/m;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/z;->u()Lorg/bouncycastle/asn1/z;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/m;

    iget-object v1, p0, Lorg/bouncycastle/asn1/t;->baseGraphicString:Lorg/bouncycastle/asn1/m;

    if-ne v0, v1, :cond_0

    move-object v1, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/t;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/t;-><init>(Lorg/bouncycastle/asn1/m;)V

    :goto_0
    return-object v1
.end method

.method v()Lorg/bouncycastle/asn1/z;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/asn1/t;->baseGraphicString:Lorg/bouncycastle/asn1/m;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/z;->v()Lorg/bouncycastle/asn1/z;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/m;

    iget-object v1, p0, Lorg/bouncycastle/asn1/t;->baseGraphicString:Lorg/bouncycastle/asn1/m;

    if-ne v0, v1, :cond_0

    move-object v1, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/t;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/t;-><init>(Lorg/bouncycastle/asn1/m;)V

    :goto_0
    return-object v1
.end method
