.class public final Lcom/narvii/scene/TemplateListFragment$onViewCreated$3;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "TemplateListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/TemplateListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTemplateListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TemplateListFragment.kt\ncom/narvii/scene/TemplateListFragment$onViewCreated$3\n*L\n1#1,475:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/TemplateListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/scene/TemplateListFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lcom/narvii/scene/TemplateListFragment$onViewCreated$3;->this$0:Lcom/narvii/scene/TemplateListFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    if-nez p2, :cond_1

    .line 116
    iget-object p1, p0, Lcom/narvii/scene/TemplateListFragment$onViewCreated$3;->this$0:Lcom/narvii/scene/TemplateListFragment;

    invoke-static {p1}, Lcom/narvii/scene/TemplateListFragment;->access$getSnapHelper$p(Lcom/narvii/scene/TemplateListFragment;)Landroid/support/v7/widget/SnapHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/scene/TemplateListFragment$onViewCreated$3;->this$0:Lcom/narvii/scene/TemplateListFragment;

    invoke-virtual {p2}, Lcom/narvii/scene/TemplateListFragment;->getLinearLayoutManager()Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/SnapHelper;->findSnapView(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object p1

    .line 117
    iget-object p2, p0, Lcom/narvii/scene/TemplateListFragment$onViewCreated$3;->this$0:Lcom/narvii/scene/TemplateListFragment;

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/narvii/scene/TemplateListFragment;->getLinearLayoutManager()Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    invoke-virtual {p2, p1}, Lcom/narvii/scene/TemplateListFragment;->setSelectedPosition(I)V

    .line 118
    iget-object p1, p0, Lcom/narvii/scene/TemplateListFragment$onViewCreated$3;->this$0:Lcom/narvii/scene/TemplateListFragment;

    invoke-static {p1}, Lcom/narvii/scene/TemplateListFragment;->access$updateTitle(Lcom/narvii/scene/TemplateListFragment;)V

    :cond_1
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 99
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 100
    iget-object p1, p0, Lcom/narvii/scene/TemplateListFragment$onViewCreated$3;->this$0:Lcom/narvii/scene/TemplateListFragment;

    invoke-virtual {p1}, Lcom/narvii/scene/TemplateListFragment;->getScrollX()I

    move-result p3

    sub-int/2addr p3, p2

    invoke-virtual {p1, p3}, Lcom/narvii/scene/TemplateListFragment;->setScrollX(I)V

    goto :goto_0

    .line 102
    :cond_0
    iget-object p1, p0, Lcom/narvii/scene/TemplateListFragment$onViewCreated$3;->this$0:Lcom/narvii/scene/TemplateListFragment;

    invoke-virtual {p1}, Lcom/narvii/scene/TemplateListFragment;->getScrollX()I

    move-result p3

    add-int/2addr p3, p2

    invoke-virtual {p1, p3}, Lcom/narvii/scene/TemplateListFragment;->setScrollX(I)V

    .line 104
    :goto_0
    iget-object p1, p0, Lcom/narvii/scene/TemplateListFragment$onViewCreated$3;->this$0:Lcom/narvii/scene/TemplateListFragment;

    invoke-static {p1}, Lcom/narvii/scene/TemplateListFragment;->access$getItemContentWidth(Lcom/narvii/scene/TemplateListFragment;)I

    move-result p1

    int-to-float p1, p1

    iget-object p2, p0, Lcom/narvii/scene/TemplateListFragment$onViewCreated$3;->this$0:Lcom/narvii/scene/TemplateListFragment;

    invoke-virtual {p2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 p3, 0x41f00000    # 30.0f

    invoke-static {p2, p3}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p2

    add-float/2addr p1, p2

    float-to-int p1, p1

    .line 105
    iget-object p2, p0, Lcom/narvii/scene/TemplateListFragment$onViewCreated$3;->this$0:Lcom/narvii/scene/TemplateListFragment;

    invoke-virtual {p2}, Lcom/narvii/scene/TemplateListFragment;->getScrollX()I

    move-result p3

    invoke-static {p2, p3, p1}, Lcom/narvii/scene/TemplateListFragment;->access$getPosition(Lcom/narvii/scene/TemplateListFragment;II)I

    move-result p2

    .line 106
    iget-object p3, p0, Lcom/narvii/scene/TemplateListFragment$onViewCreated$3;->this$0:Lcom/narvii/scene/TemplateListFragment;

    invoke-virtual {p3}, Lcom/narvii/scene/TemplateListFragment;->getScrollX()I

    move-result p3

    int-to-float p3, p3

    int-to-float p1, p1

    div-float/2addr p3, p1

    float-to-int p1, p3

    int-to-float p1, p1

    sub-float/2addr p3, p1

    .line 110
    iget-object p1, p0, Lcom/narvii/scene/TemplateListFragment$onViewCreated$3;->this$0:Lcom/narvii/scene/TemplateListFragment;

    invoke-static {p1, p2, p3}, Lcom/narvii/scene/TemplateListFragment;->access$setAnimation(Lcom/narvii/scene/TemplateListFragment;IF)V

    return-void
.end method
