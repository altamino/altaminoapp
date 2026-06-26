.class public final Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$BackgroundItemAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SceneTemplateMaterialSortLayout.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BackgroundItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$BackgroundItemViewHodler;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;


# direct methods
.method public constructor <init>(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 254
    iput-object p1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$BackgroundItemAdapter;->this$0:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$BackgroundItemAdapter;->this$0:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    invoke-static {v0}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->access$getTotalCount$p(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 254
    check-cast p1, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$BackgroundItemViewHodler;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$BackgroundItemAdapter;->onBindViewHolder(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$BackgroundItemViewHodler;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$BackgroundItemViewHodler;I)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    invoke-virtual {p1, p2}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$BackgroundItemViewHodler;->update(I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 254
    invoke-virtual {p0, p1, p2}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$BackgroundItemAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$BackgroundItemViewHodler;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$BackgroundItemViewHodler;
    .locals 4

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    new-instance p2, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$BackgroundItemViewHodler;

    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$BackgroundItemAdapter;->this$0:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/narvii/mediaeditor/R$layout;->item_template_materail_sort_background:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v1, "LayoutInflater.from(cont\u2026ackground, parent, false)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v0, p1}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$BackgroundItemViewHodler;-><init>(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;Landroid/view/View;)V

    return-object p2
.end method
