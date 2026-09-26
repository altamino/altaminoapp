.class public Lcom/narvii/chat/audio/AudioBoardLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/chat/RecordInfoListener;
.implements Lcom/narvii/chat/audio/AudioRecordLayout$OnStatusChangeListener;
.implements Lcom/narvii/chat/audio/AudioRecordLayout$OnRecordTimeChangeListener;


# static fields
.field public static final TOAST_SHOW_TIME:I = 0x3e8


# instance fields
.field public cancelShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

.field private mLayouts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public primaryShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

.field recordCancelColor:I

.field recordIndicator:Landroid/view/View;

.field recordPrimaryColor:I

.field recordStartTime:J

.field recordTime:Landroid/widget/TextView;

.field recordTimeLayout:Landroid/view/View;

.field removeToastRunnable:Ljava/lang/Runnable;

.field voiceBoardToast:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    new-instance p1, Lcom/narvii/chat/audio/AudioBoardLayout$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/narvii/chat/audio/AudioBoardLayout$1;-><init>(Lcom/narvii/chat/audio/AudioBoardLayout;)V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->removeToastRunnable:Ljava/lang/Runnable;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    const p2, 0x7f0604ab

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    .line 21
    move-result p1

    .line 22
    .line 23
    iput p1, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->recordPrimaryColor:I

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    const p2, 0x7f0604aa

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    .line 34
    move-result p1

    .line 35
    .line 36
    iput p1, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->recordCancelColor:I

    .line 37
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/chat/audio/AudioBoardLayout;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/audio/AudioBoardLayout;->hideLayout(Landroid/view/View;)V

    return-void
.end method

.method private hideLayout(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 4
    .line 5
    const/16 v0, 0x8

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->mLayouts:Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    check-cast v0, Landroid/view/View;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 30
    move-result v0

    .line 31
    .line 32
    if-nez v0, :cond_0

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 p1, 0x0

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 38
    :goto_0
    return-void
.end method

.method private showLayout(Landroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->mLayouts:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    check-cast v1, Landroid/view/View;

    .line 19
    .line 20
    if-ne v1, p1, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 24
    const/4 v2, 0x0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 28
    goto :goto_0

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 32
    .line 33
    const/16 v2, 0x8

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 37
    goto :goto_0

    .line 38
    .line 39
    .line 40
    :cond_1
    const p1, 0x7f0801c3

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 44
    return-void
.end method


# virtual methods
.method public onBeyondMaxDuration()V
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->removeToastRunnable:Ljava/lang/Runnable;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->voiceBoardToast:Landroid/widget/TextView;

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, v0}, Lcom/narvii/chat/audio/AudioBoardLayout;->showLayout(Landroid/view/View;)V

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->voiceBoardToast:Landroid/widget/TextView;

    .line 15
    .line 16
    .line 17
    const v1, 0x7f120ca2

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->voiceBoardToast:Landroid/widget/TextView;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    const v2, 0x7f010013

    .line 30
    .line 31
    .line 32
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 37
    return-void
.end method

.method public onBeyondMaxOver()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->voiceBoardToast:Landroid/widget/TextView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/narvii/chat/audio/AudioBoardLayout;->hideLayout(Landroid/view/View;)V

    .line 6
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a0fdc

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Landroid/widget/TextView;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->voiceBoardToast:Landroid/widget/TextView;

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0a0bf5

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    iput-object v0, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->recordTimeLayout:Landroid/view/View;

    .line 24
    .line 25
    .line 26
    const v0, 0x7f0a0bf2

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    iput-object v0, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->recordIndicator:Landroid/view/View;

    .line 33
    .line 34
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    .line 35
    .line 36
    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    .line 37
    .line 38
    .line 39
    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 43
    .line 44
    iput-object v0, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->primaryShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    iget v1, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->recordPrimaryColor:I

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    .line 55
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    .line 56
    .line 57
    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    .line 58
    .line 59
    .line 60
    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 64
    .line 65
    iput-object v0, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->cancelShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    .line 69
    move-result-object v0

    .line 70
    .line 71
    iget v1, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->recordCancelColor:I

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    .line 76
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->recordIndicator:Landroid/view/View;

    .line 77
    .line 78
    iget-object v1, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->primaryShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    .line 83
    .line 84
    const v0, 0x7f0a0bf4

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 88
    move-result-object v0

    .line 89
    .line 90
    check-cast v0, Landroid/widget/TextView;

    .line 91
    .line 92
    iput-object v0, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->recordTime:Landroid/widget/TextView;

    .line 93
    .line 94
    new-instance v0, Ljava/util/ArrayList;

    .line 95
    .line 96
    .line 97
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .line 99
    iput-object v0, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->mLayouts:Ljava/util/ArrayList;

    .line 100
    .line 101
    iget-object v1, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->voiceBoardToast:Landroid/widget/TextView;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->mLayouts:Ljava/util/ArrayList;

    .line 107
    .line 108
    iget-object v1, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->recordTimeLayout:Landroid/view/View;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    return-void
.end method

.method public onMessageTooShort()V
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->removeToastRunnable:Ljava/lang/Runnable;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->voiceBoardToast:Landroid/widget/TextView;

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, v0}, Lcom/narvii/chat/audio/AudioBoardLayout;->showLayout(Landroid/view/View;)V

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->voiceBoardToast:Landroid/widget/TextView;

    .line 15
    .line 16
    .line 17
    const v1, 0x7f120ca3

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->voiceBoardToast:Landroid/widget/TextView;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    const v2, 0x7f010013

    .line 30
    .line 31
    .line 32
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->removeToastRunnable:Ljava/lang/Runnable;

    .line 39
    .line 40
    const-wide/16 v1, 0x3e8

    .line 41
    .line 42
    .line 43
    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 44
    return-void
