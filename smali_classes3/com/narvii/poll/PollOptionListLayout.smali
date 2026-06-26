.class public Lcom/narvii/poll/PollOptionListLayout;
.super Landroid/widget/LinearLayout;
.source "PollOptionListLayout.java"

# interfaces
.implements Lcom/narvii/poll/PollService$VoteListener;
.implements Lcom/narvii/util/Callback;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/poll/PollOptionListLayout$PollPreviewBlockListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/LinearLayout;",
        "Lcom/narvii/poll/PollService$VoteListener;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/widget/LongPushButton;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field autoAdjust:Z

.field blockTouch:Z

.field forceShowResult:Ljava/lang/Boolean;

.field public loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

.field public loggingSource:Lcom/narvii/util/logging/LoggingSource;

.field notBlockArea:Landroid/graphics/RectF;

.field options:[Landroid/view/ViewGroup;

.field pendingAnim:Z

.field final pendingEnd:Ljava/lang/Runnable;

.field pendingPoll:Lcom/narvii/model/Blog;

.field poll:Lcom/narvii/model/Blog;

.field pollService:Lcom/narvii/poll/PollService;

.field public preview:Z

.field previewBlockListener:Lcom/narvii/poll/PollOptionListLayout$PollPreviewBlockListener;

.field public statSource:Ljava/lang/String;

.field text:Landroid/widget/TextView;

.field voteCallback:Lcom/narvii/util/Callback;

.field voters:Lcom/narvii/poll/VotersSummaryResponse;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 175
    new-instance p2, Lcom/narvii/poll/PollOptionListLayout$1;

    invoke-direct {p2, p0}, Lcom/narvii/poll/PollOptionListLayout$1;-><init>(Lcom/narvii/poll/PollOptionListLayout;)V

    iput-object p2, p0, Lcom/narvii/poll/PollOptionListLayout;->pendingEnd:Ljava/lang/Runnable;

    .line 85
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string p2, "poll"

    .line 86
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/poll/PollService;

    iput-object p1, p0, Lcom/narvii/poll/PollOptionListLayout;->pollService:Lcom/narvii/poll/PollService;

    return-void
.end method

.method static setViewVisibility(Landroid/view/View;IZ)V
    .locals 1

    .line 364
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_2

    .line 365
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    .line 368
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f010029

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 370
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f01002a

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 373
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/widget/LongPushButton;)V
    .locals 6

    .line 380
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v0

    .line 381
    invoke-static {v0}, Lcom/narvii/util/Utils;->shouldShowLoginPage(Lcom/narvii/app/NVContext;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 384
    :cond_0
    new-instance v1, Lcom/narvii/influencer/InfluencerHelper;

    invoke-direct {v1, v0}, Lcom/narvii/influencer/InfluencerHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 385
    iget-object v2, p0, Lcom/narvii/poll/PollOptionListLayout;->poll:Lcom/narvii/model/Blog;

    const-string v3, "Page Detailed View"

    invoke-virtual {v1, v2, v3}, Lcom/narvii/influencer/InfluencerHelper;->checkNeedShowFansOnlyHintDialog(Lcom/narvii/model/Feed;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const v1, 0x7f09058d

    .line 388
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 389
    iget-object v1, p0, Lcom/narvii/poll/PollOptionListLayout;->poll:Lcom/narvii/model/Blog;

    if-eqz v1, :cond_3

    iget-object v1, v1, Lcom/narvii/model/Blog;->polloptList:Ljava/util/List;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_3

    .line 390
    iget-object v1, p0, Lcom/narvii/poll/PollOptionListLayout;->voteCallback:Lcom/narvii/util/Callback;

    if-eqz v1, :cond_2

    .line 391
    iget-object v2, p0, Lcom/narvii/poll/PollOptionListLayout;->poll:Lcom/narvii/model/Blog;

    invoke-interface {v1, v2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 393
    :cond_2
    iget-object v1, p0, Lcom/narvii/poll/PollOptionListLayout;->poll:Lcom/narvii/model/Blog;

    iget-object v1, v1, Lcom/narvii/model/Blog;->polloptList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/PollOption;

    .line 394
    iget-object v1, p0, Lcom/narvii/poll/PollOptionListLayout;->pollService:Lcom/narvii/poll/PollService;

    iget-object v2, p0, Lcom/narvii/poll/PollOptionListLayout;->poll:Lcom/narvii/model/Blog;

    iget-object v3, p1, Lcom/narvii/model/PollOption;->polloptId:Ljava/lang/String;

    iget-object v4, p0, Lcom/narvii/poll/PollOptionListLayout;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    iget-object v5, p0, Lcom/narvii/poll/PollOptionListLayout;->loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/narvii/poll/PollService;->vote(Lcom/narvii/model/Blog;Ljava/lang/String;Lcom/narvii/util/logging/LoggingSource;Lcom/narvii/util/logging/LoggingOrigin;)V

    :cond_3
    const/4 p1, 0x1

    .line 400
    invoke-virtual {p0, p1}, Lcom/narvii/poll/PollOptionListLayout;->updateView(Z)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 50
    check-cast p1, Lcom/narvii/widget/LongPushButton;

    invoke-virtual {p0, p1}, Lcom/narvii/poll/PollOptionListLayout;->call(Lcom/narvii/widget/LongPushButton;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 120
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 121
    iget-object v0, p0, Lcom/narvii/poll/PollOptionListLayout;->pollService:Lcom/narvii/poll/PollService;

    iget-object v0, v0, Lcom/narvii/poll/PollService;->listeners:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p0}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 405
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v0

    .line 406
    new-instance v1, Lcom/narvii/influencer/InfluencerHelper;

    invoke-direct {v1, v0}, Lcom/narvii/influencer/InfluencerHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 407
    iget-object v0, p0, Lcom/narvii/poll/PollOptionListLayout;->poll:Lcom/narvii/model/Blog;

    const-string v2, "Page Detailed View"

    invoke-virtual {v1, v0, v2}, Lcom/narvii/influencer/InfluencerHelper;->checkNeedShowFansOnlyHintDialog(Lcom/narvii/model/Feed;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 410
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090571

    const v2, 0x7f09058d

    if-ne v0, v1, :cond_3

    .line 411
    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 412
    iget-object v1, p0, Lcom/narvii/poll/PollOptionListLayout;->poll:Lcom/narvii/model/Blog;

    iget-object v1, v1, Lcom/narvii/model/Blog;->polloptList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/PollOption;

    .line 413
    invoke-virtual {v0}, Lcom/narvii/model/PollOption;->firstMedia()Lcom/narvii/model/Media;

    move-result-object v1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 414
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0b3d

    invoke-static {v0, v1, v3}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    goto :goto_0

    .line 416
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/model/PollOption;->firstMedia()Lcom/narvii/model/Media;

    move-result-object v0

    .line 417
    invoke-virtual {v0}, Lcom/narvii/model/Media;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 418
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/narvii/poll/PollOptionListLayout;->poll:Lcom/narvii/model/Blog;

    const-class v4, Lcom/narvii/optionmenu/OptionMenuFragment;

    invoke-static {v0, v3, v4}, Lcom/narvii/video/NVFullScreenVideoActivity;->intent(Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 420
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 421
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/narvii/media/MediaGalleryOptionActivity;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 423
    iget-object v4, p0, Lcom/narvii/poll/PollOptionListLayout;->poll:Lcom/narvii/model/Blog;

    invoke-static {v4}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "parent"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 424
    const-class v4, Lcom/narvii/model/Feed;

    const-string v5, "parentClass"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 425
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "list"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "position"

    .line 426
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 427
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 431
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0905d7

    if-ne v0, v1, :cond_4

    .line 432
    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 433
    iget-object v0, p0, Lcom/narvii/poll/PollOptionListLayout;->poll:Lcom/narvii/model/Blog;

    iget-object v0, v0, Lcom/narvii/model/Blog;->polloptList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/PollOption;

    iget-object p1, p1, Lcom/narvii/model/PollOption;->refObject:Lcom/narvii/model/Feed;

    invoke-static {p1}, Lcom/narvii/detail/FeedDetailFragment;->intent(Lcom/narvii/model/Feed;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "Source"

    const-string v1, "Poll"

    .line 434
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 435
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_4
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 126
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 127
    iget-object v0, p0, Lcom/narvii/poll/PollOptionListLayout;->pollService:Lcom/narvii/poll/PollService;

    iget-object v0, v0, Lcom/narvii/poll/PollService;->listeners:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p0}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 7

    .line 91
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 94
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 95
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x7f09085c

    if-ne v5, v6, :cond_0

    .line 96
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/narvii/poll/PollOptionListLayout;->setupCell(Landroid/view/View;I)V

    .line 97
    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 98
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x7f090864

    if-ne v5, v6, :cond_1

    .line 99
    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/narvii/poll/PollOptionListLayout;->text:Landroid/widget/TextView;

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 102
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/narvii/poll/PollOptionListLayout;->options:[Landroid/view/ViewGroup;

    .line 103
    iget-object v0, p0, Lcom/narvii/poll/PollOptionListLayout;->options:[Landroid/view/ViewGroup;

    array-length v0, v0

    if-nez v0, :cond_3

    const/4 v2, 0x1

    :cond_3
    iput-boolean v2, p0, Lcom/narvii/poll/PollOptionListLayout;->autoAdjust:Z

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .line 150
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 151
    new-instance p1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p2

    iget-object p3, p0, Lcom/narvii/poll/PollOptionListLayout;->text:Landroid/widget/TextView;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/widget/TextView;->getHeight()I

    move-result p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    sub-int/2addr p2, p3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f07021f

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    sub-int/2addr p2, p3

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p4

    int-to-float p4, p4

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcom/narvii/poll/PollOptionListLayout;->notBlockArea:Landroid/graphics/RectF;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 136
    iget-boolean v0, p0, Lcom/narvii/poll/PollOptionListLayout;->blockTouch:Z

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/narvii/poll/PollOptionListLayout;->notBlockArea:Landroid/graphics/RectF;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return v1

    .line 145
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onVoteFail(Lcom/narvii/model/Blog;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 166
    iget-object p2, p0, Lcom/narvii/poll/PollOptionListLayout;->poll:Lcom/narvii/model/Blog;

    if-eqz p2, :cond_1

    iget-object p1, p1, Lcom/narvii/model/Blog;->blogId:Ljava/lang/String;

    iget-object p2, p2, Lcom/narvii/model/Blog;->blogId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 167
    iget-object p1, p0, Lcom/narvii/poll/PollOptionListLayout;->options:[Landroid/view/ViewGroup;

    array-length p2, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    aget-object v2, p1, v1

    const v3, 0x7f0908e8

    .line 168
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/narvii/widget/LongPushButton;

    invoke-virtual {v2}, Lcom/narvii/widget/LongPushButton;->reset()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 170
    :cond_0
    invoke-virtual {p0, v0}, Lcom/narvii/poll/PollOptionListLayout;->updateView(Z)V

    .line 171
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p3, v0}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    :cond_1
    return-void
.end method

.method public onVoteFinish(Lcom/narvii/model/Blog;Ljava/lang/String;)V
    .locals 2

    .line 156
    iget-object p2, p0, Lcom/narvii/poll/PollOptionListLayout;->poll:Lcom/narvii/model/Blog;

    if-eqz p2, :cond_0

    iget-object v0, p1, Lcom/narvii/model/Blog;->blogId:Ljava/lang/String;

    iget-object p2, p2, Lcom/narvii/model/Blog;->blogId:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 157
    iput-object p1, p0, Lcom/narvii/poll/PollOptionListLayout;->poll:Lcom/narvii/model/Blog;

    const/4 p1, 0x1

    .line 158
    invoke-virtual {p0, p1}, Lcom/narvii/poll/PollOptionListLayout;->updateView(Z)V

    .line 159
    iput-boolean p1, p0, Lcom/narvii/poll/PollOptionListLayout;->pendingAnim:Z

    .line 160
    iget-object p1, p0, Lcom/narvii/poll/PollOptionListLayout;->pendingEnd:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method polloptSize(Lcom/narvii/model/Blog;)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 214
    iget-object v1, p1, Lcom/narvii/model/Blog;->polloptList:Ljava/util/List;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p1, Lcom/narvii/model/Blog;->polloptList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :cond_2
    :goto_0
    return v0
.end method

.method public setDarkTheme(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/high16 v0, 0x33000000

    goto :goto_0

    :cond_0
    const/high16 v0, 0x8000000

    .line 207
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 208
    iget-object v0, p0, Lcom/narvii/poll/PollOptionListLayout;->text:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    goto :goto_1

    :cond_1
    const p1, -0x777778

    .line 209
    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    return-void
.end method

.method public setPoll(Lcom/narvii/model/Blog;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 188
    invoke-virtual {p0, p1, v0, v1}, Lcom/narvii/poll/PollOptionListLayout;->setPoll(Lcom/narvii/model/Blog;Ljava/lang/Boolean;Z)V

    return-void
.end method

.method public setPoll(Lcom/narvii/model/Blog;Ljava/lang/Boolean;Z)V
    .locals 1

    .line 192
    iput-object p1, p0, Lcom/narvii/poll/PollOptionListLayout;->poll:Lcom/narvii/model/Blog;

    .line 193
    iput-object p2, p0, Lcom/narvii/poll/PollOptionListLayout;->forceShowResult:Ljava/lang/Boolean;

    .line 194
    iget-boolean p2, p0, Lcom/narvii/poll/PollOptionListLayout;->pendingAnim:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/narvii/poll/PollOptionListLayout;->poll:Lcom/narvii/model/Blog;

    if-eqz p2, :cond_0

    iget-object p2, p2, Lcom/narvii/model/Blog;->blogId:Ljava/lang/String;

    iget-object v0, p1, Lcom/narvii/model/Blog;->blogId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 195
    iput-object p1, p0, Lcom/narvii/poll/PollOptionListLayout;->pendingPoll:Lcom/narvii/model/Blog;

    goto :goto_0

    .line 197
    :cond_0
    iget-boolean p1, p0, Lcom/narvii/poll/PollOptionListLayout;->pendingAnim:Z

    if-eqz p1, :cond_1

    .line 198
    iget-object p1, p0, Lcom/narvii/poll/PollOptionListLayout;->pendingEnd:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    .line 199
    iput-boolean p1, p0, Lcom/narvii/poll/PollOptionListLayout;->pendingAnim:Z

    const/4 p1, 0x0

    .line 200
    iput-object p1, p0, Lcom/narvii/poll/PollOptionListLayout;->pendingPoll:Lcom/narvii/model/Blog;

    .line 202
    :cond_1
    invoke-virtual {p0, p3}, Lcom/narvii/poll/PollOptionListLayout;->updateView(Z)V

    :goto_0
    return-void
.end method

.method public setPreviewBlockListener(Lcom/narvii/poll/PollOptionListLayout$PollPreviewBlockListener;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/narvii/poll/PollOptionListLayout;->previewBlockListener:Lcom/narvii/poll/PollOptionListLayout$PollPreviewBlockListener;

    return-void
.end method

.method public setUpSnippetImageLoadTracker(Lcom/narvii/image/ImageLoadTracker;)V
    .locals 6

    .line 440
    iget-object v0, p0, Lcom/narvii/poll/PollOptionListLayout;->options:[Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 441
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    const v4, 0x7f090571

    .line 442
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/narvii/widget/NVImageView;

    .line 443
    invoke-virtual {p1, v5}, Lcom/narvii/image/ImageLoadTracker;->addImageView(Lcom/narvii/widget/NVImageView;)V

    const v5, 0x7f0905d7

    .line 445
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 447
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/narvii/widget/NVImageView;

    .line 448
    invoke-virtual {p1, v3}, Lcom/narvii/image/ImageLoadTracker;->addImageView(Lcom/narvii/widget/NVImageView;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setVoteCallback(Lcom/narvii/util/Callback;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/narvii/poll/PollOptionListLayout;->voteCallback:Lcom/narvii/util/Callback;

    return-void
.end method

.method public setVotersSummary(ZLcom/narvii/poll/VotersSummaryResponse;Z)V
    .locals 8

    .line 218
    iput-object p2, p0, Lcom/narvii/poll/PollOptionListLayout;->voters:Lcom/narvii/poll/VotersSummaryResponse;

    .line 219
    iget-object v0, p0, Lcom/narvii/poll/PollOptionListLayout;->poll:Lcom/narvii/model/Blog;

    invoke-virtual {p0, v0}, Lcom/narvii/poll/PollOptionListLayout;->polloptSize(Lcom/narvii/model/Blog;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 220
    :goto_0
    iget-object v3, p0, Lcom/narvii/poll/PollOptionListLayout;->options:[Landroid/view/ViewGroup;

    array-length v3, v3

    if-ge v2, v3, :cond_5

    const/4 v3, 0x0

    if-ge v2, v0, :cond_0

    .line 221
    iget-object v4, p0, Lcom/narvii/poll/PollOptionListLayout;->poll:Lcom/narvii/model/Blog;

    iget-object v4, v4, Lcom/narvii/model/Blog;->polloptList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/model/PollOption;

    goto :goto_1

    :cond_0
    move-object v4, v3

    :goto_1
    if-eqz v4, :cond_2

    if-nez p2, :cond_1

    goto :goto_2

    .line 222
    :cond_1
    iget-object v3, v4, Lcom/narvii/model/PollOption;->polloptId:Ljava/lang/String;

    invoke-virtual {p2, v3}, Lcom/narvii/poll/VotersSummaryResponse;->getVoter(Ljava/lang/String;)Lcom/narvii/poll/Voter;

    move-result-object v3

    .line 223
    :cond_2
    :goto_2
    iget-object v5, p0, Lcom/narvii/poll/PollOptionListLayout;->options:[Landroid/view/ViewGroup;

    aget-object v5, v5, v2

    const v6, 0x7f09085f

    .line 225
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    .line 226
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/narvii/poll/VotersLayout;

    .line 227
    iget-object v6, p0, Lcom/narvii/poll/PollOptionListLayout;->poll:Lcom/narvii/model/Blog;

    if-nez v4, :cond_3

    const/4 v4, 0x0

    goto :goto_3

    :cond_3
    iget v4, v4, Lcom/narvii/model/PollOption;->votesCount:I

    :goto_3
    invoke-virtual {v5, v6, v3, v4}, Lcom/narvii/poll/VotersLayout;->setVoter(Lcom/narvii/model/Blog;Lcom/narvii/poll/Voter;I)V

    if-eqz p1, :cond_4

    if-eqz v3, :cond_4

    .line 230
    iget-object v4, v3, Lcom/narvii/model/api/UserListResponse;->userList:Ljava/util/List;

    if-eqz v4, :cond_4

    .line 231
    new-instance v4, Lcom/narvii/util/FilterHelper;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iget-object v3, v3, Lcom/narvii/model/api/UserListResponse;->userList:Ljava/util/List;

    invoke-virtual {v4, v3}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x0

    goto :goto_4

    :cond_4
    move v3, p1

    .line 236
    :goto_4
    invoke-virtual {v5, v3, p3}, Lcom/narvii/poll/VotersLayout;->setExpand(ZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method setupCell(Landroid/view/View;I)V
    .locals 3

    const v0, 0x7f0908e8

    .line 107
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/LongPushButton;

    .line 108
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f09058d

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 109
    iput-object p0, v0, Lcom/narvii/widget/LongPushButton;->longPressCallback:Lcom/narvii/util/Callback;

    const v0, 0x7f090571

    .line 110
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 111
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 112
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0905d7

    .line 113
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 114
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 115
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method updateView(Z)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 241
    iget-object v2, v0, Lcom/narvii/poll/PollOptionListLayout;->poll:Lcom/narvii/model/Blog;

    .line 242
    invoke-virtual {v0, v2}, Lcom/narvii/poll/PollOptionListLayout;->polloptSize(Lcom/narvii/model/Blog;)I

    move-result v3

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 245
    iget-object v5, v2, Lcom/narvii/model/Blog;->polloptList:Ljava/util/List;

    if-eqz v5, :cond_0

    .line 246
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/narvii/model/PollOption;

    .line 247
    iget v7, v7, Lcom/narvii/model/PollOption;->votesCount:I

    add-int/2addr v6, v7

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 251
    :cond_1
    iget-object v5, v0, Lcom/narvii/poll/PollOptionListLayout;->forceShowResult:Ljava/lang/Boolean;

    const/4 v7, 0x1

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lcom/narvii/model/Blog;->isPollEnded()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v2}, Lcom/narvii/model/Blog;->isPollVoted()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v5, 0x1

    :goto_2
    xor-int/lit8 v8, v5, 0x1

    .line 252
    iput-boolean v8, v0, Lcom/narvii/poll/PollOptionListLayout;->blockTouch:Z

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v3, :cond_6

    .line 256
    iget-object v9, v2, Lcom/narvii/model/Blog;->polloptList:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/narvii/model/PollOption;

    .line 257
    invoke-virtual {v9}, Lcom/narvii/model/PollOption;->firstMedia()Lcom/narvii/model/Media;

    move-result-object v9

    if-eqz v9, :cond_5

    const/4 v8, 0x0

    goto :goto_4

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_6
    const/4 v8, 0x1

    .line 263
    :goto_4
    iget-boolean v9, v0, Lcom/narvii/poll/PollOptionListLayout;->autoAdjust:Z

    if-eqz v9, :cond_9

    iget-object v9, v0, Lcom/narvii/poll/PollOptionListLayout;->options:[Landroid/view/ViewGroup;

    array-length v9, v9

    if-eq v9, v3, :cond_9

    .line 264
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    .line 265
    new-instance v10, Ljava/util/ArrayList;

    iget-object v11, v0, Lcom/narvii/poll/PollOptionListLayout;->options:[Landroid/view/ViewGroup;

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 266
    :goto_5
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v11, v3, :cond_7

    const v11, 0x7f0b057a

    .line 267
    invoke-virtual {v9, v11, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    .line 268
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v0, v11, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 269
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v0, v11, v12}, Lcom/narvii/poll/PollOptionListLayout;->setupCell(Landroid/view/View;I)V

    .line 270
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 272
    :cond_7
    :goto_6
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v3, :cond_8

    .line 273
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v7

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_6

    .line 275
    :cond_8
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Landroid/view/ViewGroup;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/view/ViewGroup;

    iput-object v9, v0, Lcom/narvii/poll/PollOptionListLayout;->options:[Landroid/view/ViewGroup;

    :cond_9
    if-eqz v2, :cond_d

    .line 280
    iget-object v10, v2, Lcom/narvii/model/Blog;->polloptList:Ljava/util/List;

    if-eqz v10, :cond_d

    .line 281
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v11, 0x0

    :goto_7
    const/4 v12, 0x0

    :cond_a
    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/narvii/model/PollOption;

    .line 282
    iget v14, v13, Lcom/narvii/model/PollOption;->votesCount:I

    if-lez v14, :cond_a

    if-nez v11, :cond_b

    :goto_9
    move-object v11, v13

    goto :goto_7

    .line 286
    :cond_b
    iget v15, v11, Lcom/narvii/model/PollOption;->votesCount:I

    if-le v14, v15, :cond_c

    goto :goto_9

    :cond_c
    if-ne v14, v15, :cond_a

    const/4 v12, 0x1

    goto :goto_8

    :cond_d
    const/4 v11, 0x0

    const/4 v12, 0x0

    :cond_e
    if-nez v2, :cond_f

    const/4 v10, 0x0

    goto :goto_a

    .line 296
    :cond_f
    iget-object v10, v0, Lcom/narvii/poll/PollOptionListLayout;->pollService:Lcom/narvii/poll/PollService;

    iget-object v13, v2, Lcom/narvii/model/Blog;->blogId:Ljava/lang/String;

    invoke-virtual {v10, v13}, Lcom/narvii/poll/PollService;->getVotingOption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :goto_a
    const/4 v13, 0x0

    .line 297
    :goto_b
    iget-object v14, v0, Lcom/narvii/poll/PollOptionListLayout;->options:[Landroid/view/ViewGroup;

    array-length v14, v14

    if-ge v13, v14, :cond_29

    if-ge v13, v3, :cond_10

    .line 298
    iget-object v14, v2, Lcom/narvii/model/Blog;->polloptList:Ljava/util/List;

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/narvii/model/PollOption;

    goto :goto_c

    :cond_10
    const/4 v14, 0x0

    :goto_c
    if-eqz v14, :cond_11

    .line 299
    iget-object v15, v14, Lcom/narvii/model/PollOption;->polloptId:Ljava/lang/String;

    invoke-static {v15, v10}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_11

    const/4 v15, 0x1

    goto :goto_d

    :cond_11
    const/4 v15, 0x0

    .line 300
    :goto_d
    iget-object v9, v0, Lcom/narvii/poll/PollOptionListLayout;->options:[Landroid/view/ViewGroup;

    aget-object v9, v9, v13

    const/16 v16, 0x8

    if-nez v14, :cond_12

    const/16 v4, 0x8

    .line 302
    :cond_12
    invoke-virtual {v9, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    const v4, 0x7f090571

    .line 304
    invoke-virtual {v9, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v14, :cond_13

    .line 305
    iget v7, v14, Lcom/narvii/model/PollOption;->type:I

    if-nez v7, :cond_14

    :cond_13
    if-nez v8, :cond_14

    const/4 v7, 0x0

    goto :goto_e

    :cond_14
    const/16 v7, 0x8

    :goto_e
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    if-eqz v14, :cond_16

    .line 306
    iget v7, v14, Lcom/narvii/model/PollOption;->type:I

    if-eqz v7, :cond_15

    goto :goto_f

    :cond_15
    invoke-virtual {v14}, Lcom/narvii/model/PollOption;->firstMedia()Lcom/narvii/model/Media;

    move-result-object v7

    move/from16 v19, v3

    goto :goto_10

    :cond_16
    :goto_f
    move/from16 v19, v3

    const/4 v7, 0x0

    .line 307
    :goto_10
    instance-of v3, v4, Lcom/narvii/widget/SecretImageView;

    if-eqz v3, :cond_17

    .line 308
    check-cast v4, Lcom/narvii/widget/SecretImageView;

    iget-boolean v3, v2, Lcom/narvii/model/Feed;->needHidden:Z

    invoke-virtual {v4, v7, v3}, Lcom/narvii/widget/SecretImageView;->setImageMedia(Lcom/narvii/model/Media;Z)Z

    goto :goto_11

    .line 310
    :cond_17
    check-cast v4, Lcom/narvii/widget/NVImageView;

    invoke-virtual {v4, v7}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    :goto_11
    const v3, 0x7f0905d7

    .line 312
    invoke-virtual {v9, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v14, :cond_18

    .line 313
    iget v4, v14, Lcom/narvii/model/PollOption;->type:I

    const/4 v7, 0x1

    if-ne v4, v7, :cond_19

    const/4 v4, 0x0

    goto :goto_12

    :cond_18
    const/4 v7, 0x1

    :cond_19
    const/16 v4, 0x8

    :goto_12
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 314
    check-cast v3, Lcom/narvii/widget/CardView;

    if-eqz v14, :cond_1b

    iget v4, v14, Lcom/narvii/model/PollOption;->type:I

    if-eq v4, v7, :cond_1a

    goto :goto_13

    :cond_1a
    iget-object v4, v14, Lcom/narvii/model/PollOption;->refObject:Lcom/narvii/model/Feed;

    check-cast v4, Lcom/narvii/model/Item;

    goto :goto_14

    :cond_1b
    :goto_13
    const/4 v4, 0x0

    :goto_14
    invoke-virtual {v3, v4}, Lcom/narvii/widget/CardView;->setItem(Lcom/narvii/model/Item;)V

    if-eqz v14, :cond_1c

    .line 317
    iget v3, v14, Lcom/narvii/model/PollOption;->type:I

    if-nez v3, :cond_1c

    .line 318
    iget-object v3, v14, Lcom/narvii/model/PollOption;->title:Ljava/lang/String;

    const/4 v7, 0x1

    goto :goto_15

    :cond_1c
    if-eqz v14, :cond_1d

    .line 319
    iget v3, v14, Lcom/narvii/model/PollOption;->type:I

    const/4 v7, 0x1

    if-ne v3, v7, :cond_1e

    iget-object v3, v14, Lcom/narvii/model/PollOption;->refObject:Lcom/narvii/model/Feed;

    if-eqz v3, :cond_1e

    .line 320
    invoke-virtual {v3}, Lcom/narvii/model/Feed;->title()Ljava/lang/String;

    move-result-object v3

    goto :goto_15

    :cond_1d
    const/4 v7, 0x1

    :cond_1e
    const/4 v3, 0x0

    :goto_15
    const v4, 0x7f090b9b

    .line 322
    invoke-virtual {v9, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f090b9c

    .line 323
    invoke-virtual {v9, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v7, v18

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez v12, :cond_1f

    if-ne v14, v11, :cond_1f

    const/4 v3, 0x1

    goto :goto_16

    :cond_1f
    const/4 v3, 0x0

    .line 325
    :goto_16
    invoke-virtual {v9, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {v3}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v4, 0x7f090cd4

    .line 326
    invoke-virtual {v9, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {v3}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v3, 0x7f09020f

    .line 327
    invoke-virtual {v9, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v14, :cond_20

    iget v4, v14, Lcom/narvii/model/PollOption;->votedValue:I

    if-lez v4, :cond_20

    const/4 v4, 0x0

    goto :goto_17

    :cond_20
    const/16 v4, 0x8

    :goto_17
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f0908e8

    .line 328
    invoke-virtual {v9, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/narvii/widget/LongPushButton;

    if-eqz v3, :cond_21

    .line 330
    new-instance v4, Lcom/narvii/poll/PollOptionListLayout$2;

    invoke-direct {v4, v0}, Lcom/narvii/poll/PollOptionListLayout$2;-><init>(Lcom/narvii/poll/PollOptionListLayout;)V

    invoke-virtual {v3, v4}, Lcom/narvii/widget/LongPushButton;->setAllowLongPushListener(Lcom/narvii/widget/LongPushButton$AllowLongPushListener;)V

    :cond_21
    const/4 v4, 0x4

    if-eqz v5, :cond_22

    const/4 v7, 0x4

    goto :goto_18

    :cond_22
    const/4 v7, 0x0

    .line 344
    :goto_18
    invoke-static {v3, v7, v1}, Lcom/narvii/poll/PollOptionListLayout;->setViewVisibility(Landroid/view/View;IZ)V

    if-eqz v1, :cond_23

    if-nez v15, :cond_23

    goto :goto_19

    .line 347
    :cond_23
    invoke-virtual {v3, v15}, Lcom/narvii/widget/LongPushButton;->lock(Z)V

    :goto_19
    const v3, 0x7f0908cb

    .line 349
    invoke-virtual {v9, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v15, :cond_24

    const/4 v7, 0x0

    goto :goto_1a

    :cond_24
    const/4 v7, 0x4

    :goto_1a
    invoke-static {v3, v7, v1}, Lcom/narvii/poll/PollOptionListLayout;->setViewVisibility(Landroid/view/View;IZ)V

    const v3, 0x7f090cd3

    .line 350
    invoke-virtual {v9, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/narvii/poll/VoteBar;

    if-eqz v5, :cond_25

    const/4 v4, 0x0

    .line 351
    :cond_25
    invoke-static {v3, v4, v1}, Lcom/narvii/poll/PollOptionListLayout;->setViewVisibility(Landroid/view/View;IZ)V

    move v7, v5

    const-wide/16 v4, 0x0

    if-nez v14, :cond_26

    const/4 v9, 0x0

    const/4 v15, 0x0

    .line 353
    invoke-virtual {v3, v15, v9, v4, v5}, Lcom/narvii/poll/VoteBar;->setValue(ZFJ)V

    move v9, v6

    move v14, v7

    goto :goto_1d

    :cond_26
    const/4 v15, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    .line 355
    iget v4, v14, Lcom/narvii/model/PollOption;->votesCount:I

    int-to-float v4, v4

    mul-float v4, v4, v9

    int-to-float v5, v6

    div-float/2addr v4, v5

    .line 356
    iget v5, v14, Lcom/narvii/model/PollOption;->votedValue:I

    if-lez v5, :cond_27

    const/4 v5, 0x1

    goto :goto_1b

    :cond_27
    const/4 v5, 0x0

    :goto_1b
    if-eqz v1, :cond_28

    const-wide/16 v16, 0x1f4

    move v9, v6

    move v14, v7

    move-wide/from16 v6, v16

    goto :goto_1c

    :cond_28
    move v9, v6

    move v14, v7

    const-wide/16 v6, 0x0

    :goto_1c
    invoke-virtual {v3, v5, v4, v6, v7}, Lcom/narvii/poll/VoteBar;->setValue(ZFJ)V

    :goto_1d
    add-int/lit8 v13, v13, 0x1

    move v6, v9

    move v5, v14

    move/from16 v3, v19

    const/4 v4, 0x0

    const/4 v7, 0x1

    goto/16 :goto_b

    .line 360
    :cond_29
    iget-object v1, v0, Lcom/narvii/poll/PollOptionListLayout;->text:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/narvii/util/BlogUtils;->getPollDurationText(Lcom/narvii/model/Blog;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
