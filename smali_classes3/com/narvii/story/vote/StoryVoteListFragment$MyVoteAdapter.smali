.class Lcom/narvii/story/vote/StoryVoteListFragment$MyVoteAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "StoryVoteListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/story/vote/StoryVoteListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyVoteAdapter"
.end annotation


# instance fields
.field dateTimeFormatter:Lcom/narvii/util/DateTimeFormatter;

.field final synthetic this$0:Lcom/narvii/story/vote/StoryVoteListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/story/vote/StoryVoteListFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/narvii/story/vote/StoryVoteListFragment$MyVoteAdapter;->this$0:Lcom/narvii/story/vote/StoryVoteListFragment;

    .line 314
    invoke-direct {p0, p2}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 315
    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/DateTimeFormatter;->getInstance(Landroid/content/Context;)Lcom/narvii/util/DateTimeFormatter;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/story/vote/StoryVoteListFragment$MyVoteAdapter;->dateTimeFormatter:Lcom/narvii/util/DateTimeFormatter;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 335
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/story/vote/StoryVoteListFragment$MyVoteAdapter;->this$0:Lcom/narvii/story/vote/StoryVoteListFragment;

    iget-object p1, p1, Lcom/narvii/story/vote/StoryVoteListFragment;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {p1, v0}, Lcom/narvii/account/AccountService;->getUserProfile(I)Lcom/narvii/model/User;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/narvii/story/vote/StoryVoteListFragment$MyVoteAdapter;->this$0:Lcom/narvii/story/vote/StoryVoteListFragment;

    iget-object p1, p1, Lcom/narvii/story/vote/StoryVoteListFragment;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object p1

    :goto_0
    const v1, 0x7f0b02fa

    .line 336
    invoke-virtual {p0, v1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f09053f

    .line 337
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/UserAvatarLayout;

    .line 338
    invoke-virtual {p3, p1}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 339
    iget-object v1, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f090c2e

    .line 340
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/NicknameView;

    .line 341
    invoke-virtual {p3, p1}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 342
    invoke-virtual {p1}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/story/vote/StoryVoteListFragment$MyVoteAdapter;->this$0:Lcom/narvii/story/vote/StoryVoteListFragment;

    invoke-static {v2}, Lcom/narvii/story/vote/StoryVoteListFragment;->access$200(Lcom/narvii/story/vote/StoryVoteListFragment;)Lcom/narvii/model/Blog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/model/Blog;->uid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/narvii/story/vote/StoryVoteListFragment$MyVoteAdapter;->this$0:Lcom/narvii/story/vote/StoryVoteListFragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f02a0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const v2, -0xcb6d25

    invoke-virtual {p3, v1, v2}, Lcom/narvii/widget/NicknameView;->setRole2(Ljava/lang/String;I)V

    .line 343
    iget-object v1, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    iget-object p3, p0, Lcom/narvii/story/vote/StoryVoteListFragment$MyVoteAdapter;->this$0:Lcom/narvii/story/vote/StoryVoteListFragment;

    invoke-static {p3}, Lcom/narvii/story/vote/StoryVoteListFragment;->access$000(Lcom/narvii/story/vote/StoryVoteListFragment;)Ljava/util/Map;

    move-result-object p3

    iget-object p1, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/story/vote/VotedTimeBean;

    if-eqz p1, :cond_2

    const p3, 0x7f090ce2

    .line 346
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 347
    iget-object v1, p0, Lcom/narvii/story/vote/StoryVoteListFragment$MyVoteAdapter;->dateTimeFormatter:Lcom/narvii/util/DateTimeFormatter;

    iget-object p1, p1, Lcom/narvii/story/vote/VotedTimeBean;->createdTime:Ljava/util/Date;

    invoke-virtual {v1, p1}, Lcom/narvii/util/DateTimeFormatter;->formatHeadlineFeedTime(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    iget-object p1, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    const p1, 0x7f090193

    .line 350
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 351
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 352
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0904ae

    .line 353
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/story/vote/FollowView;

    const/4 p3, 0x4

    .line 354
    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 355
    iget-object p1, p0, Lcom/narvii/story/vote/StoryVoteListFragment$MyVoteAdapter;->this$0:Lcom/narvii/story/vote/StoryVoteListFragment;

    invoke-static {p1}, Lcom/narvii/story/vote/StoryVoteListFragment;->access$200(Lcom/narvii/story/vote/StoryVoteListFragment;)Lcom/narvii/model/Blog;

    move-result-object p1

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    move-result p3

    invoke-virtual {p1, p3}, Lcom/narvii/model/Feed;->getVoteCount(Z)I

    move-result p1

    if-lez p1, :cond_3

    const p1, 0x7f090677

    .line 356
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-object p2
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p5, :cond_3

    .line 363
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f09053f

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p5, :cond_2

    .line 367
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f090193

    if-ne v1, v2, :cond_2

    .line 368
    iget-object p1, p0, Lcom/narvii/story/vote/StoryVoteListFragment$MyVoteAdapter;->this$0:Lcom/narvii/story/vote/StoryVoteListFragment;

    invoke-static {p1}, Lcom/narvii/story/vote/StoryVoteListFragment;->access$200(Lcom/narvii/story/vote/StoryVoteListFragment;)Lcom/narvii/model/Blog;

    move-result-object p1

    sget-object p2, Lcom/narvii/logging/ActSemantic;->dislike:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 369
    iget-object p1, p0, Lcom/narvii/story/vote/StoryVoteListFragment$MyVoteAdapter;->this$0:Lcom/narvii/story/vote/StoryVoteListFragment;

    iget-object p1, p1, Lcom/narvii/story/vote/StoryVoteListFragment;->voteListener:Lcom/narvii/story/detail/VoteHelper$OnVoteListener;

    if-eqz p1, :cond_1

    .line 370
    invoke-interface {p1}, Lcom/narvii/story/detail/VoteHelper$OnVoteListener;->onVoteStart()V

    .line 372
    :cond_1
    iget-object p1, p0, Lcom/narvii/story/vote/StoryVoteListFragment$MyVoteAdapter;->this$0:Lcom/narvii/story/vote/StoryVoteListFragment;

    invoke-static {p1}, Lcom/narvii/story/vote/StoryVoteListFragment;->access$300(Lcom/narvii/story/vote/StoryVoteListFragment;)V

    return v0

    .line 375
    :cond_2
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1

    .line 364
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/narvii/story/vote/StoryVoteListFragment$MyVoteAdapter;->this$0:Lcom/narvii/story/vote/StoryVoteListFragment;

    iget-object p1, p1, Lcom/narvii/story/vote/StoryVoteListFragment;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object p1

    sget-object p2, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 365
    iget-object p1, p0, Lcom/narvii/story/vote/StoryVoteListFragment$MyVoteAdapter;->this$0:Lcom/narvii/story/vote/StoryVoteListFragment;

    iget-object p2, p1, Lcom/narvii/story/vote/StoryVoteListFragment;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/narvii/story/vote/StoryVoteListFragment;->access$100(Lcom/narvii/story/vote/StoryVoteListFragment;Lcom/narvii/model/User;)V

    return v0
.end method
