.class public final Lcom/narvii/story/widgets/StoryReplayNextView;
.super Landroid/widget/FrameLayout;
.source "StoryReplayNextView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/story/widgets/StoryReplayNextView$IStoryReplayNextClickListener;,
        Lcom/narvii/story/widgets/StoryReplayNextView$Companion;
    }
.end annotation


# static fields
.field private static final COUNT_DOWN_INTERVAL_MS:J = 0x3e8L

.field private static final COUNT_DOWN_START_MS:J = 0x1388L

.field public static final Companion:Lcom/narvii/story/widgets/StoryReplayNextView$Companion;

.field private static final TAG:Ljava/lang/String; = "StoryReplayNextView"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private canceled:Z

.field private final countDownRunnable:Ljava/lang/Runnable;

.field private countDownTime:J

.field private disabled:Z

.field private replayNextClickListener:Lcom/narvii/story/widgets/StoryReplayNextView$IStoryReplayNextClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/story/widgets/StoryReplayNextView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/story/widgets/StoryReplayNextView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/story/widgets/StoryReplayNextView;->Companion:Lcom/narvii/story/widgets/StoryReplayNextView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x1388

    .line 18
    iput-wide v0, p0, Lcom/narvii/story/widgets/StoryReplayNextView;->countDownTime:J

    .line 23
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0b0670

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 24
    sget p1, Lcom/narvii/amino/R$id;->replay:I

    invoke-virtual {p0, p1}, Lcom/narvii/story/widgets/StoryReplayNextView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/AutoSizingTextView;

    new-instance v0, Lcom/narvii/story/widgets/StoryReplayNextView$1;

    invoke-direct {v0, p0}, Lcom/narvii/story/widgets/StoryReplayNextView$1;-><init>(Lcom/narvii/story/widgets/StoryReplayNextView;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    sget p1, Lcom/narvii/amino/R$id;->next:I

    invoke-virtual {p0, p1}, Lcom/narvii/story/widgets/StoryReplayNextView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/AutoSizingTextView;

    new-instance v0, Lcom/narvii/story/widgets/StoryReplayNextView$2;

    invoke-direct {v0, p0}, Lcom/narvii/story/widgets/StoryReplayNextView$2;-><init>(Lcom/narvii/story/widgets/StoryReplayNextView;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    new-instance p1, Lcom/narvii/story/widgets/StoryReplayNextView$3;

    invoke-direct {p1, p0}, Lcom/narvii/story/widgets/StoryReplayNextView$3;-><init>(Lcom/narvii/story/widgets/StoryReplayNextView;)V

    iput-object p1, p0, Lcom/narvii/story/widgets/StoryReplayNextView;->countDownRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 p1, 0x1388

    .line 18
    iput-wide p1, p0, Lcom/narvii/story/widgets/StoryReplayNextView;->countDownTime:J

    .line 23
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0b0670

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 24
    sget p1, Lcom/narvii/amino/R$id;->replay:I

    invoke-virtual {p0, p1}, Lcom/narvii/story/widgets/StoryReplayNextView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/AutoSizingTextView;

    new-instance p2, Lcom/narvii/story/widgets/StoryReplayNextView$1;

    invoke-direct {p2, p0}, Lcom/narvii/story/widgets/StoryReplayNextView$1;-><init>(Lcom/narvii/story/widgets/StoryReplayNextView;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    sget p1, Lcom/narvii/amino/R$id;->next:I

    invoke-virtual {p0, p1}, Lcom/narvii/story/widgets/StoryReplayNextView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/AutoSizingTextView;

    new-instance p2, Lcom/narvii/story/widgets/StoryReplayNextView$2;

    invoke-direct {p2, p0}, Lcom/narvii/story/widgets/StoryReplayNextView$2;-><init>(Lcom/narvii/story/widgets/StoryReplayNextView;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    new-instance p1, Lcom/narvii/story/widgets/StoryReplayNextView$3;

    invoke-direct {p1, p0}, Lcom/narvii/story/widgets/StoryReplayNextView$3;-><init>(Lcom/narvii/story/widgets/StoryReplayNextView;)V

    iput-object p1, p0, Lcom/narvii/story/widgets/StoryReplayNextView;->countDownRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 p1, 0x1388

    .line 18
    iput-wide p1, p0, Lcom/narvii/story/widgets/StoryReplayNextView;->countDownTime:J

    .line 23
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0b0670

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 24
    sget p1, Lcom/narvii/amino/R$id;->replay:I

    invoke-virtual {p0, p1}, Lcom/narvii/story/widgets/StoryReplayNextView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/AutoSizingTextView;

    new-instance p2, Lcom/narvii/story/widgets/StoryReplayNextView$1;

    invoke-direct {p2, p0}, Lcom/narvii/story/widgets/StoryReplayNextView$1;-><init>(Lcom/narvii/story/widgets/StoryReplayNextView;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    sget p1, Lcom/narvii/amino/R$id;->next:I

    invoke-virtual {p0, p1}, Lcom/narvii/story/widgets/StoryReplayNextView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/AutoSizingTextView;

    new-instance p2, Lcom/narvii/story/widgets/StoryReplayNextView$2;

    invoke-direct {p2, p0}, Lcom/narvii/story/widgets/StoryReplayNextView$2;-><init>(Lcom/narvii/story/widgets/StoryReplayNextView;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    new-instance p1, Lcom/narvii/story/widgets/StoryReplayNextView$3;

    invoke-direct {p1, p0}, Lcom/narvii/story/widgets/StoryReplayNextView$3;-><init>(Lcom/narvii/story/widgets/StoryReplayNextView;)V

    iput-object p1, p0, Lcom/narvii/story/widgets/StoryReplayNextView;->countDownRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private final onCountDownUpdate(JZ)V
    .locals 6

    const/4 v0, 0x1

    const-string v1, "next"

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-lez v4, :cond_0

    .line 77
    sget p3, Lcom/narvii/amino/R$id;->next:I

    invoke-virtual {p0, p3}, Lcom/narvii/story/widgets/StoryReplayNextView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/AutoSizingTextView;

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0c27

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/16 v4, 0x3e8

    int-to-long v4, v4

    div-long/2addr p1, v4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 79
    :cond_0
    sget p1, Lcom/narvii/amino/R$id;->next:I

    invoke-virtual {p0, p1}, Lcom/narvii/story/widgets/StoryReplayNextView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/AutoSizingTextView;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f0f0c24

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_1

    .line 81
    iget-object p1, p0, Lcom/narvii/story/widgets/StoryReplayNextView;->replayNextClickListener:Lcom/narvii/story/widgets/StoryReplayNextView$IStoryReplayNextClickListener;

    if-eqz p1, :cond_1

    invoke-interface {p1, v0}, Lcom/narvii/story/widgets/StoryReplayNextView$IStoryReplayNextClickListener;->onNext(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic onCountDownUpdate$default(Lcom/narvii/story/widgets/StoryReplayNextView;JZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    .line 75
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/story/widgets/StoryReplayNextView;->onCountDownUpdate(JZ)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/story/widgets/StoryReplayNextView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/story/widgets/StoryReplayNextView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/story/widgets/StoryReplayNextView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryReplayNextView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/story/widgets/StoryReplayNextView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final cancelCountDown()V
    .locals 3

    .line 65
    iget-boolean v0, p0, Lcom/narvii/story/widgets/StoryReplayNextView;->disabled:Z

    if-eqz v0, :cond_0

    return-void

    .line 68
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/story/widgets/StoryReplayNextView;->canceled:Z

    if-nez v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryReplayNextView;->countDownRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 70
    invoke-direct {p0, v0, v1, v2}, Lcom/narvii/story/widgets/StoryReplayNextView;->onCountDownUpdate(JZ)V

    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lcom/narvii/story/widgets/StoryReplayNextView;->canceled:Z

    :cond_1
    return-void
.end method

.method public final getCountDownTime()J
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/narvii/story/widgets/StoryReplayNextView;->countDownTime:J

    return-wide v0
.end method

.method public final getReplayNextClickListener()Lcom/narvii/story/widgets/StoryReplayNextView$IStoryReplayNextClickListener;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryReplayNextView;->replayNextClickListener:Lcom/narvii/story/widgets/StoryReplayNextView$IStoryReplayNextClickListener;

    return-object v0
.end method

.method public final pauseCountDown()V
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/narvii/story/widgets/StoryReplayNextView;->disabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/narvii/story/widgets/StoryReplayNextView;->canceled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryReplayNextView;->countDownRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final setCountDownTime(J)V
    .locals 0

    .line 18
    iput-wide p1, p0, Lcom/narvii/story/widgets/StoryReplayNextView;->countDownTime:J

    return-void
.end method

.method public final setNextEnable(Z)V
    .locals 2

    xor-int/lit8 v0, p1, 0x1

    .line 45
    iput-boolean v0, p0, Lcom/narvii/story/widgets/StoryReplayNextView;->disabled:Z

    .line 46
    sget v0, Lcom/narvii/amino/R$id;->next:I

    invoke-virtual {p0, v0}, Lcom/narvii/story/widgets/StoryReplayNextView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/AutoSizingTextView;

    const-string v1, "next"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public final setReplayNextClickListener(Lcom/narvii/story/widgets/StoryReplayNextView$IStoryReplayNextClickListener;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/narvii/story/widgets/StoryReplayNextView;->replayNextClickListener:Lcom/narvii/story/widgets/StoryReplayNextView$IStoryReplayNextClickListener;

    return-void
.end method

.method public final startCountDown()V
    .locals 9

    .line 50
    iget-boolean v0, p0, Lcom/narvii/story/widgets/StoryReplayNextView;->disabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/narvii/story/widgets/StoryReplayNextView;->canceled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryReplayNextView;->countDownRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 54
    iget-wide v4, p0, Lcom/narvii/story/widgets/StoryReplayNextView;->countDownTime:J

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Lcom/narvii/story/widgets/StoryReplayNextView;->onCountDownUpdate$default(Lcom/narvii/story/widgets/StoryReplayNextView;JZILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
