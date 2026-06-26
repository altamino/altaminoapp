.class public final Lcom/narvii/video/widget/ViceTimeLineWrapperView;
.super Landroid/widget/FrameLayout;
.source "ViceTimeLineWrapperView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/video/widget/ViceTimeLineWrapperView$IViceTimeLineEditCallback;
    }
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private additionalFrameOffsetDx:I

.field private downEventTimeStamp:J

.field private downPointer:Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private endEdgeReached:Z

.field private gestureDetector:Landroid/view/GestureDetector;

.field private inEditMode:Z

.field private initialTimeLineScrollDx:F

.field private lastMoveX:F

.field private final mTouchSlop:I

.field private mainTrackStartDx:F

.field private onSelfClickListener:Landroid/view/View$OnClickListener;

.field private onTimeLineScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

.field private rtl:Z

.field private scrollRangeMaxDx:F

.field private scrollRangeMinDx:F

.field private startEdgeReached:Z

.field private touchAvailableMaxX:F

.field private touchAvailableMinX:F

.field private viceTimeLine:Lcom/narvii/video/widget/MediaTimeLineComponent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result p2

    iput-boolean p2, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->rtl:Z

    .line 40
    new-instance p2, Landroid/view/GestureDetector;

    new-instance v0, Lcom/narvii/video/widget/ViceTimeLineWrapperView$gestureDetector$1;

    invoke-direct {v0}, Lcom/narvii/video/widget/ViceTimeLineWrapperView$gestureDetector$1;-><init>()V

    invoke-direct {p2, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->gestureDetector:Landroid/view/GestureDetector;

    .line 160
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    const-string p2, "ViewConfiguration.get(context)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->mTouchSlop:I

    .line 161
    new-instance p1, Lkotlin/Pair;

    const/high16 p2, -0x40800000    # -1.0f

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-direct {p1, p2, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->downPointer:Lkotlin/Pair;

    return-void
.end method

.method public static final synthetic access$getMainTrackStartDx$p(Lcom/narvii/video/widget/ViceTimeLineWrapperView;)F
    .locals 0

    .line 23
    iget p0, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->mainTrackStartDx:F

    return p0
.end method

.method public static final synthetic access$getRtl$p(Lcom/narvii/video/widget/ViceTimeLineWrapperView;)Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->rtl:Z

    return p0
.end method

.method public static final synthetic access$getViceTimeLine$p(Lcom/narvii/video/widget/ViceTimeLineWrapperView;)Lcom/narvii/video/widget/MediaTimeLineComponent;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->viceTimeLine:Lcom/narvii/video/widget/MediaTimeLineComponent;

    return-object p0
.end method

.method public static final synthetic access$setMainTrackStartDx$p(Lcom/narvii/video/widget/ViceTimeLineWrapperView;F)V
    .locals 0

    .line 23
    iput p1, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->mainTrackStartDx:F

    return-void
.end method

.method public static final synthetic access$setRtl$p(Lcom/narvii/video/widget/ViceTimeLineWrapperView;Z)V
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->rtl:Z

    return-void
.end method

.method public static final synthetic access$setViceTimeLine$p(Lcom/narvii/video/widget/ViceTimeLineWrapperView;Lcom/narvii/video/widget/MediaTimeLineComponent;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->viceTimeLine:Lcom/narvii/video/widget/MediaTimeLineComponent;

    return-void
.end method

.method public static final synthetic access$updateContentSection(Lcom/narvii/video/widget/ViceTimeLineWrapperView;FI)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->updateContentSection(FI)V

    return-void
.end method

.method private final updateContentSection(FI)V
    .locals 6

    .line 148
    iget-boolean v0, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->rtl:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 149
    sget v0, Lcom/narvii/mediaeditor/R$id;->track_content_panel:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v1, "track_content_panel"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 150
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq p2, v2, :cond_1

    .line 151
    sget v2, Lcom/narvii/mediaeditor/R$id;->clip_name:I

    invoke-virtual {p0, v2}, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, "clip_name"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 152
    sget v4, Lcom/narvii/mediaeditor/R$id;->clip_name:I

    invoke-virtual {p0, v4}, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 154
    sget p2, Lcom/narvii/mediaeditor/R$id;->track_content_panel:I

    invoke-virtual {p0, p2}, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    sget p2, Lcom/narvii/mediaeditor/R$id;->clip_name:I

    invoke-virtual {p0, p2}, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    :cond_1
    sget p2, Lcom/narvii/mediaeditor/R$id;->track_content_panel:I

    invoke-virtual {p0, p2}, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    return-void
.end method

.method public static synthetic updateVisibleContentSection$default(Lcom/narvii/video/widget/ViceTimeLineWrapperView;FIIIFFZILjava/lang/Object;)V
    .locals 9

    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v8, 0x0

    goto :goto_0

    :cond_0
    move/from16 v8, p7

    :goto_0
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .line 115
    invoke-virtual/range {v1 .. v8}, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->updateVisibleContentSection(FIIIFFZ)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final addTimeLineOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    iput-object p1, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->onTimeLineScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    .line 107
    iget-object v0, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->viceTimeLine:Lcom/narvii/video/widget/MediaTimeLineComponent;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->addTimeLineOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    :cond_0
    return-void
.end method

.method public final bindViceTimeLine(Lcom/narvii/video/widget/MediaTimeLineComponent;ILcom/narvii/video/model/BaseClipInfoPack;)V
    .locals 5

    const-string v0, "timeLineComponent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clip"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iput-object p1, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->viceTimeLine:Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 48
    invoke-virtual {p1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getAdditionalFramePreOffsetDx()I

    move-result p1

    iput p1, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->additionalFrameOffsetDx:I

    const-string p1, "#222222"

    const-string v0, "track_sticker_icon"

    const-string v1, "clip_name"

    const-string v2, "track_icon"

    const/4 v3, 0x0

    const/16 v4, 0x8

    packed-switch p2, :pswitch_data_0

    .line 75
    sget p1, Lcom/narvii/mediaeditor/R$id;->track_icon:I

    invoke-virtual {p0, p1}, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 76
    sget p1, Lcom/narvii/mediaeditor/R$id;->clip_name:I

    invoke-virtual {p0, p1}, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    sget p1, Lcom/narvii/mediaeditor/R$id;->track_sticker_icon:I

    invoke-virtual {p0, p1}, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NVImageView;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 78
    sget p1, Lcom/narvii/mediaeditor/R$id;->track_icon:I

    invoke-virtual {p0, p1}, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/narvii/mediaeditor/R$drawable;->ic_music:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 69
    :pswitch_0
    sget p1, Lcom/narvii/mediaeditor/R$id;->track_icon:I

    invoke-virtual {p0, p1}, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 70
    sget p1, Lcom/narvii/mediaeditor/R$id;->clip_name:I

    invoke-virtual {p0, p1}, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 71
    sget p1, Lcom/narvii/mediaeditor/R$id;->track_sticker_icon:I

    invoke-virtual {p0, p1}, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NVImageView;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 72
    sget p1, Lcom/narvii/mediaeditor/R$id;->vice_time_line_cutter:I

    invoke-virtual {p0, p1}, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/video/widget/ViceTimeLineCutterView;

    const-string p2, "vice_time_line_cutter"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 59
    :pswitch_1
    sget p2, Lcom/narvii/mediaeditor/R$id;->track_icon:I

    invoke-virtual {p0, p2}, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 60
    sget p2, Lcom/narvii/mediaeditor/R$id;->clip_name:I

    invoke-virtual {p0, p2}, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 61
    sget p2, Lcom/narvii/mediaeditor/R$id;->track_sticker_icon:I

    invoke-virtual {p0, p2}, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/NVImageView;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 62
    new-instance p2, Ljava/io/File;

    check-cast p3, Lcom/narvii/video/model/StickerInfoPack;

    iget-object p3, p3, Lcom/narvii/video/model/StickerInfoPack;->srcImagePath:Ljava/lang/String;

    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-static {p2}, Lcom/narvii/util/FileUtils;->isEmpty(Ljava/io/File;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 64
    sget p3, Lcom/narvii/mediaeditor/R$id;->track_sticker_icon:I

    invoke-virtual {p0, p3}, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/NVImageView;

    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 66
    :cond_0
    sget p2, Lcom/narvii/mediaeditor/R$id;->vice_time_line_cutter:I

    invoke-virtual {p0, p2}, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/video/widget/ViceTimeLineCutterView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/narvii/mediaeditor/R$color;->media_timeline_sticker_frame_color:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p3, p1}, Lcom/narvii/video/widget/ViceTimeLineCutterView;->setFillColor(II)V

    goto :goto_0

    .line 51
    :pswitch_2
    sget p2, Lcom/narvii/mediaeditor/R$id;->track_icon:I

    invoke-virtual {p0, p2}, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 52
    sget p2, Lcom/narvii/mediaeditor/R$id;->clip_name:I

    invoke-virtual {p0, p2}, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 53
    sget p2, Lcom/narvii/mediaeditor/R$id;->track_sticker_icon:I

    invoke-virtual {p0, p2}, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/NVImageView;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 54
    sget p2, Lcom/narvii/mediaeditor/R$id;->track_icon:I

    invoke-virtual {p0, p2}, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/narvii/mediaeditor/R$drawable;->ic_text:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 55
    sget p2, Lcom/narvii/mediaeditor/R$id;->clip_name:I

    invoke-virtual {p0, p2}, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    sget-object p3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v0, 0x1

    invoke-virtual {p2, p3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 56
    sget p2, Lcom/narvii/mediaeditor/R$id;->vice_time_line_cutter:I

    invoke-virtual {p0, p2}, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/video/widget/ViceTimeLineCutterView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/narvii/mediaeditor/R$color;->media_timeline_caption_frame_color:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p3, p1}, Lcom/narvii/video/widget/ViceTimeLineCutterView;->setFillColor(II)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->onTimeLineScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    if-eqz v0, :cond_0

    sget v3, Lcom/narvii/mediaeditor/R$id;->audio_time_line:I

    invoke-virtual {p0, v3}, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/narvii/widget/HorizontalRecyclerView;

    invoke-virtual {v0, v3, v2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 169
    :cond_0
    sget v0, Lcom/narvii/mediaeditor/R$id;->vice_time_line_cutter:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/widget/ViceTimeLineCutterView;

    invoke-virtual {v0, p1}, Lcom/narvii/video/widget/ViceTimeLineCutterView;->onActionUpInterceptedForFling(Landroid/view/MotionEvent;)V

    return v1

    .line 173
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 174
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->downEventTimeStamp:J

    .line 175
    new-instance v0, Lkotlin/Pair;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->downPointer:Lkotlin/Pair;

    goto :goto_0

    .line 176
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 177
    iget-object v0, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->downPointer:Lkotlin/Pair;

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v3, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->downPointer:Lkotlin/Pair;

    invoke-virtual {v3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v0, v3

    .line 178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->downEventTimeStamp:J

    sub-long/2addr v3, v5

    .line 179
    iget v5, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->touchAvailableMinX:F

    iget v6, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->touchAvailableMaxX:F

    iget-object v7, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->downPointer:Lkotlin/Pair;

    invoke-virtual {v7}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    cmpl-float v5, v7, v5

    if-ltz v5, :cond_3

    cmpg-float v5, v7, v6

    if-gtz v5, :cond_3

    iget v5, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->mTouchSlop:I

    int-to-float v5, v5

    cmpg-float v0, v0, v5

    if-gtz v0, :cond_3

    const/16 v0, 0x3e8

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-gtz v0, :cond_3

    .line 180
    iget-object v0, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->onSelfClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_3

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 184
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->inEditMode:Z

    if-eqz v0, :cond_4

    .line 185
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 187
    :cond_4
    iget v0, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->touchAvailableMinX:F

    iget v3, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->mTouchSlop:I

    int-to-float v4, v3

    sub-float/2addr v0, v4

    iget v4, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->touchAvailableMaxX:F

    int-to-float v3, v3

    add-float/2addr v4, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    const/4 v5, 0x3

    cmpl-float v0, v3, v0

    if-ltz v0, :cond_17

    cmpg-float v0, v3, v4

    if-gtz v0, :cond_17

    .line 195
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_6

    .line 196
    iput-boolean v2, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->startEdgeReached:Z

    .line 197
    iput-boolean v2, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->endEdgeReached:Z

    .line 198
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->lastMoveX:F

    .line 199
    iget-object v0, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->viceTimeLine:Lcom/narvii/video/widget/MediaTimeLineComponent;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v2}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getTimeLineScrolledDx(Z)I

    move-result v0

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    int-to-float v0, v0

    iput v0, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->initialTimeLineScrollDx:F

    .line 200
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_2

    .line 201
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v5, :cond_8

    .line 202
    :cond_7
    iput-boolean v2, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->startEdgeReached:Z

    .line 203
    iput-boolean v2, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->endEdgeReached:Z

    .line 204
    iget-object v0, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->onTimeLineScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    if-eqz v0, :cond_8

    sget v3, Lcom/narvii/mediaeditor/R$id;->audio_time_line:I

    invoke-virtual {p0, v3}, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/narvii/widget/HorizontalRecyclerView;

    invoke-virtual {v0, v3, v2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 206
    :cond_8
    :goto_2
    iget-boolean v0, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->rtl:Z

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->lastMoveX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    goto :goto_3

    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->lastMoveX:F

    :goto_3
    sub-float/2addr v0, v3

    .line 207
    iget-boolean v3, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->startEdgeReached:Z

    if-eqz v3, :cond_a

    int-to-float v3, v2

    cmpg-float v3, v0, v3

    if-gez v3, :cond_a

    return v1

    .line 209
    :cond_a
    iget-boolean v3, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->endEdgeReached:Z

    if-eqz v3, :cond_b

    int-to-float v3, v2

    cmpl-float v3, v0, v3

    if-lez v3, :cond_b

    return v1

    .line 212
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->lastMoveX:F

    .line 214
    iget v3, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->initialTimeLineScrollDx:F

    sub-float v4, v3, v0

    iget v5, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->scrollRangeMinDx:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_10

    cmpl-float v0, v3, v5

    if-lez v0, :cond_f

    .line 216
    iget-object v0, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->viceTimeLine:Lcom/narvii/video/widget/MediaTimeLineComponent;

    if-eqz v0, :cond_c

    invoke-virtual {v0, v2}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getTimeLineScrolledDx(Z)I

    move-result v0

    goto :goto_4

    :cond_c
    const/4 v0, 0x0

    :goto_4
    int-to-float v0, v0

    sub-float/2addr v5, v0

    .line 217
    iget-boolean v0, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->rtl:Z

    if-eqz v0, :cond_d

    neg-float v5, v5

    .line 220
    :cond_d
    iget-object v0, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->viceTimeLine:Lcom/narvii/video/widget/MediaTimeLineComponent;

    if-eqz v0, :cond_e

    float-to-int v3, v5

    invoke-virtual {v0, v3}, Lcom/narvii/video/widget/MediaTimeLineComponent;->scrollTimeLineBy(I)V

    .line 221
    :cond_e
    iget v0, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->scrollRangeMinDx:F

    iput v0, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->initialTimeLineScrollDx:F

    .line 223
    :cond_f
    iput-boolean v1, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->endEdgeReached:Z

    goto :goto_6

    :cond_10
    sub-float v4, v3, v0

    .line 226
    iget v5, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->scrollRangeMaxDx:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_15

    cmpg-float v0, v3, v5

    if-gez v0, :cond_14

    .line 228
    iget-object v0, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->viceTimeLine:Lcom/narvii/video/widget/MediaTimeLineComponent;

    if-eqz v0, :cond_11

    invoke-virtual {v0, v2}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getTimeLineScrolledDx(Z)I

    move-result v0

    goto :goto_5

    :cond_11
    const/4 v0, 0x0

    :goto_5
    int-to-float v0, v0

    sub-float/2addr v5, v0

    .line 229
    iget-boolean v0, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->rtl:Z

    if-eqz v0, :cond_12

    neg-float v5, v5

    .line 232
    :cond_12
    iget-object v0, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->viceTimeLine:Lcom/narvii/video/widget/MediaTimeLineComponent;

    if-eqz v0, :cond_13

    float-to-int v3, v5

    invoke-virtual {v0, v3}, Lcom/narvii/video/widget/MediaTimeLineComponent;->scrollTimeLineBy(I)V

    .line 233
    :cond_13
    iget v0, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->scrollRangeMaxDx:F

    iput v0, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->initialTimeLineScrollDx:F

    .line 235
    :cond_14
    iput-boolean v1, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->startEdgeReached:Z

    goto :goto_6

    :cond_15
    sub-float/2addr v3, v0

    .line 239
    iput v3, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->initialTimeLineScrollDx:F

    .line 240
    iput-boolean v2, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->startEdgeReached:Z

    .line 241
    iput-boolean v2, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->endEdgeReached:Z

    const/4 v2, 0x1

    :goto_6
    if-eqz v2, :cond_16

    .line 246
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :cond_16
    return v1

    .line 188
    :cond_17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_18

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v5, :cond_19

    .line 189
    :cond_18
    iput-boolean v2, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->startEdgeReached:Z

    .line 190
    iput-boolean v2, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->endEdgeReached:Z

    .line 191
    iget-object p1, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->onTimeLineScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    if-eqz p1, :cond_19

    sget v0, Lcom/narvii/mediaeditor/R$id;->audio_time_line:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/HorizontalRecyclerView;

    invoke-virtual {p1, v0, v2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    :cond_19
    return v1
.end method

.method public final getMTouchSlop()I
    .locals 1

    .line 160
    iget v0, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->mTouchSlop:I

    return v0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 143
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iput-object p1, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->onSelfClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public final setTrackContent(Ljava/lang/String;)V
    .locals 2

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    sget v0, Lcom/narvii/mediaeditor/R$id;->clip_name:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "clip_name"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setViceTimeLineEditCallback(Lcom/narvii/video/widget/ViceTimeLineWrapperView$IViceTimeLineEditCallback;)V
    .locals 2

    if-nez p1, :cond_0

    .line 85
    sget p1, Lcom/narvii/mediaeditor/R$id;->vice_time_line_cutter:I

    invoke-virtual {p0, p1}, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/video/widget/ViceTimeLineCutterView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/video/widget/ViceTimeLineCutterView;->setControllerCallback(Lcom/narvii/video/widget/ViceTimeLineCutterView$IViceTimeLineCutterCallback;)V

    return-void

    .line 88
    :cond_0
    sget v0, Lcom/narvii/mediaeditor/R$id;->vice_time_line_cutter:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/widget/ViceTimeLineCutterView;

    new-instance v1, Lcom/narvii/video/widget/ViceTimeLineWrapperView$setViceTimeLineEditCallback$1;

    invoke-direct {v1, p0, p1}, Lcom/narvii/video/widget/ViceTimeLineWrapperView$setViceTimeLineEditCallback$1;-><init>(Lcom/narvii/video/widget/ViceTimeLineWrapperView;Lcom/narvii/video/widget/ViceTimeLineWrapperView$IViceTimeLineEditCallback;)V

    invoke-virtual {v0, v1}, Lcom/narvii/video/widget/ViceTimeLineCutterView;->setControllerCallback(Lcom/narvii/video/widget/ViceTimeLineCutterView$IViceTimeLineCutterCallback;)V

    return-void
.end method

.method public final toggleEditMode(Z)V
    .locals 1

    .line 138
    iput-boolean p1, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->inEditMode:Z

    .line 139
    sget v0, Lcom/narvii/mediaeditor/R$id;->vice_time_line_cutter:I

    invoke-virtual {p0, v0}, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/widget/ViceTimeLineCutterView;

    invoke-virtual {v0, p1}, Lcom/narvii/video/widget/ViceTimeLineCutterView;->toggle(Z)V

    return-void
.end method

.method public final updateScrollingRange(II)V
    .locals 1

    .line 101
    iget v0, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->additionalFrameOffsetDx:I

    add-int/2addr p1, v0

    int-to-float p1, p1

    iput p1, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->scrollRangeMinDx:F

    add-int/2addr p2, v0

    int-to-float p1, p2

    .line 102
    iput p1, p0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->scrollRangeMaxDx:F

    return-void
.end method

.method public final updateVisibleContentSection(FIIIFFZ)V
    .locals 13

    move-object v0, p0

    .line 116
    sget v1, Lcom/narvii/mediaeditor/R$id;->vice_time_line_cutter:I

    invoke-virtual {p0, v1}, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/video/widget/ViceTimeLineCutterView;

    invoke-virtual {v1}, Lcom/narvii/video/widget/ViceTimeLineCutterView;->getCurrentTimelineRect()Landroid/graphics/RectF;

    move-result-object v1

    if-eqz p7, :cond_1

    .line 118
    iget-boolean v2, v0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->rtl:Z

    if-eqz v2, :cond_0

    iget v2, v1, Landroid/graphics/RectF;->right:F

    goto :goto_0

    :cond_0
    iget v2, v1, Landroid/graphics/RectF;->left:F

    goto :goto_0

    :cond_1
    move v2, p1

    :goto_0
    if-eqz p7, :cond_2

    .line 123
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "testtest cutter width = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-static {v5}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " sectionWidth = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-static {v1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v1

    goto :goto_1

    :cond_2
    move v5, p2

    move v1, v5

    .line 128
    :goto_1
    iget-boolean v3, v0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->rtl:Z

    if-eqz v3, :cond_3

    int-to-float v3, v1

    sub-float v3, v2, v3

    goto :goto_2

    :cond_3
    move v3, v2

    :goto_2
    iput v3, v0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->touchAvailableMinX:F

    .line 129
    iget-boolean v3, v0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->rtl:Z

    if-eqz v3, :cond_4

    move v3, v2

    goto :goto_3

    :cond_4
    int-to-float v3, v1

    add-float/2addr v3, v2

    :goto_3
    iput v3, v0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->touchAvailableMaxX:F

    move/from16 v3, p5

    .line 130
    iput v3, v0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->mainTrackStartDx:F

    .line 131
    invoke-direct {p0, v2, v1}, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->updateContentSection(FI)V

    .line 132
    iget-boolean v4, v0, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->rtl:Z

    if-eqz v4, :cond_5

    move v4, v1

    goto :goto_4

    :cond_5
    const/4 v4, 0x0

    :goto_4
    int-to-float v4, v4

    sub-float v5, v2, v4

    .line 133
    sget v2, Lcom/narvii/mediaeditor/R$id;->vice_time_line_cutter:I

    invoke-virtual {p0, v2}, Lcom/narvii/video/widget/ViceTimeLineWrapperView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/narvii/video/widget/ViceTimeLineCutterView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v2

    int-to-float v6, v2

    int-to-float v1, v1

    add-float v7, v5, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v1

    int-to-float v8, v1

    move/from16 v1, p3

    int-to-float v9, v1

    move/from16 v1, p4

    int-to-float v10, v1

    move/from16 v11, p5

    move/from16 v12, p6

    invoke-virtual/range {v4 .. v12}, Lcom/narvii/video/widget/ViceTimeLineCutterView;->layoutRect(FFFFFFFF)V

    return-void
.end method
