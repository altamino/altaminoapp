.class public Lcom/narvii/chat/audio/AudioPlayer;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

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
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    const/high16 p2, 0x42a00000    # 80.0f

    .line 10
    .line 11
    .line 12
    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 13
    move-result p1

    .line 14
    float-to-int p1, p1

    .line 15
    .line 16
    iput p1, p0, Lcom/narvii/chat/audio/AudioPlayer;->minWidth:I

    .line 17
    return-void
.end method

.method private getDurationSecond(I)I
    .locals 1

    .line 1
    int-to-float p1, p1

    .line 2
    .line 3
    const/high16 v0, 0x447a0000    # 1000.0f

    .line 4
    div-float/2addr p1, v0

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method private setBarProgress(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioPlayer;->seekBar:Landroid/widget/SeekBar;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioPlayer;->progressBar:Landroid/widget/ProgressBar;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 11
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

    iget-object v0, p0, Lcom/narvii/chat/audio/AudioPlayer;->mediaUrl:Ljava/lang/String;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    const v1, 0x7f080a2c

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    iput-object v0, p0, Lcom/narvii/chat/audio/AudioPlayer;->seekDrawable:Landroid/graphics/drawable/Drawable;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    iput-object v0, p0, Lcom/narvii/chat/audio/AudioPlayer;->progressDrawable:Landroid/graphics/drawable/Drawable;

    .line 35
    .line 36
    .line 37
    const v0, 0x7f0a06d5

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    check-cast v0, Lcom/narvii/widget/TintButton;

    .line 44
    .line 45
    iput-object v0, p0, Lcom/narvii/chat/audio/AudioPlayer;->icon:Lcom/narvii/widget/TintButton;

    .line 46
    .line 47
    .line 48
    const v0, 0x7f0a0cc3

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    check-cast v0, Landroid/widget/SeekBar;

    .line 55
    .line 56
    iput-object v0, p0, Lcom/narvii/chat/audio/AudioPlayer;->seekBar:Landroid/widget/SeekBar;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    .line 63
    const v1, 0x7f070498

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 67
    move-result v0

    .line 68
    .line 69
    iput v0, p0, Lcom/narvii/chat/audio/AudioPlayer;->padding:I

    .line 70
    .line 71
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioPlayer;->seekBar:Landroid/widget/SeekBar;

    .line 72
    .line 73
    iget-object v1, p0, Lcom/narvii/chat/audio/AudioPlayer;->seekDrawable:Landroid/graphics/drawable/Drawable;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 77
    .line 78
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioPlayer;->seekBar:Landroid/widget/SeekBar;

    .line 79
    .line 80
    iget v1, p0, Lcom/narvii/chat/audio/AudioPlayer;->padding:I

    .line 81
    .line 82
    div-int/lit8 v2, v1, 0x2

    .line 83
    .line 84
    div-int/lit8 v1, v1, 0x2

    .line 85
    const/4 v3, 0x0

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v2, v3, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 89
    .line 90
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioPlayer;->seekBar:Landroid/widget/SeekBar;

    .line 91
    .line 92
    .line 93
    const v1, 0x186a0

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 97
    .line 98
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioPlayer;->seekBar:Landroid/widget/SeekBar;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 102
    move-result-object v0

    .line 103
    .line 104
    check-cast v0, Landroid/view/View;

    .line 105
    .line 106
    new-instance v2, Lcom/narvii/chat/audio/AudioPlayer$SeekbarTouchArea;

    .line 107
    const/4 v4, 0x0

    .line 108
    .line 109
    .line 110
    invoke-direct {v2, p0, v4}, Lcom/narvii/chat/audio/AudioPlayer$SeekbarTouchArea;-><init>(Lcom/narvii/chat/audio/AudioPlayer;Lcom/narvii/chat/audio/a;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 114
    .line 115
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioPlayer;->seekBar:Landroid/widget/SeekBar;

    .line 116
    .line 117
    new-instance v2, Lcom/narvii/chat/audio/AudioPlayer$1;

    .line 118
    .line 119
    .line 120
    invoke-direct {v2, p0}, Lcom/narvii/chat/audio/AudioPlayer$1;-><init>(Lcom/narvii/chat/audio/AudioPlayer;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 124
    .line 125
    .line 126
    const v0, 0x7f0a0b8d

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 130
    move-result-object v0

    .line 131
    .line 132
    check-cast v0, Landroid/widget/ProgressBar;

    .line 133
    .line 134
    iput-object v0, p0, Lcom/narvii/chat/audio/AudioPlayer;->progressBar:Landroid/widget/ProgressBar;

    .line 135
    .line 136
    iget-object v2, p0, Lcom/narvii/chat/audio/AudioPlayer;->progressDrawable:Landroid/graphics/drawable/Drawable;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 140
    .line 141
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioPlayer;->progressBar:Landroid/widget/ProgressBar;

    .line 142
    .line 143
    iget v2, p0, Lcom/narvii/chat/audio/AudioPlayer;->padding:I

    .line 144
    .line 145
    div-int/lit8 v4, v2, 0x2

    .line 146
    .line 147
    div-int/lit8 v2, v2, 0x2

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, v4, v3, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 151
    .line 152
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioPlayer;->progressBar:Landroid/widget/ProgressBar;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 156
    .line 157
    .line 158
    const v0, 0x7f0a0e78

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 162
    move-result-object v0

    .line 163
    .line 164
    check-cast v0, Landroid/widget/TextView;

    .line 165
    .line 166
    iput-object v0, p0, Lcom/narvii/chat/audio/AudioPlayer;->time:Landroid/widget/TextView;

    .line 167
    .line 168
    .line 169
    const v0, 0x7f0a0d67

    .line 170
    .line 171
    .line 172
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 173
    move-result-object v0

    .line 174
    .line 175
    check-cast v0, Lcom/narvii/widget/SpinningView;

    .line 176
    .line 177
    iput-object v0, p0, Lcom/narvii/chat/audio/AudioPlayer;->spinningView:Lcom/narvii/widget/SpinningView;

    .line 178
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v0, v0, Lcom/narvii/chat/ChatBubbleView;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Lcom/narvii/chat/ChatBubbleView;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/chat/ChatBubbleView;->getMaxContentWidth()I

    .line 18
    move-result v0

    .line 19
    .line 20
    iput v0, p0, Lcom/narvii/chat/audio/AudioPlayer;->maxWidth:I

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/audio/AudioPlayer;->fixedWidth()Z

    .line 24
    move-result v0

    .line 25
    .line 26
    const/high16 v1, 0x40000000    # 2.0f

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget p1, p0, Lcom/narvii/chat/audio/AudioPlayer;->maxWidth:I

    .line 31
    .line 32
    .line 33
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 34
    move-result p1

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_1
    iget v0, p0, Lcom/narvii/chat/audio/AudioPlayer;->maxWidth:I

    .line 38
    .line 39
    if-lez v0, :cond_2

    .line 40
    .line 41
    iget v2, p0, Lcom/narvii/chat/audio/AudioPlayer;->minWidth:I

    .line 42
    .line 43
    if-le v0, v2, :cond_2

    .line 44
    sub-int/2addr v0, v2

    .line 45
    int-to-float p1, v0

    .line 46
    .line 47
    const/high16 v0, 0x3f800000    # 1.0f

    .line 48
    mul-float/2addr p1, v0

    .line 49
    .line 50
    const/high16 v0, 0x43340000    # 180.0f

    .line 51
    div-float/2addr p1, v0

    .line 52
    int-to-float v0, v2

    .line 53
    .line 54
    iget v2, p0, Lcom/narvii/chat/audio/AudioPlayer;->duration:I

    .line 55
    .line 56
    .line 57
    const v3, 0x2bf20

    .line 58
    .line 59
    .line 60
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 61
    move-result v2

    .line 62
    .line 63
    .line 64
    invoke-direct {p0, v2}, Lcom/narvii/chat/audio/AudioPlayer;->getDurationSecond(I)I

    .line 65
    move-result v2

    .line 66
    int-to-float v2, v2

    .line 67
    mul-float/2addr p1, v2

    .line 68
    add-float/2addr v0, p1

    .line 69
    float-to-int p1, v0

    .line 70
    .line 71
    iget v0, p0, Lcom/narvii/chat/audio/AudioPlayer;->maxWidth:I

    .line 72
    .line 73
    .line 74
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 75
    move-result p1

    .line 76
    .line 77
    .line 78
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 79
    move-result p1

    .line 80
    goto :goto_0

    .line 81
    .line 82
    :cond_2
    const-string v0, "audio player view max width is not right"

    .line 83
    .line 84
    .line 85
    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 89
    return-void
.end method

.method public onProgressChange(Ljava/lang/String;II)V
    .locals 3

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioPlayer;->time:Landroid/widget/TextView;

    .line 3
    .line 4
    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 8
    .line 9
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioPlayer;->time:Landroid/widget/TextView;

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    div-int/lit16 v2, p2, 0x3e8

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v2, "s"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    iget-boolean p1, p0, Lcom/narvii/chat/audio/AudioPlayer;->isTrackingTouch:Z

    .line 34
    .line 35
    if-eqz p1, :cond_0

    .line 36
    return-void

    .line 37
    :cond_0
    int-to-float p1, p2

    .line 38
    mul-float/2addr p1, v0

    .line 39
    int-to-float p2, p3

    .line 40
    div-float/2addr p1, p2

    .line 41
    .line 42
    .line 43
    const p2, 0x47c35000    # 100000.0f

    .line 44
    mul-float/2addr p1, p2

    .line 45
    float-to-int p1, p1

    .line 46
    .line 47
    .line 48
    invoke-direct {p0, p1}, Lcom/narvii/chat/audio/AudioPlayer;->setBarProgress(I)V

    .line 49
    return-void
.end method

.method public onStatusChange(Lcom/narvii/media/MediaStatus;)V
    .locals 6

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/chat/audio/AudioPlayer;->isTrackingTouch:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioPlayer;->time:Landroid/widget/TextView;

    .line 8
    .line 9
    .line 10
    const v1, 0x3f19999a    # 0.6f

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioPlayer;->time:Landroid/widget/TextView;

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    iget v2, p0, Lcom/narvii/chat/audio/AudioPlayer;->duration:I

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, v2}, Lcom/narvii/chat/audio/AudioPlayer;->getDurationSecond(I)I

    .line 26
    move-result v2

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v2, "s"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    iget v0, p1, Lcom/narvii/media/MediaStatus;->status:I

    .line 44
    .line 45
    iget-object v1, p0, Lcom/narvii/chat/audio/AudioPlayer;->spinningView:Lcom/narvii/widget/SpinningView;

    .line 46
    .line 47
    const/16 v2, 0x8

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 51
    .line 52
    iget-object v1, p0, Lcom/narvii/chat/audio/AudioPlayer;->icon:Lcom/narvii/widget/TintButton;

    .line 53
    const/4 v3, 0x0

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v3}, Lcom/narvii/chat/audio/AudioPlayer;->setProgress(I)V

    .line 60
    const/4 v1, 0x2

    .line 61
    const/4 v4, 0x1

    .line 62
    .line 63
    if-eq v0, v4, :cond_2

    .line 64
    .line 65
    if-ne v0, v1, :cond_1

    .line 66
    goto :goto_0

    .line 67
    .line 68
    :cond_1
    iget-object v5, p0, Lcom/narvii/chat/audio/AudioPlayer;->seekBar:Landroid/widget/SeekBar;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 72
    .line 73
    iget-object v2, p0, Lcom/narvii/chat/audio/AudioPlayer;->progressBar:Landroid/widget/ProgressBar;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 77
    goto :goto_1

    .line 78
    .line 79
    :cond_2
    :goto_0
    iget-object v5, p0, Lcom/narvii/chat/audio/AudioPlayer;->seekBar:Landroid/widget/SeekBar;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 83
    .line 84
    iget-object v5, p0, Lcom/narvii/chat/audio/AudioPlayer;->progressBar:Landroid/widget/ProgressBar;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 88
    .line 89
    .line 90
    :goto_1
    const v2, 0x7f08067b

    .line 91
    .line 92
    if-eqz v0, :cond_6

    .line 93
    .line 94
    if-eq v0, v4, :cond_5

    .line 95
    .line 96
    if-eq v0, v1, :cond_4

    .line 97
    const/4 p1, 0x3

    .line 98
    .line 99
    if-eq v0, p1, :cond_3

    .line 100
    goto :goto_2

    .line 101
    .line 102
    .line 103
    :cond_3
    invoke-virtual {p0, v3}, Lcom/narvii/chat/audio/AudioPlayer;->setProgress(I)V

    .line 104
    .line 105
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioPlayer;->icon:Lcom/narvii/widget/TintButton;

    .line 106
    const/4 v0, 0x4

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 110
    .line 111
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioPlayer;->spinningView:Lcom/narvii/widget/SpinningView;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 115
    goto :goto_2

    .line 116
    .line 117
    :cond_4
    iget p1, p1, Lcom/narvii/media/MediaStatus;->position:I

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, p1}, Lcom/narvii/chat/audio/AudioPlayer;->setProgress(I)V

    .line 121
    .line 122
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioPlayer;->icon:Lcom/narvii/widget/TintButton;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 126
    goto :goto_2

    .line 127
    .line 128
    :cond_5
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioPlayer;->icon:Lcom/narvii/widget/TintButton;

    .line 129
    .line 130
    .line 131
    const v1, 0x7f08067a

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 135
    .line 136
    iget p1, p1, Lcom/narvii/media/MediaStatus;->position:I

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0, p1}, Lcom/narvii/chat/audio/AudioPlayer;->setProgress(I)V

    .line 140
    goto :goto_2

    .line 141
    .line 142
    .line 143
    :cond_6
    invoke-virtual {p0, v3}, Lcom/narvii/chat/audio/AudioPlayer;->setProgress(I)V

    .line 144
    .line 145
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioPlayer;->icon:Lcom/narvii/widget/TintButton;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 149
    :goto_2
    return-void
