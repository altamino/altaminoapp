.class public final Lcom/narvii/topic/widgets/TopicBookmarkView;
.super Lcom/narvii/widget/PressedFrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/topic/widgets/TopicBookmarkView$TopicBookmarkListener;,
        Lcom/narvii/topic/widgets/TopicBookmarkView$TopicBookmarkResultListener;
    }
.end annotation


# instance fields
.field private final apiService$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isSending:Z

.field private final loading$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final normalView$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final selectedView$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private topic:Lcom/narvii/model/story/StoryTopic;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private topicBookmarkListener:Lcom/narvii/topic/widgets/TopicBookmarkView$TopicBookmarkListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private topicBookmarkResultListener:Lcom/narvii/topic/widgets/TopicBookmarkView$TopicBookmarkResultListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "context"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/PressedFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 9
    .line 10
    .line 11
    const p2, 0x7f0a01e2

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p2}, Lcom/narvii/topic/widgets/TopicBookmarkView;->bind(I)Lw7/m;

    .line 15
    move-result-object p2

    .line 16
    .line 17
    iput-object p2, p0, Lcom/narvii/topic/widgets/TopicBookmarkView;->normalView$delegate:Lw7/m;

    .line 18
    .line 19
    .line 20
    const p2, 0x7f0a01e3

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p2}, Lcom/narvii/topic/widgets/TopicBookmarkView;->bind(I)Lw7/m;

    .line 24
    move-result-object p2

    .line 25
    .line 26
    iput-object p2, p0, Lcom/narvii/topic/widgets/TopicBookmarkView;->selectedView$delegate:Lw7/m;

    .line 27
    .line 28
    .line 29
    const p2, 0x7f0a01e1

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p2}, Lcom/narvii/topic/widgets/TopicBookmarkView;->bind(I)Lw7/m;

    .line 33
    move-result-object p2

    .line 34
    .line 35
    iput-object p2, p0, Lcom/narvii/topic/widgets/TopicBookmarkView;->loading$delegate:Lw7/m;

    .line 36
    .line 37
    new-instance p2, Lcom/narvii/topic/widgets/TopicBookmarkView$apiService$2;

    .line 38
    .line 39
    .line 40
    invoke-direct {p2, p1}, Lcom/narvii/topic/widgets/TopicBookmarkView$apiService$2;-><init>(Landroid/content/Context;)V

    .line 41
    .line 42
    .line 43
    invoke-static {p2}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 44
    move-result-object p2

    .line 45
    .line 46
    iput-object p2, p0, Lcom/narvii/topic/widgets/TopicBookmarkView;->apiService$delegate:Lw7/m;

    .line 47
    .line 48
    .line 49
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    .line 53
    const p2, 0x7f0d0757

    .line 54
    const/4 v0, 0x1

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    return-void
.end method

