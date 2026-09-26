.class public final Ll9/x;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final paramsLookupTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ll9/x;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final height:I

.field private final k:I

.field private final oid:Ll9/w;

.field private final treeDigest:Ljava/lang/String;

.field private final treeDigestOID:Lorg/bouncycastle/asn1/u;

.field private final treeDigestSize:I

.field private final winternitzParameter:I

.field private final wotsPlusParams:Ll9/m;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1}, Lorg/bouncycastle/util/d;->c(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ll9/x;

    sget-object v3, Lt8/a;->id_sha256:Lorg/bouncycastle/asn1/u;

    const/16 v4, 0xa

    invoke-direct {v2, v4, v3}, Ll9/x;-><init>(ILorg/bouncycastle/asn1/u;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    invoke-static {v1}, Lorg/bouncycastle/util/d;->c(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ll9/x;

    const/16 v5, 0x10

    invoke-direct {v2, v5, v3}, Ll9/x;-><init>(ILorg/bouncycastle/asn1/u;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    invoke-static {v1}, Lorg/bouncycastle/util/d;->c(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ll9/x;

    const/16 v6, 0x14

    invoke-direct {v2, v6, v3}, Ll9/x;-><init>(ILorg/bouncycastle/asn1/u;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static {v1}, Lorg/bouncycastle/util/d;->c(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ll9/x;

    sget-object v3, Lt8/a;->id_sha512:Lorg/bouncycastle/asn1/u;

    invoke-direct {v2, v4, v3}, Ll9/x;-><init>(ILorg/bouncycastle/asn1/u;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x5

    invoke-static {v1}, Lorg/bouncycastle/util/d;->c(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ll9/x;

    invoke-direct {v2, v5, v3}, Ll9/x;-><init>(ILorg/bouncycastle/asn1/u;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x6

    invoke-static {v1}, Lorg/bouncycastle/util/d;->c(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ll9/x;

    invoke-direct {v2, v6, v3}, Ll9/x;-><init>(ILorg/bouncycastle/asn1/u;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x7

    invoke-static {v1}, Lorg/bouncycastle/util/d;->c(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ll9/x;

    sget-object v3, Lt8/a;->id_shake128:Lorg/bouncycastle/asn1/u;

    invoke-direct {v2, v4, v3}, Ll9/x;-><init>(ILorg/bouncycastle/asn1/u;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x8

    invoke-static {v1}, Lorg/bouncycastle/util/d;->c(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ll9/x;

    invoke-direct {v2, v5, v3}, Ll9/x;-><init>(ILorg/bouncycastle/asn1/u;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x9

    invoke-static {v1}, Lorg/bouncycastle/util/d;->c(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ll9/x;

    invoke-direct {v2, v6, v3}, Ll9/x;-><init>(ILorg/bouncycastle/asn1/u;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4}, Lorg/bouncycastle/util/d;->c(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ll9/x;

    sget-object v3, Lt8/a;->id_shake256:Lorg/bouncycastle/asn1/u;

    invoke-direct {v2, v4, v3}, Ll9/x;-><init>(ILorg/bouncycastle/asn1/u;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xb

    invoke-static {v1}, Lorg/bouncycastle/util/d;->c(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ll9/x;

    invoke-direct {v2, v5, v3}, Ll9/x;-><init>(ILorg/bouncycastle/asn1/u;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xc

    invoke-static {v1}, Lorg/bouncycastle/util/d;->c(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ll9/x;

    invoke-direct {v2, v6, v3}, Ll9/x;-><init>(ILorg/bouncycastle/asn1/u;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Ll9/x;->paramsLookupTable:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(ILorg/bouncycastle/asn1/u;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    if-lt p1, v0, :cond_1

    if-eqz p2, :cond_0

    iput p1, p0, Ll9/x;->height:I

    invoke-direct {p0}, Ll9/x;->a()I

    move-result v0

    iput v0, p0, Ll9/x;->k:I

    invoke-static {p2}, Ll9/f;->b(Lorg/bouncycastle/asn1/u;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ll9/x;->treeDigest:Ljava/lang/String;

    iput-object p2, p0, Ll9/x;->treeDigestOID:Lorg/bouncycastle/asn1/u;

    new-instance v1, Ll9/m;

    invoke-direct {v1, p2}, Ll9/m;-><init>(Lorg/bouncycastle/asn1/u;)V

    iput-object v1, p0, Ll9/x;->wotsPlusParams:Ll9/m;

    invoke-virtual {v1}, Ll9/m;->c()I

    move-result p2

    iput p2, p0, Ll9/x;->treeDigestSize:I

    invoke-virtual {v1}, Ll9/m;->d()I

    move-result v2

    iput v2, p0, Ll9/x;->winternitzParameter:I

    invoke-virtual {v1}, Ll9/m;->a()I

    move-result v1

    invoke-static {v0, p2, v2, v1, p1}, Ll9/e;->c(Ljava/lang/String;IIII)Ll9/e;

    move-result-object p1

    iput-object p1, p0, Ll9/x;->oid:Ll9/w;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "digest == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "height must be >= 2"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(ILx8/c;)V
    .locals 0

    .line 2
    invoke-interface {p2}, Lx8/c;->d()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ll9/f;->c(Ljava/lang/String;)Lorg/bouncycastle/asn1/u;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ll9/x;-><init>(ILorg/bouncycastle/asn1/u;)V

    return-void
.end method

.method private a()I
    .locals 3

    .line 1
    const/4 v0, 0x2

    move v1, v0

    :goto_0
    iget v2, p0, Ll9/x;->height:I

    if-gt v1, v2, :cond_1

    sub-int/2addr v2, v1

    rem-int/2addr v2, v0

    if-nez v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "should never happen..."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static k(I)Ll9/x;
    .locals 1

    .line 1
    sget-object v0, Ll9/x;->paramsLookupTable:Ljava/util/Map;

    invoke-static {p0}, Lorg/bouncycastle/util/d;->c(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ll9/x;

    return-object p0
.end method


# virtual methods
.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Ll9/x;->height:I

    return v0
.end method

.method c()I
    .locals 1

    .line 1
    iget v0, p0, Ll9/x;->k:I

    return v0
.end method

.method d()I
    .locals 1

    .line 1
    iget-object v0, p0, Ll9/x;->wotsPlusParams:Ll9/m;

    invoke-virtual {v0}, Ll9/m;->a()I

    move-result v0

    return v0
.end method

.method e()Ll9/w;
    .locals 1

    .line 1
    iget-object v0, p0, Ll9/x;->oid:Ll9/w;

    return-object v0
.end method

.method f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ll9/x;->treeDigest:Ljava/lang/String;

    return-object v0
.end method

.method public g()Lorg/bouncycastle/asn1/u;
    .locals 1

    .line 1
    iget-object v0, p0, Ll9/x;->treeDigestOID:Lorg/bouncycastle/asn1/u;

    return-object v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Ll9/x;->treeDigestSize:I

    return v0
.end method

.method i()Ll9/k;
    .locals 2

    .line 1
    new-instance v0, Ll9/k;

    iget-object v1, p0, Ll9/x;->wotsPlusParams:Ll9/m;

    invoke-direct {v0, v1}, Ll9/k;-><init>(Ll9/m;)V

    return-object v0
.end method

.method j()I
    .locals 1

    .line 1
    iget v0, p0, Ll9/x;->winternitzParameter:I

    return v0
.end method
