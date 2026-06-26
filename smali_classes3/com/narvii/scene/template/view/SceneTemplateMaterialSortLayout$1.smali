.class public final Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "SceneTemplateMaterialSortLayout.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;


# direct methods
.method constructor <init>(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$1;->this$0:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getScrollState()I

    move-result p1

    if-eqz p1, :cond_0

    .line 52
    iget-object p1, p0, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout$1;->this$0:Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;

    invoke-static {p1}, Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;->access$getBackgroundRecyclerView$p(Lcom/narvii/scene/template/view/SceneTemplateMaterialSortLayout;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    :cond_0
    return-void
.end method
