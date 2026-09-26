.class public final synthetic Lcom/narvii/scene/template/view/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

.field public final synthetic b:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/scene/template/view/e;->a:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    iput-object p2, p0, Lcom/narvii/scene/template/view/e;->b:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/scene/template/view/e;->a:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    iget-object v1, p0, Lcom/narvii/scene/template/view/e;->b:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;

    invoke-static {v0, v1, p1}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->d(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
