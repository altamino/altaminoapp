.class public Ll9/z$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll9/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final params:Ll9/x;

.field private publicKey:[B

.field private publicSeed:[B

.field private root:[B


# direct methods
.method public constructor <init>(Ll9/x;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ll9/z$b;->root:[B

    iput-object v0, p0, Ll9/z$b;->publicSeed:[B

    iput-object v0, p0, Ll9/z$b;->publicKey:[B

    iput-object p1, p0, Ll9/z$b;->params:Ll9/x;

    return-void
.end method

.method static synthetic a(Ll9/z$b;)Ll9/x;
    .locals 0

    .line 1
    iget-object p0, p0, Ll9/z$b;->params:Ll9/x;

    return-object p0
.end method

.method static synthetic b(Ll9/z$b;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Ll9/z$b;->publicKey:[B

    return-object p0
.end method

.method static synthetic c(Ll9/z$b;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Ll9/z$b;->root:[B

    return-object p0
.end method

.method static synthetic d(Ll9/z$b;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Ll9/z$b;->publicSeed:[B

    return-object p0
.end method


# virtual methods
.method public e()Ll9/z;
    .locals 2

    .line 1
    new-instance v0, Ll9/z;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ll9/z;-><init>(Ll9/z$b;Ll9/z$a;)V

    return-object v0
.end method

.method public f([B)Ll9/z$b;
    .locals 0

    .line 1
    invoke-static {p1}, Ll9/a0;->c([B)[B

    move-result-object p1

    iput-object p1, p0, Ll9/z$b;->publicKey:[B

    return-object p0
.end method

.method public g([B)Ll9/z$b;
    .locals 0

    .line 1
    invoke-static {p1}, Ll9/a0;->c([B)[B

    move-result-object p1

    iput-object p1, p0, Ll9/z$b;->publicSeed:[B

    return-object p0
.end method

.method public h([B)Ll9/z$b;
    .locals 0

    .line 1
    invoke-static {p1}, Ll9/a0;->c([B)[B

    move-result-object p1

    iput-object p1, p0, Ll9/z$b;->root:[B

    return-object p0
.end method
