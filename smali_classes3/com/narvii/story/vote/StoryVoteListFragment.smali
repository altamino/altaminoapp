.class public Lcom/narvii/story/vote/StoryVoteListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "StoryVoteListFragment.java"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/story/vote/StoryVoteListFragment$IStoryVoteListener;,
        Lcom/narvii/story/vote/StoryVoteListFragment$MyVoteAdapter;,
        Lcom/narvii/story/vote/StoryVoteListFragment$StoryVoteAdapter;
    }
.end annotation


# static fields
.field public static final KEY_BLOG:Ljava/lang/String; = "blog"

.field public static final KEY_COMMUNITY:Ljava/lang/String; = "community"


# instance fields
.field account:Lcom/narvii/account/AccountService;

.field private blog:Lcom/narvii/model/Blog;

.field private bottomSheetListener:Lcom/narvii/story/IStoryBottomSheetListener;

.field private community:Lcom/narvii/model/Community;

.field configService:Lcom/narvii/config/ConfigService;

.field private storyVoteListener:Lcom/narvii/story/vote/StoryVoteListFragment$IStoryVoteListener;

.field voteListener:Lcom/narvii/story/detail/VoteHelper$OnVoteListener;

.field private votedTimeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/narvii/story/vote/VotedTimeBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/story/vote/StoryVoteListFragment;->votedTimeMap:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/story/vote/StoryVoteListFragment;)Ljava/util/Map;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/narvii/story/vote/StoryVoteListFragment;->votedTimeMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/story/vote/StoryVoteListFragment;Lcom/narvii/model/User;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/narvii/story/vote/StoryVoteListFragment;->openUserProfile(Lcom/narvii/model/User;)V

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/story/vote/StoryVoteListFragment;)Lcom/narvii/model/Blog;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/narvii/story/vote/StoryVoteListFragment;->blog:Lcom/narvii/model/Blog;

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/story/vote/StoryVoteListFragment;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/narvii/story/vote/StoryVoteListFragment;->cancelVote()V

    return-void
.end method

.method private cancelVote()V
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/narvii/story/vote/StoryVoteListFragment;->storyVoteListener:Lcom/narvii/story/vote/StoryVoteListFragment$IStoryVoteListener;

    if-eqz v0, :cond_0

    .line 383
    invoke-interface {v0}, Lcom/narvii/story/vote/StoryVoteListFragment$IStoryVoteListener;->cancelVote()V

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/narvii/story/vote/StoryVoteListFragment;->bottomSheetListener:Lcom/narvii/story/IStoryBottomSheetListener;

    if-eqz v0, :cond_1

    .line 386
    invoke-interface {v0}, Lcom/narvii/story/IStoryBottomSheetListener;->onBottomSheetHide()V

    :cond_1
    return-void
.end method

.method private openUserProfile(Lcom/narvii/model/User;)V
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/narvii/story/vote/StoryVoteListFragment;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    invoke-static {p0, p1}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object p1

    .line 393
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 395
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "openUserProfile"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 4

    .line 89
    iget-object p1, p0, Lcom/narvii/story/vote/StoryVoteListFragment;->blog:Lcom/narvii/model/Blog;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string p1, "config"

    .line 92
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/config/ConfigService;

    iput-object p1, p0, Lcom/narvii/story/vote/StoryVoteListFragment;->configService:Lcom/narvii/config/ConfigService;

    const-string p1, "account"

    .line 93
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    iput-object p1, p0, Lcom/narvii/story/vote/StoryVoteListFragment;->account:Lcom/narvii/account/AccountService;

    .line 94
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 95
    new-instance v0, Lcom/narvii/story/vote/StoryVoteListFragment$MyVoteAdapter;

    invoke-direct {v0, p0, p0}, Lcom/narvii/story/vote/StoryVoteListFragment$MyVoteAdapter;-><init>(Lcom/narvii/story/vote/StoryVoteListFragment;Lcom/narvii/app/NVContext;)V

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 96
    new-instance v0, Lcom/narvii/story/vote/StoryVoteListFragment$StoryVoteAdapter;

    iget-object v1, p0, Lcom/narvii/story/vote/StoryVoteListFragment;->blog:Lcom/narvii/model/Blog;

    invoke-direct {v0, p0, p0, v1}, Lcom/narvii/story/vote/StoryVoteListFragment$StoryVoteAdapter;-><init>(Lcom/narvii/story/vote/StoryVoteListFragment;Lcom/narvii/app/NVContext;Lcom/narvii/model/Blog;)V

    .line 97
    new-instance v1, Lcom/narvii/list/DividerAdapter;

    invoke-direct {v1, v0}, Lcom/narvii/list/DividerAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 98
    invoke-virtual {v1, v0}, Lcom/narvii/list/DividerAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v0, 0x1

    .line 99
    invoke-virtual {v1, v0}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    .line 100
    invoke-virtual {p1, v1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 101
    iget-object v1, p0, Lcom/narvii/story/vote/StoryVoteListFragment;->blog:Lcom/narvii/model/Blog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    move-result v2

    xor-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/narvii/model/Feed;->getVoteCount(Z)I

    move-result v0

    if-lez v0, :cond_1

    .line 102
    new-instance v0, Lcom/narvii/feed/vote/VoterListFooterAdapter;

    iget-object v1, p0, Lcom/narvii/story/vote/StoryVoteListFragment;->blog:Lcom/narvii/model/Blog;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/narvii/story/vote/StoryVoteListFragment;->community:Lcom/narvii/model/Community;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/narvii/feed/vote/VoterListFooterAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;ZLcom/narvii/model/Community;)V

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    :cond_1
    return-object p1
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "AllLikes"

    return-object v0
