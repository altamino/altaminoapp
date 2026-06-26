.class public Lcom/narvii/story/comment/StoryCommentListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "StoryCommentListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/story/comment/StoryCommentListFragment$StoryCommentAdapter;
    }
.end annotation


# static fields
.field public static final KEY_BLOG:Ljava/lang/String; = "blog"

.field public static final KEY_COMMUNITY:Ljava/lang/String; = "community"

.field public static final KEY_SHOW_COMMENT_POST:Ljava/lang/String; = "show_comment_post"


# instance fields
.field private blog:Lcom/narvii/model/Blog;

.field private bottomEditText:Landroid/widget/LinearLayout;

.field private community:Lcom/narvii/model/Community;

.field private mergeAdapter:Lcom/narvii/list/MergeAdapter;

.field private pushNotificationHelper:Lcom/narvii/account/push/PushNotificationHelper;

.field private titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/story/comment/StoryCommentListFragment;)Landroid/widget/LinearLayout;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/narvii/story/comment/StoryCommentListFragment;->bottomEditText:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/story/comment/StoryCommentListFragment;)Landroid/widget/TextView;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/narvii/story/comment/StoryCommentListFragment;->titleView:Landroid/widget/TextView;

    return-object p0
.end method

.method private commentNew(Ljava/lang/String;)V
    .locals 2

    const-string v0, "account"

    .line 125
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 126
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;)V

    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/narvii/story/comment/StoryCommentListFragment;->blog:Lcom/narvii/model/Blog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/narvii/comment/CommentHelper;->getCommentPostActivityIntent(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "stickerCollectionId"

    .line 131
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/nvplayer/NVPlayerManager;->getNVPlayer(Landroid/content/Context;)Lcom/narvii/nvplayer/INVPlayer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 133
    invoke-interface {p1}, Lcom/narvii/nvplayer/INVPlayer;->getPlayWhenReady()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    const-string v1, "fromStoryCommentList"

    .line 134
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 136
    :cond_1
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 137
    iget-object p1, p0, Lcom/narvii/story/comment/StoryCommentListFragment;->pushNotificationHelper:Lcom/narvii/account/push/PushNotificationHelper;

    invoke-virtual {p1}, Lcom/narvii/account/push/PushNotificationHelper;->checkRemindDialogWhenPostFinished()V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 4

    .line 85
    iget-object p1, p0, Lcom/narvii/story/comment/StoryCommentListFragment;->blog:Lcom/narvii/model/Blog;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 88
    :cond_0
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/story/comment/StoryCommentListFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 89
    new-instance p1, Lcom/narvii/story/comment/StoryCommentListFragment$StoryCommentAdapter;

    iget-object v0, p0, Lcom/narvii/story/comment/StoryCommentListFragment;->blog:Lcom/narvii/model/Blog;

    invoke-direct {p1, p0, p0, v0}, Lcom/narvii/story/comment/StoryCommentListFragment$StoryCommentAdapter;-><init>(Lcom/narvii/story/comment/StoryCommentListFragment;Lcom/narvii/app/NVContext;Lcom/narvii/model/Blog;)V

    .line 90
    iget-object v0, p0, Lcom/narvii/story/comment/StoryCommentListFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 91
    iget-object p1, p0, Lcom/narvii/story/comment/StoryCommentListFragment;->blog:Lcom/narvii/model/Blog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/narvii/model/Feed;->getCommentsCount(Z)I

    move-result p1

    if-lez p1, :cond_1

    .line 92
    iget-object p1, p0, Lcom/narvii/story/comment/StoryCommentListFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    new-instance v0, Lcom/narvii/comment/CommentListFooterAdapter;

    iget-object v1, p0, Lcom/narvii/story/comment/StoryCommentListFragment;->blog:Lcom/narvii/model/Blog;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/narvii/story/comment/StoryCommentListFragment;->community:Lcom/narvii/model/Community;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/narvii/comment/CommentListFooterAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;ZLcom/narvii/model/Community;)V

    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 94
    :cond_1
    iget-object p1, p0, Lcom/narvii/story/comment/StoryCommentListFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    return-object p1
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "CommentList"

    return-object v0
.end method

