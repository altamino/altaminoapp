.class public final Lcom/narvii/scene/TemplateListFragment$Adapter;
.super Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
.source "TemplateListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/scene/TemplateListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/TemplateListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/scene/TemplateListFragment;Lcom/narvii/app/NVContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    iput-object p1, p0, Lcom/narvii/scene/TemplateListFragment$Adapter;->this$0:Lcom/narvii/scene/TemplateListFragment;

    invoke-direct {p0, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/narvii/scene/TemplateListFragment$Adapter;->this$0:Lcom/narvii/scene/TemplateListFragment;

    invoke-virtual {v0}, Lcom/narvii/scene/TemplateListFragment;->getPageLoadState()Lcom/narvii/paging/state/PageLoadState;

    move-result-object v0

    iget-object v0, v0, Lcom/narvii/paging/state/PageLoadState;->errorMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getItem(I)Lcom/narvii/scene/model/TemplateConfig;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/narvii/scene/TemplateListFragment$Adapter;->this$0:Lcom/narvii/scene/TemplateListFragment;

    invoke-virtual {v0}, Lcom/narvii/scene/TemplateListFragment;->getTemplateList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/scene/model/TemplateConfig;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 228
    invoke-virtual {p0, p1}, Lcom/narvii/scene/TemplateListFragment$Adapter;->getItem(I)Lcom/narvii/scene/model/TemplateConfig;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/narvii/scene/TemplateListFragment$Adapter;->this$0:Lcom/narvii/scene/TemplateListFragment;

    invoke-virtual {v0}, Lcom/narvii/scene/TemplateListFragment;->getTemplateList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public isLoading()Z
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/narvii/scene/TemplateListFragment$Adapter;->this$0:Lcom/narvii/scene/TemplateListFragment;

    invoke-virtual {v0}, Lcom/narvii/scene/TemplateListFragment;->getPageLoadState()Lcom/narvii/paging/state/PageLoadState;

    move-result-object v0

    iget v0, v0, Lcom/narvii/paging/state/PageLoadState;->status:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    instance-of v0, p1, Lcom/narvii/scene/TemplateListFragment$TemplateViewHolder;

    if-eqz v0, :cond_0

    .line 237
    check-cast p1, Lcom/narvii/scene/TemplateListFragment$TemplateViewHolder;

    invoke-virtual {p0, p2}, Lcom/narvii/scene/TemplateListFragment$Adapter;->getItem(I)Lcom/narvii/scene/model/TemplateConfig;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/scene/TemplateListFragment$TemplateViewHolder;->updateData(Lcom/narvii/scene/model/TemplateConfig;)V

    :cond_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    new-instance p2, Lcom/narvii/scene/TemplateListFragment$TemplateViewHolder;

    iget-object v0, p0, Lcom/narvii/scene/TemplateListFragment$Adapter;->this$0:Lcom/narvii/scene/TemplateListFragment;

    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/narvii/mediaeditor/R$layout;->item_scene_template:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v1, "LayoutInflater.from(getC\u2026_template, parent, false)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v0, p1}, Lcom/narvii/scene/TemplateListFragment$TemplateViewHolder;-><init>(Lcom/narvii/scene/TemplateListFragment;Landroid/view/View;)V

    return-object p2
.end method

.method public refresh(ILcom/narvii/paging/source/PageRequestCallback;)V
    .locals 0

    return-void
.end method
