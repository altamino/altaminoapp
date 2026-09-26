.class public final Lcom/narvii/video/widget/ViceTimeLineWrapperView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/video/widget/ViceTimeLineWrapperView$IViceTimeLineEditCallback;
    }
.end annotation


# instance fields
.field private additionalFrameOffsetDx:I

.field private downEventTimeStamp:J

.field private downPointer:Lw7/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw7/u<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private endEdgeReached:Z

.field private gestureDetector:Landroid/view/GestureDetector;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private inEditMode:Z

.field private initialTimeLineScrollDx:F

.field private lastMoveX:F

.field private final mTouchSlop:I

.field private mainTrackStartDx:F

.field private onSelfClickListener:Landroid/view/View$OnClickListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private onTimeLineScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private rtl:Z

.field private scrollRangeMaxDx:F

.field private scrollRangeMinDx:F

.field private startEdgeReached:Z

.field private touchAvailableMaxX:F

.field private touchAvailableMinX:F

.field private viceTimeLine:Lcom/narvii/video/widget/MediaTimeLineComponent;
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
        .annotation build Lorg/jetbrains/annotations/NotNull;
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
    const-string v0, "attributes"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 17
    move-result p2

    .line 18
    .line 19
    iput-boolean p2, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->rtl:Z

    .line 20
    .line 21
    new-instance p2, Landroid/view/GestureDetector;

    .line 22
    .line 23
    new-instance v0, Lcom/narvii/video/widget/ViceTimeLineWrapperView$gestureDetector$1;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0}, Lcom/narvii/video/widget/ViceTimeLineWrapperView$gestureDetector$1;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-direct {p2, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 30
    .line 31
    iput-object p2, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->gestureDetector:Landroid/view/GestureDetector;

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 39
    move-result p1

    .line 40
    .line 41
    mul-int/lit8 p1, p1, 0x2

    .line 42
    .line 43
    iput p1, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->mTouchSlop:I

    .line 44
    .line 45
    new-instance p1, Lw7/u;

    .line 46
    .line 47
    const/high16 p2, -0x40800000    # -1.0f

    .line 48
    .line 49
    .line 50
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 51
    move-result-object p2

    .line 52
    .line 53
    .line 54
    invoke-direct {p1, p2, p2}, Lw7/u;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 55
    .line 56
    iput-object p1, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->downPointer:Lw7/u;

    .line 57
    return-void
.end method

.method public static final synthetic access$getMainTrackStartDx$p(Lcom/narvii/video/widget/ViceTimeLineWrapperView;)F
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->mainTrackStartDx:F

    .line 3
    return p0
.end method

.method public static final synthetic access$getRtl$p(Lcom/narvii/video/widget/ViceTimeLineWrapperView;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->rtl:Z

    .line 3
    return p0
.end method

.method public static final synthetic access$getViceTimeLine$p(Lcom/narvii/video/widget/ViceTimeLineWrapperView;)Lcom/narvii/video/widget/MediaTimeLineComponent;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->viceTimeLine:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$updateContentSection(Lcom/narvii/video/widget/ViceTimeLineWrapperView;FI)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->updateContentSection(FI)V

    .line 4
    return-void
.end method

.method private final updateContentSection(FI)V
    .locals 5

    .line 1
    .line 2
    sget v0, Lcom/narvii/mediaeditor/R$id;->clip_name:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 9
    .line 10
    sget v1, Lcom/narvii/mediaeditor/R$id;->track_content_panel:I

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    check-cast v1, Landroid/widget/LinearLayout;

    .line 17
    .line 18
    iget-boolean v2, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->rtl:Z

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 24
    move-result v2

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v2, 0x0

    .line 27
    :goto_0
    int-to-float v2, v2

    .line 28
    sub-float/2addr p1, v2

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 32
    move-result-object v2

    .line 33
    .line 34
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 35
    .line 36
    if-eq p2, v3, :cond_1

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 40
    move-result-object v3

    .line 41
    .line 42
    const-string v4, ""

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    .line 47
    iput p2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    invoke-virtual {v1, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 57
    return-void
.end method

.method public static synthetic updateVisibleContentSection$default(Lcom/narvii/video/widget/ViceTimeLineWrapperView;FIIIFFZILjava/lang/Object;)V
    .locals 9

    .line 1
    .line 2
    and-int/lit8 v0, p8, 0x40

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    move v8, v0

    .line 7
    goto :goto_0

    .line 8
    .line 9
    :cond_0
    move/from16 v8, p7

    .line 10
    :goto_0
    move-object v1, p0

    .line 11
    move v2, p1

    .line 12
    move v3, p2

    .line 13
    move v4, p3

    .line 14
    move v5, p4

    .line 15
    move v6, p5

    .line 16
    move v7, p6

    .line 17
    .line 18
    .line 19
    invoke-virtual/range {v1 .. v8}, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->updateVisibleContentSection(FIIIFFZ)V

    .line 20
    return-void
.end method


# virtual methods
.method public final addTimeLineOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "listener"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->onTimeLineScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->viceTimeLine:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->addTimeLineOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 15
    :cond_0
    return-void
.end method

.method public final bindViceTimeLine(Lcom/narvii/video/widget/MediaTimeLineComponent;ILcom/narvii/video/model/BaseClipInfoPack;)V
    .locals 6
    .param p1    # Lcom/narvii/video/widget/MediaTimeLineComponent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/video/model/BaseClipInfoPack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "timeLineComponent"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    const-string v0, "clip"

    .line 9
    .line 10
    .line 11
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    iput-object p1, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->viceTimeLine:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getAdditionalFramePreOffsetDx()I

    .line 17
    move-result p1

    .line 18
    .line 19
    iput p1, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->additionalFrameOffsetDx:I

    .line 20
    .line 21
    sget p1, Lcom/narvii/mediaeditor/R$id;->track_icon:I

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    check-cast p1, Landroid/widget/ImageView;

    .line 28
    .line 29
    sget v0, Lcom/narvii/mediaeditor/R$id;->clip_name:I

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    check-cast v0, Landroid/widget/TextView;

    .line 36
    .line 37
    sget v1, Lcom/narvii/mediaeditor/R$id;->track_sticker_icon:I

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    check-cast v1, Lcom/narvii/widget/NVImageView;

    .line 44
    .line 45
    sget v2, Lcom/narvii/mediaeditor/R$id;->vice_time_line_cutter:I

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    move-result-object v2

    .line 50
    .line 51
    check-cast v2, Lcom/narvii/video/widget/ViceTimeLineCutterView;

    .line 52
    .line 53
    const-string v3, "#222222"

    .line 54
    const/4 v4, 0x0

    .line 55
    .line 56
    const/16 v5, 0x8

    .line 57
    .line 58
    .line 59
    packed-switch p2, :pswitch_data_0

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 72
    move-result-object p2

    .line 73
    .line 74
    sget p3, Lcom/narvii/mediaeditor/R$drawable;->ic_music:I

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 78
    move-result-object p2

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    goto :goto_0

    .line 83
    .line 84
    .line 85
    :pswitch_0
    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 95
    goto :goto_0

    .line 96
    .line 97
    .line 98
    :pswitch_1
    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 105
    .line 106
    new-instance p1, Ljava/io/File;

    .line 107
    .line 108
    check-cast p3, Lcom/narvii/video/model/StickerInfoPack;

    .line 109
    .line 110
    iget-object p2, p3, Lcom/narvii/video/model/StickerInfoPack;->srcImagePath:Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-static {p1}, Lcom/narvii/util/FileUtils;->isEmpty(Ljava/io/File;)Z

    .line 117
    move-result p2

    .line 118
    .line 119
    if-nez p2, :cond_0

    .line 120
    .line 121
    .line 122
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 123
    move-result-object p1

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 127
    move-result-object p1

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, p1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 131
    .line 132
    .line 133
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 134
    move-result-object p1

    .line 135
    .line 136
    sget p2, Lcom/narvii/mediaeditor/R$color;->media_timeline_sticker_frame_color:I

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    .line 140
    move-result p1

    .line 141
    .line 142
    .line 143
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 144
    move-result p2

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2, p1, p2}, Lcom/narvii/video/widget/ViceTimeLineCutterView;->setFillColor(II)V

    .line 148
    goto :goto_0

    .line 149
    .line 150
    .line 151
    :pswitch_2
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 161
    move-result-object p2

    .line 162
    .line 163
    sget p3, Lcom/narvii/mediaeditor/R$drawable;->ic_text:I

    .line 164
    .line 165
    .line 166
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 167
    move-result-object p2

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 171
    .line 172
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 173
    const/4 p2, 0x1

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 180
    move-result-object p1

    .line 181
    .line 182
    sget p2, Lcom/narvii/mediaeditor/R$color;->media_timeline_caption_frame_color:I

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    .line 186
    move-result p1

    .line 187
    .line 188
    .line 189
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 190
    move-result p2

    .line 191
    .line 192
    .line 193
    invoke-virtual {v2, p1, p2}, Lcom/narvii/video/widget/ViceTimeLineCutterView;->setFillColor(II)V

    .line 194
    :goto_0
    return-void

    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "ev"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget v0, Lcom/narvii/mediaeditor/R$id;->vice_time_line_cutter:I

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/video/widget/ViceTimeLineCutterView;

    .line 14
    .line 15
    sget v1, Lcom/narvii/mediaeditor/R$id;->audio_time_line:I

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    check-cast v1, Lcom/narvii/widget/HorizontalRecyclerView;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->gestureDetector:Landroid/view/GestureDetector;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 27
    move-result v2

    .line 28
    const/4 v3, 0x1

    .line 29
    const/4 v4, 0x0

    .line 30
    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    iget-object v2, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->onTimeLineScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 34
    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v1, v4}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-virtual {v0, p1}, Lcom/narvii/video/widget/ViceTimeLineCutterView;->onActionUpInterceptedForFling(Landroid/view/MotionEvent;)V

    .line 42
    return v3

    .line 43
    .line 44
    .line 45
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 46
    move-result v0

    .line 47
    .line 48
    if-nez v0, :cond_2

    .line 49
    .line 50
    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 52
    move-result-wide v5

    .line 53
    .line 54
    iput-wide v5, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->downEventTimeStamp:J

    .line 55
    .line 56
    new-instance v0, Lw7/u;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 60
    move-result v2

    .line 61
    .line 62
    .line 63
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 64
    move-result-object v2

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 68
    move-result v5

    .line 69
    .line 70
    .line 71
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 72
    move-result-object v5

    .line 73
    .line 74
    .line 75
    invoke-direct {v0, v2, v5}, Lw7/u;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 76
    .line 77
    iput-object v0, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->downPointer:Lw7/u;

    .line 78
    goto :goto_0

    .line 79
    .line 80
    .line 81
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 82
    move-result v0

    .line 83
    .line 84
    if-ne v0, v3, :cond_3

    .line 85
    .line 86
    iget-object v0, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->downPointer:Lw7/u;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Lw7/u;->c()Ljava/lang/Object;

    .line 90
    move-result-object v0

    .line 91
    .line 92
    check-cast v0, Ljava/lang/Number;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 96
    move-result v0

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 100
    move-result v2

    .line 101
    sub-float/2addr v0, v2

    .line 102
    .line 103
    .line 104
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 105
    move-result v0

    .line 106
    .line 107
    iget-object v2, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->downPointer:Lw7/u;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2}, Lw7/u;->d()Ljava/lang/Object;

    .line 111
    move-result-object v2

    .line 112
    .line 113
    check-cast v2, Ljava/lang/Number;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 117
    move-result v2

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 121
    move-result v5

    .line 122
    sub-float/2addr v2, v5

    .line 123
    .line 124
    .line 125
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 126
    move-result v2

    .line 127
    add-float/2addr v0, v2

    .line 128
    .line 129
    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 131
    move-result-wide v5

    .line 132
    .line 133
    iget-wide v7, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->downEventTimeStamp:J

    .line 134
    sub-long/2addr v5, v7

    .line 135
    .line 136
    iget v2, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->touchAvailableMinX:F

    .line 137
    .line 138
    iget v7, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->touchAvailableMaxX:F

    .line 139
    .line 140
    iget-object v8, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->downPointer:Lw7/u;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v8}, Lw7/u;->c()Ljava/lang/Object;

    .line 144
    move-result-object v8

    .line 145
    .line 146
    check-cast v8, Ljava/lang/Number;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    .line 150
    move-result v8

    .line 151
    .line 152
    cmpg-float v2, v2, v8

    .line 153
    .line 154
    if-gtz v2, :cond_3

    .line 155
    .line 156
    cmpg-float v2, v8, v7

    .line 157
    .line 158
    if-gtz v2, :cond_3

    .line 159
    .line 160
    iget v2, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->mTouchSlop:I

    .line 161
    int-to-float v2, v2

    .line 162
    .line 163
    cmpg-float v0, v0, v2

    .line 164
    .line 165
    if-gtz v0, :cond_3

    .line 166
    .line 167
    const-wide/16 v7, 0x3e8

    .line 168
    .line 169
    cmp-long v0, v5, v7

    .line 170
    .line 171
    if-gtz v0, :cond_3

    .line 172
    .line 173
    iget-object v0, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->onSelfClickListener:Landroid/view/View$OnClickListener;

    .line 174
    .line 175
    if-eqz v0, :cond_3

    .line 176
    .line 177
    .line 178
    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 179
    .line 180
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->inEditMode:Z

    .line 181
    .line 182
    if-eqz v0, :cond_4

    .line 183
    .line 184
    .line 185
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 186
    move-result p1

    .line 187
    return p1

    .line 188
    .line 189
    :cond_4
    iget v0, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->touchAvailableMinX:F

    .line 190
    .line 191
    iget v2, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->mTouchSlop:I

    .line 192
    int-to-float v5, v2

    .line 193
    sub-float/2addr v0, v5

    .line 194
    .line 195
    iget v5, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->touchAvailableMaxX:F

    .line 196
    int-to-float v2, v2

    .line 197
    add-float/2addr v5, v2

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 201
    move-result v2

    .line 202
    .line 203
    cmpg-float v0, v0, v2

    .line 204
    const/4 v6, 0x3

    .line 205
    .line 206
    if-gtz v0, :cond_16

    .line 207
    .line 208
    cmpg-float v0, v2, v5

    .line 209
    .line 210
    if-gtz v0, :cond_16

    .line 211
    .line 212
    .line 213
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 214
    move-result v0

    .line 215
    .line 216
    if-nez v0, :cond_6

    .line 217
    .line 218
    iput-boolean v4, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->startEdgeReached:Z

    .line 219
    .line 220
    iput-boolean v4, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->endEdgeReached:Z

    .line 221
    .line 222
    .line 223
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 224
    move-result v0

    .line 225
    .line 226
    iput v0, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->lastMoveX:F

    .line 227
    .line 228
    iget-object v0, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->viceTimeLine:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 229
    .line 230
    if-eqz v0, :cond_5

    .line 231
    .line 232
    .line 233
    invoke-virtual {v0, v4}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getTimeLineScrolledDx(Z)I

    .line 234
    move-result v0

    .line 235
    goto :goto_1

    .line 236
    :cond_5
    move v0, v4

    .line 237
    :goto_1
    int-to-float v0, v0

    .line 238
    .line 239
    iput v0, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->initialTimeLineScrollDx:F

    .line 240
    .line 241
    .line 242
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 243
    goto :goto_2

    .line 244
    .line 245
    .line 246
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 247
    move-result v0

    .line 248
    .line 249
    if-eq v0, v3, :cond_7

    .line 250
    .line 251
    .line 252
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 253
    move-result v0

    .line 254
    .line 255
    if-ne v0, v6, :cond_8

    .line 256
    .line 257
    :cond_7
    iput-boolean v4, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->startEdgeReached:Z

    .line 258
    .line 259
    iput-boolean v4, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->endEdgeReached:Z

    .line 260
    .line 261
    iget-object v0, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->onTimeLineScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 262
    .line 263
    if-eqz v0, :cond_8

    .line 264
    .line 265
    .line 266
    invoke-virtual {v0, v1, v4}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 267
    .line 268
    :cond_8
    :goto_2
    iget-boolean v0, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->rtl:Z

    .line 269
    .line 270
    if-eqz v0, :cond_9

    .line 271
    .line 272
    iget v0, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->lastMoveX:F

    .line 273
    .line 274
    .line 275
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 276
    move-result v1

    .line 277
    :goto_3
    sub-float/2addr v0, v1

    .line 278
    goto :goto_4

    .line 279
    .line 280
    .line 281
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 282
    move-result v0

    .line 283
    .line 284
    iget v1, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->lastMoveX:F

    .line 285
    goto :goto_3

    .line 286
    .line 287
    :goto_4
    iget-boolean v1, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->startEdgeReached:Z

    .line 288
    const/4 v2, 0x0

    .line 289
    .line 290
    if-eqz v1, :cond_a

    .line 291
    .line 292
    cmpg-float v1, v0, v2

    .line 293
    .line 294
    if-gez v1, :cond_a

    .line 295
    return v3

    .line 296
    .line 297
    :cond_a
    iget-boolean v1, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->endEdgeReached:Z

    .line 298
    .line 299
    if-eqz v1, :cond_b

    .line 300
    .line 301
    cmpl-float v1, v0, v2

    .line 302
    .line 303
    if-lez v1, :cond_b

    .line 304
    return v3

    .line 305
    .line 306
    .line 307
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 308
    move-result v1

    .line 309
    .line 310
    iput v1, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->lastMoveX:F

    .line 311
    .line 312
    iget v1, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->initialTimeLineScrollDx:F

    .line 313
    .line 314
    sub-float v2, v1, v0

    .line 315
    .line 316
    iget v5, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->scrollRangeMinDx:F

    .line 317
    .line 318
    cmpg-float v2, v2, v5

    .line 319
    .line 320
    if-gtz v2, :cond_10

    .line 321
    .line 322
    cmpl-float p1, v1, v5

    .line 323
    .line 324
    if-lez p1, :cond_f

    .line 325
    .line 326
    iget-object p1, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->viceTimeLine:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 327
    .line 328
    if-eqz p1, :cond_c

    .line 329
    .line 330
    .line 331
    invoke-virtual {p1, v4}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getTimeLineScrolledDx(Z)I

    .line 332
    move-result v4

    .line 333
    :cond_c
    int-to-float p1, v4

    .line 334
    sub-float/2addr v5, p1

    .line 335
    .line 336
    iget-boolean p1, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->rtl:Z

    .line 337
    .line 338
    if-eqz p1, :cond_d

    .line 339
    neg-float v5, v5

    .line 340
    .line 341
    :cond_d
    iget-object p1, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->viceTimeLine:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 342
    .line 343
    if-eqz p1, :cond_e

    .line 344
    float-to-int v0, v5

    .line 345
    .line 346
    .line 347
    invoke-virtual {p1, v0}, Lcom/narvii/video/widget/MediaTimeLineComponent;->scrollTimeLineBy(I)V

    .line 348
    .line 349
    :cond_e
    iget p1, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->scrollRangeMinDx:F

    .line 350
    .line 351
    iput p1, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->initialTimeLineScrollDx:F

    .line 352
    .line 353
    :cond_f
    iput-boolean v3, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->endEdgeReached:Z

    .line 354
    goto :goto_5

    .line 355
    .line 356
    :cond_10
    sub-float v2, v1, v0

    .line 357
    .line 358
    iget v5, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->scrollRangeMaxDx:F

    .line 359
    .line 360
    cmpl-float v2, v2, v5

    .line 361
    .line 362
    if-ltz v2, :cond_15

    .line 363
    .line 364
    cmpg-float p1, v1, v5

    .line 365
    .line 366
    if-gez p1, :cond_14

    .line 367
    .line 368
    iget-object p1, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->viceTimeLine:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 369
    .line 370
    if-eqz p1, :cond_11

    .line 371
    .line 372
    .line 373
    invoke-virtual {p1, v4}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getTimeLineScrolledDx(Z)I

    .line 374
    move-result v4

    .line 375
    :cond_11
    int-to-float p1, v4

    .line 376
    sub-float/2addr v5, p1

    .line 377
    .line 378
    iget-boolean p1, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->rtl:Z

    .line 379
    .line 380
    if-eqz p1, :cond_12

    .line 381
    neg-float v5, v5

    .line 382
    .line 383
    :cond_12
    iget-object p1, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->viceTimeLine:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 384
    .line 385
    if-eqz p1, :cond_13

    .line 386
    float-to-int v0, v5

    .line 387
    .line 388
    .line 389
    invoke-virtual {p1, v0}, Lcom/narvii/video/widget/MediaTimeLineComponent;->scrollTimeLineBy(I)V

    .line 390
    .line 391
    :cond_13
    iget p1, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->scrollRangeMaxDx:F

    .line 392
    .line 393
    iput p1, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->initialTimeLineScrollDx:F

    .line 394
    .line 395
    :cond_14
    iput-boolean v3, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->startEdgeReached:Z

    .line 396
    goto :goto_5

    .line 397
    :cond_15
    sub-float/2addr v1, v0

    .line 398
    .line 399
    iput v1, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->initialTimeLineScrollDx:F

    .line 400
    .line 401
    iput-boolean v4, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->startEdgeReached:Z

    .line 402
    .line 403
    iput-boolean v4, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->endEdgeReached:Z

    .line 404
    .line 405
    .line 406
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 407
    move-result v3

    .line 408
    :goto_5
    return v3

    .line 409
    .line 410
    .line 411
    :cond_16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 412
    move-result v0

    .line 413
    .line 414
    if-eq v0, v3, :cond_17

    .line 415
    .line 416
    .line 417
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 418
    move-result p1

    .line 419
    .line 420
    if-ne p1, v6, :cond_18

    .line 421
    .line 422
    :cond_17
    iput-boolean v4, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->startEdgeReached:Z

    .line 423
    .line 424
    iput-boolean v4, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->endEdgeReached:Z

    .line 425
    .line 426
    iget-object p1, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->onTimeLineScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 427
    .line 428
    if-eqz p1, :cond_18

    .line 429
    .line 430
    .line 431
    invoke-virtual {p1, v1, v4}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 432
    :cond_18
    return v3
