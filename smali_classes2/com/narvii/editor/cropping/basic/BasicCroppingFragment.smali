.class public Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;
.super Lcom/narvii/app/NVFragment;
.source "BasicCroppingFragment.java"

# interfaces
.implements Lcom/meicam/sdk/NvsStreamingContext$PlaybackCallback;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/narvii/editor/cropping/basic/IColorSelectedListener;
.implements Lcom/narvii/editor/cropping/basic/ColorPickerView$IPickerChecked;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lcom/meicam/sdk/NvsStreamingContext$PlaybackCallback2;


# static fields
.field private static final COLORS:[Ljava/lang/String;

.field private static final DEST_PATH:Ljava/lang/String; = "dest_path"

.field private static final DYNAMIC_CROPPING_REQUEST:I = 0x3039

.field private static final SOURCE_PATH:Ljava/lang/String; = "source_path"

.field private static final TAG:Ljava/lang/String; = "BasicCroppingFragment"

.field private static final TRIM_END:Ljava/lang/String; = "trim_end"

.field private static final TRIM_START:Ljava/lang/String; = "trim_tart"


# instance fields
.field private activeClipInfo:Lcom/narvii/video/model/AVClipInfoPack;

.field bgVideoClip:Lcom/meicam/sdk/NvsVideoClip;

.field bgVideoTrack:Lcom/meicam/sdk/NvsVideoTrack;

.field private croppingData:Lcom/narvii/cropping/CroppingData;

.field private dynamic:Z

.field private dynamicCroppingPath:Ljava/lang/String;

.field private frameRate:I

.field private isDynamic:Z

.field private mBottomView:Landroid/widget/RelativeLayout;

.field private mChangeBgBtn:Lcom/narvii/editor/cropping/basic/ColorPickerItemView;

.field private mCheckBtn:Lcom/narvii/widget/EasyButton;

.field private mCloseBtn:Lcom/narvii/widget/EasyButton;

.field private mColorIndex:I

.field private mColorPickerView:Lcom/narvii/editor/cropping/basic/ColorPickerView;

.field private mDynamicCroppingBtn:Lcom/narvii/widget/EasyButton;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mHandler:Landroid/os/Handler;

.field private mLiveWindow:Lcom/meicam/sdk/NvsLiveWindow;

.field private mOriginVideoHeight:I

.field private mOriginVideoWidth:I

.field private mPlayBtn:Lcom/narvii/widget/EasyButton;

.field private mRestoreBtn:Lcom/narvii/widget/EasyButton;

.field private mRotateAngle:I

.field private mRotateBtn:Lcom/narvii/widget/EasyButton;

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

.field private mTimeView:Landroid/widget/TextView;

.field private mTimeline:Lcom/meicam/sdk/NvsTimeline;

.field private mTotalView:Landroid/widget/TextView;

.field private mVideoClip:Lcom/meicam/sdk/NvsVideoClip;

.field private mVideoHeight:I

.field private mVideoWidth:I

.field private maxOffsetX:F

.field private maxOffsetY:F

.field private maxScale:F

.field private meisheListenerManage:Lcom/narvii/editor/player/MeisheListenerManage;

.field private minScale:F

.field nvsVideoTrack:Lcom/meicam/sdk/NvsVideoTrack;

.field private ratio:F

.field private seekBarSettable:Z

.field private singlePointerEnable:Z

.field private totalHorizScroll:F

.field private totalScale:F

.field private totalVerticalScroll:F

.field private videoPlayEnd:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "#ffffff"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "#000000"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "#54515d"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "#f2ff41"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "#ffc102"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "#ff6809"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "#f20d57"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "#1598ff"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "#8134ff"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "#a10abf"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "#fe37ba"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "#ff9dff"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "#22f39e"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "#018c86"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "#00477f"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "#036100"

    aput-object v2, v0, v1

    .line 85
    sput-object v0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->COLORS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 52
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 66
    invoke-static {}, Lcom/meicam/sdk/NvsStreamingContext;->getInstance()Lcom/meicam/sdk/NvsStreamingContext;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    const/4 v0, 0x0

    .line 82
    iput v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mRotateAngle:I

    const/4 v1, 0x1

    .line 103
    iput v1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mColorIndex:I

    const v2, 0x3f333333    # 0.7f

    .line 109
    iput v2, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->minScale:F

    const/high16 v2, 0x40a00000    # 5.0f

    .line 110
    iput v2, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->maxScale:F

    const/4 v2, -0x1

    .line 111
    iput v2, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mVideoWidth:I

    .line 112
    iput v2, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mVideoHeight:I

    .line 113
    iput v2, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mOriginVideoWidth:I

    .line 114
    iput v2, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mOriginVideoHeight:I

    .line 116
    iput-boolean v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->videoPlayEnd:Z

    .line 117
    iput-boolean v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->isDynamic:Z

    .line 118
    iput-boolean v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->dynamic:Z

    .line 285
    iput-boolean v1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->singlePointerEnable:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 299
    iput v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->totalScale:F

    const/4 v2, 0x0

    .line 313
    iput v2, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->totalHorizScroll:F

    .line 314
    iput v2, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->totalVerticalScroll:F

    .line 326
    iput v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->ratio:F

    .line 353
    new-instance v0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment$1;-><init>(Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;)V

    iput-object v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 378
    new-instance v0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment$2;

    invoke-direct {v0, p0}, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment$2;-><init>(Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;)V

    iput-object v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 488
    iput-boolean v1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->seekBarSettable:Z

    const-string v0, ""

    .line 523
    iput-object v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->dynamicCroppingPath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;F)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->onScale(F)V

    return-void
.end method

.method static synthetic access$102(Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;Z)Z
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->singlePointerEnable:Z

    return p1
.end method

.method static synthetic access$200(Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;FF)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->onScroll(FF)V

    return-void
.end method

