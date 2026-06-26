.class final Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder$update$6;
.super Ljava/lang/Object;
.source "SceneTemplateMaterialSortLayout.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->update(ILcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $data:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;

.field final synthetic this$0:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;


# direct methods
.method constructor <init>(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder$update$6;->this$0:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;

    iput-object p2, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder$update$6;->$data:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 223
    iget-object p1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder$update$6;->this$0:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;

    iget-object p1, p1, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->this$0:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    invoke-virtual {p1}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->getOnViewClickListener()Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$OnViewClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder$update$6;->$data:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;

    invoke-interface {p1, v0}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$OnViewClickListener;->onRetryClick(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;)V

    :cond_0
    return-void
.end method
