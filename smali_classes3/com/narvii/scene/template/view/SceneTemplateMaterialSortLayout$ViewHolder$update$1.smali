.class final Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder$update$1;
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
.field final synthetic this$0:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;


# direct methods
.method constructor <init>(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder$update$1;->this$0:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 202
    iget-object p1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder$update$1;->this$0:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;

    iget-object p1, p1, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->this$0:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    invoke-virtual {p1}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->getOnViewClickListener()Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$OnViewClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$OnViewClickListener;->onBackgroundItemClick()V

    :cond_0
    return-void
.end method
