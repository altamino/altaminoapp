.class public Lcom/narvii/chat/audio/AudioPlayer;
.super Landroid/widget/LinearLayout;
.source "AudioPlayer.java"

# interfaces
.implements Lcom/narvii/media/MediaStatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/audio/AudioPlayer$SeekbarTouchArea;
    }
.end annotation


# static fields
.field public static final MAX_PROGRESS:I = 0x186a0

.field public static final TIME_DURATION_ALPHA:F = 0.6f


# instance fields
.field duration:I

.field icon:Lcom/narvii/widget/TintButton;

.field isMine:Ljava/lang/Boolean;

.field isTrackingTouch:Z

.field maxWidth:I

.field mediaUrl:Ljava/lang/String;

.field minWidth:I

.field private padding:I

.field progressBar:Landroid/widget/ProgressBar;

.field private progressDrawable:Landroid/graphics/drawable/Drawable;

.field seekBar:Landroid/widget/SeekBar;

.field private seekDrawable:Landroid/graphics/drawable/Drawable;

.field spinningView:Lcom/narvii/widget/SpinningView;

.field time:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x42a00000    # 80.0f

    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/narvii/chat/audio/AudioPlayer;->minWidth:I

    return-void
.end method

.method private getDurationSecond(I)I
    .locals 1

    int-to-float p1, p1

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p1, v0

    .line 189
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method private setBarProgress(I)V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioPlayer;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 206
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioPlayer;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method


# virtual methods
.method protected fixedWidth()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMediaUrl()Ljava/lang/String;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioPlayer;->mediaUrl:Ljava/lang/String;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 5

    .line 80
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 81
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080815

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/audio/AudioPlayer;->seekDrawable:Landroid/graphics/drawable/Drawable;

    .line 82
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/audio/AudioPlayer;->progressDrawable:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f090562

    .line 83
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/TintButton;

    iput-object v0, p0, Lcom/narvii/chat/audio/AudioPlayer;->icon:Lcom/narvii/widget/TintButton;

    const v0, 0x7f0909fd

    .line 84
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/narvii/chat/audio/AudioPlayer;->seekBar:Landroid/widget/SeekBar;

    .line 85
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07027a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/narvii/chat/audio/AudioPlayer;->padding:I

    .line 86
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioPlayer;->seekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/narvii/chat/audio/AudioPlayer;->seekDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 87
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioPlayer;->seekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/narvii/chat/audio/AudioPlayer;->padding:I

    div-int/lit8 v2, v1, 0x2

    div-int/lit8 v1, v1, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, v3}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 88
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioPlayer;->seekBar:Landroid/widget/SeekBar;

    const v1, 0x186a0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 89
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioPlayer;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    new-instance v2, Lcom/narvii/chat/audio/AudioPlayer$SeekbarTouchArea;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lcom/narvii/chat/audio/AudioPlayer$SeekbarTouchArea;-><init>(Lcom/narvii/chat/audio/AudioPlayer;Lcom/narvii/chat/audio/AudioPlayer$1;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 90
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioPlayer;->seekBar:Landroid/widget/SeekBar;

    new-instance v2, Lcom/narvii/chat/audio/AudioPlayer$1;

    invoke-direct {v2, p0}, Lcom/narvii/chat/audio/AudioPlayer$1;-><init>(Lcom/narvii/chat/audio/AudioPlayer;)V

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const v0, 0x7f0908cc

    .line 108
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/narvii/chat/audio/AudioPlayer;->progressBar:Landroid/widget/ProgressBar;

    .line 109
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioPlayer;->progressBar:Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/narvii/chat/audio/AudioPlayer;->progressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioPlayer;->progressBar:Landroid/widget/ProgressBar;

    iget v2, p0, Lcom/narvii/chat/audio/AudioPlayer;->padding:I

    div-int/lit8 v4, v2, 0x2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v4, v3, v2, v3}, Landroid/widget/ProgressBar;->setPadding(IIII)V

    .line 111
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioPlayer;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    const v0, 0x7f090b73

    .line 113
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/chat/audio/AudioPlayer;->time:Landroid/widget/TextView;

    const v0, 0x7f090a78

    .line 114
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/SpinningView;

    iput-object v0, p0, Lcom/narvii/chat/audio/AudioPlayer;->spinningView:Lcom/narvii/widget/SpinningView;

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 120
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/chat/ChatBubbleView;

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/ChatBubbleView;

    invoke-virtual {v0}, Lcom/narvii/chat/ChatBubbleView;->getMaxContentWidth()I

    move-result v0

    iput v0, p0, Lcom/narvii/chat/audio/AudioPlayer;->maxWidth:I

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/audio/AudioPlayer;->fixedWidth()Z

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_1

    .line 125
    iget p1, p0, Lcom/narvii/chat/audio/AudioPlayer;->maxWidth:I

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 128
    :cond_1
    iget v0, p0, Lcom/narvii/chat/audio/AudioPlayer;->maxWidth:I

    if-lez v0, :cond_2

    iget v2, p0, Lcom/narvii/chat/audio/AudioPlayer;->minWidth:I

    if-le v0, v2, :cond_2

    sub-int/2addr v0, v2

    int-to-float p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float p1, p1, v0

    const/high16 v0, 0x43340000    # 180.0f

    div-float/2addr p1, v0

    int-to-float v0, v2

    .line 130
    iget v2, p0, Lcom/narvii/chat/audio/AudioPlayer;->duration:I

    const v3, 0x2bf20

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/narvii/chat/audio/AudioPlayer;->getDurationSecond(I)I

    move-result v2

    int-to-float v2, v2

    mul-float p1, p1, v2

    add-float/2addr v0, p1

    float-to-int p1, v0

    .line 131
    iget v0, p0, Lcom/narvii/chat/audio/AudioPlayer;->maxWidth:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    :cond_2
    const-string v0, "audio player view max width is not right"

    .line 134
    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 138
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public onProgressChange(Ljava/lang/String;II)V
    .locals 3

    .line 250
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioPlayer;->time:Landroid/widget/TextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 251
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioPlayer;->time:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 v2, p2, 0x3e8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget-boolean p1, p0, Lcom/narvii/chat/audio/AudioPlayer;->isTrackingTouch:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    int-to-float p1, p2

    mul-float p1, p1, v0

    int-to-float p2, p3

    div-float/2addr p1, p2

    const p2, 0x47c35000    # 100000.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    .line 256
    invoke-direct {p0, p1}, Lcom/narvii/chat/audio/AudioPlayer;->setBarProgress(I)V

    return-void
