.class Lcom/narvii/chat/ChatBackgroundPickerRecycler$SpaceItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler$SpaceItemDecoration;->this$0:Lcom/narvii/chat/ChatBackgroundPickerRecycler;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 6
    .line 7
    iput p2, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler$SpaceItemDecoration;->mSpace:I

    .line 8
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
    iget p4, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler$SpaceItemDecoration;->mSpace:I

    .line 6
    .line 7
    iput p4, p1, Landroid/graphics/Rect;->right:I

    .line 8
    .line 9
    .line 10
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 11
    move-result p2

    .line 12
    .line 13
    iget-object p3, p0, Lcom/narvii/chat/ChatBackgroundPickerRecycler$SpaceItemDecoration;->this$0:Lcom/narvii/chat/ChatBackgroundPickerRecycler;

    .line 14
    .line 15
    .line 16
    invoke-static {p3}, Lcom/narvii/chat/ChatBackgroundPickerRecycler;->b(Lcom/narvii/chat/ChatBackgroundPickerRecycler;)Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;

    .line 17
    move-result-object p3

    .line 18
    .line 19
    .line 20
    invoke-virtual {p3}, Lcom/narvii/chat/ChatBackgroundPickerRecycler$BackgroundAdapter;->getItemCount()I

    .line 21
    move-result p3

    .line 22
    .line 23
    add-int/lit8 p3, p3, -0x1

    .line 24
    .line 25
    if-ne p2, p3, :cond_1

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 29
    move-result p2

    .line 30
    const/4 p3, 0x0

    .line 31
    .line 32
    if-eqz p2, :cond_0

    .line 33
    .line 34
    iput p3, p1, Landroid/graphics/Rect;->left:I

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_0
    iput p3, p1, Landroid/graphics/Rect;->right:I

    .line 38
    :cond_1
    :goto_0
    return-void
.end method