.end method

.method public onRecordCancel()V
    .locals 0

    return-void
.end method

.method public onRecordEnd()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->recordTimeLayout:Landroid/view/View;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/narvii/chat/audio/AudioBoardLayout;->hideLayout(Landroid/view/View;)V

    .line 6
    return-void
.end method

.method public onRecordStart(J)V
    .locals 2

    .line 1
    .line 2
    iput-wide p1, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->recordStartTime:J

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->recordTimeLayout:Landroid/view/View;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/narvii/chat/audio/AudioBoardLayout;->showLayout(Landroid/view/View;)V

    .line 8
    .line 9
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    .line 10
    .line 11
    const/high16 p2, 0x3f800000    # 1.0f

    .line 12
    const/4 v0, 0x0

    .line 13
    .line 14
    .line 15
    invoke-direct {p1, p2, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 16
    .line 17
    const-wide/16 v0, 0x1f4

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 21
    const/4 p2, 0x1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 25
    const/4 p2, -0x1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 29
    const/4 p2, 0x2

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 33
    .line 34
    iget-object p2, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->recordIndicator:Landroid/view/View;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 38
    return-void
.end method

.method public onRecordTimeChange(J)V
    .locals 2

    .line 1
    .line 2
    const-wide/16 v0, 0x3e8

    .line 3
    div-long/2addr p1, v0

    .line 4
    long-to-int p1, p1

    .line 5
    .line 6
    iget-object p2, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->recordTime:Landroid/widget/TextView;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string p1, "s"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    return-void
.end method

.method public onStatusChange(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-eq p1, v0, :cond_2

    .line 4
    const/4 v0, 0x2

    .line 5
    .line 6
    if-eq p1, v0, :cond_1

    .line 7
    const/4 v0, 0x3

    .line 8
    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->recordIndicator:Landroid/view/View;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->cancelShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 18
    .line 19
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->recordTime:Landroid/widget/TextView;

    .line 20
    .line 21
    iget v0, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->recordCancelColor:I

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->recordIndicator:Landroid/view/View;

    .line 28
    .line 29
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->primaryShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 33
    .line 34
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->recordTime:Landroid/widget/TextView;

    .line 35
    .line 36
    iget v0, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->recordPrimaryColor:I

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 40
    goto :goto_0

    .line 41
    .line 42
    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->recordTime:Landroid/widget/TextView;

    .line 43
    .line 44
    iget v0, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->recordPrimaryColor:I

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 48
    .line 49
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->recordIndicator:Landroid/view/View;

    .line 50
    .line 51
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->primaryShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 55
    :goto_0
    return-void
.end method
