.class public Lcom/narvii/widget/SpaceItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "SpaceItemDecoration.java"


# instance fields
.field landscape:Z

.field private padding:I

.field private space:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p1}, Lcom/narvii/widget/SpaceItemDecoration;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 22
    iput p1, p0, Lcom/narvii/widget/SpaceItemDecoration;->space:I

    .line 23
    iput p2, p0, Lcom/narvii/widget/SpaceItemDecoration;->padding:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 0

    .line 32
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 34
    iget-boolean p4, p0, Lcom/narvii/widget/SpaceItemDecoration;->landscape:Z

    if-eqz p4, :cond_0

    .line 35
    iget p4, p0, Lcom/narvii/widget/SpaceItemDecoration;->space:I

    iput p4, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 37
    :cond_0
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result p4

    if-eqz p4, :cond_1

    .line 38
    iget p4, p0, Lcom/narvii/widget/SpaceItemDecoration;->space:I

    iput p4, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 40
    :cond_1
    iget p4, p0, Lcom/narvii/widget/SpaceItemDecoration;->space:I

    iput p4, p1, Landroid/graphics/Rect;->right:I

    .line 43
    :goto_0
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    if-nez p2, :cond_4

    .line 44
    iget-boolean p2, p0, Lcom/narvii/widget/SpaceItemDecoration;->landscape:Z

    if-eqz p2, :cond_2

    .line 45
    iget p2, p0, Lcom/narvii/widget/SpaceItemDecoration;->padding:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    goto :goto_1

    .line 47
    :cond_2
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 48
    iget p2, p0, Lcom/narvii/widget/SpaceItemDecoration;->padding:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 50
    :cond_3
    iget p2, p0, Lcom/narvii/widget/SpaceItemDecoration;->padding:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    :cond_4
    :goto_1
    return-void
.end method

.method public setLandscape(Z)V
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/narvii/widget/SpaceItemDecoration;->landscape:Z

    return-void
.end method
