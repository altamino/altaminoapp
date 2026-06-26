.class public Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;
.super Lcom/narvii/list/NVListViewWrapper;
.source "StoryQuizResultLayoutNew.java"

# interfaces
.implements Lcom/narvii/scene/SceneInteractLogView;
.implements Lcom/narvii/scene/ScenePlayView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$UploadAdapter;,
        Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$QuizResultListener;
    }
.end annotation


# static fields
.field public static final AREA_SCORE:Ljava/lang/String; = "Score"


# instance fields
.field private adapter:Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$UploadAdapter;

.field private hasNext:Z

.field private hoverView:Landroid/view/View;

.field private isAutoStartCountdown:Z

.field private listener:Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$QuizResultListener;

.field private localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private replayNextView:Lcom/narvii/story/widgets/StoryReplayNextView;

.field private resultList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/scene/quiz/QuizQuestionResult;",
            ">;"
        }
    .end annotation
.end field

.field private showId:Ljava/lang/String;

.field private startTime:J

.field private story:Lcom/narvii/model/Blog;

.field private storyDownloadHelper:Lcom/narvii/story/StoryDownloadHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/narvii/list/NVListViewWrapper;-><init>(Landroid/content/Context;)V

    .line 74
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->showId:Ljava/lang/String;

    .line 77
    new-instance p1, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$1;

    invoke-direct {p1, p0}, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$1;-><init>(Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;)V

    iput-object p1, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->receiver:Landroid/content/BroadcastReceiver;

    .line 88
    invoke-direct {p0}, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 92
    invoke-direct {p0, p1, p2}, Lcom/narvii/list/NVListViewWrapper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->showId:Ljava/lang/String;

    .line 77
    new-instance p1, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$1;

    invoke-direct {p1, p0}, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$1;-><init>(Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;)V

    iput-object p1, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->receiver:Landroid/content/BroadcastReceiver;

    .line 93
    invoke-direct {p0}, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;)Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$UploadAdapter;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->adapter:Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$UploadAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->sendScoreEndLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;)Ljava/util/List;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->resultList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;)Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$QuizResultListener;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->listener:Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$QuizResultListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;)Lcom/narvii/model/Blog;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->story:Lcom/narvii/model/Blog;

    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/narvii/list/NVListViewWrapper;->nvContext:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method static synthetic access$500(Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/narvii/list/NVListViewWrapper;->nvContext:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method static synthetic access$600(Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;)Lcom/narvii/story/StoryDownloadHelper;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->storyDownloadHelper:Lcom/narvii/story/StoryDownloadHelper;

    return-object p0
.end method

.method static synthetic access$700(Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;)I
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->getHoverTitleTopPadding()I

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;)Landroid/view/View;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->hoverView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$900(Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;)Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->showId:Ljava/lang/String;

    return-object p0
.end method

