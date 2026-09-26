.class public final Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Adapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


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
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Adapter;->this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

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
    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Adapter;->this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getEntryList()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Adapter;->onBindViewHolder(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;I)V
    .locals 1
    .param p1    # Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Adapter;->this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    .line 2
    invoke-virtual {v0}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;->getEntryList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;

    invoke-virtual {p1, p2}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;->updateView(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Entry;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;
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
    new-instance p2, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;

    iget-object v0, p0, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$Adapter;->this$0:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/narvii/mediaeditor/R$layout;->item_media_picker:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v1, "inflate(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v0, p1}, Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$ViewHolder;-><init>(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment;Landroid/view/View;)V

    return-object p2
.end method
