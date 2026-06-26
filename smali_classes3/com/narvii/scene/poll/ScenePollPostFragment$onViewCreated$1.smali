.class final Lcom/narvii/scene/poll/ScenePollPostFragment$onViewCreated$1;
.super Ljava/lang/Object;
.source "ScenePollPostFragment.kt"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/poll/ScenePollPostFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScenePollPostFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScenePollPostFragment.kt\ncom/narvii/scene/poll/ScenePollPostFragment$onViewCreated$1\n*L\n1#1,361:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/poll/ScenePollPostFragment;


# direct methods
.method constructor <init>(Lcom/narvii/scene/poll/ScenePollPostFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/scene/poll/ScenePollPostFragment$onViewCreated$1;->this$0:Lcom/narvii/scene/poll/ScenePollPostFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 4

    .line 84
    iget-object v0, p0, Lcom/narvii/scene/poll/ScenePollPostFragment$onViewCreated$1;->this$0:Lcom/narvii/scene/poll/ScenePollPostFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 85
    fill-array-data v1, :array_0

    .line 86
    iget-object v2, p0, Lcom/narvii/scene/poll/ScenePollPostFragment$onViewCreated$1;->this$0:Lcom/narvii/scene/poll/ScenePollPostFragment;

    sget v3, Lcom/narvii/mediaeditor/R$id;->scroll_view:I

    invoke-virtual {v2, v3}, Lcom/narvii/scene/poll/ScenePollPostFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/narvii/widget/NVScrollView;

    invoke-virtual {v2, v1}, Landroid/widget/ScrollView;->getLocationOnScreen([I)V

    .line 87
    iget-object v2, p0, Lcom/narvii/scene/poll/ScenePollPostFragment$onViewCreated$1;->this$0:Lcom/narvii/scene/poll/ScenePollPostFragment;

    sget v3, Lcom/narvii/mediaeditor/R$id;->root:I

    invoke-virtual {v2, v3}, Lcom/narvii/scene/poll/ScenePollPostFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const-string v3, "root"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    const/4 v2, 0x1

    aget v1, v1, v2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    .line 89
    iget-object v1, p0, Lcom/narvii/scene/poll/ScenePollPostFragment$onViewCreated$1;->this$0:Lcom/narvii/scene/poll/ScenePollPostFragment;

    sget v2, Lcom/narvii/mediaeditor/R$id;->top_placeholder:I

    invoke-virtual {v1, v2}, Lcom/narvii/scene/poll/ScenePollPostFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "top_placeholder"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 90
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v3, v0, :cond_1

    .line 91
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 92
    iget-object v0, p0, Lcom/narvii/scene/poll/ScenePollPostFragment$onViewCreated$1;->this$0:Lcom/narvii/scene/poll/ScenePollPostFragment;

    sget v3, Lcom/narvii/mediaeditor/R$id;->top_placeholder:I

    invoke-virtual {v0, v3}, Lcom/narvii/scene/poll/ScenePollPostFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method
