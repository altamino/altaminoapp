.class public final Lcom/narvii/chat/ChatGoLivePickerDialog$3;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "ChatGoLivePickerDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/ChatGoLivePickerDialog;-><init>(Lcom/narvii/app/NVContext;ZLjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/ChatGoLivePickerDialog;


# direct methods
.method constructor <init>(Lcom/narvii/chat/ChatGoLivePickerDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 90
    iput-object p1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$3;->this$0:Lcom/narvii/chat/ChatGoLivePickerDialog;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 1

    .line 102
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    if-nez p2, :cond_0

    if-eqz p1, :cond_0

    .line 104
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 105
    iget-object p2, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$3;->this$0:Lcom/narvii/chat/ChatGoLivePickerDialog;

    invoke-static {p2}, Lcom/narvii/chat/ChatGoLivePickerDialog;->access$getSnapHelper$p(Lcom/narvii/chat/ChatGoLivePickerDialog;)Landroid/support/v7/widget/PagerSnapHelper;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/PagerSnapHelper;->findSnapView(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string v0, "snapHelper.findSnapView(llm) ?: return"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    .line 107
    iget-object p2, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$3;->this$0:Lcom/narvii/chat/ChatGoLivePickerDialog;

    invoke-static {p2}, Lcom/narvii/chat/ChatGoLivePickerDialog;->access$getEnabledModeList$p(Lcom/narvii/chat/ChatGoLivePickerDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {p2, v0}, Lcom/narvii/chat/ChatGoLivePickerDialog;->access$setSelectedMode$p(Lcom/narvii/chat/ChatGoLivePickerDialog;I)V

    .line 108
    iget-object p2, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$3;->this$0:Lcom/narvii/chat/ChatGoLivePickerDialog;

    invoke-static {p2}, Lcom/narvii/chat/ChatGoLivePickerDialog;->access$getAdapter$p(Lcom/narvii/chat/ChatGoLivePickerDialog;)Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter;

    move-result-object p2

    iget-object v0, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$3;->this$0:Lcom/narvii/chat/ChatGoLivePickerDialog;

    invoke-static {v0}, Lcom/narvii/chat/ChatGoLivePickerDialog;->access$getOffsetX$p(Lcom/narvii/chat/ChatGoLivePickerDialog;)I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter;->updateSelectedPosition(II)V

    nop

    :cond_0
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .line 92
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 93
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 94
    iget-object p1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$3;->this$0:Lcom/narvii/chat/ChatGoLivePickerDialog;

    invoke-static {p1}, Lcom/narvii/chat/ChatGoLivePickerDialog;->access$getOffsetX$p(Lcom/narvii/chat/ChatGoLivePickerDialog;)I

    move-result p3

    sub-int/2addr p3, p2

    invoke-static {p1, p3}, Lcom/narvii/chat/ChatGoLivePickerDialog;->access$setOffsetX$p(Lcom/narvii/chat/ChatGoLivePickerDialog;I)V

    goto :goto_0

    .line 96
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$3;->this$0:Lcom/narvii/chat/ChatGoLivePickerDialog;

    invoke-static {p1}, Lcom/narvii/chat/ChatGoLivePickerDialog;->access$getOffsetX$p(Lcom/narvii/chat/ChatGoLivePickerDialog;)I

    move-result p3

    add-int/2addr p3, p2

    invoke-static {p1, p3}, Lcom/narvii/chat/ChatGoLivePickerDialog;->access$setOffsetX$p(Lcom/narvii/chat/ChatGoLivePickerDialog;I)V

    .line 98
    :goto_0
    iget-object p1, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$3;->this$0:Lcom/narvii/chat/ChatGoLivePickerDialog;

    invoke-static {p1}, Lcom/narvii/chat/ChatGoLivePickerDialog;->access$getAdapter$p(Lcom/narvii/chat/ChatGoLivePickerDialog;)Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter;

    move-result-object p1

    const/4 p2, -0x1

    iget-object p3, p0, Lcom/narvii/chat/ChatGoLivePickerDialog$3;->this$0:Lcom/narvii/chat/ChatGoLivePickerDialog;

    invoke-static {p3}, Lcom/narvii/chat/ChatGoLivePickerDialog;->access$getOffsetX$p(Lcom/narvii/chat/ChatGoLivePickerDialog;)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/narvii/chat/ChatGoLivePickerDialog$ChatGoLiveAdapter;->updateSelectedPosition(II)V

    return-void
.end method
