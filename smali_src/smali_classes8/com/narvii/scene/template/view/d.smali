.class public final synthetic Lcom/narvii/scene/template/view/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;

.field public final synthetic b:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/scene/template/view/d;->a:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;

    iput-object p2, p0, Lcom/narvii/scene/template/view/d;->b:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/scene/template/view/d;->a:Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;

    iget-object v1, p0, Lcom/narvii/scene/template/view/d;->b:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    invoke-static {v0, v1, p1}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->c(Lcom/narvii/scene/template/SceneTemplateGeneratorFragment$SelectedEntry;Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;Landroid/view/View;)V

    return-void
.end method
