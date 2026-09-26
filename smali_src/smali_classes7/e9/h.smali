.class public Le9/h;
.super Lorg/bouncycastle/asn1/s;
.source "SourceFile"


# instance fields
.field private final treeDigest:Lw8/a;

.field private final version:Lorg/bouncycastle/asn1/p;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/c0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/asn1/s;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/c0;->z(I)Lorg/bouncycastle/asn1/f;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/p;->x(Ljava/lang/Object;)Lorg/bouncycastle/asn1/p;

    move-result-object v0

    iput-object v0, p0, Le9/h;->version:Lorg/bouncycastle/asn1/p;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/c0;->z(I)Lorg/bouncycastle/asn1/f;

    move-result-object p1

    invoke-static {p1}, Lw8/a;->m(Ljava/lang/Object;)Lw8/a;

    move-result-object p1

    iput-object p1, p0, Le9/h;->treeDigest:Lw8/a;

    return-void
.end method

.method public constructor <init>(Lw8/a;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Lorg/bouncycastle/asn1/s;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/p;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/p;-><init>(J)V

    iput-object v0, p0, Le9/h;->version:Lorg/bouncycastle/asn1/p;

    iput-object p1, p0, Le9/h;->treeDigest:Lw8/a;

    return-void
.end method

.method public static final b(Ljava/lang/Object;)Le9/h;
    .locals 1

    .line 1
    instance-of v0, p0, Le9/h;

    if-eqz v0, :cond_0

    check-cast p0, Le9/h;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Le9/h;

    invoke-static {p0}, Lorg/bouncycastle/asn1/c0;->y(Ljava/lang/Object;)Lorg/bouncycastle/asn1/c0;

    move-result-object p0

    invoke-direct {v0, p0}, Le9/h;-><init>(Lorg/bouncycastle/asn1/c0;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public g()Lorg/bouncycastle/asn1/z;
    .locals 2

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/g;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/g;-><init>()V

    iget-object v1, p0, Le9/h;->version:Lorg/bouncycastle/asn1/p;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/g;->a(Lorg/bouncycastle/asn1/f;)V

    iget-object v1, p0, Le9/h;->treeDigest:Lw8/a;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/g;->a(Lorg/bouncycastle/asn1/f;)V

    new-instance v1, Lorg/bouncycastle/asn1/v1;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/v1;-><init>(Lorg/bouncycastle/asn1/g;)V

    return-object v1
.end method

.method public j()Lw8/a;
    .locals 1

    .line 1
    iget-object v0, p0, Le9/h;->treeDigest:Lw8/a;

    return-object v0
.end method