.end method

.method public onStatusChange(Lcom/narvii/media/MediaStatus;)V
    .locals 6

    .line 211
    iget-boolean v0, p0, Lcom/narvii/chat/audio/AudioPlayer;->isTrackingTouch:Z

    if-eqz v0, :cond_0

    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioPlayer;->time:Landroid/widget/TextView;

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 215
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioPlayer;->time:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/narvii/chat/audio/AudioPlayer;->duration:I

    invoke-direct {p0, v2}, Lcom/narvii/chat/audio/AudioPlayer;->getDurationSecond(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget v0, p1, Lcom/narvii/media/MediaStatus;->status:I

    .line 217
    iget-object v1, p0, Lcom/narvii/chat/audio/AudioPlayer;->spinningView:Lcom/narvii/widget/SpinningView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 218
    iget-object v1, p0, Lcom/narvii/chat/audio/AudioPlayer;->icon:Lcom/narvii/widget/TintButton;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 219
    invoke-virtual {p0, v3}, Lcom/narvii/chat/audio/AudioPlayer;->setProgress(I)V

    const/4 v1, 0x2

    const/4 v4, 0x1

    if-eq v0, v4, :cond_2

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 224
    :cond_1
    iget-object v5, p0, Lcom/narvii/chat/audio/AudioPlayer;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v5, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 225
    iget-object v2, p0, Lcom/narvii/chat/audio/AudioPlayer;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    .line 221
    :cond_2
    :goto_0
    iget-object v5, p0, Lcom/narvii/chat/audio/AudioPlayer;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v5, v3}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 222
    iget-object v5, p0, Lcom/narvii/chat/audio/AudioPlayer;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_1
    const v2, 0x7f080552

    if-eqz v0, :cond_6

    if-eq v0, v4, :cond_5

    if-eq v0, v1, :cond_4

    const/4 p1, 0x3

    if-eq v0, p1, :cond_3

    goto :goto_2

    .line 241
    :cond_3
    invoke-virtual {p0, v3}, Lcom/narvii/chat/audio/AudioPlayer;->setProgress(I)V

    .line 242
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioPlayer;->icon:Lcom/narvii/widget/TintButton;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 243
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioPlayer;->spinningView:Lcom/narvii/widget/SpinningView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 237
    :cond_4
    iget p1, p1, Lcom/narvii/media/MediaStatus;->position:I

    invoke-virtual {p0, p1}, Lcom/narvii/chat/audio/AudioPlayer;->setProgress(I)V

    .line 238
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioPlayer;->icon:Lcom/narvii/widget/TintButton;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 233
    :cond_5
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioPlayer;->icon:Lcom/narvii/widget/TintButton;

    const v1, 0x7f080551

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 234
    iget p1, p1, Lcom/narvii/media/MediaStatus;->position:I

    invoke-virtual {p0, p1}, Lcom/narvii/chat/audio/AudioPlayer;->setProgress(I)V

    goto :goto_2

    .line 229
    :cond_6
    invoke-virtual {p0, v3}, Lcom/narvii/chat/audio/AudioPlayer;->setProgress(I)V

    .line 230
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioPlayer;->icon:Lcom/narvii/widget/TintButton;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    return-void
.end method