.end method

.method public setDuration(I)V
    .locals 2

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/chat/audio/AudioPlayer;->duration:I

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioPlayer;->time:Landroid/widget/TextView;

    .line 5
    .line 6
    .line 7
    const v1, 0x3f19999a    # 0.6f

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioPlayer;->time:Landroid/widget/TextView;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, p1}, Lcom/narvii/chat/audio/AudioPlayer;->getDurationSecond(I)I

    .line 21
    move-result p1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string p1, "s"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 40
    return-void
.end method

.method public setIsMine(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioPlayer;->isMine:Ljava/lang/Boolean;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-ne v0, p1, :cond_0

    .line 11
    return-void

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/chat/audio/AudioPlayer;->isMine:Ljava/lang/Boolean;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    .line 26
    const p1, 0x7f060052

    .line 27
    goto :goto_0

    .line 28
    .line 29
    .line 30
    :cond_1
    const p1, 0x7f060054

    .line 31
    .line 32
    .line 33
    :goto_0
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    .line 34
    move-result p1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1}, Lcom/narvii/chat/audio/AudioPlayer;->setThemeColor(I)V

    .line 38
    return-void
.end method

.method public setMediaUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/audio/AudioPlayer;->mediaUrl:Ljava/lang/String;

    return-void
