.class final Ll9/j;
.super Ll9/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll9/j$b;
    }
.end annotation


# static fields
.field private static final TYPE:I


# instance fields
.field private final chainAddress:I

.field private final hashAddress:I

.field private final otsAddress:I


# direct methods
.method private constructor <init>(Ll9/j$b;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Ll9/o;-><init>(Ll9/o$a;)V

    invoke-static {p1}, Ll9/j$b;->i(Ll9/j$b;)I

    move-result v0

    iput v0, p0, Ll9/j;->otsAddress:I

    invoke-static {p1}, Ll9/j$b;->j(Ll9/j$b;)I

    move-result v0

    iput v0, p0, Ll9/j;->chainAddress:I

    invoke-static {p1}, Ll9/j$b;->k(Ll9/j$b;)I

    move-result p1

    iput p1, p0, Ll9/j;->hashAddress:I

    return-void
.end method

.method synthetic constructor <init>(Ll9/j$b;Ll9/j$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ll9/j;-><init>(Ll9/j$b;)V

    return-void
.end method


# virtual methods
.method protected d()[B
    .locals 3

    .line 1
    invoke-super {p0}, Ll9/o;->d()[B

    move-result-object v0

    iget v1, p0, Ll9/j;->otsAddress:I

    const/16 v2, 0x10

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/util/f;->c(I[BI)V

    iget v1, p0, Ll9/j;->chainAddress:I

    const/16 v2, 0x14

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/util/f;->c(I[BI)V

    iget v1, p0, Ll9/j;->hashAddress:I

    const/16 v2, 0x18

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/util/f;->c(I[BI)V

    return-object v0
.end method

.method protected e()I
    .locals 1

    .line 1
    iget v0, p0, Ll9/j;->chainAddress:I

    return v0
.end method

.method protected f()I
    .locals 1

    .line 1
    iget v0, p0, Ll9/j;->hashAddress:I

    return v0
.end method

.method protected g()I
    .locals 1

    .line 1
    iget v0, p0, Ll9/j;->otsAddress:I

    return v0
.end method