.method private getHoverTitleTopPadding()I
    .locals 2

    .line 199
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getActionBarHeight(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/Utils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private init()V
    .locals 2

    .line 97
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    .line 98
    new-instance v0, Lcom/narvii/story/StoryDownloadHelper;

    iget-object v1, p0, Lcom/narvii/list/NVListViewWrapper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-direct {v0, v1}, Lcom/narvii/story/StoryDownloadHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->storyDownloadHelper:Lcom/narvii/story/StoryDownloadHelper;

    return-void
.end method

.method private sendScoreEndLog(Ljava/lang/String;)V
    .locals 6

    .line 291
    iget-wide v0, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->startTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 294
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->getLogEventBuilder()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    sget-object v1, Lcom/narvii/logging/ActSemantic;->scoreEnd:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const-string v1, "Score"

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->showId:Ljava/lang/String;

    const-string v4, "scoreShowId"

    .line 295
    invoke-virtual {v0, v4, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const-string v1, "endType"

    .line 296
    invoke-virtual {v0, v1, p1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    .line 297
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->startTime:J

    sub-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "pq_duration"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    .line 298
    iget-object v0, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->adapter:Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$UploadAdapter;

    if-eqz v0, :cond_1

    .line 299
    invoke-virtual {v0}, Lcom/narvii/story/quiz/StoryQuizResultAdapter;->getQuizzesResult()Lcom/narvii/model/CurrentQuizzesResult;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 301
    iget v0, v0, Lcom/narvii/model/CurrentQuizzesResult;->latestScore:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "score"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 304
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 305
    iput-wide v2, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->startTime:J

    return-void
.end method


# virtual methods
.method protected createAdapter()Landroid/widget/ListAdapter;
    .locals 2

    .line 209
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v0

    .line 210
    new-instance v1, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$UploadAdapter;

    invoke-direct {v1, p0, v0}, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$UploadAdapter;-><init>(Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;Lcom/narvii/app/NVContext;)V

    iput-object v1, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->adapter:Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$UploadAdapter;

    .line 211
    iget-object v0, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->adapter:Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$UploadAdapter;

    iget-object v1, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->story:Lcom/narvii/model/Blog;

    invoke-virtual {v0, v1}, Lcom/narvii/story/quiz/StoryQuizResultAdapter;->setData(Lcom/narvii/model/Blog;)V

    .line 212
    iget-object v0, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->adapter:Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$UploadAdapter;

    invoke-virtual {v0}, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$UploadAdapter;->uploadQuizResult()V

    .line 213
    iget-object v0, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->adapter:Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$UploadAdapter;

    return-object v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 264
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->replayNextView:Lcom/narvii/story/widgets/StoryReplayNextView;

    invoke-virtual {v0}, Lcom/narvii/story/widgets/StoryReplayNextView;->cancelCountDown()V

    .line 267
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0b066d

    return v0
.end method

.method public getListSelector()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 204
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method protected getLogEventBuilder()Lcom/narvii/logging/LogEvent$Builder;
    .locals 3

    .line 282
    iget-object v0, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->story:Lcom/narvii/model/Blog;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lcom/narvii/util/StoryUtils;->getLogEventClickBuilder(Landroid/view/View;Lcom/narvii/model/Blog;ZZ)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public isDarkNvTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public logEnd()V
    .locals 1

    const-string v0, "skip"

    .line 287
    invoke-direct {p0, v0}, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->sendScoreEndLog(Ljava/lang/String;)V

    return-void
.end method

.method public logStart()V
    .locals 3

    .line 277
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->startTime:J

    .line 278
    invoke-virtual {p0}, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->getLogEventBuilder()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    sget-object v1, Lcom/narvii/logging/ActSemantic;->scoreStart:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const-string v1, "Score"

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->showId:Ljava/lang/String;

    const-string v2, "scoreShowId"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    return-void
.end method

.method public onActiveChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 254
    iget-boolean p1, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->isAutoStartCountdown:Z

    if-eqz p1, :cond_1

    .line 255
    iget-object p1, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->replayNextView:Lcom/narvii/story/widgets/StoryReplayNextView;

    invoke-virtual {p1}, Lcom/narvii/story/widgets/StoryReplayNextView;->startCountDown()V

    goto :goto_0

    .line 258
    :cond_0
    iget-object p1, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->replayNextView:Lcom/narvii/story/widgets/StoryReplayNextView;

    invoke-virtual {p1}, Lcom/narvii/story/widgets/StoryReplayNextView;->pauseCountDown()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .line 230
    invoke-super {p0}, Lcom/narvii/list/NVListViewWrapper;->onAttachedToWindow()V

    .line 231
    iget-object v0, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.narvii.action.ACCOUNT_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 233
    iget-boolean v0, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->isAutoStartCountdown:Z

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->replayNextView:Lcom/narvii/story/widgets/StoryReplayNextView;

    invoke-virtual {v0}, Lcom/narvii/story/widgets/StoryReplayNextView;->startCountDown()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 241
    invoke-super {p0}, Lcom/narvii/list/NVListViewWrapper;->onDetachedFromWindow()V

    .line 242
    iget-object v0, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 243
    iget-object v0, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->replayNextView:Lcom/narvii/story/widgets/StoryReplayNextView;

    invoke-virtual {v0}, Lcom/narvii/story/widgets/StoryReplayNextView;->cancelCountDown()V

    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;)V
    .locals 3

    .line 168
    invoke-super {p0, p1}, Lcom/narvii/list/NVListViewWrapper;->onListViewCreated(Landroid/widget/ListView;)V

    .line 169
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    .line 170
    invoke-virtual {p1}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p1, v0, v1, v0, v2}, Landroid/widget/ListView;->setPadding(IIII)V

    const/4 v0, 0x0

    .line 171
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    const/4 v1, 0x0

    .line 172
    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 173
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setDividerHeight(I)V

    const/4 v0, 0x2

    .line 174
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 175
    move-object v0, p1

    check-cast v0, Lcom/narvii/widget/NVListView;

    new-instance v1, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$4;

    invoke-direct {v1, p0, p1}, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$4;-><init>(Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;Landroid/widget/ListView;)V

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVListView;->addOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;)V
    .locals 3

    .line 113
    invoke-super {p0, p1}, Lcom/narvii/list/NVListViewWrapper;->onViewCreated(Landroid/view/View;)V

    const v0, 0x7f090ae9

    .line 115
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/story/widgets/StoryReplayNextView;

    iput-object v0, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->replayNextView:Lcom/narvii/story/widgets/StoryReplayNextView;

    .line 116
    iget-object v0, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->replayNextView:Lcom/narvii/story/widgets/StoryReplayNextView;

    iget-boolean v1, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->hasNext:Z

    invoke-virtual {v0, v1}, Lcom/narvii/story/widgets/StoryReplayNextView;->setNextEnable(Z)V

    .line 117
    iget-object v0, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->replayNextView:Lcom/narvii/story/widgets/StoryReplayNextView;

    new-instance v1, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$2;

    invoke-direct {v1, p0}, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$2;-><init>(Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;)V

    invoke-virtual {v0, v1}, Lcom/narvii/story/widgets/StoryReplayNextView;->setReplayNextClickListener(Lcom/narvii/story/widgets/StoryReplayNextView$IStoryReplayNextClickListener;)V

    const v0, 0x7f090913

    .line 135
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->hoverView:Landroid/view/View;

    .line 136
    iget-object v0, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->adapter:Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$UploadAdapter;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->hoverView:Landroid/view/View;

    const v1, 0x7f090ba0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 139
    iget-object v1, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->adapter:Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$UploadAdapter;

    invoke-virtual {v1, v0}, Lcom/narvii/story/quiz/StoryQuizResultAdapter;->fitHoverTitleView(Landroid/view/View;)V

    .line 141
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    .line 142
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 143
    instance-of v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_0

    .line 144
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 145
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 146
    invoke-direct {p0}, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->getHoverTitleTopPadding()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_0
    const v0, 0x7f090a1e

    .line 150
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$3;

    invoke-direct {v0, p0}, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$3;-><init>(Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setData(Lcom/narvii/model/Blog;Ljava/util/List;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/model/Blog;",
            "Ljava/util/List<",
            "Lcom/narvii/scene/quiz/QuizQuestionResult;",
            ">;ZZ)V"
        }
    .end annotation

    .line 217
    iput-object p1, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->story:Lcom/narvii/model/Blog;

    .line 218
    iput-object p2, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->resultList:Ljava/util/List;

    .line 219
    iput-boolean p3, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->hasNext:Z

    .line 220
    iput-boolean p4, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->isAutoStartCountdown:Z

    return-void
.end method

.method public setQuizResultListener(Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$QuizResultListener;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/narvii/story/quiz/StoryQuizResultLayoutNew;->listener:Lcom/narvii/story/quiz/StoryQuizResultLayoutNew$QuizResultListener;

    return-void
.end method

.method public setStory(Lcom/narvii/model/Blog;ZLcom/narvii/scene/ScenePlayListener;)V
    .locals 0

    return-void
.end method