.end method

.method public setProgress(I)V
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/chat/audio/AudioPlayer;->isTrackingTouch:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget v0, p0, Lcom/narvii/chat/audio/AudioPlayer;->duration:I

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    const/4 p1, 0x0

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1}, Lcom/narvii/chat/audio/AudioPlayer;->setBarProgress(I)V

    .line 14
    return-void

    .line 15
    :cond_1
    int-to-float p1, p1

    .line 16
    .line 17
    const/high16 v1, 0x3f800000    # 1.0f

    .line 18
    mul-float/2addr p1, v1

    .line 19
    int-to-float v0, v0

    .line 20
    div-float/2addr p1, v0

    .line 21
    .line 22
    .line 23
    const v0, 0x47c35000    # 100000.0f

    .line 24
    mul-float/2addr p1, v0

    .line 25
    float-to-int p1, p1

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, p1}, Lcom/narvii/chat/audio/AudioPlayer;->setBarProgress(I)V

    .line 29
    return-void
.end method

.method public setThemeColor(I)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioPlayer;->icon:Lcom/narvii/widget/TintButton;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioPlayer;->spinningView:Lcom/narvii/widget/SpinningView;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/narvii/widget/SpinningView;->setSpinColor(I)V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioPlayer;->time:Landroid/widget/TextView;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioPlayer;->seekDrawable:Landroid/graphics/drawable/Drawable;

    .line 18
    .line 19
    instance-of v1, v0, Landroid/graphics/drawable/LayerDrawable;

    .line 20
    .line 21
    .line 22
    const v2, 0x3ecccccd    # 0.4f

    .line 23
    const/4 v3, 0x0

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    instance-of v4, v1, Landroid/graphics/drawable/GradientDrawable;

    .line 34
    .line 35
    if-eqz v4, :cond_0

    .line 36
    .line 37
    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    .line 38
    .line 39
    .line 40
    invoke-static {p1, v2}, Lcom/narvii/util/Utils;->getColor(IF)I

    .line 41
    move-result v4

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 45
    :cond_0
    const/4 v1, 0x1

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    instance-of v1, v0, Landroid/graphics/drawable/ClipDrawable;

    .line 52
    .line 53
    if-eqz v1, :cond_1

    .line 54
    .line 55
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 59
    .line 60
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioPlayer;->progressDrawable:Landroid/graphics/drawable/Drawable;

    .line 61
    .line 62
    instance-of v1, v0, Landroid/graphics/drawable/LayerDrawable;

    .line 63
    .line 64
    if-eqz v1, :cond_2

    .line 65
    .line 66
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 70
    move-result-object v0

    .line 71
    .line 72
    instance-of v1, v0, Landroid/graphics/drawable/GradientDrawable;

    .line 73
    .line 74
    if-eqz v1, :cond_2

    .line 75
    .line 76
    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 77
    .line 78
    .line 79
    invoke-static {p1, v2}, Lcom/narvii/util/Utils;->getColor(IF)I

    .line 80
    move-result p1

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 84
    :cond_2
    return-void
.end method
