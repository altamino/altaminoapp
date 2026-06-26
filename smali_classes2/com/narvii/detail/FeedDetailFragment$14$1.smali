.class Lcom/narvii/detail/FeedDetailFragment$14$1;
.super Ljava/lang/Object;
.source "FeedDetailFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/detail/FeedDetailFragment$14;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/detail/FeedDetailFragment$14;


# direct methods
.method constructor <init>(Lcom/narvii/detail/FeedDetailFragment$14;)V
    .locals 0

    .line 841
    iput-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$14$1;->this$1:Lcom/narvii/detail/FeedDetailFragment$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 844
    iget-object p2, p0, Lcom/narvii/detail/FeedDetailFragment$14$1;->this$1:Lcom/narvii/detail/FeedDetailFragment$14;

    iget-object p2, p2, Lcom/narvii/detail/FeedDetailFragment$14;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    iget-boolean v0, p2, Lcom/narvii/detail/FeedDetailFragment;->notJoined:Z

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/narvii/detail/FeedDetailFragment;->toolTipHelper:Lcom/narvii/util/ToolTipHelper;

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/narvii/detail/FeedDetailFragment;->access$200(Lcom/narvii/detail/FeedDetailFragment;)Lcom/narvii/amino/CommunityPreferenceHelper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/amino/CommunityPreferenceHelper;->getJoinAminoShowBefore()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/narvii/detail/FeedDetailFragment$14$1;->this$1:Lcom/narvii/detail/FeedDetailFragment$14;

    iget-object p2, p2, Lcom/narvii/detail/FeedDetailFragment$14;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    instance-of p2, p2, Lcom/narvii/semicontext/SemiActivity;

    if-eqz p2, :cond_0

    .line 845
    iget-object p2, p0, Lcom/narvii/detail/FeedDetailFragment$14$1;->this$1:Lcom/narvii/detail/FeedDetailFragment$14;

    iget-object p2, p2, Lcom/narvii/detail/FeedDetailFragment$14;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/narvii/semicontext/SemiActivity;

    .line 846
    invoke-virtual {p2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object p2

    const v0, 0x7f09004c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 847
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment$14$1;->this$1:Lcom/narvii/detail/FeedDetailFragment$14;

    iget-object v0, v0, Lcom/narvii/detail/FeedDetailFragment$14;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    new-instance v1, Lcom/narvii/util/ToolTipHelper;

    invoke-direct {v1}, Lcom/narvii/util/ToolTipHelper;-><init>()V

    iput-object v1, v0, Lcom/narvii/detail/FeedDetailFragment;->toolTipHelper:Lcom/narvii/util/ToolTipHelper;

    .line 848
    invoke-static {}, Lcom/narvii/util/Tooltip;->builder()Lcom/narvii/util/Tooltip$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/narvii/util/Tooltip$Builder;->anchorView(Landroid/view/View;)Lcom/narvii/util/Tooltip$Builder;

    move-result-object p2

    const v0, 0x7f0f10cb

    invoke-virtual {p2, v0}, Lcom/narvii/util/Tooltip$Builder;->textId(I)Lcom/narvii/util/Tooltip$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/narvii/util/Tooltip$Builder;->isRightAlign(Z)Lcom/narvii/util/Tooltip$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/Tooltip$Builder;->endFinger()Lcom/narvii/util/Tooltip$Builder;

    move-result-object p1

    new-instance p2, Lcom/narvii/detail/FeedDetailFragment$14$1$1;

    invoke-direct {p2, p0}, Lcom/narvii/detail/FeedDetailFragment$14$1$1;-><init>(Lcom/narvii/detail/FeedDetailFragment$14$1;)V

    invoke-virtual {p1, p2}, Lcom/narvii/util/Tooltip$Builder;->onClickListener(Landroid/view/View$OnClickListener;)Lcom/narvii/util/Tooltip$Builder;

    move-result-object p1

    .line 854
    invoke-virtual {p1}, Lcom/narvii/util/Tooltip$Builder;->build()Lcom/narvii/util/Tooltip;

    move-result-object p1

    .line 855
    iget-object p2, p0, Lcom/narvii/detail/FeedDetailFragment$14$1;->this$1:Lcom/narvii/detail/FeedDetailFragment$14;

    iget-object p2, p2, Lcom/narvii/detail/FeedDetailFragment$14;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    iget-object p2, p2, Lcom/narvii/detail/FeedDetailFragment;->toolTipHelper:Lcom/narvii/util/ToolTipHelper;

    invoke-virtual {p2, p1}, Lcom/narvii/util/ToolTipHelper;->showToolTip(Lcom/narvii/util/Tooltip;)V

    .line 857
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$14$1;->this$1:Lcom/narvii/detail/FeedDetailFragment$14;

    iget-object p1, p1, Lcom/narvii/detail/FeedDetailFragment$14;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    new-instance p2, Lcom/narvii/detail/FeedDetailFragment$14$1$2;

    invoke-direct {p2, p0}, Lcom/narvii/detail/FeedDetailFragment$14$1$2;-><init>(Lcom/narvii/detail/FeedDetailFragment$14$1;)V

    invoke-static {p1, p2}, Lcom/narvii/detail/FeedDetailFragment;->access$302(Lcom/narvii/detail/FeedDetailFragment;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 867
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$14$1;->this$1:Lcom/narvii/detail/FeedDetailFragment$14;

    iget-object p1, p1, Lcom/narvii/detail/FeedDetailFragment$14;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-static {p1}, Lcom/narvii/detail/FeedDetailFragment;->access$200(Lcom/narvii/detail/FeedDetailFragment;)Lcom/narvii/amino/CommunityPreferenceHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/amino/CommunityPreferenceHelper;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/detail/FeedDetailFragment$14$1;->this$1:Lcom/narvii/detail/FeedDetailFragment$14;

    iget-object p2, p2, Lcom/narvii/detail/FeedDetailFragment$14;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-static {p2}, Lcom/narvii/detail/FeedDetailFragment;->access$300(Lcom/narvii/detail/FeedDetailFragment;)Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    :cond_0
    return-void
.end method
