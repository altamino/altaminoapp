.class public final Lcom/narvii/scene/poll/ScenePollPlayView;
.super Lcom/narvii/scene/ScenePlayBaseView;
.source "ScenePollPlayView.kt"

# interfaces
.implements Lcom/narvii/util/Callback;
.implements Lcom/narvii/scene/ScenePlayView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/scene/poll/ScenePollPlayView$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/scene/ScenePlayBaseView;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/widget/LongPushButton;",
        ">;",
        "Lcom/narvii/scene/ScenePlayView;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScenePollPlayView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScenePollPlayView.kt\ncom/narvii/scene/poll/ScenePollPlayView\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,448:1\n673#2:449\n746#2,2:450\n1587#2,2:452\n1792#2,3:454\n1871#2,5:457\n1596#2,3:462\n*E\n*S KotlinDebug\n*F\n+ 1 ScenePollPlayView.kt\ncom/narvii/scene/poll/ScenePollPlayView\n*L\n275#1:449\n275#1,2:450\n287#1,2:452\n294#1,3:454\n295#1,5:457\n326#1,3:462\n*E\n"
.end annotation


# static fields
.field public static final AREA_POLL:Ljava/lang/String; = "Poll"

.field public static final COUNT_DOWN_INTERVAL_MS:J = 0x3e8L

.field public static final Companion:Lcom/narvii/scene/poll/ScenePollPlayView$Companion;

.field public static final POLL_COUNT_DOWN_MS:J = 0x3a98L

.field public static final POLL_RESULT_COUNT_DOWN_MS:J = 0xbb8L


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final changeVoteTV:Landroid/widget/TextView;

.field private final countDownRunnable:Ljava/lang/Runnable;

.field private countDownTime:J

.field private currentPoll:Lcom/narvii/model/PollAttach;

.field private hasShowResultOnce:Z

.field private isFirstTimePlay:Z

.field private isGlobalVote:Z

.field private isOptionPressing:Z

.field private isPlayed:Z

.field private isRequesting:Z

.field private final optionContainer:Landroid/view/ViewGroup;

.field private final optionViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private originalPoll:Lcom/narvii/model/PollAttach;

.field private sceneId:Ljava/lang/String;

.field private final skipHintTV:Landroid/widget/TextView;

.field private final titleTV:Landroid/widget/TextView;

.field private final voteCountTV:Landroid/widget/TextView;

.field private votedOptionId:Ljava/lang/String;

