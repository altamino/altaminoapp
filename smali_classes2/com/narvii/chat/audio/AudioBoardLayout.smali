.class public Lcom/narvii/chat/audio/AudioBoardLayout;
.super Landroid/widget/FrameLayout;
.source "AudioBoardLayout.java"

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

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance p1, Lcom/narvii/chat/audio/AudioBoardLayout$1;

    invoke-direct {p1, p0}, Lcom/narvii/chat/audio/AudioBoardLayout$1;-><init>(Lcom/narvii/chat/audio/AudioBoardLayout;)V

    iput-object p1, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->removeToastRunnable:Ljava/lang/Runnable;

    .line 55
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f06021d

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->recordPrimaryColor:I

    .line 56
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f06021c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->recordCancelColor:I

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/chat/audio/AudioBoardLayout;Landroid/view/View;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/narvii/chat/audio/AudioBoardLayout;->hideLayout(Landroid/view/View;)V

    return-void
.end method

.method private hideLayout(Landroid/view/View;)V
    .locals 2

    .line 138
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    const/16 v0, 0x8

    .line 139
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 141
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->mLayouts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 142
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    .line 149
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    :cond_2
    return-void
.end method

.method private showLayout(Landroid/view/View;)V
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->mLayouts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-ne v1, p1, :cond_0

    .line 127
    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    const/4 v2, 0x0

    .line 128
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    const/16 v2, 0x8

    .line 131
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const p1, 0x7f080134

    .line 134
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    return-void
.end method


# virtual methods
.method public onBeyondMaxDuration()V
    .locals 3

    .line 91
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->removeToastRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 92
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->voiceBoardToast:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/narvii/chat/audio/AudioBoardLayout;->showLayout(Landroid/view/View;)V

    .line 93
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->voiceBoardToast:Landroid/widget/TextView;

    const v1, 0x7f0f0b9e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 94
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->voiceBoardToast:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f010013

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public onBeyondMaxOver()V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->voiceBoardToast:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/narvii/chat/audio/AudioBoardLayout;->hideLayout(Landroid/view/View;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 61
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f090cb6

    .line 62
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->voiceBoardToast:Landroid/widget/TextView;

    const v0, 0x7f090938

    .line 63
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->recordTimeLayout:Landroid/view/View;

    const v0, 0x7f090935

    .line 64
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->recordIndicator:Landroid/view/View;

    .line 66
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object v0, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->primaryShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    .line 67
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->primaryShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->recordPrimaryColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object v0, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->cancelShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    .line 70
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->cancelShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->recordCancelColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->recordIndicator:Landroid/view/View;

    iget-object v1, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->primaryShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f090937

    .line 73
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->recordTime:Landroid/widget/TextView;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->mLayouts:Ljava/util/ArrayList;

    .line 76
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->mLayouts:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->voiceBoardToast:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->mLayouts:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->recordTimeLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onMessageTooShort()V
    .locals 3

    .line 82
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->removeToastRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 83
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->voiceBoardToast:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/narvii/chat/audio/AudioBoardLayout;->showLayout(Landroid/view/View;)V

    .line 84
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->voiceBoardToast:Landroid/widget/TextView;

    const v1, 0x7f0f0b9f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 85
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->voiceBoardToast:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f010013

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 86
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->removeToastRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onRecordCancel()V
    .locals 0

    return-void
.end method

.method public onRecordEnd()V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->recordTimeLayout:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/narvii/chat/audio/AudioBoardLayout;->hideLayout(Landroid/view/View;)V

    return-void
.end method

.method public onRecordStart(J)V
    .locals 2

    .line 109
    iput-wide p1, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->recordStartTime:J

    .line 110
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->recordTimeLayout:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/narvii/chat/audio/AudioBoardLayout;->showLayout(Landroid/view/View;)V

    .line 111
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    const/high16 p2, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v0, 0x1f4

    .line 112
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 p2, 0x1

    .line 113
    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    const/4 p2, -0x1

    .line 114
    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    const/4 p2, 0x2

    .line 115
    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 116
    iget-object p2, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->recordIndicator:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public onRecordTimeChange(J)V
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 173
    div-long/2addr p1, v0

    long-to-int p2, p1

    .line 174
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->recordTime:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "s"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onStatusChange(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 165
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->recordIndicator:Landroid/view/View;

    iget-object v0, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->cancelShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 166
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->recordTime:Landroid/widget/TextView;

    iget v0, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->recordCancelColor:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 161
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->recordIndicator:Landroid/view/View;

    iget-object v0, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->primaryShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 162
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->recordTime:Landroid/widget/TextView;

    iget v0, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->recordPrimaryColor:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 157
    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->recordTime:Landroid/widget/TextView;

    iget v0, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->recordPrimaryColor:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 158
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->recordIndicator:Landroid/view/View;

    iget-object v0, p0, Lcom/narvii/chat/audio/AudioBoardLayout;->primaryShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method
