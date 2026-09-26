.class public final synthetic Lcom/narvii/scene/template/view/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/scene/template/view/f;->a:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    iput p2, p0, Lcom/narvii/scene/template/view/f;->b:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/scene/template/view/f;->a:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    iget v1, p0, Lcom/narvii/scene/template/view/f;->b:I

    invoke-static {v0, v1, p1}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$ViewHolder;->e(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;ILandroid/view/View;)V

    return-void
.end method
