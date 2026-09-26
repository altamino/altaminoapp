.class final Ll9/i;
.super Ll9/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll9/i$b;
    }
.end annotation


# static fields
.field private static final TYPE:I = 0x1


# instance fields
.field private final lTreeAddress:I

.field private final treeHeight:I

.field private final treeIndex:I


# direct methods
.method private constructor <init>(Ll9/i$b;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Ll9/o;-><init>(Ll9/o$a;)V

    invoke-static {p1}, Ll9/i$b;->i(Ll9/i$b;)I

    move-result v0

    iput v0, p0, Ll9/i;->lTreeAddress:I

    invoke-static {p1}, Ll9/i$b;->j(Ll9/i$b;)I

    move-result v0

    iput v0, p0, Ll9/i;->treeHeight:I

    invoke-static {p1}, Ll9/i$b;->k(Ll9/i$b;)I

    move-result p1

    iput p1, p0, Ll9/i;->treeIndex:I

    return-void
.end method

.method synthetic constructor <init>(Ll9/i$b;Ll9/i$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ll9/i;-><init>(Ll9/i$b;)V

    return-void
.end method


# virtual methods
.method protected d()[B
    .locals 3

    .line 1
    invoke-super {p0}, Ll9/o;->d()[B

    move-result-object v0

    iget v1, p0, Ll9/i;->lTreeAddress:I

    const/16 v2, 0x10

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/util/f;->c(I[BI)V

    iget v1, p0, Ll9/i;->treeHeight:I

    const/16 v2, 0x14

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/util/f;->c(I[BI)V

    iget v1, p0, Ll9/i;->treeIndex:I

    const/16 v2, 0x18

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/util/f;->c(I[BI)V

    return-object v0
.end method

.method protected e()I
    .locals 1

    .line 1
    iget v0, p0, Ll9/i;->lTreeAddress:I

    return v0
.end method

.method protected f()I
    .locals 1

    .line 1
    iget v0, p0, Ll9/i;->treeHeight:I

    return v0
.end method

.method protected g()I
    .locals 1

    .line 1
    iget v0, p0, Ll9/i;->treeIndex:I

    return v0
.end method
