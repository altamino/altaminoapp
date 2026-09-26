.class public Lcom/narvii/widget/SpaceItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# instance fields
.field landscape:Z

.field private padding:I

.field private space:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p1}, Lcom/narvii/widget/SpaceItemDecoration;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    iput p1, p0, Lcom/narvii/widget/SpaceItemDecoration;->space:I

    iput p2, p0, Lcom/narvii/widget/SpaceItemDecoration;->padding:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 4
    .line 5
    iget-boolean p4, p0, Lcom/narvii/widget/SpaceItemDecoration;->landscape:Z

    .line 6
    .line 7
    if-eqz p4, :cond_0

    .line 8
    .line 9
    iget p4, p0, Lcom/narvii/widget/SpaceItemDecoration;->space:I

    .line 10
    .line 11
    iput p4, p1, Landroid/graphics/Rect;->bottom:I

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 16
    move-result p4

    .line 17
    .line 18
    if-eqz p4, :cond_1

    .line 19
    .line 20
    iget p4, p0, Lcom/narvii/widget/SpaceItemDecoration;->space:I

    .line 21
    .line 22
    iput p4, p1, Landroid/graphics/Rect;->left:I

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_1
    iget p4, p0, Lcom/narvii/widget/SpaceItemDecoration;->space:I

    .line 26
    .line 27
    iput p4, p1, Landroid/graphics/Rect;->right:I

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 31
    move-result p2

    .line 32
    .line 33
    if-nez p2, :cond_4

    .line 34
    .line 35
    iget-boolean p2, p0, Lcom/narvii/widget/SpaceItemDecoration;->landscape:Z

    .line 36
    .line 37
    if-eqz p2, :cond_2

    .line 38
    .line 39
    iget p2, p0, Lcom/narvii/widget/SpaceItemDecoration;->padding:I

    .line 40
    .line 41
    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 42
    goto :goto_1

    .line 43
    .line 44
    .line 45
    :cond_2
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 46
    move-result p2

    .line 47
    .line 48
    if-eqz p2, :cond_3

    .line 49
    .line 50
    iget p2, p0, Lcom/narvii/widget/SpaceItemDecoration;->padding:I

    .line 51
    .line 52
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 53
    goto :goto_1

    .line 54
    .line 55
    :cond_3
    iget p2, p0, Lcom/narvii/widget/SpaceItemDecoration;->padding:I

    .line 56
    .line 57
    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 58
    :cond_4
    :goto_1
    return-void
.end method

.method public setLandscape(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/widget/SpaceItemDecoration;->landscape:Z

    return-void
.end method