.method public setDuration(I)V
    .locals 2

    .line 182
    iput p1, p0, Lcom/narvii/chat/audio/AudioPlayer;->duration:I

    .line 183
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioPlayer;->time:Landroid/widget/TextView;

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 184
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioPlayer;->time:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/narvii/chat/audio/AudioPlayer;->getDurationSecond(I)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "s"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method public setIsMine(Z)V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioPlayer;->isMine:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 149
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/audio/AudioPlayer;->isMine:Ljava/lang/Boolean;

    .line 151
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_1

    const p1, 0x7f060036

    goto :goto_0

    :cond_1
    const p1, 0x7f060038

    :goto_0
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 152
    invoke-virtual {p0, p1}, Lcom/narvii/chat/audio/AudioPlayer;->setThemeColor(I)V

    return-void
.end method

.method public setMediaUrl(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/narvii/chat/audio/AudioPlayer;->mediaUrl:Ljava/lang/String;

    return-void
.end method

.method public setProgress(I)V
    .locals 2

    .line 193
    iget-boolean v0, p0, Lcom/narvii/chat/audio/AudioPlayer;->isTrackingTouch:Z

    if-eqz v0, :cond_0

    return-void

    .line 196
    :cond_0
    iget v0, p0, Lcom/narvii/chat/audio/AudioPlayer;->duration:I

    if-nez v0, :cond_1

    const/4 p1, 0x0

    .line 197
    invoke-direct {p0, p1}, Lcom/narvii/chat/audio/AudioPlayer;->setBarProgress(I)V

    return-void

    :cond_1
    int-to-float p1, p1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float p1, p1, v1

    int-to-float v0, v0

    div-float/2addr p1, v0

    const v0, 0x47c35000    # 100000.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 201
    invoke-direct {p0, p1}, Lcom/narvii/chat/audio/AudioPlayer;->setBarProgress(I)V

    return-void
.end method

.method public setThemeColor(I)V
    .locals 5

    .line 157
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioPlayer;->icon:Lcom/narvii/widget/TintButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 158
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioPlayer;->spinningView:Lcom/narvii/widget/SpinningView;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/SpinningView;->setSpinColor(I)V

    .line 159
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioPlayer;->time:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 160
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioPlayer;->seekDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/LayerDrawable;

    const v2, 0x3ecccccd    # 0.4f

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 161
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 162
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 163
    instance-of v4, v1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v4, :cond_0

    .line 164
    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-static {p1, v2}, Lcom/narvii/util/Utils;->getColor(IF)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_0
    const/4 v1, 0x1

    .line 166
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 167
    instance-of v1, v0, Landroid/graphics/drawable/ClipDrawable;

    if-eqz v1, :cond_1

    .line 168
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioPlayer;->progressDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v1, :cond_2

    .line 173
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 174
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 175
    instance-of v1, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_2

    .line 176
    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-static {p1, v2}, Lcom/narvii/util/Utils;->getColor(IF)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_2
    return-void
.end method
