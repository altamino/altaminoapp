.class public final Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;
.super Landroid/widget/FrameLayout;
.source "PreEditTimeLineComponent.kt"

# interfaces
.implements Lcom/narvii/video/widget/MediaRetrieveController2$TimeLineControllerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent$TimeLineCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPreEditTimeLineComponent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PreEditTimeLineComponent.kt\ncom/narvii/pre_editing/widget/PreEditTimeLineComponent\n*L\n1#1,141:1\n*E\n"
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private callback:Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent$TimeLineCallback;

.field private final controllerHandlerWidth:I

.field private controllerWidthOffset:I

.field private final frameContainerHeight:I

.field private frameItemContainer:Landroid/widget/LinearLayout;

.field private frameItemCount:I

.field private frameItemViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/widget/NVImageView;",
            ">;"
        }
    .end annotation
.end field

.field private interceptedByController:Z

.field private final leftMarginSize:I

.field private maxOutputLength:J

.field private mediaDuration:J

.field private minOutputLength:J

.field private retrieveCutter:Lcom/narvii/video/widget/MediaRetrieveController2;

.field private final topMarginSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attr"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->frameItemContainer:Landroid/widget/LinearLayout;

    .line 24
    new-instance v0, Lcom/narvii/video/widget/MediaRetrieveController2;

    invoke-direct {v0, p1}, Lcom/narvii/video/widget/MediaRetrieveController2;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->retrieveCutter:Lcom/narvii/video/widget/MediaRetrieveController2;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->frameItemViews:Ljava/util/List;

    .line 29
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/narvii/mediaeditor/R$dimen;->video_editor_controller_handler_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->controllerHandlerWidth:I

    .line 30
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/narvii/mediaeditor/R$dimen;->media_retrieve_boundary_left_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->leftMarginSize:I

    .line 31
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/narvii/mediaeditor/R$dimen;->media_retrieve_boundary_top_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->topMarginSize:I

    .line 32
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/narvii/mediaeditor/R$dimen;->media_retrieve_frame_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->frameContainerHeight:I

    const/4 v0, 0x0

    .line 45
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 46
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 48
    sget-object v1, Lcom/narvii/mediaeditor/R$styleable;->PreEditTimeLineComponent:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 49
    sget v1, Lcom/narvii/mediaeditor/R$styleable;->PreEditTimeLineComponent_frame_item_count:I

    const/16 v2, 0xc

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->frameItemCount:I

    .line 50
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 52
    new-instance p2, Landroid/widget/LinearLayout;

    invoke-direct {p2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->frameItemContainer:Landroid/widget/LinearLayout;

    .line 53
    iget-object p2, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->frameItemContainer:Landroid/widget/LinearLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 54
    iget-object p2, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->frameItemContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 55
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->frameContainerHeight:I

    const/4 v2, -0x1

    invoke-direct {p2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 56
    iget v1, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->topMarginSize:I

    iput v1, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 57
    iget v1, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->leftMarginSize:I

    iput v1, p2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 58
    iput v1, p2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 59
    iget-object v1, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->frameItemContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    iget p2, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->frameItemCount:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    .line 62
    new-instance v3, Lcom/narvii/widget/NVImageView;

    invoke-direct {v3, p1}, Lcom/narvii/widget/NVImageView;-><init>(Landroid/content/Context;)V

    .line 63
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 64
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v5, 0x3f800000    # 1.0f

    .line 65
    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 66
    iget-object v5, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->frameItemContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    iget-object v4, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->frameItemViews:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    :cond_0
    iget-object p1, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->retrieveCutter:Lcom/narvii/video/widget/MediaRetrieveController2;

    sget-object p2, Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;->SHIFT:Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;

    invoke-virtual {p1, p2}, Lcom/narvii/video/widget/MediaRetrieveController2;->setBoundaryMode(Lcom/narvii/video/widget/MediaRetrieveController2$BoundaryMode;)V

    .line 71
    iget-object p1, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->retrieveCutter:Lcom/narvii/video/widget/MediaRetrieveController2;

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p2, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static final synthetic access$getFrameItemViews$p(Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;)Ljava/util/List;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->frameItemViews:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$setFrameItemViews$p(Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;Ljava/util/List;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->frameItemViews:Ljava/util/List;

    return-void
.end method

.method public static synthetic initTimeLine$default(Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;JJJJJLcom/narvii/pre_editing/widget/PreEditTimeLineComponent$TimeLineCallback;Lcom/narvii/pre_editing/PreEditFrameRetriever;ILjava/lang/Object;)V
    .locals 16

    and-int/lit8 v0, p13, 0x2

    const-wide/32 v1, 0xea60

    if-eqz v0, :cond_0

    move-wide v6, v1

    goto :goto_0

    :cond_0
    move-wide/from16 v6, p3

    :goto_0
    and-int/lit8 v0, p13, 0x4

    if-eqz v0, :cond_1

    const-wide/16 v3, 0xbb8

    move-wide v8, v3

    goto :goto_1

    :cond_1
    move-wide/from16 v8, p5

    :goto_1
    and-int/lit8 v0, p13, 0x8

    if-eqz v0, :cond_2

    const-wide/16 v3, 0x0

    move-wide v10, v3

    goto :goto_2

    :cond_2
    move-wide/from16 v10, p7

    :goto_2
    and-int/lit8 v0, p13, 0x10

    if-eqz v0, :cond_3

    move-wide v12, v1

    goto :goto_3

    :cond_3
    move-wide/from16 v12, p9

    :goto_3
    and-int/lit8 v0, p13, 0x20

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    move-object v14, v1

    goto :goto_4

    :cond_4
    move-object/from16 v14, p11

    :goto_4
    and-int/lit8 v0, p13, 0x40

    if-eqz v0, :cond_5

    move-object v15, v1

    goto :goto_5

    :cond_5
    move-object/from16 v15, p12

    :goto_5
    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    .line 76
    invoke-virtual/range {v3 .. v15}, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->initTimeLine(JJJJJLcom/narvii/pre_editing/widget/PreEditTimeLineComponent$TimeLineCallback;Lcom/narvii/pre_editing/PreEditFrameRetriever;)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getCutterEndPosition()J
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->retrieveCutter:Lcom/narvii/video/widget/MediaRetrieveController2;

    invoke-virtual {v0}, Lcom/narvii/video/widget/MediaRetrieveController2;->getCutterEndPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getCutterStartPosition()J
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->retrieveCutter:Lcom/narvii/video/widget/MediaRetrieveController2;

    invoke-virtual {v0}, Lcom/narvii/video/widget/MediaRetrieveController2;->getCutterStartPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public final initTimeLine(JJJJJLcom/narvii/pre_editing/widget/PreEditTimeLineComponent$TimeLineCallback;Lcom/narvii/pre_editing/PreEditFrameRetriever;)V
    .locals 16

    move-object/from16 v14, p0

    move-object/from16 v0, p11

    move-object/from16 v15, p12

    .line 77
    iput-object v0, v14, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->callback:Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent$TimeLineCallback;

    move-wide/from16 v8, p1

    .line 78
    iput-wide v8, v14, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->mediaDuration:J

    move-wide/from16 v3, p3

    .line 79
    iput-wide v3, v14, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->maxOutputLength:J

    move-wide/from16 v1, p5

    .line 80
    iput-wide v1, v14, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->minOutputLength:J

    .line 82
    iget-object v0, v14, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->retrieveCutter:Lcom/narvii/video/widget/MediaRetrieveController2;

    const-wide/16 v6, 0x0

    move-object/from16 v5, p0

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    invoke-virtual/range {v0 .. v13}, Lcom/narvii/video/widget/MediaRetrieveController2;->initComponent(JJLcom/narvii/video/widget/MediaRetrieveController2$TimeLineControllerCallback;JJJJ)V

    .line 84
    iget-object v0, v14, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->retrieveCutter:Lcom/narvii/video/widget/MediaRetrieveController2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/video/widget/MediaRetrieveController2;->updateMediaSectionStartTime(I)V

    .line 86
    iget-wide v0, v14, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->mediaDuration:J

    iget v2, v14, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->frameItemCount:I

    int-to-long v3, v2

    div-long v3, v0, v3

    if-eqz v15, :cond_0

    .line 87
    new-instance v5, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent$initTimeLine$1;

    invoke-direct {v5, v14, v3, v4}, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent$initTimeLine$1;-><init>(Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;J)V

    invoke-virtual {v15, v0, v1, v2, v5}, Lcom/narvii/pre_editing/PreEditFrameRetriever;->retrieveFrame(JILcom/narvii/pre_editing/frame/VideoFrameReader$FrameCallback;)V

    :cond_0
    return-void
.end method

.method public onControllerMoved(JJZZ)V
    .locals 9

    const/16 v0, 0x64

    int-to-long v0, v0

    .line 133
    div-long/2addr p1, v0

    mul-long v3, p1, v0

    .line 134
    div-long/2addr p3, v0

    mul-long v5, p3, v0

    .line 135
    iget-object v2, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->callback:Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent$TimeLineCallback;

    if-eqz v2, :cond_0

    xor-int/lit8 v8, p6, 0x1

    move v7, p5

    invoke-interface/range {v2 .. v8}, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent$TimeLineCallback;->onFrameLocatedDuringMove(JJZZ)V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->retrieveCutter:Lcom/narvii/video/widget/MediaRetrieveController2;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/narvii/video/widget/MediaRetrieveController2;->isTouchInSlideHandler(F)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->interceptedByController:Z

    .line 120
    :cond_0
    iget-boolean p1, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->interceptedByController:Z

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 109
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 110
    iget p1, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->leftMarginSize:I

    iget p2, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->controllerHandlerWidth:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->controllerWidthOffset:I

    .line 111
    iget-object p1, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->retrieveCutter:Lcom/narvii/video/widget/MediaRetrieveController2;

    iget p2, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->controllerWidthOffset:I

    .line 112
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p3

    iget p4, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->controllerWidthOffset:I

    sub-int/2addr p3, p4

    .line 113
    iget p4, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->topMarginSize:I

    mul-int/lit8 p4, p4, 0x2

    iget p5, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->frameContainerHeight:I

    add-int/2addr p4, p5

    const/4 p5, 0x0

    .line 111
    invoke-virtual {p1, p2, p5, p3, p4}, Lcom/narvii/video/widget/MediaRetrieveController2;->layoutRect(IIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 125
    iput-boolean v0, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->interceptedByController:Z

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->retrieveCutter:Lcom/narvii/video/widget/MediaRetrieveController2;

    invoke-virtual {v0, p1}, Lcom/narvii/video/widget/MediaRetrieveController2;->onSlideHandlerMove(Landroid/view/MotionEvent;)V

    return v1
.end method

.method public final updatePlaybackTime(J)V
    .locals 5

    .line 102
    iget-object v0, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->retrieveCutter:Lcom/narvii/video/widget/MediaRetrieveController2;

    invoke-virtual {v0}, Lcom/narvii/video/widget/MediaRetrieveController2;->getCutterEndPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 104
    iget-object v0, p0, Lcom/narvii/pre_editing/widget/PreEditTimeLineComponent;->retrieveCutter:Lcom/narvii/video/widget/MediaRetrieveController2;

    long-to-int p2, p1

    invoke-virtual {v0, p2}, Lcom/narvii/video/widget/MediaRetrieveController2;->updatePointer(I)V

    :cond_0
    return-void
.end method