.method public static synthetic a(Lcom/narvii/topic/widgets/TopicBookmarkView;ZLandroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/narvii/topic/widgets/TopicBookmarkView;->onClick$lambda$1$lambda$0(Lcom/narvii/topic/widgets/TopicBookmarkView;ZLandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static final synthetic access$updateViews(Lcom/narvii/topic/widgets/TopicBookmarkView;Lcom/narvii/model/story/StoryTopic;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/topic/widgets/TopicBookmarkView;->updateViews(Lcom/narvii/model/story/StoryTopic;)V

    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/narvii/topic/widgets/TopicBookmarkView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/topic/widgets/TopicBookmarkView;->endSending$lambda$2(Lcom/narvii/topic/widgets/TopicBookmarkView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic c(Lcom/narvii/topic/widgets/TopicBookmarkView;Lcom/narvii/model/story/StoryTopic;Lcom/narvii/util/RequestResult;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/topic/widgets/TopicBookmarkView;->sendBookMarkRequest$lambda$3(Lcom/narvii/topic/widgets/TopicBookmarkView;Lcom/narvii/model/story/StoryTopic;Lcom/narvii/util/RequestResult;)V

    return-void
.end method

.method private final endSending()V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    iput-boolean v1, p0, Lcom/narvii/topic/widgets/TopicBookmarkView;->isSending:Z

    .line 8
    .line 9
    iget-object v2, p0, Lcom/narvii/topic/widgets/TopicBookmarkView;->topic:Lcom/narvii/model/story/StoryTopic;

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, v2}, Lcom/narvii/topic/widgets/TopicBookmarkView;->updateViews(Lcom/narvii/model/story/StoryTopic;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 16
    move-result v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 20
    move-result v2

    .line 21
    .line 22
    const/high16 v3, 0x40000000    # 2.0f

    .line 23
    .line 24
    .line 25
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 26
    move-result v2

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 33
    move-result v1

    .line 34
    .line 35
    iget-object v2, p0, Lcom/narvii/topic/widgets/TopicBookmarkView;->topic:Lcom/narvii/model/story/StoryTopic;

    .line 36
    .line 37
    const/high16 v3, 0x42200000    # 40.0f

    .line 38
    const/4 v4, 0x1

    .line 39
    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    iget-boolean v2, v2, Lcom/narvii/model/story/StoryTopic;->isBookmarked:Z

    .line 43
    .line 44
    if-ne v2, v4, :cond_0

    .line 45
    int-to-float v2, v0

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 49
    move-result-object v5

    .line 50
    .line 51
    .line 52
    invoke-static {v5, v3}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 53
    move-result v3

    .line 54
    sub-float/2addr v2, v3

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    int-to-float v2, v0

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 60
    move-result-object v5

    .line 61
    .line 62
    .line 63
    invoke-static {v5, v3}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 64
    move-result v3

    .line 65
    add-float/2addr v2, v3

    .line 66
    :goto_0
    float-to-int v2, v2

    .line 67
    .line 68
    if-le v1, v2, :cond_1

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    move v1, v2

    .line 71
    .line 72
    :goto_1
    iput-boolean v4, p0, Lcom/narvii/topic/widgets/TopicBookmarkView;->isSending:Z

    .line 73
    .line 74
    iget-object v2, p0, Lcom/narvii/topic/widgets/TopicBookmarkView;->topic:Lcom/narvii/model/story/StoryTopic;

    .line 75
    .line 76
    .line 77
    invoke-direct {p0, v2}, Lcom/narvii/topic/widgets/TopicBookmarkView;->updateViews(Lcom/narvii/model/story/StoryTopic;)V

    .line 78
    .line 79
    .line 80
    filled-new-array {v0, v1}, [I

    .line 81
    move-result-object v0

    .line 82
    .line 83
    .line 84
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 85
    move-result-object v0

    .line 86
    .line 87
    const-wide/16 v1, 0xc8

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 91
    .line 92
    new-instance v1, Lcom/narvii/topic/widgets/b;

    .line 93
    .line 94
    .line 95
    invoke-direct {v1, p0}, Lcom/narvii/topic/widgets/b;-><init>(Lcom/narvii/topic/widgets/TopicBookmarkView;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 99
    .line 100
    new-instance v1, Lcom/narvii/topic/widgets/TopicBookmarkView$endSending$2;

    .line 101
    .line 102
    .line 103
    invoke-direct {v1, p0}, Lcom/narvii/topic/widgets/TopicBookmarkView$endSending$2;-><init>(Lcom/narvii/topic/widgets/TopicBookmarkView;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 110
    return-void
.end method

.method private static final endSending$lambda$2(Lcom/narvii/topic/widgets/TopicBookmarkView;Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    const-string v0, "animation"

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    const-string v2, "null cannot be cast to non-null type kotlin.Int"

    .line 22
    .line 23
    .line 24
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    check-cast v1, Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 30
    move-result v1

    .line 31
    .line 32
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    .line 41
    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicBookmarkView;->topic:Lcom/narvii/model/story/StoryTopic;

    .line 42
    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    iget-boolean v0, v0, Lcom/narvii/model/story/StoryTopic;->isBookmarked:Z

    .line 46
    const/4 v1, 0x1

    .line 47
    .line 48
    if-ne v0, v1, :cond_0

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/narvii/topic/widgets/TopicBookmarkView;->getSelectedView()Landroid/view/View;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    .line 63
    invoke-static {p1, v2}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    check-cast p1, Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 69
    move-result p1

    .line 70
    .line 71
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/narvii/topic/widgets/TopicBookmarkView;->getSelectedView()Landroid/view/View;

    .line 75
    move-result-object p1

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    .line 80
    .line 81
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 82
    return-void
.end method

.method private static final onClick$lambda$1$lambda$0(Lcom/narvii/topic/widgets/TopicBookmarkView;ZLandroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    const-string/jumbo p2, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    if-nez p3, :cond_0

    .line 9
    .line 10
    iget-object p2, p0, Lcom/narvii/topic/widgets/TopicBookmarkView;->topic:Lcom/narvii/model/story/StoryTopic;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p2, p1}, Lcom/narvii/topic/widgets/TopicBookmarkView;->sendBookMarkRequest(Lcom/narvii/model/story/StoryTopic;Z)V

    .line 14
    :cond_0
    return-void
.end method

.method private final sendBookMarkRequest(Lcom/narvii/model/story/StoryTopic;Z)V
    .locals 9

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicBookmarkView;->topicBookmarkListener:Lcom/narvii/topic/widgets/TopicBookmarkView$TopicBookmarkListener;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, p2}, Lcom/narvii/topic/widgets/TopicBookmarkView$TopicBookmarkListener;->onBookmark(Z)V

    .line 11
    .line 12
    .line 13
    :cond_1
    invoke-direct {p0}, Lcom/narvii/topic/widgets/TopicBookmarkView;->startSending()V

    .line 14
    .line 15
    new-instance v1, Lcom/narvii/topic/TopicRequestHelper;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    const-string v2, "getNVContext(...)"

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {v1, v0}, Lcom/narvii/topic/TopicRequestHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 32
    .line 33
    iget v2, p1, Lcom/narvii/model/story/StoryTopic;->topicId:I

    .line 34
    .line 35
    new-instance v5, Lcom/narvii/topic/widgets/c;

    .line 36
    .line 37
    .line 38
    invoke-direct {v5, p0, p1}, Lcom/narvii/topic/widgets/c;-><init>(Lcom/narvii/topic/widgets/TopicBookmarkView;Lcom/narvii/model/story/StoryTopic;)V

    .line 39
    const/4 v6, 0x0

    .line 40
    .line 41
    const/16 v7, 0x10

    .line 42
    const/4 v8, 0x0

    .line 43
    move-object v3, p1

    .line 44
    move v4, p2

    .line 45
    .line 46
    .line 47
    invoke-static/range {v1 .. v8}, Lcom/narvii/topic/TopicRequestHelper;->sendBookmarkRequest$default(Lcom/narvii/topic/TopicRequestHelper;ILcom/narvii/model/story/StoryTopic;ZLcom/narvii/util/Callback;ZILjava/lang/Object;)V

    .line 48
    return-void
.end method

.method private static final sendBookMarkRequest$lambda$3(Lcom/narvii/topic/widgets/TopicBookmarkView;Lcom/narvii/model/story/StoryTopic;Lcom/narvii/util/RequestResult;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicBookmarkView;->topicBookmarkResultListener:Lcom/narvii/topic/widgets/TopicBookmarkView$TopicBookmarkResultListener;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-static {p2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, p1, p2}, Lcom/narvii/topic/widgets/TopicBookmarkView$TopicBookmarkResultListener;->onBookmarkResult(Lcom/narvii/model/story/StoryTopic;Lcom/narvii/util/RequestResult;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-direct {p0}, Lcom/narvii/topic/widgets/TopicBookmarkView;->endSending()V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, p1}, Lcom/narvii/topic/widgets/TopicBookmarkView;->updateViews(Lcom/narvii/model/story/StoryTopic;)V

    .line 23
    return-void
.end method

.method private final startSending()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/topic/widgets/TopicBookmarkView;->isSending:Z

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 11
    move-result v1

    .line 12
    .line 13
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicBookmarkView;->topic:Lcom/narvii/model/story/StoryTopic;

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, v0}, Lcom/narvii/topic/widgets/TopicBookmarkView;->updateViews(Lcom/narvii/model/story/StoryTopic;)V

    .line 26
    return-void
.end method

.method private final updateViews(Lcom/narvii/model/story/StoryTopic;)V
    .locals 3

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/topic/widgets/TopicBookmarkView;->isSending:Z

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    const/16 v2, 0x8

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/topic/widgets/TopicBookmarkView;->getNormalView()Landroid/view/View;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/narvii/topic/widgets/TopicBookmarkView;->getSelectedView()Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/narvii/topic/widgets/TopicBookmarkView;->getLoading()Lcom/narvii/widget/SpinningView;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :cond_1
    iget-boolean v0, p1, Lcom/narvii/model/story/StoryTopic;->isBookmarked:Z

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/narvii/topic/widgets/TopicBookmarkView;->getNormalView()Landroid/view/View;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/narvii/topic/widgets/TopicBookmarkView;->getSelectedView()Landroid/view/View;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/narvii/topic/widgets/TopicBookmarkView;->getLoading()Lcom/narvii/widget/SpinningView;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 58
    goto :goto_0

    .line 59
    .line 60
    .line 61
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/topic/widgets/TopicBookmarkView;->getNormalView()Landroid/view/View;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/narvii/topic/widgets/TopicBookmarkView;->getSelectedView()Landroid/view/View;

    .line 69
    move-result-object v0

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/narvii/topic/widgets/TopicBookmarkView;->getLoading()Lcom/narvii/widget/SpinningView;

    .line 76
    move-result-object v0

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 80
    .line 81
    :goto_0
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    .line 82
    .line 83
    .line 84
    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 88
    move-result-object v1

    .line 89
    .line 90
    const/high16 v2, 0x40c00000    # 6.0f

    .line 91
    .line 92
    .line 93
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 94
    move-result v1

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 98
    .line 99
    iget-boolean p1, p1, Lcom/narvii/model/story/StoryTopic;->isBookmarked:Z

    .line 100
    .line 101
    if-eqz p1, :cond_3

    .line 102
    .line 103
    .line 104
    const-wide/32 v1, 0x4cffffff

    .line 105
    goto :goto_1

    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    :cond_3
    const-wide v1, 0xff0fcdffL

    .line 111
    :goto_1
    long-to-int p1, v1

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 118
    return-void
.end method


# virtual methods
.method public final bind(I)Lw7/m;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)",
            "Lw7/m<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lw7/q;->NONE:Lw7/q;

    .line 3
    .line 4
    new-instance v1, Lcom/narvii/topic/widgets/TopicBookmarkView$bind$1;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lcom/narvii/topic/widgets/TopicBookmarkView$bind$1;-><init>(Lcom/narvii/topic/widgets/TopicBookmarkView;I)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Lw7/n;->b(Lw7/q;Le8/a;)Lw7/m;

    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public final getApiService()Lcom/narvii/util/http/ApiService;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicBookmarkView;->apiService$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "getValue(...)"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 14
    return-object v0
.end method

.method public final getLoading()Lcom/narvii/widget/SpinningView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicBookmarkView;->loading$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/widget/SpinningView;

    .line 9
    return-object v0
.end method

.method public final getNormalView()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicBookmarkView;->normalView$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/view/View;

    .line 9
    return-object v0
.end method

.method public final getSelectedView()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicBookmarkView;->selectedView$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/view/View;

    .line 9
    return-object v0
.end method

.method public final getTopic()Lcom/narvii/model/story/StoryTopic;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicBookmarkView;->topic:Lcom/narvii/model/story/StoryTopic;

    return-object v0
.end method

.method public final getTopicBookmarkListener()Lcom/narvii/topic/widgets/TopicBookmarkView$TopicBookmarkListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicBookmarkView;->topicBookmarkListener:Lcom/narvii/topic/widgets/TopicBookmarkView$TopicBookmarkListener;

    return-object v0
.end method

.method public final getTopicBookmarkResultListener()Lcom/narvii/topic/widgets/TopicBookmarkView$TopicBookmarkResultListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/topic/widgets/TopicBookmarkView;->topicBookmarkResultListener:Lcom/narvii/topic/widgets/TopicBookmarkView$TopicBookmarkResultListener;

    return-object v0
.end method

.method public final isSending()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/topic/widgets/TopicBookmarkView;->isSending:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/topic/widgets/TopicBookmarkView;->topic:Lcom/narvii/model/story/StoryTopic;

    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    iget-boolean v0, p1, Lcom/narvii/model/story/StoryTopic;->isBookmarked:Z

    .line 7
    const/4 v1, 0x1

    .line 8
    xor-int/2addr v0, v1

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance p1, Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    .line 19
    invoke-direct {p1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    const v2, 0x7f121207

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v2, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 26
    .line 27
    new-instance v1, Lcom/narvii/topic/widgets/a;

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, p0, v0}, Lcom/narvii/topic/widgets/a;-><init>(Lcom/narvii/topic/widgets/TopicBookmarkView;Z)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    .line 37
    goto :goto_0

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/narvii/topic/widgets/TopicBookmarkView;->sendBookMarkRequest(Lcom/narvii/model/story/StoryTopic;Z)V

    .line 41
    :cond_1
    :goto_0
    return-void
.end method

.method public final setSending(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/topic/widgets/TopicBookmarkView;->isSending:Z

    return-void
.end method

.method public final setTopic(Lcom/narvii/model/story/StoryTopic;)V
    .locals 0
    .param p1    # Lcom/narvii/model/story/StoryTopic;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/topic/widgets/TopicBookmarkView;->topic:Lcom/narvii/model/story/StoryTopic;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/topic/widgets/TopicBookmarkView;->updateViews(Lcom/narvii/model/story/StoryTopic;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 9
    return-void
.end method

.method public final setTopicBookmarkListener(Lcom/narvii/topic/widgets/TopicBookmarkView$TopicBookmarkListener;)V
    .locals 0
    .param p1    # Lcom/narvii/topic/widgets/TopicBookmarkView$TopicBookmarkListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/topic/widgets/TopicBookmarkView;->topicBookmarkListener:Lcom/narvii/topic/widgets/TopicBookmarkView$TopicBookmarkListener;

    return-void
.end method

.method public final setTopicBookmarkResultListener(Lcom/narvii/topic/widgets/TopicBookmarkView$TopicBookmarkResultListener;)V
    .locals 0
    .param p1    # Lcom/narvii/topic/widgets/TopicBookmarkView$TopicBookmarkResultListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/topic/widgets/TopicBookmarkView;->topicBookmarkResultListener:Lcom/narvii/topic/widgets/TopicBookmarkView$TopicBookmarkResultListener;

    return-void
.end method