.field private votedOptionIdBackup:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/scene/poll/ScenePollPlayView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/scene/poll/ScenePollPlayView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/scene/poll/ScenePollPlayView;->Companion:Lcom/narvii/scene/poll/ScenePollPlayView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 37
    invoke-direct {p0, p1}, Lcom/narvii/scene/ScenePlayBaseView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 56
    iput-boolean p1, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->isFirstTimePlay:Z

    .line 72
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/narvii/mediaeditor/R$layout;->fragment_scene_poll_play:I

    invoke-virtual {v0, v1, p0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 73
    sget p1, Lcom/narvii/mediaeditor/R$id;->title:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.title)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->titleTV:Landroid/widget/TextView;

    .line 74
    sget p1, Lcom/narvii/mediaeditor/R$id;->vote_count:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.vote_count)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->voteCountTV:Landroid/widget/TextView;

    .line 75
    sget p1, Lcom/narvii/mediaeditor/R$id;->skip_hint:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.skip_hint)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->skipHintTV:Landroid/widget/TextView;

    .line 76
    sget p1, Lcom/narvii/mediaeditor/R$id;->options_container:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.options_container)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->optionContainer:Landroid/view/ViewGroup;

    .line 77
    sget p1, Lcom/narvii/mediaeditor/R$id;->change_vote:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.change_vote)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->changeVoteTV:Landroid/widget/TextView;

    .line 78
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->optionViewList:Ljava/util/List;

    .line 80
    new-instance p1, Lcom/narvii/scene/poll/ScenePollPlayView$1;

    invoke-direct {p1, p0}, Lcom/narvii/scene/poll/ScenePollPlayView$1;-><init>(Lcom/narvii/scene/poll/ScenePollPlayView;)V

    iput-object p1, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->countDownRunnable:Ljava/lang/Runnable;

    .line 95
    sget p1, Lcom/narvii/mediaeditor/R$id;->background:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    sget-object v0, Lcom/narvii/scene/poll/ScenePollPlayView$2;->INSTANCE:Lcom/narvii/scene/poll/ScenePollPlayView$2;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object p1, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->skipHintTV:Landroid/widget/TextView;

    new-instance v0, Lcom/narvii/scene/poll/ScenePollPlayView$3;

    invoke-direct {v0, p0}, Lcom/narvii/scene/poll/ScenePollPlayView$3;-><init>(Lcom/narvii/scene/poll/ScenePollPlayView;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    .line 102
    invoke-static {p1}, Lcom/narvii/util/Utils;->isGlobalInteractionScope(Lcom/narvii/app/NVContext;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->isGlobalVote:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/narvii/scene/ScenePlayBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 56
    iput-boolean p1, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->isFirstTimePlay:Z

    .line 72
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/narvii/mediaeditor/R$layout;->fragment_scene_poll_play:I

    invoke-virtual {p2, v0, p0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 73
    sget p1, Lcom/narvii/mediaeditor/R$id;->title:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.title)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->titleTV:Landroid/widget/TextView;

    .line 74
    sget p1, Lcom/narvii/mediaeditor/R$id;->vote_count:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.vote_count)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->voteCountTV:Landroid/widget/TextView;

    .line 75
    sget p1, Lcom/narvii/mediaeditor/R$id;->skip_hint:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.skip_hint)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->skipHintTV:Landroid/widget/TextView;

    .line 76
    sget p1, Lcom/narvii/mediaeditor/R$id;->options_container:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.options_container)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->optionContainer:Landroid/view/ViewGroup;

    .line 77
    sget p1, Lcom/narvii/mediaeditor/R$id;->change_vote:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(R.id.change_vote)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->changeVoteTV:Landroid/widget/TextView;

    .line 78
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->optionViewList:Ljava/util/List;

    .line 80
    new-instance p1, Lcom/narvii/scene/poll/ScenePollPlayView$1;

    invoke-direct {p1, p0}, Lcom/narvii/scene/poll/ScenePollPlayView$1;-><init>(Lcom/narvii/scene/poll/ScenePollPlayView;)V

    iput-object p1, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->countDownRunnable:Ljava/lang/Runnable;

    .line 95
    sget p1, Lcom/narvii/mediaeditor/R$id;->background:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    sget-object p2, Lcom/narvii/scene/poll/ScenePollPlayView$2;->INSTANCE:Lcom/narvii/scene/poll/ScenePollPlayView$2;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object p1, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->skipHintTV:Landroid/widget/TextView;

    new-instance p2, Lcom/narvii/scene/poll/ScenePollPlayView$3;

    invoke-direct {p2, p0}, Lcom/narvii/scene/poll/ScenePollPlayView$3;-><init>(Lcom/narvii/scene/poll/ScenePollPlayView;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    .line 102
    invoke-static {p1}, Lcom/narvii/util/Utils;->isGlobalInteractionScope(Lcom/narvii/app/NVContext;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->isGlobalVote:Z

    return-void
.end method

.method public static final synthetic access$forceShowPollResult(Lcom/narvii/scene/poll/ScenePollPlayView;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/narvii/scene/poll/ScenePollPlayView;->forceShowPollResult()V

    return-void
.end method

.method public static final synthetic access$getCountDownRunnable$p(Lcom/narvii/scene/poll/ScenePollPlayView;)Ljava/lang/Runnable;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->countDownRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic access$getCountDownTime$p(Lcom/narvii/scene/poll/ScenePollPlayView;)J
    .locals 2

    .line 35
    iget-wide v0, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->countDownTime:J

    return-wide v0
.end method

.method public static final synthetic access$getCurrentPoll$p(Lcom/narvii/scene/poll/ScenePollPlayView;)Lcom/narvii/model/PollAttach;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->currentPoll:Lcom/narvii/model/PollAttach;

    return-object p0
.end method

.method public static final synthetic access$getLogEventBuilder(Lcom/narvii/scene/poll/ScenePollPlayView;)Lcom/narvii/logging/LogEvent$Builder;
    .locals 0

    .line 35
    invoke-virtual {p0}, Lcom/narvii/scene/ScenePlayBaseView;->getLogEventBuilder()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getOptionViewList$p(Lcom/narvii/scene/poll/ScenePollPlayView;)Ljava/util/List;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->optionViewList:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getOriginalPoll$p(Lcom/narvii/scene/poll/ScenePollPlayView;)Lcom/narvii/model/PollAttach;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->originalPoll:Lcom/narvii/model/PollAttach;

    return-object p0
.end method

.method public static final synthetic access$getPolloptListFixed(Lcom/narvii/scene/poll/ScenePollPlayView;)Ljava/util/List;
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/narvii/scene/poll/ScenePollPlayView;->getPolloptListFixed()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSceneId$p(Lcom/narvii/scene/poll/ScenePollPlayView;)Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->sceneId:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getScenePlayListener$p(Lcom/narvii/scene/poll/ScenePollPlayView;)Lcom/narvii/scene/ScenePlayListener;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/narvii/scene/ScenePlayBaseView;->scenePlayListener:Lcom/narvii/scene/ScenePlayListener;

    return-object p0
.end method

.method public static final synthetic access$getShowId$p(Lcom/narvii/scene/poll/ScenePollPlayView;)Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/narvii/scene/ScenePlayBaseView;->showId:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getStory$p(Lcom/narvii/scene/poll/ScenePollPlayView;)Lcom/narvii/model/Blog;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/narvii/scene/ScenePlayBaseView;->story:Lcom/narvii/model/Blog;

    return-object p0
.end method

.method public static final synthetic access$getVotedOptionId$p(Lcom/narvii/scene/poll/ScenePollPlayView;)Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->votedOptionId:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$isActive$p(Lcom/narvii/scene/poll/ScenePollPlayView;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/narvii/scene/ScenePlayBaseView;->isActive:Z

    return p0
.end method

.method public static final synthetic access$isOptionPressing$p(Lcom/narvii/scene/poll/ScenePollPlayView;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->isOptionPressing:Z

    return p0
.end method

.method public static final synthetic access$isPlayed$p(Lcom/narvii/scene/poll/ScenePollPlayView;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->isPlayed:Z

    return p0
.end method

.method public static final synthetic access$isRequesting$p(Lcom/narvii/scene/poll/ScenePollPlayView;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->isRequesting:Z

    return p0
.end method

.method public static final synthetic access$onCountDownUpdate(Lcom/narvii/scene/poll/ScenePollPlayView;J)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/narvii/scene/poll/ScenePollPlayView;->onCountDownUpdate(J)V

    return-void
.end method

.method public static final synthetic access$onTimeOut(Lcom/narvii/scene/poll/ScenePollPlayView;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/narvii/scene/poll/ScenePollPlayView;->onTimeOut()V

    return-void
.end method

.method public static final synthetic access$setActive$p(Lcom/narvii/scene/poll/ScenePollPlayView;Z)V
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/narvii/scene/ScenePlayBaseView;->isActive:Z

    return-void
.end method

.method public static final synthetic access$setCountDownTime$p(Lcom/narvii/scene/poll/ScenePollPlayView;J)V
    .locals 0

    .line 35
    iput-wide p1, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->countDownTime:J

    return-void
.end method

.method public static final synthetic access$setCurrentPoll$p(Lcom/narvii/scene/poll/ScenePollPlayView;Lcom/narvii/model/PollAttach;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->currentPoll:Lcom/narvii/model/PollAttach;

    return-void
.end method

.method public static final synthetic access$setOptionPressing$p(Lcom/narvii/scene/poll/ScenePollPlayView;Z)V
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->isOptionPressing:Z

    return-void
.end method

.method public static final synthetic access$setOriginalPoll$p(Lcom/narvii/scene/poll/ScenePollPlayView;Lcom/narvii/model/PollAttach;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->originalPoll:Lcom/narvii/model/PollAttach;

    return-void
.end method

.method public static final synthetic access$setPlayed$p(Lcom/narvii/scene/poll/ScenePollPlayView;Z)V
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->isPlayed:Z

    return-void
.end method

.method public static final synthetic access$setRequesting$p(Lcom/narvii/scene/poll/ScenePollPlayView;Z)V
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->isRequesting:Z

    return-void
.end method

.method public static final synthetic access$setSceneId$p(Lcom/narvii/scene/poll/ScenePollPlayView;Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->sceneId:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setScenePlayListener$p(Lcom/narvii/scene/poll/ScenePollPlayView;Lcom/narvii/scene/ScenePlayListener;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/narvii/scene/ScenePlayBaseView;->scenePlayListener:Lcom/narvii/scene/ScenePlayListener;

    return-void
.end method

.method public static final synthetic access$setShowId$p(Lcom/narvii/scene/poll/ScenePollPlayView;Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/narvii/scene/ScenePlayBaseView;->showId:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setStory$p(Lcom/narvii/scene/poll/ScenePollPlayView;Lcom/narvii/model/Blog;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/narvii/scene/ScenePlayBaseView;->story:Lcom/narvii/model/Blog;

    return-void
.end method

.method public static final synthetic access$setVotedOptionId$p(Lcom/narvii/scene/poll/ScenePollPlayView;Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->votedOptionId:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$skipToNextScene(Lcom/narvii/scene/poll/ScenePollPlayView;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/narvii/scene/poll/ScenePollPlayView;->skipToNextScene()V

    return-void
.end method

.method public static final synthetic access$startChangeVote(Lcom/narvii/scene/poll/ScenePollPlayView;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/narvii/scene/poll/ScenePollPlayView;->startChangeVote()V

    return-void
.end method

.method public static final synthetic access$startCountDown(Lcom/narvii/scene/poll/ScenePollPlayView;J)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/narvii/scene/poll/ScenePollPlayView;->startCountDown(J)V

    return-void
.end method

.method public static final synthetic access$updateCountDownState(Lcom/narvii/scene/poll/ScenePollPlayView;Z)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/narvii/scene/poll/ScenePollPlayView;->updateCountDownState(Z)V

    return-void
.end method

.method public static final synthetic access$updateOptions(Lcom/narvii/scene/poll/ScenePollPlayView;Z)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/narvii/scene/poll/ScenePollPlayView;->updateOptions(Z)V

    return-void
.end method

.method private final forceShowPollResult()V
    .locals 4

    .line 334
    invoke-virtual {p0}, Lcom/narvii/scene/ScenePlayBaseView;->getLogEventBuilder()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    sget-object v1, Lcom/narvii/logging/ActSemantic;->wildcard:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const-string v1, "PollViewResultButton"

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    .line 335
    iget-object v1, p0, Lcom/narvii/scene/ScenePlayBaseView;->showId:Ljava/lang/String;

    const-string v2, "pollShowId"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    .line 336
    iget-object v1, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->currentPoll:Lcom/narvii/model/PollAttach;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/narvii/model/PollAttach;->attachId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const-string v3, "pollId"

    invoke-virtual {v0, v3, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    .line 337
    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 338
    iget-object v0, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->votedOptionId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->votedOptionIdBackup:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 339
    :cond_1
    iget-object v0, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->votedOptionIdBackup:Ljava/lang/String;

    iput-object v0, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->votedOptionId:Ljava/lang/String;

    .line 340
    iput-object v2, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->votedOptionIdBackup:Ljava/lang/String;

    :cond_2
    const/4 v0, 0x1

    .line 342
    invoke-direct {p0, v0}, Lcom/narvii/scene/poll/ScenePollPlayView;->updateOptions(Z)V

    return-void
.end method

.method private final getPolloptListFixed()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/model/PollOption;",
            ">;"
        }
    .end annotation

    .line 389
    iget-object v0, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->currentPoll:Lcom/narvii/model/PollAttach;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/model/PollAttach;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/PollAttach;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 390
    iget-object v2, v0, Lcom/narvii/model/PollAttach;->polloptList:Ljava/util/List;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/narvii/model/PollOption;

    iget-object v4, v4, Lcom/narvii/model/PollOption;->polloptId:Ljava/lang/String;

    iget-object v5, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->votedOptionId:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_1
    move-object v3, v1

    :goto_0
    check-cast v3, Lcom/narvii/model/PollOption;

    if-eqz v3, :cond_3

    .line 391
    iget-boolean v2, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->isGlobalVote:Z

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    .line 392
    iget v2, v3, Lcom/narvii/model/PollOption;->globalVotedValue:I

    if-nez v2, :cond_3

    .line 393
    iget v2, v3, Lcom/narvii/model/PollOption;->globalVotesCount:I

    add-int/2addr v2, v4

    iput v2, v3, Lcom/narvii/model/PollOption;->globalVotesCount:I

    .line 394
    iput v4, v3, Lcom/narvii/model/PollOption;->globalVotedValue:I

    goto :goto_1

    .line 397
    :cond_2
    iget v2, v3, Lcom/narvii/model/PollOption;->votedValue:I

    if-nez v2, :cond_3

    .line 398
    iget v2, v3, Lcom/narvii/model/PollOption;->votesCount:I

    add-int/2addr v2, v4

    iput v2, v3, Lcom/narvii/model/PollOption;->votesCount:I

    .line 399
    iput v4, v3, Lcom/narvii/model/PollOption;->votedValue:I

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 403
    iget-object v1, v0, Lcom/narvii/model/PollAttach;->polloptList:Ljava/util/List;

    :cond_4
    return-object v1
.end method

.method private final getVotedOptionId()Ljava/lang/String;
    .locals 1

    .line 373
    iget-boolean v0, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->isPlayed:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/narvii/scene/poll/ScenePollPlayView;->isVoted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->votedOptionId:Ljava/lang/String;

    goto :goto_0

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->votedOptionIdBackup:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->votedOptionIdBackup:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private final isVoted()Z
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->votedOptionId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private final onCountDownUpdate(J)V
    .locals 6

    .line 143
    iget-object v0, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->skipHintTV:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/narvii/mediaeditor/R$string;->skip_n_second:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v4, 0x3e8

    int-to-long v4, v4

    div-long/2addr p1, v4

    long-to-int p2, p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v3, p2

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final onTimeOut()V
    .locals 0

    .line 146
    invoke-direct {p0}, Lcom/narvii/scene/poll/ScenePollPlayView;->skipToNextScene()V

    return-void
.end method

.method private final setVisibility(Landroid/view/View;IZ)V
    .locals 1

    .line 361
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p2, :cond_2

    .line 362
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    if-eqz p3, :cond_1

    .line 364
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    if-nez p2, :cond_0

    sget p2, Lcom/narvii/mediaeditor/R$anim;->fade_in:I

    goto :goto_0

    :cond_0
    sget p2, Lcom/narvii/mediaeditor/R$anim;->fade_out:I

    :goto_0
    invoke-static {p3, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 366
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    :cond_2
    :goto_1
    return-void
.end method

.method private final skipToNextScene()V
    .locals 2

    .line 380
    invoke-direct {p0}, Lcom/narvii/scene/poll/ScenePollPlayView;->getVotedOptionId()Ljava/lang/String;

    move-result-object v0

    .line 381
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/narvii/scene/ScenePlayBaseView;->scenePlayListener:Lcom/narvii/scene/ScenePlayListener;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->sceneId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/narvii/scene/ScenePlayListener;->onScenePlayEnd(Ljava/lang/String;)V

    goto :goto_0

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/ScenePlayBaseView;->scenePlayListener:Lcom/narvii/scene/ScenePlayListener;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->sceneId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/narvii/scene/ScenePlayListener;->onScenePlayEnd(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final startChangeVote()V
    .locals 4

    .line 347
    invoke-virtual {p0}, Lcom/narvii/scene/ScenePlayBaseView;->getLogEventBuilder()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    sget-object v1, Lcom/narvii/logging/ActSemantic;->wildcard:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const-string v1, "PollChangeVoteButton"

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    .line 348
    iget-object v1, p0, Lcom/narvii/scene/ScenePlayBaseView;->showId:Ljava/lang/String;

    const-string v2, "pollShowId"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    .line 349
    iget-object v1, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->currentPoll:Lcom/narvii/model/PollAttach;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/narvii/model/PollAttach;->attachId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const-string v3, "pollId"

    invoke-virtual {v0, v3, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    .line 350
    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 351
    iget-object v0, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->votedOptionId:Ljava/lang/String;

    iput-object v0, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->votedOptionIdBackup:Ljava/lang/String;

    .line 352
    iput-object v2, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->votedOptionId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 353
    iput-boolean v0, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->isRequesting:Z

    .line 354
    invoke-direct {p0, v0}, Lcom/narvii/scene/poll/ScenePollPlayView;->updateOptions(Z)V

    const-wide/16 v0, 0x3a98

    .line 355
    invoke-direct {p0, v0, v1}, Lcom/narvii/scene/poll/ScenePollPlayView;->startCountDown(J)V

    return-void
.end method

.method private final startCountDown(J)V
    .locals 2

    .line 407
    iget-object v0, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->countDownRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 408
    iput-wide p1, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->countDownTime:J

    .line 409
    invoke-direct {p0, p1, p2}, Lcom/narvii/scene/poll/ScenePollPlayView;->onCountDownUpdate(J)V

    .line 410
    iget-object p1, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->countDownRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private final updateCountDownState(Z)V
    .locals 2

    .line 424
    iget-object v0, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->countDownRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    if-eqz p1, :cond_0

    .line 426
    iget-object p1, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->countDownRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private final updateOption(Landroid/view/View;Lcom/narvii/model/PollOption;ZZZI)V
    .locals 6

    .line 222
    iget-object v0, p2, Lcom/narvii/model/PollOption;->polloptId:Ljava/lang/String;

    iget-object v1, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->votedOptionId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 223
    iget-boolean v2, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->isRequesting:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 225
    :goto_0
    sget v3, Lcom/narvii/mediaeditor/R$id;->option_iv:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/narvii/widget/ThumbImageView;

    const/16 v4, 0x8

    const-string v5, "optionIV"

    if-eqz p3, :cond_1

    .line 227
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 229
    :cond_1
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 230
    invoke-virtual {p2}, Lcom/narvii/model/PollOption;->firstMedia()Lcom/narvii/model/Media;

    move-result-object p3

    invoke-virtual {v3, p3}, Lcom/narvii/widget/ThumbImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 233
    :goto_1
    sget p3, Lcom/narvii/mediaeditor/R$id;->push_btn:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/LongPushButton;

    .line 234
    sget v3, Lcom/narvii/mediaeditor/R$id;->polloptId:I

    iget-object v5, p2, Lcom/narvii/model/PollOption;->polloptId:Ljava/lang/String;

    invoke-virtual {p3, v3, v5}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 235
    iput-object p0, p3, Lcom/narvii/widget/LongPushButton;->longPressCallback:Lcom/narvii/util/Callback;

    .line 236
    new-instance v3, Lcom/narvii/scene/poll/ScenePollPlayView$updateOption$1;

    invoke-direct {v3, p0}, Lcom/narvii/scene/poll/ScenePollPlayView$updateOption$1;-><init>(Lcom/narvii/scene/poll/ScenePollPlayView;)V

    invoke-virtual {p3, v3}, Lcom/narvii/widget/LongPushButton;->setAllowLongPushListener(Lcom/narvii/widget/LongPushButton$AllowLongPushListener;)V

    const-string v3, "pushButton"

    .line 237
    invoke-static {p3, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x4

    if-eqz p4, :cond_2

    const/4 v5, 0x4

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    invoke-direct {p0, p3, v5, p5}, Lcom/narvii/scene/poll/ScenePollPlayView;->setVisibility(Landroid/view/View;IZ)V

    .line 238
    new-instance v5, Lcom/narvii/scene/poll/ScenePollPlayView$updateOption$2;

    invoke-direct {v5, p0}, Lcom/narvii/scene/poll/ScenePollPlayView$updateOption$2;-><init>(Lcom/narvii/scene/poll/ScenePollPlayView;)V

    invoke-virtual {p3, v5}, Lcom/narvii/widget/LongPushButton;->setDispatchSetPressedListener(Lcom/narvii/widget/LongPushButton$DispatchSetPressedListener;)V

    if-eqz p5, :cond_3

    if-eqz v2, :cond_4

    .line 246
    :cond_3
    invoke-virtual {p3, v2}, Lcom/narvii/widget/LongPushButton;->lock(Z)V

    .line 248
    :cond_4
    sget p3, Lcom/narvii/mediaeditor/R$id;->progress:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const-string v5, "optionView.findViewById<View>(R.id.progress)"

    invoke-static {p3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_5

    const/4 v5, 0x0

    goto :goto_3

    :cond_5
    const/4 v5, 0x4

    :goto_3
    invoke-direct {p0, p3, v5, p5}, Lcom/narvii/scene/poll/ScenePollPlayView;->setVisibility(Landroid/view/View;IZ)V

    .line 250
    sget p3, Lcom/narvii/mediaeditor/R$id;->vote_bar:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/poll/VoteBar;

    const-string v5, "bar"

    .line 251
    invoke-static {p3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p4, :cond_6

    const/4 v3, 0x0

    :cond_6
    invoke-direct {p0, p3, v3, p5}, Lcom/narvii/scene/poll/ScenePollPlayView;->setVisibility(Landroid/view/View;IZ)V

    .line 253
    iget-boolean p4, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->isGlobalVote:Z

    if-eqz p4, :cond_7

    iget p4, p2, Lcom/narvii/model/PollOption;->globalVotesCount:I

    goto :goto_4

    :cond_7
    iget p4, p2, Lcom/narvii/model/PollOption;->votesCount:I

    :goto_4
    if-nez p6, :cond_8

    const/4 p4, 0x0

    goto :goto_5

    :cond_8
    const/high16 v3, 0x3f800000    # 1.0f

    add-int/2addr p4, v0

    int-to-float p4, p4

    mul-float p4, p4, v3

    int-to-float p6, p6

    div-float/2addr p4, p6

    :goto_5
    if-eqz p5, :cond_9

    const-wide/16 p5, 0x1f4

    goto :goto_6

    :cond_9
    const-wide/16 p5, 0x0

    .line 255
    :goto_6
    invoke-virtual {p3, v0, p4, p5, p6}, Lcom/narvii/poll/VoteBar;->setValue(ZFJ)V

    .line 257
    sget p3, Lcom/narvii/mediaeditor/R$id;->title1:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/AutoSizingTextView;

    if-eqz v2, :cond_a

    .line 258
    invoke-virtual {p3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p4

    const/high16 p5, 0x42000000    # 32.0f

    invoke-static {p4, p5}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result p4

    goto :goto_7

    :cond_a
    const/4 p4, 0x0

    .line 259
    :goto_7
    invoke-virtual {p3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    if-eqz p5, :cond_d

    check-cast p5, Landroid/widget/FrameLayout$LayoutParams;

    .line 260
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result p6

    if-eqz p6, :cond_b

    .line 261
    iput p4, p5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_8

    .line 263
    :cond_b
    iput p4, p5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 265
    :goto_8
    invoke-virtual {p3, p5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    iget-object p4, p2, Lcom/narvii/model/PollOption;->title:Ljava/lang/String;

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    invoke-virtual {p3}, Lcom/narvii/widget/AutoSizingTextView;->resizingFromMaxSize()V

    .line 269
    sget p3, Lcom/narvii/mediaeditor/R$id;->title2:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const-string p4, "optionView.findViewById<TextView>(R.id.title2)"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroid/widget/TextView;

    iget-object p2, p2, Lcom/narvii/model/PollOption;->title:Ljava/lang/String;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    sget p2, Lcom/narvii/mediaeditor/R$id;->check:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "optionView.findViewById<View>(R.id.check)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_c

    goto :goto_9

    :cond_c
    const/16 v1, 0x8

    :goto_9
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 259
    :cond_d
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final updateOptions(Z)V
    .locals 14

    .line 274
    iget-object v0, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->currentPoll:Lcom/narvii/model/PollAttach;

    if-eqz v0, :cond_14

    .line 275
    iget-object v1, v0, Lcom/narvii/model/PollAttach;->polloptList:Ljava/util/List;

    if-eqz v1, :cond_14

    .line 449
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 450
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/narvii/model/PollOption;

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_0

    .line 275
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 277
    :cond_2
    iget-object v1, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->titleTV:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/narvii/model/PollAttach;->title:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v0, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->optionViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 280
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v0, :cond_3

    .line 281
    iget-object v1, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->optionViewList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v1, v3, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 282
    iget-object v3, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->optionViewList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 283
    iget-object v1, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->optionContainer:Landroid/view/ViewGroup;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    sub-int v6, v0, v6

    invoke-virtual {v1, v3, v6}, Landroid/view/ViewGroup;->removeViews(II)V

    .line 286
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_4

    .line 287
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    .line 452
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Lkotlin/collections/IntIterator;

    invoke-virtual {v1}, Lkotlin/collections/IntIterator;->nextInt()I

    .line 288
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v3, Lcom/narvii/mediaeditor/R$layout;->scene_poll_option_play_layout:I

    invoke-virtual {v1, v3, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 289
    iget-object v3, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->optionViewList:Ljava/util/List;

    const-string v6, "optionView"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    iget-object v3, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->optionContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 454
    :cond_4
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    const/4 v0, 0x1

    goto :goto_4

    .line 455
    :cond_6
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/PollOption;

    .line 294
    invoke-virtual {v1}, Lcom/narvii/model/PollOption;->firstMedia()Lcom/narvii/model/Media;

    move-result-object v1

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    goto :goto_3

    :cond_8
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_7

    const/4 v0, 0x0

    .line 458
    :goto_4
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 459
    check-cast v6, Lcom/narvii/model/PollOption;

    .line 295
    iget-boolean v7, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->isGlobalVote:Z

    if-eqz v7, :cond_9

    iget v6, v6, Lcom/narvii/model/PollOption;->globalVotesCount:I

    goto :goto_6

    :cond_9
    iget v6, v6, Lcom/narvii/model/PollOption;->votesCount:I

    :goto_6
    add-int/2addr v3, v6

    goto :goto_5

    .line 296
    :cond_a
    invoke-direct {p0}, Lcom/narvii/scene/poll/ScenePollPlayView;->isVoted()Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    goto :goto_7

    :cond_b
    iget-object v1, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->votedOptionIdBackup:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/2addr v1, v4

    add-int/2addr v1, v5

    :goto_7
    add-int/2addr v1, v3

    .line 297
    iget-boolean v3, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->isRequesting:Z

    if-nez v3, :cond_c

    invoke-direct {p0}, Lcom/narvii/scene/poll/ScenePollPlayView;->isVoted()Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v3, 0x1

    goto :goto_8

    :cond_c
    const/4 v3, 0x0

    :goto_8
    const/16 v6, 0x8

    if-eqz v1, :cond_e

    if-eq v1, v4, :cond_d

    .line 306
    iget-object v7, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->voteCountTV:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 307
    iget-object v7, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->voteCountTV:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/narvii/mediaeditor/R$string;->poll_n_votes:I

    new-array v10, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v5

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 302
    :cond_d
    iget-object v7, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->voteCountTV:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 303
    iget-object v7, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->voteCountTV:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/narvii/mediaeditor/R$string;->poll_one_vote:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 300
    :cond_e
    iget-object v7, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->voteCountTV:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_9
    if-eqz v3, :cond_f

    .line 312
    iput-boolean v4, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->hasShowResultOnce:Z

    .line 313
    iget-object v4, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->changeVoteTV:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 314
    iget-object v4, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->changeVoteTV:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/narvii/mediaeditor/R$string;->detail_vote_change_vote:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    iget-object v4, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->changeVoteTV:Landroid/widget/TextView;

    new-instance v6, Lcom/narvii/scene/poll/ScenePollPlayView$updateOptions$2;

    invoke-direct {v6, p0}, Lcom/narvii/scene/poll/ScenePollPlayView$updateOptions$2;-><init>(Lcom/narvii/scene/poll/ScenePollPlayView;)V

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_a

    .line 316
    :cond_f
    iget-object v4, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->votedOptionIdBackup:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 317
    iget-object v4, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->changeVoteTV:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 318
    iget-object v4, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->changeVoteTV:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/narvii/mediaeditor/R$string;->detail_vote_view_result:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    iget-object v4, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->changeVoteTV:Landroid/widget/TextView;

    new-instance v6, Lcom/narvii/scene/poll/ScenePollPlayView$updateOptions$3;

    invoke-direct {v6, p0}, Lcom/narvii/scene/poll/ScenePollPlayView$updateOptions$3;-><init>(Lcom/narvii/scene/poll/ScenePollPlayView;)V

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_a

    .line 320
    :cond_10
    iget-boolean v4, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->hasShowResultOnce:Z

    if-eqz v4, :cond_11

    .line 321
    iget-object v4, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->changeVoteTV:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_a

    .line 323
    :cond_11
    iget-object v4, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->changeVoteTV:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 463
    :goto_a
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v13, v5, 0x1

    if-ltz v5, :cond_13

    move-object v8, v4

    check-cast v8, Lcom/narvii/model/PollOption;

    .line 327
    iget-object v4, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->optionViewList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v5, v4, :cond_12

    .line 328
    iget-object v4, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->optionViewList:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Landroid/view/View;

    const-string v4, "pollOption"

    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, p0

    move v9, v0

    move v10, v3

    move v11, p1

    move v12, v1

    invoke-direct/range {v6 .. v12}, Lcom/narvii/scene/poll/ScenePollPlayView;->updateOption(Landroid/view/View;Lcom/narvii/model/PollOption;ZZZI)V

    :cond_12
    move v5, v13

    goto :goto_b

    .line 463
    :cond_13
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    const/4 p1, 0x0

    throw p1

    :cond_14
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public call(Lcom/narvii/widget/LongPushButton;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 149
    sget v1, Lcom/narvii/mediaeditor/R$id;->polloptId:I

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_5

    iput-object p1, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->votedOptionId:Ljava/lang/String;

    .line 150
    iput-object v0, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->votedOptionIdBackup:Ljava/lang/String;

    .line 151
    iget-boolean p1, p0, Lcom/narvii/scene/ScenePlayBaseView;->isPreview:Z

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 152
    iput-boolean v1, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->isPlayed:Z

    .line 153
    invoke-direct {p0, v1}, Lcom/narvii/scene/poll/ScenePollPlayView;->updateOptions(Z)V

    const-wide/16 v0, 0xbb8

    .line 154
    invoke-direct {p0, v0, v1}, Lcom/narvii/scene/poll/ScenePollPlayView;->startCountDown(J)V

    .line 155
    iget-object p1, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->originalPoll:Lcom/narvii/model/PollAttach;

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/narvii/scene/poll/ScenePollPlayView;->getPolloptListFixed()Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/narvii/model/PollAttach;->polloptList:Ljava/util/List;

    .line 156
    :cond_1
    new-instance p1, Lcom/narvii/scene/ScenePlayRecord;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Lcom/narvii/scene/ScenePlayRecord;-><init>(I)V

    .line 157
    new-instance v0, Lcom/narvii/scene/poll/ScenePollResult;

    iget-object v1, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->votedOptionId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/narvii/scene/poll/ScenePollResult;-><init>(Ljava/lang/String;)V

    iput-object v0, p1, Lcom/narvii/scene/ScenePlayRecord;->result:Ljava/lang/Object;

    .line 158
    iget-object v0, p0, Lcom/narvii/scene/ScenePlayBaseView;->scenePlayListener:Lcom/narvii/scene/ScenePlayListener;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->sceneId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/narvii/scene/ScenePlayListener;->onScenePlayRecordGenerated(Ljava/lang/String;Lcom/narvii/scene/ScenePlayRecord;)V

    goto/16 :goto_1

    .line 160
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    .line 161
    invoke-static {p1}, Lcom/narvii/util/Utils;->shouldShowLoginPage(Lcom/narvii/app/NVContext;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 162
    iput-object v0, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->votedOptionId:Ljava/lang/String;

    return-void

    .line 165
    :cond_3
    iput-boolean v1, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->isRequesting:Z

    const/4 p1, 0x0

    .line 166
    invoke-direct {p0, p1}, Lcom/narvii/scene/poll/ScenePollPlayView;->updateCountDownState(Z)V

    .line 167
    invoke-direct {p0, v1}, Lcom/narvii/scene/poll/ScenePollPlayView;->updateOptions(Z)V

    .line 168
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string v0, "api"

    .line 169
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "c.getService(\"api\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 170
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    const-string v2, "value"

    .line 171
    invoke-virtual {v0, v2, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 174
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/scene/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->sceneId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/poll/option/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->votedOptionId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/vote"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->body(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 175
    iget-object v1, p0, Lcom/narvii/scene/ScenePlayBaseView;->story:Lcom/narvii/model/Blog;

    if-eqz v1, :cond_4

    .line 176
    iget v1, v1, Lcom/narvii/model/Feed;->ndcId:I

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 178
    :cond_4
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    new-instance v1, Lcom/narvii/scene/poll/ScenePollPlayView$call$1;

    const-class v2, Lcom/narvii/model/api/ApiResponse;

    invoke-direct {v1, p0, v2}, Lcom/narvii/scene/poll/ScenePollPlayView$call$1;-><init>(Lcom/narvii/scene/poll/ScenePollPlayView;Ljava/lang/Class;)V

    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 35
    check-cast p1, Lcom/narvii/widget/LongPushButton;

    invoke-virtual {p0, p1}, Lcom/narvii/scene/poll/ScenePollPlayView;->call(Lcom/narvii/widget/LongPushButton;)V

    return-void
.end method

.method public logEnd()V
    .locals 8

    .line 436
    iget-wide v0, p0, Lcom/narvii/scene/ScenePlayBaseView;->startTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 439
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/scene/ScenePlayBaseView;->getLogEventBuilder()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    sget-object v1, Lcom/narvii/logging/ActSemantic;->pollEnd:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const-string v1, "Poll"

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    .line 440
    iget-object v1, p0, Lcom/narvii/scene/ScenePlayBaseView;->showId:Ljava/lang/String;

    const-string v4, "pollShowId"

    invoke-virtual {v0, v4, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    .line 441
    iget-object v1, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->currentPoll:Lcom/narvii/model/PollAttach;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/narvii/model/PollAttach;->attachId:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-string v4, "pollId"

    invoke-virtual {v0, v4, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    .line 442
    invoke-direct {p0}, Lcom/narvii/scene/poll/ScenePollPlayView;->getVotedOptionId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->isFirstTimePlay:Z

    if-eqz v1, :cond_2

    const-string v1, "vote"

    goto :goto_1

    :cond_2
    const-string v1, "skip"

    :goto_1
    const-string v4, "endType"

    invoke-virtual {v0, v4, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    .line 443
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/narvii/scene/ScenePlayBaseView;->startTime:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v4, "pq_duration"

    invoke-virtual {v0, v4, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    .line 444
    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 446
    iput-wide v2, p0, Lcom/narvii/scene/ScenePlayBaseView;->startTime:J

    return-void
.end method

.method public logStart()V
    .locals 3

    .line 431
    invoke-super {p0}, Lcom/narvii/scene/ScenePlayBaseView;->logStart()V

    .line 432
    invoke-virtual {p0}, Lcom/narvii/scene/ScenePlayBaseView;->getLogEventBuilder()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    sget-object v1, Lcom/narvii/logging/ActSemantic;->pollStart:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const-string v1, "Poll"

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/scene/ScenePlayBaseView;->showId:Ljava/lang/String;

    const-string v2, "pollShowId"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->currentPoll:Lcom/narvii/model/PollAttach;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/narvii/model/PollAttach;->attachId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "pollId"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    return-void
.end method

.method public onActiveChanged(Z)V
    .locals 0

    .line 419
    invoke-super {p0, p1}, Lcom/narvii/scene/ScenePlayBaseView;->onActiveChanged(Z)V

    .line 420
    invoke-direct {p0, p1}, Lcom/narvii/scene/poll/ScenePollPlayView;->updateCountDownState(Z)V

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 0

    .line 414
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onViewRemoved(Landroid/view/View;)V

    .line 415
    iget-object p1, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->countDownRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final playPoll(Ljava/lang/String;Lcom/narvii/model/PollAttach;Lcom/narvii/scene/ScenePlayRecord;)V
    .locals 3

    .line 106
    iput-object p1, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->sceneId:Ljava/lang/String;

    .line 107
    iput-object p2, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->originalPoll:Lcom/narvii/model/PollAttach;

    .line 108
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-class p2, Lcom/narvii/model/PollAttach;

    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/PollAttach;

    iput-object p1, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->currentPoll:Lcom/narvii/model/PollAttach;

    .line 109
    iget-boolean p1, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->isGlobalVote:Z

    const/4 p2, 0x1

    const/4 p3, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 110
    iget-object p1, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->currentPoll:Lcom/narvii/model/PollAttach;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/narvii/model/PollAttach;->polloptList:Ljava/util/List;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/narvii/model/PollOption;

    iget v2, v2, Lcom/narvii/model/PollOption;->globalVotedValue:I

    if-lez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_0

    goto :goto_1

    :cond_2
    move-object v1, p3

    :goto_1
    move-object p1, v1

    check-cast p1, Lcom/narvii/model/PollOption;

    goto :goto_2

    :cond_3
    move-object p1, p3

    :goto_2
    if-eqz p1, :cond_4

    .line 112
    iget v1, p1, Lcom/narvii/model/PollOption;->globalVotesCount:I

    sub-int/2addr v1, p2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p1, Lcom/narvii/model/PollOption;->globalVotesCount:I

    .line 113
    iput v0, p1, Lcom/narvii/model/PollOption;->globalVotedValue:I

    :cond_4
    if-eqz p1, :cond_b

    .line 115
    iget-object p3, p1, Lcom/narvii/model/PollOption;->polloptId:Ljava/lang/String;

    goto :goto_6

    .line 117
    :cond_5
    iget-object p1, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->currentPoll:Lcom/narvii/model/PollAttach;

    if-eqz p1, :cond_9

    iget-object p1, p1, Lcom/narvii/model/PollAttach;->polloptList:Ljava/util/List;

    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/narvii/model/PollOption;

    iget v2, v2, Lcom/narvii/model/PollOption;->votedValue:I

    if-lez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_3

    :cond_7
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_6

    goto :goto_4

    :cond_8
    move-object v1, p3

    :goto_4
    move-object p1, v1

    check-cast p1, Lcom/narvii/model/PollOption;

    goto :goto_5

    :cond_9
    move-object p1, p3

    :goto_5
    if-eqz p1, :cond_a

    .line 119
    iget v1, p1, Lcom/narvii/model/PollOption;->votesCount:I

    sub-int/2addr v1, p2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p1, Lcom/narvii/model/PollOption;->votesCount:I

    .line 120
    iput v0, p1, Lcom/narvii/model/PollOption;->votedValue:I

    :cond_a
    if-eqz p1, :cond_b

    .line 122
    iget-object p3, p1, Lcom/narvii/model/PollOption;->polloptId:Ljava/lang/String;

    .line 109
    :cond_b
    :goto_6
    iput-object p3, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->votedOptionId:Ljava/lang/String;

    .line 125
    invoke-virtual {p0}, Lcom/narvii/scene/poll/ScenePollPlayView;->logStart()V

    .line 127
    iget-object p1, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->optionContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 128
    iget-object p1, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->optionViewList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 129
    invoke-direct {p0, v0}, Lcom/narvii/scene/poll/ScenePollPlayView;->updateOptions(Z)V

    .line 131
    invoke-direct {p0}, Lcom/narvii/scene/poll/ScenePollPlayView;->isVoted()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 132
    iput-boolean v0, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->isPlayed:Z

    .line 133
    iput-boolean v0, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->isFirstTimePlay:Z

    const-wide/16 p1, 0xbb8

    .line 134
    invoke-direct {p0, p1, p2}, Lcom/narvii/scene/poll/ScenePollPlayView;->startCountDown(J)V

    goto :goto_7

    .line 136
    :cond_c
    iput-boolean p2, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->isPlayed:Z

    .line 137
    iput-boolean p2, p0, Lcom/narvii/scene/poll/ScenePollPlayView;->isFirstTimePlay:Z

    const-wide/16 p1, 0x3a98

    .line 138
    invoke-direct {p0, p1, p2}, Lcom/narvii/scene/poll/ScenePollPlayView;->startCountDown(J)V

    :goto_7
    return-void
.end method
