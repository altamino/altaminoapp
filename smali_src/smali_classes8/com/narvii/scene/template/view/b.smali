.class public final synthetic Lcom/narvii/scene/template/view/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/scene/template/view/b;->a:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/scene/template/view/b;->a:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    invoke-static {v0, p1}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->a(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;Landroid/view/View;)V

    return-void
.end method
