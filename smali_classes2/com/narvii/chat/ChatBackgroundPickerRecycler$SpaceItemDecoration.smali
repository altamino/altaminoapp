.class Lcom/narvii/chat/ChatBackgroundPickerRecycler$SpaceItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "ChatBackgroundPickerRecycler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/ChatBackgroundPickerRecycler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpaceItemDecoration"
.end annotation


# instance fields
.field mSpace:I

.field final synthetic this$0:Lcom/narvii/chat/ChatBackgroundPickerRecycler;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/ChatBackgroundPickerRecycler;I)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler$SpaceItemDecoration;->this$0:Lcom/narvii/chat/ChatBackgroundPickerRecycler;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 215
    iput p2, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler$SpaceItemDecoration;->mSpace:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 0

    .line 220
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 222
    iget p4, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler$SpaceItemDecoration;->mSpace:I

    iput p4, p1, Landroid/graphics/Rect;->right:I

    .line 224
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    iget-object p3, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler$SpaceItemDecoration;->this$0:Lcom/narvii/chat/ChatBackgroundPickerRecycler;

    invoke-static {p3}, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->access$300(Lcom/narvii/chat/ChatBackgroundPickerRecycler;)Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;

    move-result-object p3

    invoke-virtual {p3}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;->getItemCount()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    if-ne p2, p3, :cond_1

    .line 225
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 226
    iput p3, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 228
    :cond_0
    iput p3, p1, Landroid/graphics/Rect;->right:I

    :cond_1
    :goto_0
    return-void
.end method
