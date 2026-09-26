.class public final Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/video/widget/MediaRetrieveController2$TimeLineControllerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent$TimeLineCallback;
    }
.end annotation


# instance fields
.field private callback:Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent$TimeLineCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final controllerHandlerWidth:I

.field private controllerWidthOffset:I

.field private final frameContainerHeight:I

.field private frameItemContainer:Landroid/widget/LinearLayout;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private frameItemCount:I

.field private frameItemViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/widget/NVImageView;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private interceptedByController:Z

.field private final leftMarginSize:I

.field private maxOutputLength:J

.field private mediaDuration:J

.field private minOutputLength:J

.field private retrieveCutter:Lcom/narvii/video/widget/MediaRetrieveController2;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final topMarginSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
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
    const-string v0, "attr"

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
    new-instance v0, Landroid/widget/LinearLayout;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    iput-object v0, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->frameItemContainer:Landroid/widget/LinearLayout;

    .line 21
    .line 22
    new-instance v0, Lcom/narvii/video/widget/MediaRetrieveController2;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, p1}, Lcom/narvii/video/widget/MediaRetrieveController2;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    iput-object v0, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->retrieveCutter:Lcom/narvii/video/widget/MediaRetrieveController2;

    .line 28
    .line 29
    new-instance v0, Ljava/util/ArrayList;

    .line 30
    .line 31
    .line 32
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    iput-object v0, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->frameItemViews:Ljava/util/List;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    sget v1, Lcom/narvii/mediaeditor/R$dimen;->video_editor_controller_handler_width:I

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 44
    move-result v0

    .line 45
    .line 46
    iput v0, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->controllerHandlerWidth:I

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    sget v1, Lcom/narvii/mediaeditor/R$dimen;->media_retrieve_boundary_left_size:I

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 56
    move-result v0

    .line 57
    .line 58
    iput v0, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->leftMarginSize:I

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    sget v2, Lcom/narvii/mediaeditor/R$dimen;->media_retrieve_boundary_top_size:I

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 68
    move-result v1

    .line 69
    .line 70
    iput v1, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->topMarginSize:I

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 74
    move-result-object v2

    .line 75
    .line 76
    sget v3, Lcom/narvii/mediaeditor/R$dimen;->media_retrieve_frame_height:I

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 80
    move-result v2

    .line 81
    .line 82
    iput v2, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->frameContainerHeight:I

    .line 83
    const/4 v3, 0x0

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 90
    .line 91
    sget-object v4, Lcom/narvii/mediaeditor/R$styleable;->PreEditTimeLineComponent:[I

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, p2, v4, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 95
    move-result-object p2

    .line 96
    .line 97
    const-string v4, "obtainStyledAttributes(...)"

    .line 98
    .line 99
    .line 100
    invoke-static {p2, v4}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    .line 102
    sget v4, Lcom/narvii/mediaeditor/R$styleable;->PreEditTimeLineComponent_frame_item_count:I

    .line 103
    .line 104
    const/16 v5, 0xc

    .line 105
    .line 106
    .line 107
    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 108
    move-result v4

    .line 109
    .line 110
    iput v4, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->frameItemCount:I

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 114
    .line 115
    new-instance p2, Landroid/widget/LinearLayout;

    .line 116
    .line 117
    .line 118
    invoke-direct {p2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 119
    .line 120
    iput-object p2, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->frameItemContainer:Landroid/widget/LinearLayout;

    .line 121
    .line 122
    const/high16 v4, -0x1000000

    .line 123
    .line 124
    .line 125
    invoke-virtual {p2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 126
    .line 127
    iget-object p2, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->frameItemContainer:Landroid/widget/LinearLayout;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 131
    .line 132
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 133
    const/4 v4, -0x1

    .line 134
    .line 135
    .line 136
    invoke-direct {p2, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 137
    .line 138
    iput v1, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 139
    .line 140
    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 141
    .line 142
    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 143
    .line 144
    iget-object v0, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->frameItemContainer:Landroid/widget/LinearLayout;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    .line 149
    iget p2, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->frameItemCount:I

    .line 150
    move v0, v3

    .line 151
    .line 152
    :goto_0
    if-ge v0, p2, :cond_0

    .line 153
    .line 154
    new-instance v1, Lcom/narvii/widget/NVImageView;

    .line 155
    .line 156
    .line 157
    invoke-direct {v1, p1}, Lcom/narvii/widget/NVImageView;-><init>(Landroid/content/Context;)V

    .line 158
    .line 159
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 163
    .line 164
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 165
    .line 166
    .line 167
    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 168
    .line 169
    const/high16 v5, 0x3f800000    # 1.0f

    .line 170
    .line 171
    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 172
    .line 173
    iget-object v5, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->frameItemContainer:Landroid/widget/LinearLayout;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v5, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    .line 178
    iget-object v2, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->frameItemViews:Ljava/util/List;

    .line 179
    .line 180
    .line 181
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    .line 183
    add-int/lit8 v0, v0, 0x1

    .line 184
    goto :goto_0

    .line 185
    .line 186
    :cond_0
    iget-object p1, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->retrieveCutter:Lcom/narvii/video/widget/MediaRetrieveController2;

    .line 187
    .line 188
    sget-object p2, Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;->SHIFT:Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1, p2}, Lcom/narvii/video/widget/MediaRetrieveController2;->setBoundaryMode(Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;)V

    .line 192
    .line 193
    iget-object p1, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->retrieveCutter:Lcom/narvii/video/widget/MediaRetrieveController2;

    .line 194
    .line 195
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 196
    .line 197
    .line 198
    invoke-direct {p2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    return-void
.end method

.method public static final synthetic access$getFrameItemViews$p(Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;)Ljava/util/List;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->frameItemViews:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public static synthetic initTimeLine$default(Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;JJJJJLcom/narvii/pre_editing/widget/PreEditTimeLineComponent$TimeLineCallback;Lcom/narvii/pre_editing/PreEditFrameRetriever;ILjava/lang/Object;)V
    .locals 16

    .line 1
    .line 2
    and-int/lit8 v0, p13, 0x2

    .line 3
    .line 4
    .line 5
    const-wide/32 v1, 0xea60

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    move-wide v6, v1

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    move-wide/from16 v6, p3

    .line 12
    .line 13
    :goto_0
    and-int/lit8 v0, p13, 0x4

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const-wide/16 v3, 0xbb8

    .line 18
    move-wide v8, v3

    .line 19
    goto :goto_1

    .line 20
    .line 21
    :cond_1
    move-wide/from16 v8, p5

    .line 22
    .line 23
    :goto_1
    and-int/lit8 v0, p13, 0x8

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    const-wide/16 v3, 0x0

    .line 28
    move-wide v10, v3

    .line 29
    goto :goto_2

    .line 30
    .line 31
    :cond_2
    move-wide/from16 v10, p7

    .line 32
    .line 33
    :goto_2
    and-int/lit8 v0, p13, 0x10

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    move-wide v12, v1

    .line 37
    goto :goto_3

    .line 38
    .line 39
    :cond_3
    move-wide/from16 v12, p9

    .line 40
    .line 41
    :goto_3
    and-int/lit8 v0, p13, 0x20

    .line 42
    const/4 v1, 0x0

    .line 43
    .line 44
    if-eqz v0, :cond_4

    .line 45
    move-object v14, v1

    .line 46
    goto :goto_4

    .line 47
    .line 48
    :cond_4
    move-object/from16 v14, p11

    .line 49
    .line 50
    :goto_4
    and-int/lit8 v0, p13, 0x40

    .line 51
    .line 52
    if-eqz v0, :cond_5

    .line 53
    move-object v15, v1

    .line 54
    goto :goto_5

    .line 55
    .line 56
    :cond_5
    move-object/from16 v15, p12

    .line 57
    .line 58
    :goto_5
    move-object/from16 v3, p0

    .line 59
    .line 60
    move-wide/from16 v4, p1

    .line 61
    .line 62
    .line 63
    invoke-virtual/range {v3 .. v15}, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->initTimeLine(JJJJJLcom/narvii/pre_editing/widget/PreEditTimeLineComponent$TimeLineCallback;Lcom/narvii/pre_editing/PreEditFrameRetriever;)V

    .line 64
    return-void
.end method


# virtual methods
.method public final getCutterEndPosition()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->retrieveCutter:Lcom/narvii/video/widget/MediaRetrieveController2;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/video/widget/MediaRetrieveController2;->getCutterEndPosition()J

    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final getCutterStartPosition()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->retrieveCutter:Lcom/narvii/video/widget/MediaRetrieveController2;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/video/widget/MediaRetrieveController2;->getCutterStartPosition()J

    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final initTimeLine(JJJJJLcom/narvii/pre_editing/widget/PreEditTimeLineComponent$TimeLineCallback;Lcom/narvii/pre_editing/PreEditFrameRetriever;)V
    .locals 16
    .param p11    # Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent$TimeLineCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Lcom/narvii/pre_editing/PreEditFrameRetriever;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    move-object/from16 v14, p0

    .line 3
    .line 4
    move-object/from16 v0, p11

    .line 5
    .line 6
    move-object/from16 v15, p12

    .line 7
    .line 8
    iput-object v0, v14, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->callback:Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent$TimeLineCallback;

    .line 9
    .line 10
    move-wide/from16 v8, p1

    .line 11
    .line 12
    iput-wide v8, v14, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->mediaDuration:J

    .line 13
    .line 14
    move-wide/from16 v3, p3

    .line 15
    .line 16
    iput-wide v3, v14, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->maxOutputLength:J

    .line 17
    .line 18
    move-wide/from16 v1, p5

    .line 19
    .line 20
    iput-wide v1, v14, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->minOutputLength:J

    .line 21
    .line 22
    iget-object v0, v14, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->retrieveCutter:Lcom/narvii/video/widget/MediaRetrieveController2;

    .line 23
    .line 24
    const-wide/16 v6, 0x0

    .line 25
    .line 26
    move-object/from16 v5, p0

    .line 27
    .line 28
    move-wide/from16 v10, p7

    .line 29
    .line 30
    move-wide/from16 v12, p9

    .line 31
    .line 32
    .line 33
    invoke-virtual/range {v0 .. v13}, Lcom/narvii/video/widget/MediaRetrieveController2;->initComponent(JJLcom/narvii/video/widget/MediaRetrieveController2$TimeLineControllerCallback;JJJJ)V

    .line 34
    .line 35
    iget-object v0, v14, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->retrieveCutter:Lcom/narvii/video/widget/MediaRetrieveController2;

    .line 36
    const/4 v1, 0x0

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/narvii/video/widget/MediaRetrieveController2;->updateMediaSectionStartTime(I)V

    .line 40
    .line 41
    iget-wide v0, v14, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->mediaDuration:J

    .line 42
    .line 43
    iget v2, v14, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->frameItemCount:I

    .line 44
    int-to-long v3, v2

    .line 45
    .line 46
    div-long v3, v0, v3

    .line 47
    .line 48
    if-eqz v15, :cond_0

    .line 49
    .line 50
    new-instance v5, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent$initTimeLine$1;

    .line 51
    .line 52
    .line 53
    invoke-direct {v5, v3, v4, v14}, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent$initTimeLine$1;-><init>(JLcom/narvii/pre_editing/widget/PreEditTimeLineComponent;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v15, v0, v1, v2, v5}, Lcom/narvii/pre_editing/PreEditFrameRetriever;->retrieveFrame(JILcom/narvii/pre_editing/frame/VideoFrameReader$FrameCallback;)V

    .line 57
    :cond_0
    return-void
.end method

.method public onControllerMoved(JJZZ)V
    .locals 9

    .line 1
    .line 2
    const/16 v0, 0x64

    .line 3
    int-to-long v0, v0

    .line 4
    div-long/2addr p1, v0

    .line 5
    .line 6
    mul-long v3, p1, v0

    .line 7
    div-long/2addr p3, v0

    .line 8
    .line 9
    mul-long v5, p3, v0

    .line 10
    .line 11
    iget-object v2, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->callback:Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent$TimeLineCallback;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    xor-int/lit8 v8, p6, 0x1

    .line 16
    move v7, p5

    .line 17
    .line 18
    .line 19
    invoke-interface/range {v2 .. v8}, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent$TimeLineCallback;->onFrameLocatedDuringMove(JJZZ)V

    .line 20
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
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
    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 9
    move-result v0

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->retrieveCutter:Lcom/narvii/video/widget/MediaRetrieveController2;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 17
    move-result p1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/narvii/video/widget/MediaRetrieveController2;->isTouchInSlideHandler(F)Z

    .line 21
    move-result p1

    .line 22
    .line 23
    iput-boolean p1, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->interceptedByController:Z

    .line 24
    .line 25
    :cond_0
    iget-boolean p1, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->interceptedByController:Z

    .line 26
    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 4
    .line 5
    iget p1, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->leftMarginSize:I

    .line 6
    .line 7
    iget p2, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->controllerHandlerWidth:I

    .line 8
    sub-int/2addr p1, p2

    .line 9
    .line 10
    iput p1, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->controllerWidthOffset:I

    .line 11
    .line 12
    iget-object p2, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->retrieveCutter:Lcom/narvii/video/widget/MediaRetrieveController2;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 16
    move-result p3

    .line 17
    .line 18
    iget p4, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->controllerWidthOffset:I

    .line 19
    sub-int/2addr p3, p4

    .line 20
    .line 21
    iget p4, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->topMarginSize:I

    .line 22
    .line 23
    mul-int/lit8 p4, p4, 0x2

    .line 24
    .line 25
    iget p5, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->frameContainerHeight:I

    .line 26
    add-int/2addr p4, p5

    .line 27
    const/4 p5, 0x0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, p1, p5, p3, p4}, Lcom/narvii/video/widget/MediaRetrieveController2;->layoutRect(IIII)V

    .line 31
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "event"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 16
    move-result v0

    .line 17
    const/4 v2, 0x3

    .line 18
    .line 19
    if-ne v0, v2, :cond_1

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    .line 22
    iput-boolean v0, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->interceptedByController:Z

    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->retrieveCutter:Lcom/narvii/video/widget/MediaRetrieveController2;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Lcom/narvii/video/widget/MediaRetrieveController2;->onSlideHandlerMove(Landroid/view/MotionEvent;)V

    .line 28
    return v1
.end method

.method public final updatePlaybackTime(J)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->retrieveCutter:Lcom/narvii/video/widget/MediaRetrieveController2;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/video/widget/MediaRetrieveController2;->getCutterEndPosition()J

    .line 6
    move-result-wide v0

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    cmp-long v2, v0, v2

    .line 11
    .line 12
    if-lez v2, :cond_0

    .line 13
    .line 14
    cmp-long v0, p1, v0

    .line 15
    .line 16
    if-gez v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->retrieveCutter:Lcom/narvii/video/widget/MediaRetrieveController2;

    .line 19
    long-to-int p1, p1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lcom/narvii/video/widget/MediaRetrieveController2;->updatePointer(I)V

    .line 23
    :cond_0
    return-void
.end method
