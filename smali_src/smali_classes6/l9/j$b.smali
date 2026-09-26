.class public Ll9/j$b;
.super Ll9/o$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll9/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ll9/o$a<",
        "Ll9/j$b;",
        ">;"
    }
.end annotation


# instance fields
.field private chainAddress:I

.field private hashAddress:I

.field private otsAddress:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ll9/o$a;-><init>(I)V

    iput v0, p0, Ll9/j$b;->otsAddress:I

    iput v0, p0, Ll9/j$b;->chainAddress:I

    iput v0, p0, Ll9/j$b;->hashAddress:I

    return-void
.end method

.method static synthetic i(Ll9/j$b;)I
    .locals 0

    .line 1
    iget p0, p0, Ll9/j$b;->otsAddress:I

    return p0
.end method

.method static synthetic j(Ll9/j$b;)I
    .locals 0

    .line 1
    iget p0, p0, Ll9/j$b;->chainAddress:I

    return p0
.end method

.method static synthetic k(Ll9/j$b;)I
    .locals 0

    .line 1
    iget p0, p0, Ll9/j$b;->hashAddress:I

    return p0
.end method


# virtual methods
.method protected bridge synthetic e()Ll9/o$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ll9/j$b;->m()Ll9/j$b;

    move-result-object v0

    return-object v0
.end method

.method protected l()Ll9/o;
    .locals 2

    .line 1
    new-instance v0, Ll9/j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ll9/j;-><init>(Ll9/j$b;Ll9/j$a;)V

    return-object v0
.end method

.method protected m()Ll9/j$b;
    .locals 0

    .line 1
    return-object p0
.end method

.method protected n(I)Ll9/j$b;
    .locals 0

    .line 1
    iput p1, p0, Ll9/j$b;->chainAddress:I

    return-object p0
.end method

.method protected o(I)Ll9/j$b;
    .locals 0

    .line 1
    iput p1, p0, Ll9/j$b;->hashAddress:I

    return-object p0
.end method

.method protected p(I)Ll9/j$b;
    .locals 0

    .line 1
    iput p1, p0, Ll9/j$b;->otsAddress:I

    return-object p0
.end method
