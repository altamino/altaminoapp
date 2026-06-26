.class public Lcom/narvii/story/quiz/StoryQuizRankingListFragment;
.super Lcom/narvii/monetization/avatarframe/SwipeableFragment;
.source "StoryQuizRankingListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/story/quiz/StoryQuizRankingListFragment$StoryQuizzesRankingListAdapter;
    }
.end annotation


# static fields
.field public static TAG:Ljava/lang/String; = "StoryQuizRankingListFragment"


# instance fields
.field private rankingListAdapter:Lcom/narvii/story/quiz/StoryQuizRankingListFragment$StoryQuizzesRankingListAdapter;

.field private story:Lcom/narvii/model/Blog;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/narvii/monetization/avatarframe/SwipeableFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/story/quiz/StoryQuizRankingListFragment;)Lcom/narvii/model/Blog;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/narvii/story/quiz/StoryQuizRankingListFragment;->story:Lcom/narvii/model/Blog;

    return-object p0
.end method

.method public static isFragmentShowing(Lcom/narvii/app/NVActivity;)Z
    .locals 1

    .line 40
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p0

    .line 41
    sget-object v0, Lcom/narvii/story/quiz/StoryQuizRankingListFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 42
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static show(Lcom/narvii/app/NVActivity;Lcom/narvii/model/Blog;)Lcom/narvii/story/quiz/StoryQuizRankingListFragment;
    .locals 3

    const v0, 0x7f090b2b

    .line 29
    invoke-static {p0, v0}, Lcom/narvii/monetization/avatarframe/SwipeableFragment;->createDefaultContainer(Landroid/app/Activity;I)Landroid/view/View;

    .line 31
    sget-object v1, Lcom/narvii/story/quiz/StoryQuizRankingListFragment;->TAG:Ljava/lang/String;

    const-class v2, Lcom/narvii/story/quiz/StoryQuizRankingListFragment;

    invoke-static {p0, v0, v1, v2}, Lcom/narvii/monetization/avatarframe/SwipeableFragment;->show(Lcom/narvii/app/NVActivity;ILjava/lang/String;Ljava/lang/Class;)Landroid/support/v4/app/Fragment;

    move-result-object p0

    .line 32
    instance-of v0, p0, Lcom/narvii/story/quiz/StoryQuizRankingListFragment;

    if-eqz v0, :cond_0

    .line 33
    check-cast p0, Lcom/narvii/story/quiz/StoryQuizRankingListFragment;

    iput-object p1, p0, Lcom/narvii/story/quiz/StoryQuizRankingListFragment;->story:Lcom/narvii/model/Blog;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 0

    .line 95
    new-instance p1, Lcom/narvii/story/quiz/StoryQuizRankingListFragment$StoryQuizzesRankingListAdapter;

    invoke-direct {p1, p0, p0}, Lcom/narvii/story/quiz/StoryQuizRankingListFragment$StoryQuizzesRankingListAdapter;-><init>(Lcom/narvii/story/quiz/StoryQuizRankingListFragment;Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/story/quiz/StoryQuizRankingListFragment;->rankingListAdapter:Lcom/narvii/story/quiz/StoryQuizRankingListFragment$StoryQuizzesRankingListAdapter;

    .line 96
    iget-object p1, p0, Lcom/narvii/story/quiz/StoryQuizRankingListFragment;->rankingListAdapter:Lcom/narvii/story/quiz/StoryQuizRankingListFragment$StoryQuizzesRankingListAdapter;

    return-object p1
.end method

.method protected getContentView()I
    .locals 1

    const v0, 0x7f0b066c

    return v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "TopPlayers"

    return-object v0
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 58
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    const/4 p2, 0x0

    .line 59
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x0

    .line 60
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 53
    invoke-super {p0, p1, p2}, Lcom/narvii/monetization/avatarframe/SwipeableFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method protected updateViews()V
    .locals 4

    .line 71
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->updateViews()V

    .line 72
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setVisibility(I)V

    const v1, 0x1020004

    .line 76
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x102000d

    .line 77
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->errorView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 79
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/narvii/story/quiz/StoryQuizRankingListFragment;->rankingListAdapter:Lcom/narvii/story/quiz/StoryQuizRankingListFragment$StoryQuizzesRankingListAdapter;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 83
    iget-object v0, p0, Lcom/narvii/story/quiz/StoryQuizRankingListFragment;->rankingListAdapter:Lcom/narvii/story/quiz/StoryQuizRankingListFragment$StoryQuizzesRankingListAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/narvii/story/quiz/StoryQuizRankingListFragment;->rankingListAdapter:Lcom/narvii/story/quiz/StoryQuizRankingListFragment$StoryQuizzesRankingListAdapter;

    .line 84
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 87
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_1

    .line 85
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method
