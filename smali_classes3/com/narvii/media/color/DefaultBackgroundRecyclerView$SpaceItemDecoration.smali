.class Lcom/narvii/media/color/DefaultBackgroundRecyclerView$SpaceItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "DefaultBackgroundRecyclerView.java"


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

    .line 215
    iput-object p1, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$SpaceItemDecoration;->this$0:Lcom/narvii/media/color/DefaultBackgroundRecyclerView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 216
    iput p2, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$SpaceItemDecoration;->space:I

    .line 217
    iput p3, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$SpaceItemDecoration;->padding:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 0

    .line 222
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 224
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result p4

    if-eqz p4, :cond_0

    .line 225
    iget p4, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$SpaceItemDecoration;->space:I

    iput p4, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 227
    :cond_0
    iget p4, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$SpaceItemDecoration;->space:I

    iput p4, p1, Landroid/graphics/Rect;->right:I

    .line 229
    :goto_0
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    if-nez p2, :cond_2

    .line 230
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 231
    iget p2, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$SpaceItemDecoration;->padding:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 233
    :cond_1
    iget p2, p0, Lcom/narvii/media/color/DefaultBackgroundRecyclerView$SpaceItemDecoration;->padding:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    :cond_2
    :goto_1
    return-void
.end method
