.class final Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder$update$4;
.super Ljava/lang/Object;
.source "SceneTemplateMaterialSortLayout.kt"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

    iput-object p1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder$update$4;->this$0:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 216
    iget-object p1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder$update$4;->this$0:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;

    iget-object p1, p1, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->this$0:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    invoke-static {p1}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->access$getItemTouchHelper$p(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;)Landroid/support/v7/widget/helper/ItemTouchHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder$update$4;->this$0:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/helper/ItemTouchHelper;->startDrag(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    const/4 p1, 0x0

    return p1
.end method
