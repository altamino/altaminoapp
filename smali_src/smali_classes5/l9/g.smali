.class final Ll9/g;
.super Ll9/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll9/g$b;
    }
.end annotation


# static fields
.field private static final PADDING:I = 0x0

.field private static final TYPE:I = 0x2


# instance fields
.field private final padding:I

.field private final treeHeight:I

.field private final treeIndex:I


# direct methods
.method private constructor <init>(Ll9/g$b;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Ll9/o;-><init>(Ll9/o$a;)V

    const/4 v0, 0x0

    iput v0, p0, Ll9/g;->padding:I

    invoke-static {p1}, Ll9/g$b;->i(Ll9/g$b;)I

    move-result v0

    iput v0, p0, Ll9/g;->treeHeight:I

    invoke-static {p1}, Ll9/g$b;->j(Ll9/g$b;)I

    move-result p1

    iput p1, p0, Ll9/g;->treeIndex:I

    return-void
.end method

.method synthetic constructor <init>(Ll9/g$b;Ll9/g$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ll9/g;-><init>(Ll9/g$b;)V

    return-void
.end method


# virtual methods
.method protected d()[B
    .locals 3

    .line 1
    invoke-super {p0}, Ll9/o;->d()[B

    move-result-object v0

    iget v1, p0, Ll9/g;->padding:I

    const/16 v2, 0x10

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/util/f;->c(I[BI)V

    iget v1, p0, Ll9/g;->treeHeight:I

    const/16 v2, 0x14

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/util/f;->c(I[BI)V

    iget v1, p0, Ll9/g;->treeIndex:I

    const/16 v2, 0x18

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/util/f;->c(I[BI)V

    return-object v0
.end method

.method protected e()I
    .locals 1

    .line 1
    iget v0, p0, Ll9/g;->treeHeight:I

    return v0
.end method

.method protected f()I
    .locals 1

    .line 1
    iget v0, p0, Ll9/g;->treeIndex:I

    return v0
.end method
