.class final Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder$update$5;
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
.field final synthetic $position:I

.field final synthetic this$0:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;


# direct methods
.method constructor <init>(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;I)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder$update$5;->this$0:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;

    iput p2, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder$update$5;->$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 220
    iget-object p1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder$update$5;->this$0:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;

    iget-object p1, p1, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->this$0:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    iget v0, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder$update$5;->$position:I

    invoke-static {p1, v0}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->access$deleteItem(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;I)V

    return-void
.end method