.end method

.method public final getMTouchSlop()I
    .locals 1

    iget v0, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->mTouchSlop:I

    return v0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->onSelfClickListener:Landroid/view/View$OnClickListener;

    .line 6
    return-void
.end method

.method public final setTrackContent(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "title"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    sget v0, Lcom/narvii/mediaeditor/R$id;->clip_name:I

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Landroid/widget/TextView;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    return-void
.end method

.method public final setViceTimeLineEditCallback(Lcom/narvii/video/widget/ViceTimeLineWrapperView$IViceTimeLineEditCallback;)V
    .locals 2
    .param p1    # Lcom/narvii/video/widget/ViceTimeLineWrapperView$IViceTimeLineEditCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    sget v0, Lcom/narvii/mediaeditor/R$id;->vice_time_line_cutter:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/video/widget/ViceTimeLineCutterView;

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    const/4 p1, 0x0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/narvii/video/widget/ViceTimeLineCutterView;->setControllerCallback(Lcom/narvii/video/widget/ViceTimeLineCutterView$IViceTimeLineCutterCallback;)V

    .line 15
    return-void

    .line 16
    .line 17
    :cond_0
    new-instance v1, Lcom/narvii/video/widget/ViceTimeLineWrapperView$setViceTimeLineEditCallback$1;

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, p0, p1}, Lcom/narvii/video/widget/ViceTimeLineWrapperView$setViceTimeLineEditCallback$1;-><init>(Lcom/narvii/video/widget/ViceTimeLineWrapperView;Lcom/narvii/video/widget/ViceTimeLineWrapperView$IViceTimeLineEditCallback;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/narvii/video/widget/ViceTimeLineCutterView;->setControllerCallback(Lcom/narvii/video/widget/ViceTimeLineCutterView$IViceTimeLineCutterCallback;)V

    .line 24
    return-void
.end method

.method public final toggleEditMode(Z)V
    .locals 1

    .line 1
    .line 2
    sget v0, Lcom/narvii/mediaeditor/R$id;->vice_time_line_cutter:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/video/widget/ViceTimeLineCutterView;

    .line 9
    .line 10
    iput-boolean p1, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->inEditMode:Z

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/narvii/video/widget/ViceTimeLineCutterView;->toggle(Z)V

    .line 14
    return-void
.end method

.method public final updateScrollingRange(II)V
    .locals 1

    iget v0, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->additionalFrameOffsetDx:I

    add-int/2addr p1, v0

    int-to-float p1, p1

    iput p1, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->scrollRangeMinDx:F

    add-int/2addr p2, v0

    int-to-float p1, p2

    iput p1, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->scrollRangeMaxDx:F

    return-void
.end method

.method public final updateVisibleContentSection(FIIIFFZ)V
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    .line 3
    sget v1, Lcom/narvii/mediaeditor/R$id;->vice_time_line_cutter:I

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v1

    .line 8
    move-object v2, v1

    .line 9
    .line 10
    check-cast v2, Lcom/narvii/video/widget/ViceTimeLineCutterView;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/narvii/video/widget/ViceTimeLineCutterView;->getCurrentTimelineRect()Landroid/graphics/RectF;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    if-eqz p7, :cond_1

    .line 17
    .line 18
    iget-boolean v3, v0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->rtl:Z

    .line 19
    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    iget v3, v1, Landroid/graphics/RectF;->right:F

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_0
    iget v3, v1, Landroid/graphics/RectF;->left:F

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move v3, p1

    .line 28
    .line 29
    :goto_0
    if-eqz p7, :cond_2

    .line 30
    .line 31
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 32
    .line 33
    new-instance v5, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string/jumbo v6, "testtest cutter width = "

    .line 40
    .line 41
    .line 42
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    .line 46
    move-result v6

    .line 47
    .line 48
    .line 49
    invoke-static {v6}, Lg8/a;->c(F)I

    .line 50
    move-result v6

    .line 51
    .line 52
    .line 53
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v6, " sectionWidth = "

    .line 56
    .line 57
    .line 58
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    move v6, p2

    .line 60
    .line 61
    .line 62
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object v5

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    .line 73
    move-result v1

    .line 74
    .line 75
    .line 76
    invoke-static {v1}, Lg8/a;->c(F)I

    .line 77
    move-result v1

    .line 78
    goto :goto_1

    .line 79
    :cond_2
    move v6, p2

    .line 80
    move v1, v6

    .line 81
    .line 82
    :goto_1
    iget-boolean v4, v0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->rtl:Z

    .line 83
    .line 84
    if-eqz v4, :cond_3

    .line 85
    int-to-float v5, v1

    .line 86
    .line 87
    sub-float v5, v3, v5

    .line 88
    goto :goto_2

    .line 89
    :cond_3
    move v5, v3

    .line 90
    .line 91
    :goto_2
    iput v5, v0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->touchAvailableMinX:F

    .line 92
    .line 93
    if-eqz v4, :cond_4

    .line 94
    move v4, v3

    .line 95
    goto :goto_3

    .line 96
    :cond_4
    int-to-float v4, v1

    .line 97
    add-float/2addr v4, v3

    .line 98
    .line 99
    :goto_3
    iput v4, v0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->touchAvailableMaxX:F

    .line 100
    .line 101
    move/from16 v9, p5

    .line 102
    .line 103
    iput v9, v0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->mainTrackStartDx:F

    .line 104
    .line 105
    .line 106
    invoke-direct {p0, v3, v1}, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->updateContentSection(FI)V

    .line 107
    .line 108
    iget-boolean v4, v0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->rtl:Z

    .line 109
    .line 110
    if-eqz v4, :cond_5

    .line 111
    move v4, v1

    .line 112
    goto :goto_4

    .line 113
    :cond_5
    const/4 v4, 0x0

    .line 114
    :goto_4
    int-to-float v4, v4

    .line 115
    sub-float/2addr v3, v4

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 119
    move-result v4

    .line 120
    int-to-float v4, v4

    .line 121
    int-to-float v1, v1

    .line 122
    .line 123
    add-float v5, v3, v1

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    .line 127
    move-result v1

    .line 128
    int-to-float v6, v1

    .line 129
    move v1, p3

    .line 130
    int-to-float v7, v1

    .line 131
    move v1, p4

    .line 132
    int-to-float v8, v1

    .line 133
    .line 134
    move/from16 v9, p5

    .line 135
    .line 136
    move/from16 v10, p6

    .line 137
    .line 138
    .line 139
    invoke-virtual/range {v2 .. v10}, Lcom/narvii/video/widget/ViceTimeLineCutterView;->layoutRect(FFFFFFFF)V

    .line 140
    return-void
.end method