.end method

.method public isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b02f7

    const/4 v0, 0x0

    .line 63
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 83
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    const/4 p2, 0x0

    .line 84
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected onLoginResult(ZLandroid/content/Intent;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 113
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "openUserProfile"

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object p1, p0, Lcom/narvii/story/vote/StoryVoteListFragment;->bottomSheetListener:Lcom/narvii/story/IStoryBottomSheetListener;

    invoke-interface {p1}, Lcom/narvii/story/IStoryBottomSheetListener;->onBottomSheetHide()V

    .line 115
    iget-object p1, p0, Lcom/narvii/story/vote/StoryVoteListFragment;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserAccount()Lcom/narvii/model/User;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object p1

    .line 116
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 119
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onLoginResult(ZLandroid/content/Intent;)V

    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 2

    .line 124
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v0, p1, Lcom/narvii/model/Blog;

    if-eqz v0, :cond_1

    .line 125
    check-cast p1, Lcom/narvii/model/Blog;

    .line 126
    invoke-virtual {p1}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/story/vote/StoryVoteListFragment;->blog:Lcom/narvii/model/Blog;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Blog;

    .line 128
    iput-object p1, p0, Lcom/narvii/story/vote/StoryVoteListFragment;->blog:Lcom/narvii/model/Blog;

    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "blog"

    .line 73
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/model/Blog;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Blog;

    iput-object v0, p0, Lcom/narvii/story/vote/StoryVoteListFragment;->blog:Lcom/narvii/model/Blog;

    const-string v0, "community"

    .line 74
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/model/Community;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Community;

    iput-object v0, p0, Lcom/narvii/story/vote/StoryVoteListFragment;->community:Lcom/narvii/model/Community;

    .line 75
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f090099

    .line 76
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 77
    iget-object v0, p0, Lcom/narvii/story/vote/StoryVoteListFragment;->blog:Lcom/narvii/model/Blog;

    invoke-virtual {v0}, Lcom/narvii/model/Blog;->getTotalVotesCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const v0, 0x7f0f1046    # 1.901641E38f

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/narvii/story/vote/StoryVoteListFragment;->blog:Lcom/narvii/model/Blog;

    invoke-virtual {v3}, Lcom/narvii/model/Blog;->getTotalVotesCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p0, v0, v2}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const v0, 0x7f0f029c

    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f090677

    .line 78
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/story/vote/StoryVoteListFragment;->blog:Lcom/narvii/model/Blog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/narvii/model/Feed;->getVoteCount(Z)I

    move-result p2

    if-lez p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x4

    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setBottomSheetListener(Lcom/narvii/story/IStoryBottomSheetListener;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/narvii/story/vote/StoryVoteListFragment;->bottomSheetListener:Lcom/narvii/story/IStoryBottomSheetListener;

    return-void
.end method

.method public setStoryVoteListener(Lcom/narvii/story/vote/StoryVoteListFragment$IStoryVoteListener;)V
    .locals 0

    .line 402
    iput-object p1, p0, Lcom/narvii/story/vote/StoryVoteListFragment;->storyVoteListener:Lcom/narvii/story/vote/StoryVoteListFragment$IStoryVoteListener;

    return-void
.end method