.method static synthetic access$300(Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->clickPlayBtn()V

    return-void
.end method

.method static synthetic access$400(Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;)Lcom/meicam/sdk/NvsTimeline;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mTimeline:Lcom/meicam/sdk/NvsTimeline;

    return-object p0
.end method

.method static synthetic access$500(Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;)Lcom/meicam/sdk/NvsStreamingContext;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    return-object p0
.end method

.method private addVideoClip(Ljava/lang/String;)V
    .locals 11

    .line 764
    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->activeClipInfo:Lcom/narvii/video/model/AVClipInfoPack;

    if-eqz v0, :cond_3

    .line 765
    invoke-virtual {v0}, Lcom/narvii/video/model/AVClipInfoPack;->isTrimSectionValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 766
    iget-object v1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->nvsVideoTrack:Lcom/meicam/sdk/NvsVideoTrack;

    const-wide/16 v3, 0x0

    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->activeClipInfo:Lcom/narvii/video/model/AVClipInfoPack;

    iget v2, v0, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    int-to-long v5, v2

    const-wide/16 v7, 0x3e8

    mul-long v5, v5, v7

    iget v0, v0, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    int-to-long v9, v0

    mul-long v7, v7, v9

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/meicam/sdk/NvsVideoTrack;->addClip(Ljava/lang/String;JJJ)Lcom/meicam/sdk/NvsVideoClip;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mVideoClip:Lcom/meicam/sdk/NvsVideoClip;

    goto :goto_1

    .line 767
    :cond_0
    invoke-static {p1}, Lcom/narvii/util/Utils;->isJPG(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/narvii/util/Utils;->isPNG(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/narvii/util/Utils;->isBMP(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 770
    :cond_1
    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->nvsVideoTrack:Lcom/meicam/sdk/NvsVideoTrack;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/meicam/sdk/NvsVideoTrack;->addClip(Ljava/lang/String;J)Lcom/meicam/sdk/NvsVideoClip;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mVideoClip:Lcom/meicam/sdk/NvsVideoClip;

    goto :goto_1

    .line 768
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->nvsVideoTrack:Lcom/meicam/sdk/NvsVideoTrack;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/32 v6, 0x4c4b40

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/meicam/sdk/NvsVideoTrack;->addClip(Ljava/lang/String;JJJ)Lcom/meicam/sdk/NvsVideoClip;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mVideoClip:Lcom/meicam/sdk/NvsVideoClip;

    .line 772
    :goto_1
    iget-object p1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mVideoClip:Lcom/meicam/sdk/NvsVideoClip;

    if-eqz p1, :cond_3

    .line 773
    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->activeClipInfo:Lcom/narvii/video/model/AVClipInfoPack;

    iget-wide v0, v0, Lcom/narvii/video/model/AVClipInfoPack;->speed:D

    invoke-virtual {p1, v0, v1}, Lcom/meicam/sdk/NvsClip;->changeSpeed(D)V

    :cond_3
    return-void
.end method

.method private applyCroppingData()V
    .locals 11

    const-string v0, "croppingData"

    .line 729
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 733
    :cond_0
    const-class v1, Lcom/narvii/cropping/CroppingData;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/cropping/CroppingData;

    iput-object v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->croppingData:Lcom/narvii/cropping/CroppingData;

    .line 734
    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->croppingData:Lcom/narvii/cropping/CroppingData;

    invoke-virtual {v0}, Lcom/narvii/cropping/CroppingData;->getScale()F

    move-result v0

    iput v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->totalScale:F

    .line 735
    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->croppingData:Lcom/narvii/cropping/CroppingData;

    invoke-virtual {v0}, Lcom/narvii/cropping/CroppingData;->getRotateAngle()I

    move-result v0

    iput v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mRotateAngle:I

    .line 736
    iget v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mRotateAngle:I

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 739
    :cond_1
    iget v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mVideoWidth:I

    int-to-float v0, v0

    mul-float v0, v0, v1

    iget v1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mVideoHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->ratio:F

    goto :goto_1

    .line 737
    :cond_2
    :goto_0
    iget v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mVideoHeight:I

    int-to-float v0, v0

    mul-float v0, v0, v1

    iget v1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mVideoWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->ratio:F

    .line 741
    :goto_1
    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->croppingData:Lcom/narvii/cropping/CroppingData;

    invoke-virtual {v0}, Lcom/narvii/cropping/CroppingData;->getTransformX()F

    move-result v0

    iput v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->totalHorizScroll:F

    .line 742
    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->croppingData:Lcom/narvii/cropping/CroppingData;

    invoke-virtual {v0}, Lcom/narvii/cropping/CroppingData;->getTransformY()F

    move-result v0

    iput v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->totalVerticalScroll:F

    .line 743
    iget-object v2, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->nvsVideoTrack:Lcom/meicam/sdk/NvsVideoTrack;

    iget v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->totalScale:F

    float-to-double v3, v0

    const-wide/16 v5, 0x0

    iget v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->totalHorizScroll:F

    float-to-double v7, v0

    iget v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->totalVerticalScroll:F

    float-to-double v9, v0

    move-object v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->updateTransform2DFx(Lcom/meicam/sdk/NvsVideoTrack;DDDD)V

    .line 744
    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mVideoClip:Lcom/meicam/sdk/NvsVideoClip;

    iget v1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mRotateAngle:I

    invoke-virtual {v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->setExtraVideoRotation(I)V

    .line 745
    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->croppingData:Lcom/narvii/cropping/CroppingData;

    invoke-virtual {v0}, Lcom/narvii/cropping/CroppingData;->isDynamic()Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->dynamic:Z

    const/4 v0, 0x0

    .line 746
    :goto_2
    sget-object v1, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->COLORS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 747
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "assets:/bg_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->COLORS:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->croppingData:Lcom/narvii/cropping/CroppingData;

    iget-object v2, v2, Lcom/narvii/cropping/CroppingData;->bgColor:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 748
    iput v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mColorIndex:I

    .line 749
    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mChangeBgBtn:Lcom/narvii/editor/cropping/basic/ColorPickerItemView;

    sget-object v1, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->COLORS:[Ljava/lang/String;

    iget v2, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mColorIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/narvii/editor/cropping/basic/ColorPickerItemView;->setColor(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 753
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->croppingData:Lcom/narvii/cropping/CroppingData;

    invoke-virtual {v0}, Lcom/narvii/cropping/CroppingData;->getBgColor()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->changeBackgroundColor(Ljava/lang/String;)V

    return-void
.end method

.method private changeBackgroundColor(Ljava/lang/String;)V
    .locals 10

    .line 424
    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->bgVideoTrack:Lcom/meicam/sdk/NvsVideoTrack;

    invoke-virtual {v0}, Lcom/meicam/sdk/NvsTrack;->removeAllClips()Z

    .line 425
    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->bgVideoTrack:Lcom/meicam/sdk/NvsVideoTrack;

    invoke-virtual {v0, p1}, Lcom/meicam/sdk/NvsVideoTrack;->appendClip(Ljava/lang/String;)Lcom/meicam/sdk/NvsVideoClip;

    .line 426
    iget-object p1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->bgVideoTrack:Lcom/meicam/sdk/NvsVideoTrack;

    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->nvsVideoTrack:Lcom/meicam/sdk/NvsVideoTrack;

    invoke-virtual {v0}, Lcom/meicam/sdk/NvsTrack;->getDuration()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1}, Lcom/meicam/sdk/NvsTrack;->changeOutPoint(IJ)J

    .line 427
    iget-object p1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mTimeline:Lcom/meicam/sdk/NvsTimeline;

    invoke-virtual {p1, v0}, Lcom/meicam/sdk/NvsStreamingContext;->getTimelineCurrentPosition(Lcom/meicam/sdk/NvsTimeline;)J

    move-result-wide v3

    .line 428
    iget-object p1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mPlayBtn:Lcom/narvii/widget/EasyButton;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 429
    iget-object v1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    iget-object v2, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mTimeline:Lcom/meicam/sdk/NvsTimeline;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/meicam/sdk/NvsStreamingContext;->seekTimeline(Lcom/meicam/sdk/NvsTimeline;JII)Z

    return-void

    .line 432
    :cond_0
    iget-object v1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    iget-object v2, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mTimeline:Lcom/meicam/sdk/NvsTimeline;

    const-wide/16 v5, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/16 v9, 0x8

    invoke-virtual/range {v1 .. v9}, Lcom/meicam/sdk/NvsStreamingContext;->playbackTimeline(Lcom/meicam/sdk/NvsTimeline;JJIZI)Z

    return-void
.end method

.method private checkScrollOffset()V
    .locals 7

    .line 329
    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mLiveWindow:Lcom/meicam/sdk/NvsLiveWindow;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    .line 330
    iget-object v1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mLiveWindow:Lcom/meicam/sdk/NvsLiveWindow;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 331
    sget v2, Lcom/narvii/editor/utils/EditorConstants;->VIDEO_RESOLUTION_WIDTH:I

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v2, v2, v3

    div-float/2addr v2, v1

    .line 332
    iget v4, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->ratio:F

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v6, 0x3f100000    # 0.5625f

    cmpl-float v4, v4, v6

    if-lez v4, :cond_0

    .line 334
    iget v4, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->totalScale:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float v3, v3, v1

    div-float/2addr v3, v5

    mul-float v3, v3, v2

    iput v3, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->maxOffsetX:F

    .line 335
    iget v3, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->totalScale:F

    mul-float v3, v3, v1

    iget v1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->ratio:F

    div-float/2addr v3, v1

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr v0, v5

    mul-float v0, v0, v2

    iput v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->maxOffsetY:F

    goto :goto_0

    .line 338
    :cond_0
    iget v4, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->totalScale:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float v3, v3, v0

    div-float/2addr v3, v5

    mul-float v3, v3, v2

    iput v3, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->maxOffsetY:F

    .line 339
    iget v3, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->totalScale:F

    mul-float v3, v3, v0

    iget v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->ratio:F

    mul-float v3, v3, v0

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr v0, v5

    mul-float v0, v0, v2

    iput v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->maxOffsetX:F

    .line 341
    :goto_0
    iget v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->totalHorizScroll:F

    iget v1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->maxOffsetX:F

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_1

    .line 342
    iput v1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->totalHorizScroll:F

    goto :goto_1

    :cond_1
    neg-float v2, v1

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_2

    neg-float v0, v1

    .line 344
    iput v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->totalHorizScroll:F

    .line 346
    :cond_2
    :goto_1
    iget v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->totalVerticalScroll:F

    iget v1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->maxOffsetY:F

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_3

    .line 347
    iput v1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->totalVerticalScroll:F

    goto :goto_2

    :cond_3
    neg-float v2, v1

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_4

    neg-float v0, v1

    .line 349
    iput v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->totalVerticalScroll:F

    :cond_4
    :goto_2
    return-void
.end method

.method private checkSupportOpenGLES3()Z
    .locals 3

    .line 757
    new-instance v0, Lcom/narvii/editor/cropping/dynamic/egl/EglCore;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/narvii/editor/cropping/dynamic/egl/EglCore;-><init>(Landroid/opengl/EGLContext;I)V

    .line 758
    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/egl/EglCore;->getGlVersion()I

    move-result v2

    .line 759
    invoke-virtual {v0}, Lcom/narvii/editor/cropping/dynamic/egl/EglCore;->release()V

    if-lt v2, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private clickBackgroundColorBtn()V
    .locals 4

    .line 704
    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mChangeBgBtn:Lcom/narvii/editor/cropping/basic/ColorPickerItemView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 705
    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mColorPickerView:Lcom/narvii/editor/cropping/basic/ColorPickerView;

    if-nez v0, :cond_0

    .line 706
    new-instance v0, Lcom/narvii/editor/cropping/basic/ColorPickerView;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/editor/cropping/basic/ColorPickerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mColorPickerView:Lcom/narvii/editor/cropping/basic/ColorPickerView;

    .line 707
    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mColorPickerView:Lcom/narvii/editor/cropping/basic/ColorPickerView;

    sget-object v1, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->COLORS:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/narvii/editor/cropping/basic/ColorPickerView;->init([Ljava/lang/String;)V

    .line 708
    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mColorPickerView:Lcom/narvii/editor/cropping/basic/ColorPickerView;

    invoke-virtual {v0, p0}, Lcom/narvii/editor/cropping/basic/ColorPickerView;->setColorSelectedListener(Lcom/narvii/editor/cropping/basic/IColorSelectedListener;)V

    .line 709
    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mColorPickerView:Lcom/narvii/editor/cropping/basic/ColorPickerView;

    invoke-virtual {v0, p0}, Lcom/narvii/editor/cropping/basic/ColorPickerView;->setPickerCheckedListener(Lcom/narvii/editor/cropping/basic/ColorPickerView$IPickerChecked;)V

    .line 711
    :cond_0
    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mColorPickerView:Lcom/narvii/editor/cropping/basic/ColorPickerView;

    iget v1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mColorIndex:I

    invoke-virtual {v0, v1}, Lcom/narvii/editor/cropping/basic/ColorPickerView;->setSelectedIndex(I)V

    .line 712
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mBottomView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mBottomView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mBottomView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mBottomView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 713
    iget-object v1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mColorPickerView:Lcom/narvii/editor/cropping/basic/ColorPickerView;

    const-string v2, "#2A2A2A"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 714
    iget-object v1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mBottomView:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mColorPickerView:Lcom/narvii/editor/cropping/basic/ColorPickerView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private clickPlayBtn()V
    .locals 4

    .line 662
    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mPlayBtn:Lcom/narvii/widget/EasyButton;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 663
    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    iget-object v2, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mTimeline:Lcom/meicam/sdk/NvsTimeline;

    invoke-virtual {v0, v2}, Lcom/meicam/sdk/NvsStreamingContext;->getTimelineCurrentPosition(Lcom/meicam/sdk/NvsTimeline;)J

    move-result-wide v2

    .line 664
    iget-boolean v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->videoPlayEnd:Z

    if-eqz v0, :cond_0

    .line 665
    iput-boolean v1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->videoPlayEnd:Z

    const-wide/16 v2, 0x0

    .line 669
    :cond_0
    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mLiveWindow:Lcom/meicam/sdk/NvsLiveWindow;

    new-instance v1, Lcom/narvii/editor/cropping/basic/-$$Lambda$BasicCroppingFragment$KcUnKvUvmUUyvNU-rzITp0tfJVs;

    invoke-direct {v1, p0, v2, v3}, Lcom/narvii/editor/cropping/basic/-$$Lambda$BasicCroppingFragment$KcUnKvUvmUUyvNU-rzITp0tfJVs;-><init>(Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;J)V

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->post(Ljava/lang/Runnable;)Z

    .line 670
    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mPlayBtn:Lcom/narvii/widget/EasyButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 672
    :cond_1
    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mLiveWindow:Lcom/meicam/sdk/NvsLiveWindow;

    new-instance v2, Lcom/narvii/editor/cropping/basic/-$$Lambda$BasicCroppingFragment$8Adh7-seQI7-YrJDVULO2ezxjLg;

    invoke-direct {v2, p0}, Lcom/narvii/editor/cropping/basic/-$$Lambda$BasicCroppingFragment$8Adh7-seQI7-YrJDVULO2ezxjLg;-><init>(Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->post(Ljava/lang/Runnable;)Z

    .line 673
    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mPlayBtn:Lcom/narvii/widget/EasyButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private clickRotateBtn()V
    .locals 4

    .line 678
    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mVideoClip:Lcom/meicam/sdk/NvsVideoClip;

    invoke-virtual {v0}, Lcom/meicam/sdk/NvsVideoClip;->getExtraVideoRotation()I

    move-result v0

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_3

    const/4 v3, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v3, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 693
    iput v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mRotateAngle:I

    .line 694
    iget v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mVideoWidth:I

    int-to-float v0, v0

    mul-float v0, v0, v2

    iget v1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mVideoHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->ratio:F

    goto :goto_0

    .line 689
    :cond_1
    iput v1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mRotateAngle:I

    .line 690
    iget v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mVideoHeight:I

    int-to-float v0, v0

    mul-float v0, v0, v2

    iget v1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mVideoWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->ratio:F

    goto :goto_0

    .line 685
    :cond_2
    iput v3, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mRotateAngle:I

    .line 686
    iget v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mVideoWidth:I

    int-to-float v0, v0

    mul-float v0, v0, v2

    iget v1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mVideoHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->ratio:F

    goto :goto_0

    .line 681
    :cond_3
    iput v1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mRotateAngle:I

    .line 682
    iget v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mVideoHeight:I

    int-to-float v0, v0

    mul-float v0, v0, v2

    iget v1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mVideoWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->ratio:F

    .line 699
    :goto_0
    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mVideoClip:Lcom/meicam/sdk/NvsVideoClip;

    iget v1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mRotateAngle:I

    invoke-virtual {v0, v1}, Lcom/meicam/sdk/NvsVideoClip;->setExtraVideoRotation(I)V

    .line 700
    invoke-direct {p0}, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->seek()V

    return-void
.end method

.method private compileVideo()V
    .locals 14

    .line 642
    new-instance v11, Lcom/narvii/cropping/CroppingData;

    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->croppingData:Lcom/narvii/cropping/CroppingData;

    const-string v1, "source_path"

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/narvii/cropping/CroppingData;->orgVideoPath:Ljava/lang/String;

    goto :goto_0

    .line 643
    :cond_0
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v2, v0

    iget v3, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->totalScale:F

    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mVideoClip:Lcom/meicam/sdk/NvsVideoClip;

    .line 645
    invoke-virtual {v0}, Lcom/meicam/sdk/NvsVideoClip;->getExtraVideoRotation()I

    move-result v4

    iget v5, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->totalHorizScroll:F

    iget v6, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->totalVerticalScroll:F

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "assets:/bg_"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->COLORS:[Ljava/lang/String;

    iget v8, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mColorIndex:I

    aget-object v7, v7, v8

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".png"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-boolean v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->isDynamic:Z

    const/4 v12, 0x1

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->dynamic:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    const/4 v8, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v8, 0x1

    :goto_2
    iget-boolean v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->isDynamic:Z

    if-eqz v0, :cond_3

    const-string v0, "dest_path"

    .line 650
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    move-object v9, v0

    goto :goto_4

    :cond_3
    iget-boolean v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->dynamic:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    :goto_4
    iget v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->totalHorizScroll:F

    iget-object v1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mLiveWindow:Lcom/meicam/sdk/NvsLiveWindow;

    .line 651
    invoke-virtual {v1}, Landroid/view/SurfaceView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v10, v0, v1

    iget v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->totalVerticalScroll:F

    iget-object v1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mLiveWindow:Lcom/meicam/sdk/NvsLiveWindow;

    .line 652
    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v13, v0, v1

    move-object v0, v11

    move-object v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    move v7, v8

    move-object v8, v9

    move v9, v10

    move v10, v13

    invoke-direct/range {v0 .. v10}, Lcom/narvii/cropping/CroppingData;-><init>(Ljava/lang/String;FIFFLjava/lang/String;ZLjava/lang/String;FF)V

    .line 654
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "success"

    .line 655
    invoke-virtual {v0, v1, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 656
    invoke-static {v11}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "croppingData"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 657
    invoke-virtual {p0, v1, v0}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 658
    invoke-virtual {p0}, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->finish()V

    return-void
.end method

.method private confirmRestore()V
    .locals 14

    .line 610
    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->croppingData:Lcom/narvii/cropping/CroppingData;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/narvii/cropping/CroppingData;->orgVideoPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 611
    :goto_0
    iget-boolean v3, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->isDynamic:Z

    if-nez v3, :cond_1

    if-eqz v0, :cond_3

    .line 612
    :cond_1
    iget-object v3, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->nvsVideoTrack:Lcom/meicam/sdk/NvsVideoTrack;

    invoke-virtual {v3}, Lcom/meicam/sdk/NvsTrack;->removeAllClips()Z

    if-eqz v0, :cond_2

    .line 613
    iget-object v3, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->croppingData:Lcom/narvii/cropping/CroppingData;

    iget-object v3, v3, Lcom/narvii/cropping/CroppingData;->orgVideoPath:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v3, "source_path"

    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 614
    :goto_1
    invoke-direct {p0, v3}, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->addVideoClip(Ljava/lang/String;)V

    .line 615
    iget-object v3, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mVideoClip:Lcom/meicam/sdk/NvsVideoClip;

    const-string v4, "Transform 2D"

    invoke-virtual {v3, v4}, Lcom/meicam/sdk/NvsVideoClip;->appendBuiltinFx(Ljava/lang/String;)Lcom/meicam/sdk/NvsVideoFx;

    if-eqz v0, :cond_3

    .line 617
    invoke-direct {p0}, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->getVideoWidthAndHeight()V

    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    .line 620
    iput v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->totalScale:F

    const/4 v3, 0x0

    .line 621
    iput v3, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->totalVerticalScroll:F

    .line 622
    iput v3, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->totalHorizScroll:F

    .line 623
    iget v3, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mOriginVideoWidth:I

    iput v3, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mVideoWidth:I

    .line 624
    iget v3, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mOriginVideoHeight:I

    iput v3, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mVideoHeight:I

    .line 625
    iget v3, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mVideoWidth:I

    int-to-float v3, v3

    mul-float v3, v3, v0

    iget v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mVideoHeight:I

    int-to-float v0, v0

    div-float/2addr v3, v0

    iput v3, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->ratio:F

    .line 626
    iget-object v5, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->nvsVideoTrack:Lcom/meicam/sdk/NvsVideoTrack;

    iget v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->totalScale:F

    float-to-double v6, v0

    const-wide/16 v8, 0x0

    iget v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->totalHorizScroll:F

    float-to-double v10, v0

    iget v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->totalVerticalScroll:F

    float-to-double v12, v0

    move-object v4, p0

    invoke-direct/range {v4 .. v13}, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->updateTransform2DFx(Lcom/meicam/sdk/NvsVideoTrack;DDDD)V

    .line 627
    iget v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mRotateAngle:I

    if-eqz v0, :cond_4

    .line 628
    iput v1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mRotateAngle:I

    .line 629
    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mVideoClip:Lcom/meicam/sdk/NvsVideoClip;

    iget v3, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mRotateAngle:I

    invoke-virtual {v0, v3}, Lcom/meicam/sdk/NvsVideoClip;->setExtraVideoRotation(I)V

    .line 631
    :cond_4
    sget-object v0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->COLORS:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, v2}, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->onColorSelected(Ljava/lang/String;I)V

    .line 632
    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mChangeBgBtn:Lcom/narvii/editor/cropping/basic/ColorPickerItemView;

    sget-object v3, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->COLORS:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Lcom/narvii/editor/cropping/basic/ColorPickerItemView;->setColor(Ljava/lang/String;)V

    .line 633
    iput v2, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mColorIndex:I

    .line 634
    iput-boolean v1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->isDynamic:Z

    .line 635
    iput-boolean v1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->dynamic:Z

    .line 636
    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mColorPickerView:Lcom/narvii/editor/cropping/basic/ColorPickerView;

    if-eqz v0, :cond_5

    .line 637
    iget v1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mColorIndex:I

    invoke-virtual {v0, v1}, Lcom/narvii/editor/cropping/basic/ColorPickerView;->setSelectedIndex(I)V

    :cond_5
    return-void
.end method

.method private getVideoWidthAndHeight()V
    .locals 5

    .line 581
    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    iget-object v1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->nvsVideoTrack:Lcom/meicam/sdk/NvsVideoTrack;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/meicam/sdk/NvsVideoTrack;->getClipByIndex(I)Lcom/meicam/sdk/NvsVideoClip;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meicam/sdk/NvsClip;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meicam/sdk/NvsStreamingContext;->getAVFileInfo(Ljava/lang/String;)Lcom/meicam/sdk/NvsAVFileInfo;

    move-result-object v0

    .line 582
    invoke-virtual {v0, v2}, Lcom/meicam/sdk/NvsAVFileInfo;->getVideoStreamRotation(I)I

    move-result v1

    .line 583
    invoke-virtual {v0, v2}, Lcom/meicam/sdk/NvsAVFileInfo;->getVideoStreamDimension(I)Lcom/meicam/sdk/NvsSize;

    move-result-object v3

    if-eqz v1, :cond_1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    goto :goto_0

    .line 588
    :cond_0
    iget v1, v3, Lcom/meicam/sdk/NvsSize;->height:I

    iput v1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mVideoWidth:I

    .line 589
    iget v1, v3, Lcom/meicam/sdk/NvsSize;->width:I

    iput v1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mVideoHeight:I

    goto :goto_1

    .line 585
    :cond_1
    :goto_0
    iget v1, v3, Lcom/meicam/sdk/NvsSize;->width:I

    iput v1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mVideoWidth:I

    .line 586
    iget v1, v3, Lcom/meicam/sdk/NvsSize;->height:I

    iput v1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mVideoHeight:I

    .line 591
    :goto_1
    iget v1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mVideoWidth:I

    iput v1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mOriginVideoWidth:I

    .line 592
    iget v3, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mVideoHeight:I

    iput v3, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mOriginVideoHeight:I

    int-to-float v1, v1

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float v1, v1, v4

    int-to-float v3, v3

    div-float/2addr v1, v3

    .line 593
    iput v1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->ratio:F

    .line 594
    invoke-virtual {v0, v2}, Lcom/meicam/sdk/NvsAVFileInfo;->getVideoStreamFrameRate(I)Lcom/meicam/sdk/NvsRational;

    move-result-object v0

    .line 595
    iget v1, v0, Lcom/meicam/sdk/NvsRational;->den:I

    if-eqz v1, :cond_2

    .line 596
    iget v0, v0, Lcom/meicam/sdk/NvsRational;->num:I

    int-to-float v0, v0

    mul-float v0, v0, v4

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->frameRate:I

    :cond_2
    return-void
.end method

.method private intLiveWindowGestureListener()V
    .locals 2

    .line 288
    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mLiveWindow:Lcom/meicam/sdk/NvsLiveWindow;

    new-instance v1, Lcom/narvii/editor/cropping/basic/-$$Lambda$BasicCroppingFragment$iEYCUrFoS5XRd85Mk2aXCptBIQQ;

    invoke-direct {v1, p0}, Lcom/narvii/editor/cropping/basic/-$$Lambda$BasicCroppingFragment$iEYCUrFoS5XRd85Mk2aXCptBIQQ;-><init>(Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public static synthetic lambda$CCOR1WR1gjGHvY1wu5exhoDbYxM(Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->getVideoWidthAndHeight()V

    return-void
.end method

.method public static synthetic lambda$U_yVmDhXYBBT7g1LcGKrtorWxd8(Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->applyCroppingData()V

    return-void
.end method

.method static synthetic lambda$restoreVideo$7(Lcom/narvii/util/dialog/AlertDialog;Landroid/view/View;)V
    .locals 0

    .line 604
    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    return-void
.end method

.method private onScale(F)V
    .locals 11

    .line 302
    iget v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->totalScale:F

    mul-float v0, v0, p1

    iput v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->totalScale:F

    .line 303
    iget p1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->totalScale:F

    iget v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->maxScale:F

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    .line 304
    iput v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->totalScale:F

    goto :goto_0

    .line 305
    :cond_0
    iget v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->minScale:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    .line 306
    iput v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->totalScale:F

    .line 308
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->checkScrollOffset()V

    .line 309
    iget-object v2, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->nvsVideoTrack:Lcom/meicam/sdk/NvsVideoTrack;

    iget p1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->totalScale:F

    float-to-double v3, p1

    const-wide/16 v5, 0x0

    iget p1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->totalHorizScroll:F

    float-to-double v7, p1

    iget p1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->totalVerticalScroll:F

    float-to-double v9, p1

    move-object v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->updateTransform2DFx(Lcom/meicam/sdk/NvsVideoTrack;DDDD)V

    .line 310
    invoke-direct {p0}, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->seek()V

    return-void
.end method

.method private onScroll(FF)V
    .locals 10

    .line 317
    iget v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->totalHorizScroll:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->totalHorizScroll:F

    .line 318
    iget p1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->totalVerticalScroll:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->totalVerticalScroll:F

    .line 319
    invoke-direct {p0}, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->checkScrollOffset()V

    .line 320
    iget-object v1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->nvsVideoTrack:Lcom/meicam/sdk/NvsVideoTrack;

    iget p1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->totalScale:F

    float-to-double v2, p1

    iget p1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->totalHorizScroll:F

    float-to-double v6, p1

    iget p1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->totalVerticalScroll:F

    float-to-double v8, p1

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->updateTransform2DFx(Lcom/meicam/sdk/NvsVideoTrack;DDDD)V

    .line 321
    invoke-direct {p0}, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->seek()V

    return-void
.end method

.method private restoreVideo()V
    .locals 4

    .line 601
    new-instance v0, Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 602
    sget v1, Lcom/narvii/meisheeditor/R$string;->cropping_restore:I

    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(I)V

    const/4 v1, 0x0

    .line 603
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 604
    sget v2, Lcom/narvii/meisheeditor/R$string;->cancel:I

    new-instance v3, Lcom/narvii/editor/cropping/basic/-$$Lambda$BasicCroppingFragment$8s_5TXYHniV6e6lRYhh-7814MAI;

    invoke-direct {v3, v0}, Lcom/narvii/editor/cropping/basic/-$$Lambda$BasicCroppingFragment$8s_5TXYHniV6e6lRYhh-7814MAI;-><init>(Lcom/narvii/util/dialog/AlertDialog;)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 605
    sget v2, Lcom/narvii/meisheeditor/R$string;->restore:I

    new-instance v3, Lcom/narvii/editor/cropping/basic/-$$Lambda$BasicCroppingFragment$KWbm14CmNgPAbQpdY63JicnbTqM;

    invoke-direct {v3, p0}, Lcom/narvii/editor/cropping/basic/-$$Lambda$BasicCroppingFragment$KWbm14CmNgPAbQpdY63JicnbTqM;-><init>(Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 606
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method

.method private seek()V
    .locals 8

    .line 718
    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mPlayBtn:Lcom/narvii/widget/EasyButton;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 719
    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    iget-object v1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mTimeline:Lcom/meicam/sdk/NvsTimeline;

    invoke-virtual {v0, v1}, Lcom/meicam/sdk/NvsStreamingContext;->getTimelineCurrentPosition(Lcom/meicam/sdk/NvsTimeline;)J

    move-result-wide v0

    .line 721
    iget-object v2, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mTimeline:Lcom/meicam/sdk/NvsTimeline;

    invoke-virtual {v2}, Lcom/meicam/sdk/NvsTimeline;->getDuration()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/32 v4, 0x249f0

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    .line 722
    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mTimeline:Lcom/meicam/sdk/NvsTimeline;

    invoke-virtual {v0}, Lcom/meicam/sdk/NvsTimeline;->getDuration()J

    move-result-wide v0

    sub-long/2addr v0, v4

    :cond_0
    move-wide v4, v0

    .line 724
    iget-object v2, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    iget-object v3, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mTimeline:Lcom/meicam/sdk/NvsTimeline;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/meicam/sdk/NvsStreamingContext;->seekTimeline(Lcom/meicam/sdk/NvsTimeline;JII)Z

    :cond_1
    return-void
.end method

.method private setTime(Z)V
    .locals 4

    const-wide/16 v0, 0x3e8

    if-eqz p1, :cond_0

    .line 552
    iget-object v2, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mTimeline:Lcom/meicam/sdk/NvsTimeline;

    invoke-virtual {v2}, Lcom/meicam/sdk/NvsTimeline;->getDuration()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    iget-object v3, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mTimeline:Lcom/meicam/sdk/NvsTimeline;

    invoke-virtual {v2, v3}, Lcom/meicam/sdk/NvsStreamingContext;->getTimelineCurrentPosition(Lcom/meicam/sdk/NvsTimeline;)J

    move-result-wide v2

    :goto_0
    div-long/2addr v2, v0

    .line 553
    invoke-direct {p0, p1, v2, v3}, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->setTime(ZJ)V

    return-void
.end method

.method private setTime(ZJ)V
    .locals 10

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_2

    const-wide/16 v0, 0x3e8

    .line 558
    div-long v2, p2, v0

    const-wide/16 v4, 0x3c

    div-long v6, v2, v4

    rem-long/2addr v6, v4

    long-to-int v7, v6

    .line 559
    rem-long/2addr v2, v4

    long-to-int v3, v2

    .line 560
    rem-long v4, p2, v0

    const-wide/16 v8, 0x64

    div-long/2addr v4, v8

    long-to-int v2, v4

    .line 561
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 562
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0xa

    if-ge v3, v6, :cond_0

    const-string v6, "0"

    .line 564
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    :cond_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 567
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    .line 570
    iget-object p1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mTotalView:Landroid/widget/TextView;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 572
    :cond_1
    iget-object p1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mTimeView:Landroid/widget/TextView;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 573
    iget-boolean p1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->seekBarSettable:Z

    if-eqz p1, :cond_2

    .line 574
    iget-object p1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mSeekBar:Landroid/widget/SeekBar;

    long-to-float p2, p2

    const/high16 p3, 0x42c80000    # 100.0f

    mul-float p2, p2, p3

    iget-object p3, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mTimeline:Lcom/meicam/sdk/NvsTimeline;

    invoke-virtual {p3}, Lcom/meicam/sdk/NvsTimeline;->getDuration()J

    move-result-wide v2

    div-long/2addr v2, v0

    long-to-float p3, v2

    div-float/2addr p2, p3

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateTransform2DFx(Lcom/meicam/sdk/NvsVideoTrack;DDDD)V
    .locals 16

    move-wide/from16 v0, p2

    .line 465
    invoke-virtual/range {p1 .. p1}, Lcom/meicam/sdk/NvsTrack;->getClipCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    move-object/from16 v5, p1

    .line 467
    invoke-virtual {v5, v4}, Lcom/meicam/sdk/NvsVideoTrack;->getClipByIndex(I)Lcom/meicam/sdk/NvsVideoClip;

    move-result-object v6

    .line 468
    invoke-virtual {v6}, Lcom/meicam/sdk/NvsClip;->getFxCount()I

    move-result v7

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_1

    .line 470
    invoke-virtual {v6, v8}, Lcom/meicam/sdk/NvsVideoClip;->getFxByIndex(I)Lcom/meicam/sdk/NvsVideoFx;

    move-result-object v9

    .line 472
    invoke-virtual {v9}, Lcom/meicam/sdk/NvsVideoFx;->getVideoFxType()I

    move-result v10

    if-nez v10, :cond_0

    .line 473
    invoke-virtual {v9}, Lcom/meicam/sdk/NvsVideoFx;->getBuiltinVideoFxName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "Transform 2D"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v6, "Scale X"

    .line 475
    invoke-virtual {v9, v6, v0, v1}, Lcom/meicam/sdk/NvsFx;->setFloatVal(Ljava/lang/String;D)V

    const-string v6, "Scale Y"

    .line 476
    invoke-virtual {v9, v6, v0, v1}, Lcom/meicam/sdk/NvsFx;->setFloatVal(Ljava/lang/String;D)V

    const-string v6, "Rotation"

    move-wide/from16 v10, p4

    .line 478
    invoke-virtual {v9, v6, v10, v11}, Lcom/meicam/sdk/NvsFx;->setFloatVal(Ljava/lang/String;D)V

    const-string v6, "Trans X"

    move-wide/from16 v12, p6

    .line 480
    invoke-virtual {v9, v6, v12, v13}, Lcom/meicam/sdk/NvsFx;->setFloatVal(Ljava/lang/String;D)V

    const-string v6, "Trans Y"

    move-wide/from16 v14, p8

    .line 481
    invoke-virtual {v9, v6, v14, v15}, Lcom/meicam/sdk/NvsFx;->setFloatVal(Ljava/lang/String;D)V

    goto :goto_2

    :cond_0
    move-wide/from16 v10, p4

    move-wide/from16 v12, p6

    move-wide/from16 v14, p8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    move-wide/from16 v10, p4

    move-wide/from16 v12, p6

    move-wide/from16 v14, p8

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 444
    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->bgVideoTrack:Lcom/meicam/sdk/NvsVideoTrack;

    invoke-virtual {v0}, Lcom/meicam/sdk/NvsTrack;->removeAllClips()Z

    .line 445
    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->nvsVideoTrack:Lcom/meicam/sdk/NvsVideoTrack;

    invoke-virtual {v0}, Lcom/meicam/sdk/NvsTrack;->removeAllClips()Z

    .line 446
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method

.method public getCustomTheme()I
    .locals 1

    .line 233
    sget v0, Lcom/narvii/meisheeditor/R$style;->AminoTheme_Overlay:I

    return v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "SceneEdit"

    return-object v0
.end method

.method public synthetic lambda$clickPlayBtn$10$BasicCroppingFragment()V
    .locals 1

    .line 672
    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    invoke-virtual {v0}, Lcom/meicam/sdk/NvsStreamingContext;->stop()V

    return-void
.end method

.method public synthetic lambda$clickPlayBtn$9$BasicCroppingFragment(J)V
    .locals 9

    .line 669
    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    iget-object v1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mTimeline:Lcom/meicam/sdk/NvsTimeline;

    const-wide/16 v4, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/16 v8, 0x8

    move-wide v2, p1

    invoke-virtual/range {v0 .. v8}, Lcom/meicam/sdk/NvsStreamingContext;->playbackTimeline(Lcom/meicam/sdk/NvsTimeline;JJIZI)Z

    return-void
.end method

.method public synthetic lambda$intLiveWindowGestureListener$2$BasicCroppingFragment(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 289
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 290
    iget-boolean v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->singlePointerEnable:Z

    if-eqz v0, :cond_0

    .line 291
    iget-object p1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 293
    iget-object p1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic lambda$onActiveChanged$3$BasicCroppingFragment(J)V
    .locals 9

    .line 457
    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    iget-object v1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mTimeline:Lcom/meicam/sdk/NvsTimeline;

    const-wide/16 v4, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/16 v8, 0x8

    move-wide v2, p1

    invoke-virtual/range {v0 .. v8}, Lcom/meicam/sdk/NvsStreamingContext;->playbackTimeline(Lcom/meicam/sdk/NvsTimeline;JJIZI)Z

    return-void
.end method

.method public synthetic lambda$onActiveChanged$4$BasicCroppingFragment()V
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    invoke-virtual {v0}, Lcom/meicam/sdk/NvsStreamingContext;->stop()V

    return-void
.end method

.method public synthetic lambda$onStartTrackingTouch$5$BasicCroppingFragment()V
    .locals 1

    .line 509
    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    invoke-virtual {v0}, Lcom/meicam/sdk/NvsStreamingContext;->stop()V

    return-void
.end method

.method public synthetic lambda$onStopTrackingTouch$6$BasicCroppingFragment(J)V
    .locals 9

    .line 519
    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    iget-object v1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mTimeline:Lcom/meicam/sdk/NvsTimeline;

    const-wide/16 v4, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/16 v8, 0x8

    move-wide v2, p1

    invoke-virtual/range {v0 .. v8}, Lcom/meicam/sdk/NvsStreamingContext;->playbackTimeline(Lcom/meicam/sdk/NvsTimeline;JJIZI)Z

    return-void
.end method

.method public synthetic lambda$onViewCreated$0$BasicCroppingFragment()V
    .locals 6

    .line 171
    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    iget-object v1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mTimeline:Lcom/meicam/sdk/NvsTimeline;

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/meicam/sdk/NvsStreamingContext;->seekTimeline(Lcom/meicam/sdk/NvsTimeline;JII)Z

    return-void
.end method

.method public synthetic lambda$onViewCreated$1$BasicCroppingFragment()V
    .locals 1

    const/4 v0, 0x1

    .line 174
    invoke-direct {p0, v0}, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->setTime(Z)V

    return-void
.end method

.method public synthetic lambda$restoreVideo$8$BasicCroppingFragment(Landroid/view/View;)V
    .locals 0

    .line 605
    invoke-direct {p0}, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->confirmRestore()V

    return-void
.end method

.method public onActiveChanged(Z)V
    .locals 3

    if-eqz p1, :cond_1

    .line 452
    iget-object p1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mDynamicCroppingBtn:Lcom/narvii/widget/EasyButton;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 453
    iget-object p1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mPlayBtn:Lcom/narvii/widget/EasyButton;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 456
    :cond_0
    iget-object p1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mTimeline:Lcom/meicam/sdk/NvsTimeline;

    invoke-virtual {p1, v0}, Lcom/meicam/sdk/NvsStreamingContext;->getTimelineCurrentPosition(Lcom/meicam/sdk/NvsTimeline;)J

    move-result-wide v0

    .line 457
    iget-object p1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mLiveWindow:Lcom/meicam/sdk/NvsLiveWindow;

    new-instance v2, Lcom/narvii/editor/cropping/basic/-$$Lambda$BasicCroppingFragment$e0Ps2RMHC8dN8K3M_LBIwB-rhUc;

    invoke-direct {v2, p0, v0, v1}, Lcom/narvii/editor/cropping/basic/-$$Lambda$BasicCroppingFragment$e0Ps2RMHC8dN8K3M_LBIwB-rhUc;-><init>(Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;J)V

    invoke-virtual {p1, v2}, Landroid/view/SurfaceView;->post(Ljava/lang/Runnable;)Z

    .line 458
    iget-object p1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mPlayBtn:Lcom/narvii/widget/EasyButton;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 460
    :cond_1
    iget-object p1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mLiveWindow:Lcom/meicam/sdk/NvsLiveWindow;

    new-instance v0, Lcom/narvii/editor/cropping/basic/-$$Lambda$BasicCroppingFragment$00OkyaYiWqqPSq8crbwcAvOpQjk;

    invoke-direct {v0, p0}, Lcom/narvii/editor/cropping/basic/-$$Lambda$BasicCroppingFragment$00OkyaYiWqqPSq8crbwcAvOpQjk;-><init>(Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9

    const/16 v0, 0x3039

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    if-eqz p3, :cond_1

    const/4 p1, 0x0

    const-string p2, "success"

    .line 527
    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    .line 528
    iput-boolean p2, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->isDynamic:Z

    .line 529
    iget-object p2, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->nvsVideoTrack:Lcom/meicam/sdk/NvsVideoTrack;

    invoke-virtual {p2}, Lcom/meicam/sdk/NvsTrack;->removeAllClips()Z

    const-string p2, "result"

    .line 530
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 531
    iput-object p2, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->dynamicCroppingPath:Ljava/lang/String;

    .line 532
    invoke-direct {p0, p2}, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->addVideoClip(Ljava/lang/String;)V

    .line 533
    iget-object p2, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mVideoClip:Lcom/meicam/sdk/NvsVideoClip;

    if-nez p2, :cond_0

    .line 534
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/narvii/meisheeditor/R$string;->not_support_dynamic_cropping_for_this_device:I

    invoke-static {p2, p3, p1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 535
    invoke-direct {p0}, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->confirmRestore()V

    return-void

    :cond_0
    const-string p1, "Transform 2D"

    .line 538
    invoke-virtual {p2, p1}, Lcom/meicam/sdk/NvsVideoClip;->appendBuiltinFx(Ljava/lang/String;)Lcom/meicam/sdk/NvsVideoFx;

    .line 539
    iget-object p1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mLiveWindow:Lcom/meicam/sdk/NvsLiveWindow;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mVideoWidth:I

    .line 540
    iget-object p1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mLiveWindow:Lcom/meicam/sdk/NvsLiveWindow;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mVideoHeight:I

    .line 541
    iget p1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mVideoWidth:I

    int-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float p1, p1, p2

    iget p3, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mVideoHeight:I

    int-to-float p3, p3

    div-float/2addr p1, p3

    iput p1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->ratio:F

    .line 542
    iput p2, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->totalScale:F

    const/4 p1, 0x0

    .line 543
    iput p1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->totalHorizScroll:F

    .line 544
    iput p1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->totalVerticalScroll:F

    .line 545
    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    iget-object v1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mTimeline:Lcom/meicam/sdk/NvsTimeline;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/16 v8, 0x8

    invoke-virtual/range {v0 .. v8}, Lcom/meicam/sdk/NvsStreamingContext;->playbackTimeline(Lcom/meicam/sdk/NvsTimeline;JJIZI)Z

    .line 546
    iget-object p1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mPlayBtn:Lcom/narvii/widget/EasyButton;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onChecked()V
    .locals 3

    .line 437
    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mChangeBgBtn:Lcom/narvii/editor/cropping/basic/ColorPickerItemView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 438
    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mBottomView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mColorPickerView:Lcom/narvii/editor/cropping/basic/ColorPickerView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 439
    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mChangeBgBtn:Lcom/narvii/editor/cropping/basic/ColorPickerItemView;

    sget-object v1, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->COLORS:[Ljava/lang/String;

    iget v2, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mColorIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/narvii/editor/cropping/basic/ColorPickerItemView;->setColor(Ljava/lang/String;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10

    .line 238
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 239
    sget v0, Lcom/narvii/meisheeditor/R$id;->close:I

    if-ne p1, v0, :cond_0

    .line 240
    invoke-virtual {p0}, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->finish()V

    goto/16 :goto_2

    .line 241
    :cond_0
    sget v0, Lcom/narvii/meisheeditor/R$id;->check:I

    if-ne p1, v0, :cond_1

    .line 242
    invoke-direct {p0}, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->compileVideo()V

    goto/16 :goto_2

    .line 243
    :cond_1
    sget v0, Lcom/narvii/meisheeditor/R$id;->dynamic_cropping:I

    if-ne p1, v0, :cond_6

    .line 244
    sget-object p1, Lcom/narvii/logging/ActSemantic;->edit:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "DynamicCropping"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    const-string p1, "source_path"

    .line 245
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 247
    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->croppingData:Lcom/narvii/cropping/CroppingData;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/narvii/cropping/CroppingData;->orgVideoPath:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 249
    invoke-virtual {v0}, Lcom/narvii/cropping/CroppingData;->isDynamic()Z

    move-result p1

    move-object v5, v2

    goto :goto_0

    :cond_2
    move-object v5, p1

    const/4 p1, 0x0

    .line 251
    :goto_0
    invoke-static {v5}, Lcom/narvii/util/Utils;->isJPG(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v5}, Lcom/narvii/util/Utils;->isPNG(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v5}, Lcom/narvii/util/Utils;->isBMP(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-nez p1, :cond_5

    if-eqz v0, :cond_4

    .line 253
    iget p1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mOriginVideoWidth:I

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float p1, p1, v0

    iget v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mOriginVideoHeight:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    const v0, 0x3f128f5c    # 0.5725f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_5

    .line 254
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/narvii/meisheeditor/R$string;->not_support_dynamic_cropping:I

    invoke-static {p1, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    return-void

    .line 262
    :cond_5
    iget-object p1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    invoke-virtual {p1, v1}, Lcom/meicam/sdk/NvsStreamingContext;->clearCachedResources(Z)V

    .line 263
    sget-object v3, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity;->Companion:Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity$Companion;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string p1, "dest_path"

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->frameRate:I

    const-string/jumbo p1, "trim_tart"

    invoke-virtual {p0, p1, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;I)I

    move-result v8

    const-string/jumbo p1, "trim_end"

    invoke-virtual {p0, p1, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual/range {v3 .. v9}, Lcom/narvii/editor/cropping/dynamic/DynamicCroppingActivity$Companion;->intent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;III)Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0x3039

    .line 264
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 265
    iget-object p1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mDynamicCroppingBtn:Lcom/narvii/widget/EasyButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    goto :goto_2

    .line 266
    :cond_6
    sget v0, Lcom/narvii/meisheeditor/R$id;->change_background_color:I

    if-ne p1, v0, :cond_7

    .line 267
    sget-object p1, Lcom/narvii/logging/ActSemantic;->edit:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "BackgroundColor"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 268
    invoke-direct {p0}, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->clickBackgroundColorBtn()V

    goto :goto_2

    .line 269
    :cond_7
    sget v0, Lcom/narvii/meisheeditor/R$id;->rotate:I

    if-ne p1, v0, :cond_8

    .line 270
    sget-object p1, Lcom/narvii/logging/ActSemantic;->edit:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "Rotate"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 271
    invoke-direct {p0}, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->clickRotateBtn()V

    goto :goto_2

    .line 272
    :cond_8
    sget v0, Lcom/narvii/meisheeditor/R$id;->play:I

    if-ne p1, v0, :cond_9

    .line 273
    invoke-direct {p0}, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->clickPlayBtn()V

    goto :goto_2

    .line 274
    :cond_9
    sget v0, Lcom/narvii/meisheeditor/R$id;->restore:I

    if-ne p1, v0, :cond_a

    .line 275
    invoke-direct {p0}, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->restoreVideo()V

    :cond_a
    :goto_2
    return-void
.end method

.method public onColorSelected(Ljava/lang/String;I)V
    .locals 1

    .line 419
    iput p2, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mColorIndex:I

    .line 420
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "assets:/bg_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->COLORS:[Ljava/lang/String;

    aget-object p2, v0, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".png"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->changeBackgroundColor(Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 128
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 129
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 130
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActionBar;->hide()V

    .line 132
    :cond_0
    sget-object p1, Lcom/narvii/editor/player/MeisheListenerManage;->Companion:Lcom/narvii/editor/player/MeisheListenerManage$Companion;

    invoke-virtual {p1}, Lcom/narvii/editor/player/MeisheListenerManage$Companion;->getInstance()Lcom/narvii/editor/player/MeisheListenerManage;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->meisheListenerManage:Lcom/narvii/editor/player/MeisheListenerManage;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 138
    sget p3, Lcom/narvii/meisheeditor/R$layout;->fragment_base_cropping:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->meisheListenerManage:Lcom/narvii/editor/player/MeisheListenerManage;

    invoke-virtual {v0, p0}, Lcom/narvii/editor/player/MeisheListenerManage;->unRegisterPlaybackCallback(Lcom/meicam/sdk/NvsStreamingContext$PlaybackCallback;)V

    .line 206
    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->meisheListenerManage:Lcom/narvii/editor/player/MeisheListenerManage;

    invoke-virtual {v0, p0}, Lcom/narvii/editor/player/MeisheListenerManage;->unRegisterPlaybackCallback2(Lcom/meicam/sdk/NvsStreamingContext$PlaybackCallback2;)V

    .line 207
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroyView()V

    return-void
.end method

.method public onPlaybackEOF(Lcom/meicam/sdk/NvsTimeline;)V
    .locals 1

    .line 220
    iget-object p1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mPlayBtn:Lcom/narvii/widget/EasyButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p1, 0x1

    .line 221
    iput-boolean p1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->videoPlayEnd:Z

    .line 223
    iget-object p1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mTimeView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mTotalView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onPlaybackPreloadingCompletion(Lcom/meicam/sdk/NvsTimeline;)V
    .locals 0

    return-void
.end method

.method public onPlaybackStopped(Lcom/meicam/sdk/NvsTimeline;)V
    .locals 0

    return-void
.end method

.method public onPlaybackTimelinePosition(Lcom/meicam/sdk/NvsTimeline;J)V
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 228
    div-long/2addr p2, v0

    const/4 p1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->setTime(ZJ)V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    .line 492
    iget-boolean p3, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->seekBarSettable:Z

    if-nez p3, :cond_0

    .line 493
    iget-object p3, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mTimeline:Lcom/meicam/sdk/NvsTimeline;

    invoke-virtual {p3}, Lcom/meicam/sdk/NvsTimeline;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    int-to-long p2, p2

    mul-long v0, v0, p2

    const/4 p2, 0x0

    .line 494
    invoke-direct {p0, p2, v0, v1}, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->setTime(ZJ)V

    .line 495
    iget-object p2, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mLiveWindow:Lcom/meicam/sdk/NvsLiveWindow;

    new-instance p3, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment$3;

    invoke-direct {p3, p0, p1}, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment$3;-><init>(Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;Landroid/widget/SeekBar;)V

    invoke-virtual {p2, p3}, Landroid/view/SurfaceView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    const/4 p1, 0x0

    .line 507
    iput-boolean p1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->seekBarSettable:Z

    .line 508
    iget-object p1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mPlayBtn:Lcom/narvii/widget/EasyButton;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 509
    iget-object p1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mLiveWindow:Lcom/meicam/sdk/NvsLiveWindow;

    new-instance v0, Lcom/narvii/editor/cropping/basic/-$$Lambda$BasicCroppingFragment$vhY3p7xJFy3nczvkzGkZ2l84Swk;

    invoke-direct {v0, p0}, Lcom/narvii/editor/cropping/basic/-$$Lambda$BasicCroppingFragment$vhY3p7xJFy3nczvkzGkZ2l84Swk;-><init>(Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 7

    const/4 v0, 0x1

    .line 515
    iput-boolean v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->seekBarSettable:Z

    .line 516
    iget-object v1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    iget-object v2, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mTimeline:Lcom/meicam/sdk/NvsTimeline;

    invoke-virtual {v2}, Lcom/meicam/sdk/NvsTimeline;->getDuration()J

    move-result-wide v3

    const-wide/16 v5, 0x64

    div-long/2addr v3, v5

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    int-to-long v5, p1

    mul-long v3, v3, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/meicam/sdk/NvsStreamingContext;->seekTimeline(Lcom/meicam/sdk/NvsTimeline;JII)Z

    .line 517
    iget-object p1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mPlayBtn:Lcom/narvii/widget/EasyButton;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 518
    iget-object p1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mTimeline:Lcom/meicam/sdk/NvsTimeline;

    invoke-virtual {p1, v0}, Lcom/meicam/sdk/NvsStreamingContext;->getTimelineCurrentPosition(Lcom/meicam/sdk/NvsTimeline;)J

    move-result-wide v0

    .line 519
    iget-object p1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mLiveWindow:Lcom/meicam/sdk/NvsLiveWindow;

    new-instance v2, Lcom/narvii/editor/cropping/basic/-$$Lambda$BasicCroppingFragment$EwVbiHs1hwluJ58E1D1py51qxlM;

    invoke-direct {v2, p0, v0, v1}, Lcom/narvii/editor/cropping/basic/-$$Lambda$BasicCroppingFragment$EwVbiHs1hwluJ58E1D1py51qxlM;-><init>(Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;J)V

    invoke-virtual {p1, v2}, Landroid/view/SurfaceView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .line 143
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 144
    sget p2, Lcom/narvii/meisheeditor/R$id;->liveWindow:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/meicam/sdk/NvsLiveWindow;

    iput-object p2, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mLiveWindow:Lcom/meicam/sdk/NvsLiveWindow;

    .line 145
    iget-object p2, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mLiveWindow:Lcom/meicam/sdk/NvsLiveWindow;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/meicam/sdk/NvsLiveWindow;->setFillMode(I)V

    .line 146
    new-instance p2, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-direct {p2, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p2, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 147
    new-instance p2, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {p2, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mGestureDetector:Landroid/view/GestureDetector;

    .line 148
    sget-object p2, Lcom/narvii/editor/utils/TimelineUtils;->INSTANCE:Lcom/narvii/editor/utils/TimelineUtils;

    invoke-virtual {p2}, Lcom/narvii/editor/utils/TimelineUtils;->createTimeline()Lcom/meicam/sdk/NvsTimeline;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mTimeline:Lcom/meicam/sdk/NvsTimeline;

    const-string p2, "active_video_clip"

    .line 149
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-class v1, Lcom/narvii/video/model/AVClipInfoPack;

    invoke-static {p2, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/video/model/AVClipInfoPack;

    iput-object p2, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->activeClipInfo:Lcom/narvii/video/model/AVClipInfoPack;

    .line 151
    iget-object p2, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mTimeline:Lcom/meicam/sdk/NvsTimeline;

    invoke-virtual {p2}, Lcom/meicam/sdk/NvsTimeline;->appendVideoTrack()Lcom/meicam/sdk/NvsVideoTrack;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->bgVideoTrack:Lcom/meicam/sdk/NvsVideoTrack;

    .line 152
    iget-object p2, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->bgVideoTrack:Lcom/meicam/sdk/NvsVideoTrack;

    const-string v1, "assets:/bg_#000000.png"

    invoke-virtual {p2, v1}, Lcom/meicam/sdk/NvsVideoTrack;->appendClip(Ljava/lang/String;)Lcom/meicam/sdk/NvsVideoClip;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->bgVideoClip:Lcom/meicam/sdk/NvsVideoClip;

    .line 154
    iget-object p2, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mTimeline:Lcom/meicam/sdk/NvsTimeline;

    invoke-virtual {p2}, Lcom/meicam/sdk/NvsTimeline;->appendVideoTrack()Lcom/meicam/sdk/NvsVideoTrack;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->nvsVideoTrack:Lcom/meicam/sdk/NvsVideoTrack;

    const-string p2, "source_path"

    .line 155
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 156
    invoke-direct {p0, p2}, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->addVideoClip(Ljava/lang/String;)V

    .line 157
    iget-object p2, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mVideoClip:Lcom/meicam/sdk/NvsVideoClip;

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v2, Lcom/narvii/meisheeditor/R$string;->invalid_input:I

    invoke-static {p2, v2, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/util/NVToast;->show()V

    .line 159
    invoke-virtual {p0}, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->finish()V

    .line 161
    :cond_0
    iget-object p2, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mVideoClip:Lcom/meicam/sdk/NvsVideoClip;

    const-string v2, "Transform 2D"

    invoke-virtual {p2, v2}, Lcom/meicam/sdk/NvsVideoClip;->appendBuiltinFx(Ljava/lang/String;)Lcom/meicam/sdk/NvsVideoFx;

    .line 162
    iget-object p2, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mVideoClip:Lcom/meicam/sdk/NvsVideoClip;

    invoke-virtual {p2}, Lcom/meicam/sdk/NvsVideoClip;->getVideoType()I

    move-result p2

    if-ne p2, v0, :cond_1

    .line 163
    iget-object p2, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mVideoClip:Lcom/meicam/sdk/NvsVideoClip;

    invoke-virtual {p2, v1}, Lcom/meicam/sdk/NvsVideoClip;->setImageMotionMode(I)V

    .line 165
    :cond_1
    iget-object p2, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->bgVideoTrack:Lcom/meicam/sdk/NvsVideoTrack;

    iget-object v2, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->nvsVideoTrack:Lcom/meicam/sdk/NvsVideoTrack;

    invoke-virtual {v2}, Lcom/meicam/sdk/NvsTrack;->getDuration()J

    move-result-wide v2

    invoke-virtual {p2, v1, v2, v3}, Lcom/meicam/sdk/NvsTrack;->changeOutPoint(IJ)J

    .line 166
    iget-object p2, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    iget-object v1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mTimeline:Lcom/meicam/sdk/NvsTimeline;

    iget-object v2, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mLiveWindow:Lcom/meicam/sdk/NvsLiveWindow;

    invoke-virtual {p2, v1, v2}, Lcom/meicam/sdk/NvsStreamingContext;->connectTimelineWithLiveWindow(Lcom/meicam/sdk/NvsTimeline;Lcom/meicam/sdk/NvsLiveWindow;)Z

    .line 167
    iget-object p2, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->meisheListenerManage:Lcom/narvii/editor/player/MeisheListenerManage;

    invoke-virtual {p2, p0}, Lcom/narvii/editor/player/MeisheListenerManage;->registerPlaybackCallback(Lcom/meicam/sdk/NvsStreamingContext$PlaybackCallback;)V

    .line 168
    iget-object p2, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->meisheListenerManage:Lcom/narvii/editor/player/MeisheListenerManage;

    invoke-virtual {p2, p0}, Lcom/narvii/editor/player/MeisheListenerManage;->registerPlaybackCallback2(Lcom/meicam/sdk/NvsStreamingContext$PlaybackCallback2;)V

    .line 171
    iget-object p2, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mLiveWindow:Lcom/meicam/sdk/NvsLiveWindow;

    new-instance v1, Lcom/narvii/editor/cropping/basic/-$$Lambda$BasicCroppingFragment$YQEKnb8V4b95tooY4TsWCTmlny4;

    invoke-direct {v1, p0}, Lcom/narvii/editor/cropping/basic/-$$Lambda$BasicCroppingFragment$YQEKnb8V4b95tooY4TsWCTmlny4;-><init>(Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;)V

    invoke-virtual {p2, v1}, Landroid/view/SurfaceView;->post(Ljava/lang/Runnable;)Z

    .line 172
    iget-object p2, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mLiveWindow:Lcom/meicam/sdk/NvsLiveWindow;

    new-instance v1, Lcom/narvii/editor/cropping/basic/-$$Lambda$BasicCroppingFragment$U_yVmDhXYBBT7g1LcGKrtorWxd8;

    invoke-direct {v1, p0}, Lcom/narvii/editor/cropping/basic/-$$Lambda$BasicCroppingFragment$U_yVmDhXYBBT7g1LcGKrtorWxd8;-><init>(Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;)V

    invoke-virtual {p2, v1}, Landroid/view/SurfaceView;->post(Ljava/lang/Runnable;)Z

    .line 173
    iget-object p2, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mLiveWindow:Lcom/meicam/sdk/NvsLiveWindow;

    new-instance v1, Lcom/narvii/editor/cropping/basic/-$$Lambda$BasicCroppingFragment$CCOR1WR1gjGHvY1wu5exhoDbYxM;

    invoke-direct {v1, p0}, Lcom/narvii/editor/cropping/basic/-$$Lambda$BasicCroppingFragment$CCOR1WR1gjGHvY1wu5exhoDbYxM;-><init>(Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;)V

    invoke-virtual {p2, v1}, Landroid/view/SurfaceView;->post(Ljava/lang/Runnable;)Z

    .line 174
    iget-object p2, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mLiveWindow:Lcom/meicam/sdk/NvsLiveWindow;

    new-instance v1, Lcom/narvii/editor/cropping/basic/-$$Lambda$BasicCroppingFragment$fRZAyep2LBNPljfWjYOd34gsnhU;

    invoke-direct {v1, p0}, Lcom/narvii/editor/cropping/basic/-$$Lambda$BasicCroppingFragment$fRZAyep2LBNPljfWjYOd34gsnhU;-><init>(Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;)V

    invoke-virtual {p2, v1}, Landroid/view/SurfaceView;->post(Ljava/lang/Runnable;)Z

    .line 176
    sget p2, Lcom/narvii/meisheeditor/R$id;->close:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/EasyButton;

    iput-object p2, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mCloseBtn:Lcom/narvii/widget/EasyButton;

    .line 177
    iget-object p2, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mCloseBtn:Lcom/narvii/widget/EasyButton;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    sget p2, Lcom/narvii/meisheeditor/R$id;->check:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/EasyButton;

    iput-object p2, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mCheckBtn:Lcom/narvii/widget/EasyButton;

    .line 179
    iget-object p2, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mCheckBtn:Lcom/narvii/widget/EasyButton;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    sget p2, Lcom/narvii/meisheeditor/R$id;->dynamic_cropping:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/EasyButton;

    iput-object p2, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mDynamicCroppingBtn:Lcom/narvii/widget/EasyButton;

    .line 181
    iget-object p2, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mDynamicCroppingBtn:Lcom/narvii/widget/EasyButton;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    sget p2, Lcom/narvii/meisheeditor/R$id;->change_background_color:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/editor/cropping/basic/ColorPickerItemView;

    iput-object p2, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mChangeBgBtn:Lcom/narvii/editor/cropping/basic/ColorPickerItemView;

    .line 183
    iget-object p2, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mChangeBgBtn:Lcom/narvii/editor/cropping/basic/ColorPickerItemView;

    invoke-virtual {p2, v0}, Lcom/narvii/editor/cropping/basic/ColorPickerItemView;->setSelected(Z)V

    .line 184
    iget-object p2, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mChangeBgBtn:Lcom/narvii/editor/cropping/basic/ColorPickerItemView;

    sget-object v0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->COLORS:[Ljava/lang/String;

    iget v1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mColorIndex:I

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Lcom/narvii/editor/cropping/basic/ColorPickerItemView;->setColor(Ljava/lang/String;)V

    .line 185
    iget-object p2, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mChangeBgBtn:Lcom/narvii/editor/cropping/basic/ColorPickerItemView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    sget p2, Lcom/narvii/meisheeditor/R$id;->rotate:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/EasyButton;

    iput-object p2, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mRotateBtn:Lcom/narvii/widget/EasyButton;

    .line 187
    iget-object p2, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mRotateBtn:Lcom/narvii/widget/EasyButton;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    sget p2, Lcom/narvii/meisheeditor/R$id;->bottom_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mBottomView:Landroid/widget/RelativeLayout;

    .line 190
    invoke-direct {p0}, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->intLiveWindowGestureListener()V

    .line 191
    sget p2, Lcom/narvii/meisheeditor/R$id;->play:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/EasyButton;

    iput-object p2, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mPlayBtn:Lcom/narvii/widget/EasyButton;

    .line 192
    iget-object p2, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mPlayBtn:Lcom/narvii/widget/EasyButton;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    sget p2, Lcom/narvii/meisheeditor/R$id;->time_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mTimeView:Landroid/widget/TextView;

    .line 194
    sget p2, Lcom/narvii/meisheeditor/R$id;->total_time_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mTotalView:Landroid/widget/TextView;

    .line 195
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mHandler:Landroid/os/Handler;

    .line 196
    sget p2, Lcom/narvii/meisheeditor/R$id;->seekbar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SeekBar;

    iput-object p2, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mSeekBar:Landroid/widget/SeekBar;

    .line 197
    iget-object p2, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 198
    sget p2, Lcom/narvii/meisheeditor/R$id;->restore:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/EasyButton;

    iput-object p1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mRestoreBtn:Lcom/narvii/widget/EasyButton;

    .line 199
    iget-object p1, p0, Lcom/narvii/editor/cropping/basic/BasicCroppingFragment;->mRestoreBtn:Lcom/narvii/widget/EasyButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
