.class Lcom/narvii/media/color/DefaultBackgroundRecyclerView$SpaceItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/media/color/DefaultBackgroundRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpaceItemDecoration"
.end annotation


# instance fields
.field private padding:I

.field private space:I

.field final synthetic this$0:Lcom/narvii/media/color/DefaultBackgroundRecyclerView;


# direct methods
.method public constructor <init>(Lcom/narvii/media/color/DefaultBackgroundRecyclerView;II)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$SpaceItemDecoration;->this$0:Lcom/narvii/media/color/DefaultBackgroundRecyclerView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 6
    .line 7
    iput p2, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$SpaceItemDecoration;->space:I

    .line 8
    .line 9
    iput p3, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$SpaceItemDecoration;->padding:I

    .line 10
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
    .line 6
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 7
    move-result p4

    .line 8
    .line 9
    if-eqz p4, :cond_0

    .line 10
    .line 11
    iget p4, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$SpaceItemDecoration;->space:I

    .line 12
    .line 13
    iput p4, p1, Landroid/graphics/Rect;->left:I

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    iget p4, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$SpaceItemDecoration;->space:I

    .line 17
    .line 18
    iput p4, p1, Landroid/graphics/Rect;->right:I

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 22
    move-result p2

    .line 23
    .line 24
    if-nez p2, :cond_2

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 28
    move-result p2

    .line 29
    .line 30
    if-eqz p2, :cond_1

    .line 31
    .line 32
    iget p2, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$SpaceItemDecoration;->padding:I

    .line 33
    .line 34
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 35
    goto :goto_1

    .line 36
    .line 37
    :cond_1
    iget p2, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$SpaceItemDecoration;->padding:I

    .line 38
    .line 39
    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 40
    :cond_2
    :goto_1
    return-void
.end method