.method public isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic lambda$onActivityResult$1$StoryCommentListFragment(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "collectionId"

    .line 208
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/narvii/story/comment/StoryCommentListFragment;->commentNew(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$tryToShowPost$0$StoryCommentListFragment()V
    .locals 1

    const-string v0, "show_comment_post"

    .line 105
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/story/comment/StoryCommentListFragment;->bottomEditText:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->performClick()Z

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/16 v0, 0x66

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 208
    new-instance v0, Lcom/narvii/story/comment/-$$Lambda$StoryCommentListFragment$Y_OoCWDKrA3tZbclKwOk4BG9QFQ;

    invoke-direct {v0, p0, p3}, Lcom/narvii/story/comment/-$$Lambda$StoryCommentListFragment$Y_OoCWDKrA3tZbclKwOk4BG9QFQ;-><init>(Lcom/narvii/story/comment/StoryCommentListFragment;Landroid/content/Intent;)V

    const-wide/16 v1, 0x64

    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 210
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090150

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    sget-object p1, Lcom/narvii/logging/ActSemantic;->checkComment:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "CommentBar"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/story/comment/StoryCommentListFragment;->blog:Lcom/narvii/model/Blog;

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    const/4 p1, 0x0

    .line 116
    invoke-direct {p0, p1}, Lcom/narvii/story/comment/StoryCommentListFragment;->commentNew(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 55
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    new-instance p1, Lcom/narvii/account/push/PushNotificationHelper;

    invoke-direct {p1, p0}, Lcom/narvii/account/push/PushNotificationHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/story/comment/StoryCommentListFragment;->pushNotificationHelper:Lcom/narvii/account/push/PushNotificationHelper;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b02f3

    const/4 v0, 0x0

    .line 61
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 79
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    const/4 p2, 0x0

    .line 80
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "blog"

    .line 66
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/model/Blog;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Blog;

    iput-object v0, p0, Lcom/narvii/story/comment/StoryCommentListFragment;->blog:Lcom/narvii/model/Blog;

    const-string v0, "community"

    .line 67
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/model/Community;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Community;

    iput-object v0, p0, Lcom/narvii/story/comment/StoryCommentListFragment;->community:Lcom/narvii/model/Community;

    .line 68
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f090150

    .line 69
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/narvii/story/comment/StoryCommentListFragment;->bottomEditText:Landroid/widget/LinearLayout;

    .line 70
    iget-object p2, p0, Lcom/narvii/story/comment/StoryCommentListFragment;->bottomEditText:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0b065e

    .line 71
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVListFragment;->setEmptyView(I)Landroid/view/View;

    const p2, 0x7f090098

    .line 72
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/narvii/story/comment/StoryCommentListFragment;->titleView:Landroid/widget/TextView;

    .line 73
    iget-object p2, p0, Lcom/narvii/story/comment/StoryCommentListFragment;->titleView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/narvii/story/comment/StoryCommentListFragment;->blog:Lcom/narvii/model/Blog;

    invoke-virtual {v0}, Lcom/narvii/model/Blog;->getTotalCommentsCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const v0, 0x7f0f1043

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/narvii/story/comment/StoryCommentListFragment;->blog:Lcom/narvii/model/Blog;

    invoke-virtual {v3}, Lcom/narvii/model/Blog;->getTotalCommentsCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p0, v0, v2}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const v0, 0x7f0f1053

    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f090677

    .line 74
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/story/comment/StoryCommentListFragment;->blog:Lcom/narvii/model/Blog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/narvii/model/Feed;->getCommentsCount(Z)I

    move-result p2

    if-lez p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x4

    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public tryToShowPost()V
    .locals 3

    .line 104
    new-instance v0, Lcom/narvii/story/comment/-$$Lambda$StoryCommentListFragment$iYMSuLQXOvyx-4nmsQLHtvS6Qm8;

    invoke-direct {v0, p0}, Lcom/narvii/story/comment/-$$Lambda$StoryCommentListFragment$iYMSuLQXOvyx-4nmsQLHtvS6Qm8;-><init>(Lcom/narvii/story/comment/StoryCommentListFragment;)V

    const-wide/16 v1, 0x64

    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method
