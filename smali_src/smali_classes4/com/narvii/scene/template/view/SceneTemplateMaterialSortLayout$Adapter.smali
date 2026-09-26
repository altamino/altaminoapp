.class public final Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$Adapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;",
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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$Adapter;->this$0:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$Adapter;->this$0:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->access$getTotalCount$p(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;)I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$Adapter;->onBindViewHolder(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;I)V
    .locals 17
    .param p1    # Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const-string v3, "holder"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$Adapter;->this$0:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    .line 2
    invoke-virtual {v3}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->getDatas()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v2, :cond_0

    iget-object v3, v0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$Adapter;->this$0:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    .line 3
    invoke-virtual {v3}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->getDatas()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v3, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xff

    const/16 v16, 0x0

    move-object v4, v3

    invoke-direct/range {v4 .. v16}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;-><init>(Ljava/lang/String;Lcom/narvii/model/Media;IJJILcom/narvii/theme/ThemeImage;Lcom/narvii/model/Media;ILkotlin/jvm/internal/k;)V

    :goto_0
    iget-object v4, v0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$Adapter;->this$0:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    .line 5
    invoke-virtual {v4}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->getHolderMap()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {v1, v2, v3}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->update(ILcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;
    .locals 4
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p2, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;

    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$Adapter;->this$0:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/narvii/mediaeditor/R$layout;->item_template_materail_sort_media:I

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v1, "inflate(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p2, v0, p1}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;-><init>(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;Landroid/view/View;)V

    return-object p2
.end method
