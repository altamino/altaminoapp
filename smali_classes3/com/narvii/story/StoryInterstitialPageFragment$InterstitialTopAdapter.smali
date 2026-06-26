.class final Lcom/narvii/story/StoryInterstitialPageFragment$InterstitialTopAdapter;
.super Lcom/narvii/list/AdriftAdapter;
.source "StoryInterstitialPageFragment.kt"

# interfaces
.implements Lcom/narvii/user/follow/UserFollowView$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/story/StoryInterstitialPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InterstitialTopAdapter"
.end annotation


# instance fields
.field private final ctx:Lcom/narvii/app/NVContext;

.field private followView:Lcom/narvii/user/follow/UserFollowView;

.field final synthetic this$0:Lcom/narvii/story/StoryInterstitialPageFragment;

.field private view:Landroid/view/View;

.field private voteEnd:Z


# direct methods
.method public constructor <init>(Lcom/narvii/story/StoryInterstitialPageFragment;Lcom/narvii/app/NVContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    const-string v0, "ctx"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    iput-object p1, p0, Lcom/narvii/story/StoryInterstitialPageFragment$InterstitialTopAdapter;->this$0:Lcom/narvii/story/StoryInterstitialPageFragment;

    invoke-direct {p0, p2}, Lcom/narvii/list/AdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p2, p0, Lcom/narvii/story/StoryInterstitialPageFragment$InterstitialTopAdapter;->ctx:Lcom/narvii/app/NVContext;

    const/4 p1, 0x1

    .line 292
    iput-boolean p1, p0, Lcom/narvii/story/StoryInterstitialPageFragment$InterstitialTopAdapter;->voteEnd:Z

    return-void
.end method

.method private final isMe(Lcom/narvii/model/User;)Z
    .locals 2

    .line 316
    iget-object v0, p0, Lcom/narvii/story/StoryInterstitialPageFragment$InterstitialTopAdapter;->ctx:Lcom/narvii/app/NVContext;

    const-string v1, "account"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 317
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private final setTippingImageAndText()V
    .locals 6

    .line 377
    iget-object v0, p0, Lcom/narvii/story/StoryInterstitialPageFragment$InterstitialTopAdapter;->view:Landroid/view/View;

    const/4 v1, 0x0

    const-string v2, "view"

    if-eqz v0, :cond_4

    sget v3, Lcom/narvii/amino/R$id;->tipping_container:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v3, "view.tipping_container"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/narvii/story/StoryInterstitialPageFragment$InterstitialTopAdapter;->this$0:Lcom/narvii/story/StoryInterstitialPageFragment;

    invoke-static {v3}, Lcom/narvii/story/StoryInterstitialPageFragment;->access$getBlog$p(Lcom/narvii/story/StoryInterstitialPageFragment;)Lcom/narvii/model/Blog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/narvii/model/Feed;->getTippingInfo()Lcom/narvii/model/TippingInfo;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-boolean v3, v3, Lcom/narvii/model/TippingInfo;->tippable:Z

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 378
    iget-object v0, p0, Lcom/narvii/story/StoryInterstitialPageFragment$InterstitialTopAdapter;->view:Landroid/view/View;

    if-eqz v0, :cond_3

    sget v1, Lcom/narvii/amino/R$id;->tipping_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "view.tipping_text"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/narvii/story/StoryInterstitialPageFragment$InterstitialTopAdapter;->this$0:Lcom/narvii/story/StoryInterstitialPageFragment;

    invoke-static {v1}, Lcom/narvii/story/StoryInterstitialPageFragment;->access$getBlog$p(Lcom/narvii/story/StoryInterstitialPageFragment;)Lcom/narvii/model/Blog;

    move-result-object v1

    iget-object v1, v1, Lcom/narvii/model/Feed;->tipInfo:Lcom/narvii/model/TippingInfo;

    if-eqz v1, :cond_1

    iget v4, v1, Lcom/narvii/model/TippingInfo;->tippersCount:I

    :cond_1
    iget-object v1, p0, Lcom/narvii/story/StoryInterstitialPageFragment$InterstitialTopAdapter;->this$0:Lcom/narvii/story/StoryInterstitialPageFragment;

    if-eqz v4, :cond_2

    invoke-static {v1}, Lcom/narvii/story/StoryInterstitialPageFragment;->access$getBlog$p(Lcom/narvii/story/StoryInterstitialPageFragment;)Lcom/narvii/model/Blog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/model/Feed;->getTippingInfo()Lcom/narvii/model/TippingInfo;

    move-result-object v1

    iget v1, v1, Lcom/narvii/model/TippingInfo;->tippedCoins:I

    invoke-static {v1}, Lcom/narvii/util/text/TextUtils;->getLiteCountWithCeil2(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f10b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 377
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method private final setVoteImageAndText()V
    .locals 8

    .line 361
    iget-object v0, p0, Lcom/narvii/story/StoryInterstitialPageFragment$InterstitialTopAdapter;->this$0:Lcom/narvii/story/StoryInterstitialPageFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryInterstitialPageFragment;->access$getBlog$p(Lcom/narvii/story/StoryInterstitialPageFragment;)Lcom/narvii/model/Blog;

    move-result-object v0

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/model/Feed;->getVotedValue(Z)I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "view"

    if-nez v0, :cond_1

    .line 362
    iget-object v0, p0, Lcom/narvii/story/StoryInterstitialPageFragment$InterstitialTopAdapter;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    sget v3, Lcom/narvii/amino/R$id;->like_image:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    const-string v3, "res://ic_vote_none_story"

    invoke-virtual {v0, v3}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 364
    :cond_1
    iget-object v0, p0, Lcom/narvii/story/StoryInterstitialPageFragment$InterstitialTopAdapter;->view:Landroid/view/View;

    if-eqz v0, :cond_9

    sget v3, Lcom/narvii/amino/R$id;->like_image:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    const-string v3, "res://ic_vote_heart_story"

    invoke-virtual {v0, v3}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 366
    :goto_0
    iget-object v0, p0, Lcom/narvii/story/StoryInterstitialPageFragment$InterstitialTopAdapter;->view:Landroid/view/View;

    if-eqz v0, :cond_8

    sget v3, Lcom/narvii/amino/R$id;->like_text:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v3, "view.like_text"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/narvii/story/StoryInterstitialPageFragment$InterstitialTopAdapter;->this$0:Lcom/narvii/story/StoryInterstitialPageFragment;

    invoke-static {v3}, Lcom/narvii/story/StoryInterstitialPageFragment;->access$getBlog$p(Lcom/narvii/story/StoryInterstitialPageFragment;)Lcom/narvii/model/Blog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/narvii/model/Blog;->getTotalVotesCount()I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/narvii/story/StoryInterstitialPageFragment$InterstitialTopAdapter;->this$0:Lcom/narvii/story/StoryInterstitialPageFragment;

    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0ae0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/narvii/story/StoryInterstitialPageFragment$InterstitialTopAdapter;->this$0:Lcom/narvii/story/StoryInterstitialPageFragment;

    invoke-static {v3}, Lcom/narvii/story/StoryInterstitialPageFragment;->access$getBlog$p(Lcom/narvii/story/StoryInterstitialPageFragment;)Lcom/narvii/model/Blog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/narvii/model/Blog;->getTotalVotesCount()I

    move-result v3

    invoke-static {v3}, Lcom/narvii/util/text/TextUtils;->getLiteCountWithCeil2(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    iget-boolean v0, p0, Lcom/narvii/story/StoryInterstitialPageFragment$InterstitialTopAdapter;->voteEnd:Z

    const-string v3, "view.loading_view"

    const/4 v4, 0x0

    const/4 v5, 0x4

    const-string v6, "view.like_image"

    if-eqz v0, :cond_5

    .line 368
    iget-object v0, p0, Lcom/narvii/story/StoryInterstitialPageFragment$InterstitialTopAdapter;->view:Landroid/view/View;

    if-eqz v0, :cond_4

    sget v7, Lcom/narvii/amino/R$id;->like_image:I

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 369
    iget-object v0, p0, Lcom/narvii/story/StoryInterstitialPageFragment$InterstitialTopAdapter;->view:Landroid/view/View;

    if-eqz v0, :cond_3

    sget v1, Lcom/narvii/amino/R$id;->loading_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/SpinningView;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 368
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 371
    :cond_5
    iget-object v0, p0, Lcom/narvii/story/StoryInterstitialPageFragment$InterstitialTopAdapter;->view:Landroid/view/View;

    if-eqz v0, :cond_7

    sget v7, Lcom/narvii/amino/R$id;->like_image:I

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 372
    iget-object v0, p0, Lcom/narvii/story/StoryInterstitialPageFragment$InterstitialTopAdapter;->view:Landroid/view/View;

    if-eqz v0, :cond_6

    sget v1, Lcom/narvii/amino/R$id;->loading_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/SpinningView;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void

    :cond_6
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 371
    :cond_7
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 366
    :cond_8
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 364
    :cond_9
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/narvii/story/StoryInterstitialPageFragment$InterstitialTopAdapter;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const p1, 0x7f0b06d9

    .line 295
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const-string p2, "view"

    .line 296
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/story/StoryInterstitialPageFragment$InterstitialTopAdapter;->view:Landroid/view/View;

    .line 297
    iget-object p2, p0, Lcom/narvii/story/StoryInterstitialPageFragment$InterstitialTopAdapter;->this$0:Lcom/narvii/story/StoryInterstitialPageFragment;

    invoke-static {p2}, Lcom/narvii/story/StoryInterstitialPageFragment;->access$getBlog$p(Lcom/narvii/story/StoryInterstitialPageFragment;)Lcom/narvii/model/Blog;

    move-result-object p2

    iget-object p2, p2, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    const p3, 0x7f0900a4

    .line 298
    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/UserAvatarLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 299
    :cond_0
    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/UserAvatarLayout;

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    :cond_1
    sget p3, Lcom/narvii/amino/R$id;->follow_view:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/user/follow/UserFollowView;

    const-string v0, "view.follow_view"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/narvii/story/StoryInterstitialPageFragment$InterstitialTopAdapter;->followView:Lcom/narvii/user/follow/UserFollowView;

    .line 301
    iget-object p3, p0, Lcom/narvii/story/StoryInterstitialPageFragment$InterstitialTopAdapter;->followView:Lcom/narvii/user/follow/UserFollowView;

    const/4 v0, 0x0

    const-string v1, "followView"

    if-eqz p3, :cond_6

    invoke-virtual {p3, p0}, Lcom/narvii/user/follow/UserFollowView;->init(Lcom/narvii/app/NVContext;)V

    .line 302
    iget-object p3, p0, Lcom/narvii/story/StoryInterstitialPageFragment$InterstitialTopAdapter;->followView:Lcom/narvii/user/follow/UserFollowView;

    if-eqz p3, :cond_5

    invoke-virtual {p3, p0}, Lcom/narvii/user/follow/UserFollowView;->setClickListener(Lcom/narvii/user/follow/UserFollowView$ClickListener;)V

    .line 303
    iget-object p3, p0, Lcom/narvii/story/StoryInterstitialPageFragment$InterstitialTopAdapter;->followView:Lcom/narvii/user/follow/UserFollowView;

    if-eqz p3, :cond_4

    const-string v2, "user"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {p3, p2, v2}, Lcom/narvii/user/follow/UserFollowView;->bindUser(Lcom/narvii/model/User;Z)V

    .line 304
    iget-object p3, p0, Lcom/narvii/story/StoryInterstitialPageFragment$InterstitialTopAdapter;->followView:Lcom/narvii/user/follow/UserFollowView;

    if-eqz p3, :cond_3

    invoke-direct {p0, p2}, Lcom/narvii/story/StoryInterstitialPageFragment$InterstitialTopAdapter;->isMe(Lcom/narvii/model/User;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p3, v0}, Lcom/narvii/util/ViewUtils;->visible(Landroid/view/View;Z)V

    .line 306
    sget p3, Lcom/narvii/amino/R$id;->nick_name:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const-string v0, "view.nick_name"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p2, Lcom/narvii/model/User;->nickname:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    sget p3, Lcom/narvii/amino/R$id;->amino_id:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const-string v0, "view.amino_id"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/narvii/story/StoryInterstitialPageFragment$InterstitialTopAdapter;->this$0:Lcom/narvii/story/StoryInterstitialPageFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryInterstitialPageFragment;->access$getBlog$p(Lcom/narvii/story/StoryInterstitialPageFragment;)Lcom/narvii/model/Blog;

    move-result-object v0

    iget v0, v0, Lcom/narvii/model/Feed;->ndcId:I

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/narvii/model/User;->aminoId:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    const-string p2, ""

    :goto_0
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    invoke-direct {p0}, Lcom/narvii/story/StoryInterstitialPageFragment$InterstitialTopAdapter;->setVoteImageAndText()V

    .line 309
    invoke-direct {p0}, Lcom/narvii/story/StoryInterstitialPageFragment$InterstitialTopAdapter;->setTippingImageAndText()V

    .line 310
    sget p2, Lcom/narvii/amino/R$id;->like_image_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    sget p2, Lcom/narvii/amino/R$id;->tipping_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1

    .line 304
    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 301
    :cond_6
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0
.end method

.method public final getVoteEnd()Z
    .locals 1

    .line 292
    iget-boolean v0, p0, Lcom/narvii/story/StoryInterstitialPageFragment$InterstitialTopAdapter;->voteEnd:Z

    return v0
.end method

.method public onClickFollow()V
    .locals 3

    .line 382
    sget-object v0, Lcom/narvii/logging/ActSemantic;->follow:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const-string v1, "StoryEnd"

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/story/StoryInterstitialPageFragment$InterstitialTopAdapter;->this$0:Lcom/narvii/story/StoryInterstitialPageFragment;

    invoke-static {v1}, Lcom/narvii/story/StoryInterstitialPageFragment;->access$getBlog$p(Lcom/narvii/story/StoryInterstitialPageFragment;)Lcom/narvii/model/Blog;

    move-result-object v1

    iget-object v1, v1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 383
    new-instance v0, Landroid/content/Intent;

    const-string v1, "follow"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 384
    iget-object v1, p0, Lcom/narvii/story/StoryInterstitialPageFragment$InterstitialTopAdapter;->this$0:Lcom/narvii/story/StoryInterstitialPageFragment;

    invoke-static {v1}, Lcom/narvii/story/StoryInterstitialPageFragment;->access$getBlog$p(Lcom/narvii/story/StoryInterstitialPageFragment;)Lcom/narvii/model/Blog;

    move-result-object v1

    iget-object v1, v1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->ensureLogin(Landroid/content/Intent;)V

    return-void
.end method

.method public onClickNotification()V
    .locals 2

    .line 389
    sget-object v0, Lcom/narvii/logging/ActSemantic;->turnOnAlert:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const-string v1, "StoryEnd"

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/story/StoryInterstitialPageFragment$InterstitialTopAdapter;->this$0:Lcom/narvii/story/StoryInterstitialPageFragment;

    invoke-static {v1}, Lcom/narvii/story/StoryInterstitialPageFragment;->access$getBlog$p(Lcom/narvii/story/StoryInterstitialPageFragment;)Lcom/narvii/model/Blog;

    move-result-object v1

    iget-object v1, v1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    return-void
.end method

.method protected onLoginResult(ZLandroid/content/Intent;)V
    .locals 2

    const-string v0, "info"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 393
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "follow"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "user"

    .line 394
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 395
    const-class p2, Lcom/narvii/model/User;

    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/User;

    if-eqz p1, :cond_1

    .line 397
    iget-object p2, p0, Lcom/narvii/story/StoryInterstitialPageFragment$InterstitialTopAdapter;->followView:Lcom/narvii/user/follow/UserFollowView;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Lcom/narvii/user/follow/UserFollowView;->follow(Lcom/narvii/model/User;)V

    goto :goto_0

    :cond_0
    const-string p1, "followView"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    return-void

    .line 403
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->onLoginResult(ZLandroid/content/Intent;)V

    return-void
.end method

.method protected onSubviewClick(Landroid/view/View;Z)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 321
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    const v2, 0x7f09065d

    const/4 v3, 0x1

    const-string v4, "StoryEnd"

    if-nez v1, :cond_1

    goto/16 :goto_2

    .line 322
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v2, :cond_5

    .line 323
    new-instance p1, Lcom/narvii/story/detail/VoteHelper;

    invoke-direct {p1, p0}, Lcom/narvii/story/detail/VoteHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 324
    iget-object p2, p0, Lcom/narvii/story/StoryInterstitialPageFragment$InterstitialTopAdapter;->this$0:Lcom/narvii/story/StoryInterstitialPageFragment;

    invoke-static {p2}, Lcom/narvii/story/StoryInterstitialPageFragment;->access$getBlog$p(Lcom/narvii/story/StoryInterstitialPageFragment;)Lcom/narvii/model/Blog;

    move-result-object p2

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    move-result v1

    invoke-virtual {p2, v1}, Lcom/narvii/model/Feed;->getVotedValue(Z)I

    move-result p2

    if-nez p2, :cond_3

    .line 325
    sget-object p2, Lcom/narvii/logging/ActSemantic;->like:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, p2}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p2

    invoke-virtual {p2, v4}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p2

    iget-object v1, p0, Lcom/narvii/story/StoryInterstitialPageFragment$InterstitialTopAdapter;->this$0:Lcom/narvii/story/StoryInterstitialPageFragment;

    invoke-static {v1}, Lcom/narvii/story/StoryInterstitialPageFragment;->access$getBlog$p(Lcom/narvii/story/StoryInterstitialPageFragment;)Lcom/narvii/model/Blog;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 326
    iget-object p2, p0, Lcom/narvii/story/StoryInterstitialPageFragment$InterstitialTopAdapter;->this$0:Lcom/narvii/story/StoryInterstitialPageFragment;

    invoke-static {p2}, Lcom/narvii/story/StoryInterstitialPageFragment;->access$getBlog$p(Lcom/narvii/story/StoryInterstitialPageFragment;)Lcom/narvii/model/Blog;

    move-result-object p2

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p2, v1, v0}, Lcom/narvii/story/detail/VoteHelper;->vote(Lcom/narvii/model/Feed;Ljava/lang/Integer;Lcom/narvii/story/detail/VoteHelper$OnVoteListener;)V

    .line 327
    new-instance p1, Lcom/narvii/util/particles/ParticlesHelper;

    invoke-direct {p1}, Lcom/narvii/util/particles/ParticlesHelper;-><init>()V

    invoke-virtual {p1}, Lcom/narvii/util/particles/ParticlesHelper;->l3()Lcom/narvii/util/particles/ParticlesHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/story/StoryInterstitialPageFragment$InterstitialTopAdapter;->view:Landroid/view/View;

    if-eqz p2, :cond_2

    sget v0, Lcom/narvii/amino/R$id;->like_image:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1, p2}, Lcom/narvii/util/particles/ParticlesHelper;->emit(Landroid/view/View;)V

    goto :goto_1

    :cond_2
    const-string p1, "view"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 329
    :cond_3
    sget-object p1, Lcom/narvii/logging/ActSemantic;->checkAllLikes:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/story/StoryInterstitialPageFragment$InterstitialTopAdapter;->this$0:Lcom/narvii/story/StoryInterstitialPageFragment;

    invoke-static {p2}, Lcom/narvii/story/StoryInterstitialPageFragment;->access$getBlog$p(Lcom/narvii/story/StoryInterstitialPageFragment;)Lcom/narvii/model/Blog;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 330
    iget-object p1, p0, Lcom/narvii/story/StoryInterstitialPageFragment$InterstitialTopAdapter;->this$0:Lcom/narvii/story/StoryInterstitialPageFragment;

    invoke-virtual {p1}, Lcom/narvii/story/StoryInterstitialPageFragment;->getBottomSheetListener()Lcom/narvii/story/IStoryBottomSheetListener;

    move-result-object p1

    if-eqz p1, :cond_4

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/narvii/story/IStoryBottomSheetListener;->onBottomSheetShow(I)V

    :cond_4
    :goto_1
    return v3

    :cond_5
    :goto_2
    const v2, 0x7f090b88

    if-nez v1, :cond_6

    goto :goto_4

    .line 334
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v2, :cond_9

    .line 335
    sget-object p1, Lcom/narvii/logging/ActSemantic;->prop:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/story/StoryInterstitialPageFragment$InterstitialTopAdapter;->this$0:Lcom/narvii/story/StoryInterstitialPageFragment;

    invoke-static {p2}, Lcom/narvii/story/StoryInterstitialPageFragment;->access$getBlog$p(Lcom/narvii/story/StoryInterstitialPageFragment;)Lcom/narvii/model/Blog;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 337
    iget-object p1, p0, Lcom/narvii/story/StoryInterstitialPageFragment$InterstitialTopAdapter;->this$0:Lcom/narvii/story/StoryInterstitialPageFragment;

    invoke-static {p1}, Lcom/narvii/story/StoryInterstitialPageFragment;->access$getAccount$p(Lcom/narvii/story/StoryInterstitialPageFragment;)Lcom/narvii/account/AccountService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result p1

    if-nez p1, :cond_7

    .line 338
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->ensureLogin(Landroid/content/Intent;)V

    return v3

    .line 342
    :cond_7
    iget-object p1, p0, Lcom/narvii/story/StoryInterstitialPageFragment$InterstitialTopAdapter;->this$0:Lcom/narvii/story/StoryInterstitialPageFragment;

    invoke-static {p1}, Lcom/narvii/story/StoryInterstitialPageFragment;->access$getTippingHelper$p(Lcom/narvii/story/StoryInterstitialPageFragment;)Lcom/narvii/tipping/TippingHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/story/StoryInterstitialPageFragment$InterstitialTopAdapter;->this$0:Lcom/narvii/story/StoryInterstitialPageFragment;

    invoke-static {p2}, Lcom/narvii/story/StoryInterstitialPageFragment;->access$getBlog$p(Lcom/narvii/story/StoryInterstitialPageFragment;)Lcom/narvii/model/Blog;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/tipping/TippingHelper;->isTipAuthor(Lcom/narvii/model/Tippable;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 343
    iget-object p1, p0, Lcom/narvii/story/StoryInterstitialPageFragment$InterstitialTopAdapter;->this$0:Lcom/narvii/story/StoryInterstitialPageFragment;

    invoke-static {p1}, Lcom/narvii/story/StoryInterstitialPageFragment;->access$getTippingHelper$p(Lcom/narvii/story/StoryInterstitialPageFragment;)Lcom/narvii/tipping/TippingHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/story/StoryInterstitialPageFragment$InterstitialTopAdapter;->this$0:Lcom/narvii/story/StoryInterstitialPageFragment;

    invoke-static {p2}, Lcom/narvii/story/StoryInterstitialPageFragment;->access$getBlog$p(Lcom/narvii/story/StoryInterstitialPageFragment;)Lcom/narvii/model/Blog;

    move-result-object p2

    iget-object v0, p0, Lcom/narvii/story/StoryInterstitialPageFragment$InterstitialTopAdapter;->this$0:Lcom/narvii/story/StoryInterstitialPageFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryInterstitialPageFragment;->access$getCommunity$p(Lcom/narvii/story/StoryInterstitialPageFragment;)Lcom/narvii/model/Community;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/narvii/tipping/TippingHelper;->openTippingList(Lcom/narvii/model/Tippable;Lcom/narvii/model/Community;)V

    goto :goto_3

    .line 345
    :cond_8
    iget-object p1, p0, Lcom/narvii/story/StoryInterstitialPageFragment$InterstitialTopAdapter;->this$0:Lcom/narvii/story/StoryInterstitialPageFragment;

    invoke-static {p1}, Lcom/narvii/story/StoryInterstitialPageFragment;->access$getTippingHelper$p(Lcom/narvii/story/StoryInterstitialPageFragment;)Lcom/narvii/tipping/TippingHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/story/StoryInterstitialPageFragment$InterstitialTopAdapter;->this$0:Lcom/narvii/story/StoryInterstitialPageFragment;

    invoke-static {p2}, Lcom/narvii/story/StoryInterstitialPageFragment;->access$getBlog$p(Lcom/narvii/story/StoryInterstitialPageFragment;)Lcom/narvii/model/Blog;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lcom/narvii/tipping/TippingHelper;->openTipDialog(Lcom/narvii/model/Tippable;Lcom/narvii/monetization/store/TippingConfirmDialog$TipSuccessListener;)Lcom/narvii/monetization/store/TippingConfirmDialog;

    :goto_3
    return v3

    :cond_9
    :goto_4
    const v0, 0x7f0900a4

    if-nez v1, :cond_a

    goto :goto_5

    .line 349
    :cond_a
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_c

    .line 350
    sget-object p1, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/story/StoryInterstitialPageFragment$InterstitialTopAdapter;->this$0:Lcom/narvii/story/StoryInterstitialPageFragment;

    invoke-static {p2}, Lcom/narvii/story/StoryInterstitialPageFragment;->access$getBlog$p(Lcom/narvii/story/StoryInterstitialPageFragment;)Lcom/narvii/model/Blog;

    move-result-object p2

    iget-object p2, p2, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 351
    iget-object p1, p0, Lcom/narvii/story/StoryInterstitialPageFragment$InterstitialTopAdapter;->this$0:Lcom/narvii/story/StoryInterstitialPageFragment;

    invoke-static {p1}, Lcom/narvii/story/StoryInterstitialPageFragment;->access$getBlog$p(Lcom/narvii/story/StoryInterstitialPageFragment;)Lcom/narvii/model/Blog;

    move-result-object p1

    iget-object p1, p1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    invoke-static {p0, p1}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 352
    iget-object p2, p0, Lcom/narvii/story/StoryInterstitialPageFragment$InterstitialTopAdapter;->this$0:Lcom/narvii/story/StoryInterstitialPageFragment;

    invoke-static {p2}, Lcom/narvii/story/StoryInterstitialPageFragment;->access$getBlog$p(Lcom/narvii/story/StoryInterstitialPageFragment;)Lcom/narvii/model/Blog;

    move-result-object p2

    iget p2, p2, Lcom/narvii/model/Feed;->ndcId:I

    const-string v0, "__communityId"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 353
    :cond_b
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return v3

    .line 357
    :cond_c
    :goto_5
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->onSubviewClick(Landroid/view/View;Z)Z

    move-result p1

    return p1
.end method

.method public final setVoteEnd(Z)V
    .locals 0

    .line 292
    iput-boolean p1, p0, Lcom/narvii/story/StoryInterstitialPageFragment$InterstitialTopAdapter;->voteEnd:Z

    return-void
.end method
