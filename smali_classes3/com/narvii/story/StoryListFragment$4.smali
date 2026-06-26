.class Lcom/narvii/story/StoryListFragment$4;
.super Ljava/lang/Object;
.source "StoryListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/story/StoryListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/story/StoryListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/story/StoryListFragment;)V
    .locals 0

    .line 650
    iput-object p1, p0, Lcom/narvii/story/StoryListFragment$4;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 653
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$4;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 656
    :cond_0
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$4;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryListFragment;->access$400(Lcom/narvii/story/StoryListFragment;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$4;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-virtual {v0}, Lcom/narvii/story/StoryListFragment;->isShowingPopupViews()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_0

    .line 660
    :cond_1
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$4;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryListFragment;->access$500(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/story/widgets/GuideViewHelper;

    move-result-object v0

    const-string v1, "has_story_guide_click_shown"

    invoke-virtual {v0, v1}, Lcom/narvii/story/widgets/GuideViewHelper;->hasGuideShown(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 661
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 662
    iget-object v2, p0, Lcom/narvii/story/StoryListFragment$4;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 664
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    const-string v4, "height"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const v3, 0x7f090418

    .line 665
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/narvii/story/StoryListFragment$4;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-virtual {v3}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/narvii/util/Utils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v3

    add-int/2addr v2, v3

    const-string v3, "top"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 667
    :cond_2
    iget-object v2, p0, Lcom/narvii/story/StoryListFragment$4;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v2}, Lcom/narvii/story/StoryListFragment;->access$500(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/story/widgets/GuideViewHelper;

    move-result-object v2

    new-instance v3, Lcom/narvii/story/StoryListFragment$4$1;

    invoke-direct {v3, p0}, Lcom/narvii/story/StoryListFragment$4$1;-><init>(Lcom/narvii/story/StoryListFragment$4;)V

    invoke-virtual {v2, v3}, Lcom/narvii/story/widgets/GuideViewHelper;->setOnGuideEventListener(Lcom/narvii/story/widgets/GuideViewHelper$OnGuideEventListener;)V

    .line 675
    iget-object v2, p0, Lcom/narvii/story/StoryListFragment$4;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v2}, Lcom/narvii/story/StoryListFragment;->access$500(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/story/widgets/GuideViewHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/narvii/story/StoryListFragment$4;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/narvii/story/widgets/StoryGuideViewClick;

    invoke-virtual {v2, v3, v1, v4, v0}, Lcom/narvii/story/widgets/GuideViewHelper;->checkAndShowGuideView(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView;

    goto :goto_0

    .line 676
    :cond_3
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$4;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryListFragment;->access$500(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/story/widgets/GuideViewHelper;

    move-result-object v0

    const-string v1, "has_story_guide_shown"

    invoke-virtual {v0, v1}, Lcom/narvii/story/widgets/GuideViewHelper;->hasGuideShown(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 677
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$4;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryListFragment;->access$500(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/story/widgets/GuideViewHelper;

    move-result-object v0

    iget-object v2, p0, Lcom/narvii/story/StoryListFragment$4;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/narvii/story/widgets/StoryGuideViewSwipe;

    invoke-virtual {v0, v2, v1, v3}, Lcom/narvii/story/widgets/GuideViewHelper;->checkAndShowGuideView(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;)Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView;

    goto :goto_0

    .line 678
    :cond_4
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$4;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryListFragment;->access$500(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/story/widgets/GuideViewHelper;

    move-result-object v0

    const-string v1, "has_story_double_tap_guide_shown"

    invoke-virtual {v0, v1}, Lcom/narvii/story/widgets/GuideViewHelper;->hasGuideShown(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 679
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$4;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryListFragment;->access$500(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/story/widgets/GuideViewHelper;

    move-result-object v0

    iget-object v2, p0, Lcom/narvii/story/StoryListFragment$4;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/narvii/story/widgets/StoryGuideViewDoubleTap;

    invoke-virtual {v0, v2, v1, v3}, Lcom/narvii/story/widgets/GuideViewHelper;->checkAndShowGuideView(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;)Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView;

    goto :goto_0

    .line 681
    :cond_5
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$4;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryListFragment;->access$800(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/story/widgets/StoryItemView;

    move-result-object v0

    if-nez v0, :cond_6

    return-void

    .line 684
    :cond_6
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$4;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryListFragment;->access$800(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/story/widgets/StoryItemView;

    move-result-object v0

    const v1, 0x7f090af2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 685
    instance-of v1, v0, Lcom/narvii/story/detail/StoryUserView;

    if-eqz v1, :cond_7

    .line 686
    check-cast v0, Lcom/narvii/story/detail/StoryUserView;

    invoke-virtual {v0}, Lcom/narvii/story/detail/StoryUserView;->showTooltip()V

    :cond_7
    :goto_0
    return-void
.end method
