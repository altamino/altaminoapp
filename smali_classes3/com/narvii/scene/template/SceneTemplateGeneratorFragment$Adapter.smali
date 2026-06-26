.class public final Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Adapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SceneTemplateGeneratorFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 697
    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Adapter;->this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 703
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Adapter;->this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    invoke-virtual {v0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getEntryList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 697
    check-cast p1, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Adapter;->onBindViewHolder(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;I)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 706
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Adapter;->this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    invoke-virtual {v0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getEntryList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;

    invoke-virtual {p1, p2}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->updateView(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 697
    invoke-virtual {p0, p1, p2}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;
    .locals 4

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 700
    new-instance p2, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;

    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Adapter;->this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/narvii/mediaeditor/R$layout;->item_media_picker:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v1, "LayoutInflater.from(pare\u2026ia_picker, parent, false)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v0, p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;-><init>(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;Landroid/view/View;)V

    return-object p2
.end method
