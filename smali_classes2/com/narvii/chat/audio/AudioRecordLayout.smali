.class public Lcom/narvii/chat/audio/AudioRecordLayout;
.super Landroid/widget/FrameLayout;
.source "AudioRecordLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/audio/AudioRecordLayout$OnStatusChangeListener;,
        Lcom/narvii/chat/audio/AudioRecordLayout$OnRecordTimeChangeListener;
    }
.end annotation


# static fields
.field public static final MIN_RECORD_DURATION:I = 0x3e8

.field public static final STATE_CANCEL:I = 0x3

.field public static final STATE_NORMAL:I = 0x1

.field public static final STATE_RECORDING:I = 0x2


# instance fields
.field audioHelper:Lcom/narvii/chat/audio/AudioHelper;

.field public audioRecordRect:Landroid/graphics/Rect;

.field audioRecordView:Landroid/view/View;

.field audioVolumeRippleView:Lcom/narvii/chat/audio/AudioVolumeRippleView;

.field public beyondMaxDuration:Z

.field public final circleCancelColor:I

.field public final circlePrimaryColor:I

.field fragment:Landroid/support/v4/app/Fragment;

.field holdToTalk:Landroid/widget/TextView;

.field private mCurrentState:I

.field mediaRecordManager:Lcom/narvii/media/MediaRecordManager;

.field onRecordTimeChangeListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/chat/audio/AudioRecordLayout$OnRecordTimeChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field onStatusChangeListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/chat/audio/AudioRecordLayout$OnStatusChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field recordBg:Landroid/view/View;

.field recordEventFinishListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/chat/RecordEventFinishListener;",
            ">;"
        }
    .end annotation
.end field

.field recordFinishListener:Lcom/narvii/chat/RecordFinishListener;

.field recordIcon:Landroid/widget/ImageView;

.field recordInfoListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/chat/RecordInfoListener;",
            ">;"
        }
    .end annotation
.end field

.field releaseToDelete:Landroid/widget/TextView;

.field releaseToSend:Landroid/widget/TextView;

.field removeBin:Landroid/view/View;

.field slideDownToDelete:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 66
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 78
    iput p2, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->mCurrentState:I

    .line 84
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->onStatusChangeListenerList:Ljava/util/List;

    .line 85
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->onRecordTimeChangeListenerList:Ljava/util/List;

    .line 86
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->recordInfoListenerList:Ljava/util/List;

    .line 87
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->recordEventFinishListeners:Ljava/util/List;

    .line 67
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p2

    const-string v0, "mediaRecorder"

    invoke-interface {p2, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/media/MediaRecordManager;

    iput-object p2, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->mediaRecordManager:Lcom/narvii/media/MediaRecordManager;

    .line 68
    new-instance p2, Lcom/narvii/chat/audio/AudioHelper;

    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/narvii/chat/audio/AudioHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p2, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->audioHelper:Lcom/narvii/chat/audio/AudioHelper;

    .line 70
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f06021d

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    const p2, 0x3e4ccccd    # 0.2f

    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->getColor(IF)I

    move-result p1

    iput p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->circlePrimaryColor:I

    .line 71
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f06021c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->getColor(IF)I

    move-result p1

    iput p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->circleCancelColor:I

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/chat/audio/AudioRecordLayout;)I
    .locals 0

    .line 51
    iget p0, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->mCurrentState:I

    return p0
.end method

.method static synthetic access$100(Lcom/narvii/chat/audio/AudioRecordLayout;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/narvii/chat/audio/AudioRecordLayout;->changeState(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/chat/audio/AudioRecordLayout;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/narvii/chat/audio/AudioRecordLayout;->setStatus(I)V

    return-void
.end method

.method private changeState(I)V
    .locals 3

    .line 350
    iget v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->mCurrentState:I

    if-eq v0, p1, :cond_5

    .line 351
    iput p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->mCurrentState:I

    .line 352
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->recordBg:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 353
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->recordIcon:Landroid/widget/ImageView;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    const/4 v0, 0x1

    const/16 v2, 0x8

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->audioVolumeRippleView:Lcom/narvii/chat/audio/AudioVolumeRippleView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 375
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->audioVolumeRippleView:Lcom/narvii/chat/audio/AudioVolumeRippleView;

    iget v2, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->circleCancelColor:I

    invoke-virtual {v0, v2}, Lcom/narvii/chat/audio/AudioVolumeRippleView;->setCircleViewColor(I)V

    .line 376
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->recordIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 377
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->recordBg:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 378
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->recordIcon:Landroid/widget/ImageView;

    const v1, -0x7a8a9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    .line 365
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 366
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    .line 368
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->audioVolumeRippleView:Lcom/narvii/chat/audio/AudioVolumeRippleView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 369
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->recordIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 370
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->recordBg:Landroid/view/View;

    const v1, 0x7f08012c

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 371
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->audioVolumeRippleView:Lcom/narvii/chat/audio/AudioVolumeRippleView;

    iget v1, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->circlePrimaryColor:I

    invoke-virtual {v0, v1}, Lcom/narvii/chat/audio/AudioVolumeRippleView;->setCircleViewColor(I)V

    goto :goto_0

    .line 356
    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    .line 357
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    .line 359
    :cond_4
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->recordBg:Landroid/view/View;

    const v1, 0x7f08012b

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 360
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->audioVolumeRippleView:Lcom/narvii/chat/audio/AudioVolumeRippleView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 361
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->recordIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 362
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->audioVolumeRippleView:Lcom/narvii/chat/audio/AudioVolumeRippleView;

    iget v1, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->circlePrimaryColor:I

    invoke-virtual {v0, v1}, Lcom/narvii/chat/audio/AudioVolumeRippleView;->setCircleViewColor(I)V

    .line 381
    :goto_0
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->onStatusChangeListenerList:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 382
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/chat/audio/AudioRecordLayout$OnStatusChangeListener;

    .line 383
    invoke-interface {v1, p1}, Lcom/narvii/chat/audio/AudioRecordLayout$OnStatusChangeListener;->onStatusChange(I)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method private setStatus(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 492
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->holdToTalk:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 493
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->releaseToSend:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 494
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->slideDownToDelete:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 495
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->releaseToDelete:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 496
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->removeBin:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 485
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->holdToTalk:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 486
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->releaseToSend:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 487
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->slideDownToDelete:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 488
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->releaseToDelete:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 489
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->removeBin:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 477
    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->holdToTalk:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 478
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->releaseToSend:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 479
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->releaseToSend:Landroid/widget/TextView;

    const v0, 0x7f0f0eb3

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 480
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->slideDownToDelete:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 481
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->releaseToDelete:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 482
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->removeBin:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private wantToCancel(II)Z
    .locals 1

    .line 390
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->audioRecordRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 393
    :cond_0
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    if-le p2, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method


# virtual methods
.method public addOnRecordTimeChangeListener(Lcom/narvii/chat/audio/AudioRecordLayout$OnRecordTimeChangeListener;)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->onRecordTimeChangeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnStatusChangeListener(Lcom/narvii/chat/audio/AudioRecordLayout$OnStatusChangeListener;)V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->onStatusChangeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addRecordEventFinishListener(Lcom/narvii/chat/RecordEventFinishListener;)V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->recordEventFinishListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addRecordInfoListener(Lcom/narvii/chat/RecordInfoListener;)V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->recordInfoListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 401
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0900d5

    .line 402
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->audioRecordView:Landroid/view/View;

    const v0, 0x7f09051a

    .line 403
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->holdToTalk:Landroid/widget/TextView;

    const v0, 0x7f09094e

    .line 404
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->releaseToSend:Landroid/widget/TextView;

    const v0, 0x7f090a4f

    .line 405
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->slideDownToDelete:Landroid/widget/TextView;

    const v0, 0x7f09094d

    .line 406
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->releaseToDelete:Landroid/widget/TextView;

    const v0, 0x7f090950

    .line 407
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->removeBin:Landroid/view/View;

    const/4 v0, 0x1

    .line 409
    invoke-direct {p0, v0}, Lcom/narvii/chat/audio/AudioRecordLayout;->setStatus(I)V

    .line 411
    new-instance v0, Lcom/narvii/chat/audio/AudioRecordLayout$3;

    invoke-direct {v0, p0}, Lcom/narvii/chat/audio/AudioRecordLayout$3;-><init>(Lcom/narvii/chat/audio/AudioRecordLayout;)V

    invoke-virtual {p0, v0}, Lcom/narvii/chat/audio/AudioRecordLayout;->addOnStatusChangeListener(Lcom/narvii/chat/audio/AudioRecordLayout$OnStatusChangeListener;)V

    .line 418
    new-instance v0, Lcom/narvii/chat/audio/AudioRecordLayout$4;

    invoke-direct {v0, p0}, Lcom/narvii/chat/audio/AudioRecordLayout$4;-><init>(Lcom/narvii/chat/audio/AudioRecordLayout;)V

    invoke-virtual {p0, v0}, Lcom/narvii/chat/audio/AudioRecordLayout;->addOnRecordTimeChangeListener(Lcom/narvii/chat/audio/AudioRecordLayout$OnRecordTimeChangeListener;)V

    .line 433
    new-instance v0, Lcom/narvii/chat/audio/AudioRecordLayout$5;

    invoke-direct {v0, p0}, Lcom/narvii/chat/audio/AudioRecordLayout$5;-><init>(Lcom/narvii/chat/audio/AudioRecordLayout;)V

    invoke-virtual {p0, v0}, Lcom/narvii/chat/audio/AudioRecordLayout;->addRecordInfoListener(Lcom/narvii/chat/RecordInfoListener;)V

    const v0, 0x7f090934

    .line 465
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->recordIcon:Landroid/widget/ImageView;

    const v0, 0x7f090933

    .line 466
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->recordBg:Landroid/view/View;

    .line 467
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 468
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06021d

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 469
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->recordBg:Landroid/view/View;

    const v1, 0x7f08012b

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    const v0, 0x7f090ccb

    .line 470
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/audio/AudioVolumeRippleView;

    iput-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->audioVolumeRippleView:Lcom/narvii/chat/audio/AudioVolumeRippleView;

    .line 471
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->audioVolumeRippleView:Lcom/narvii/chat/audio/AudioVolumeRippleView;

    iget v1, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->circlePrimaryColor:I

    invoke-virtual {v0, v1}, Lcom/narvii/chat/audio/AudioVolumeRippleView;->setCircleViewColor(I)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 136
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 137
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 138
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_a

    const/4 v5, 0x3

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_0

    if-eq v0, v5, :cond_2

    goto/16 :goto_5

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->mediaRecordManager:Lcom/narvii/media/MediaRecordManager;

    invoke-virtual {v0}, Lcom/narvii/media/MediaRecordManager;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 220
    invoke-direct {p0, v1, p1}, Lcom/narvii/chat/audio/AudioRecordLayout;->wantToCancel(II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 221
    invoke-direct {p0, v5}, Lcom/narvii/chat/audio/AudioRecordLayout;->changeState(I)V

    goto/16 :goto_5

    .line 223
    :cond_1
    invoke-direct {p0, v3}, Lcom/narvii/chat/audio/AudioRecordLayout;->changeState(I)V

    goto/16 :goto_5

    .line 229
    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->audioVolumeRippleView:Lcom/narvii/chat/audio/AudioVolumeRippleView;

    invoke-virtual {p1}, Lcom/narvii/chat/audio/AudioVolumeRippleView;->stopAnimation()V

    .line 230
    iget-boolean p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->beyondMaxDuration:Z

    if-eqz p1, :cond_4

    .line 231
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->recordInfoListenerList:Ljava/util/List;

    if-eqz p1, :cond_3

    .line 232
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/RecordInfoListener;

    .line 233
    invoke-interface {v0}, Lcom/narvii/chat/RecordInfoListener;->onBeyondMaxOver()V

    goto :goto_0

    .line 236
    :cond_3
    invoke-direct {p0, v4}, Lcom/narvii/chat/audio/AudioRecordLayout;->changeState(I)V

    return v4

    .line 239
    :cond_4
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->recordInfoListenerList:Ljava/util/List;

    if-eqz p1, :cond_5

    .line 240
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/RecordInfoListener;

    .line 241
    invoke-interface {v0}, Lcom/narvii/chat/RecordInfoListener;->onRecordEnd()V

    goto :goto_1

    .line 244
    :cond_5
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->recordEventFinishListeners:Ljava/util/List;

    if-eqz p1, :cond_6

    .line 245
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/RecordEventFinishListener;

    .line 246
    invoke-interface {v0}, Lcom/narvii/chat/RecordEventFinishListener;->onRecordEnd()V

    goto :goto_2

    .line 249
    :cond_6
    iget p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->mCurrentState:I

    if-ne p1, v3, :cond_9

    .line 250
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->mediaRecordManager:Lcom/narvii/media/MediaRecordManager;

    invoke-virtual {p1}, Lcom/narvii/media/MediaRecordManager;->isRecording()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->mediaRecordManager:Lcom/narvii/media/MediaRecordManager;

    invoke-virtual {p1}, Lcom/narvii/media/MediaRecordManager;->getRecordDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long p1, v0, v2

    if-gez p1, :cond_8

    .line 251
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->recordInfoListenerList:Ljava/util/List;

    if-eqz p1, :cond_7

    .line 252
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/RecordInfoListener;

    .line 253
    invoke-interface {v0}, Lcom/narvii/chat/RecordInfoListener;->onMessageTooShort()V

    goto :goto_3

    .line 256
    :cond_7
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->mediaRecordManager:Lcom/narvii/media/MediaRecordManager;

    invoke-virtual {p1}, Lcom/narvii/media/MediaRecordManager;->destroyRecord()V

    goto :goto_4

    .line 258
    :cond_8
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->mediaRecordManager:Lcom/narvii/media/MediaRecordManager;

    invoke-virtual {p1}, Lcom/narvii/media/MediaRecordManager;->finishRecord()V

    .line 260
    :goto_4
    invoke-direct {p0, v4}, Lcom/narvii/chat/audio/AudioRecordLayout;->changeState(I)V

    goto/16 :goto_5

    :cond_9
    if-ne p1, v5, :cond_d

    .line 262
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->mediaRecordManager:Lcom/narvii/media/MediaRecordManager;

    invoke-virtual {p1}, Lcom/narvii/media/MediaRecordManager;->destroyRecord()V

    .line 264
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 265
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 266
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/2addr v0, v3

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v5, 0x42200000    # 40.0f

    invoke-static {v1, v5}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v1

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v1, v5

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v5, 0x41f00000    # 30.0f

    invoke-static {v1, v5}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 267
    iget-object v1, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->recordIcon:Landroid/widget/ImageView;

    new-array v5, v3, [F

    fill-array-data v5, :array_0

    const-string v6, "rotation"

    invoke-static {v1, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 268
    iget-object v5, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->recordIcon:Landroid/widget/ImageView;

    new-array v6, v3, [F

    const/4 v7, 0x0

    aput v7, v6, v2

    int-to-float v7, v0

    aput v7, v6, v4

    const-string v7, "TranslationY"

    invoke-static {v5, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v1, v3, v2

    aput-object v5, v3, v4

    .line 269
    invoke-virtual {p1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v1, 0x12c

    .line 270
    invoke-virtual {p1, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 271
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 272
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 273
    new-instance v1, Lcom/narvii/chat/audio/AudioRecordLayout$2;

    invoke-direct {v1, p0, v0}, Lcom/narvii/chat/audio/AudioRecordLayout$2;-><init>(Lcom/narvii/chat/audio/AudioRecordLayout;I)V

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_5

    .line 143
    :cond_a
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->audioHelper:Lcom/narvii/chat/audio/AudioHelper;

    invoke-virtual {v0}, Lcom/narvii/chat/audio/AudioHelper;->showAVChatOnToast()Z

    move-result v0

    if-eqz v0, :cond_b

    return v2

    .line 147
    :cond_b
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    new-array v5, v4, [Ljava/lang/String;

    const-string v6, "android.permission.RECORD_AUDIO"

    aput-object v6, v5, v2

    invoke-static {v0, v5}, Lcom/narvii/permisson/PermissionUtils;->hasSelfPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 149
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->audioRecordRect:Landroid/graphics/Rect;

    .line 150
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->audioRecordView:Landroid/view/View;

    iget-object v5, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->audioRecordRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 151
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->audioRecordRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-nez p1, :cond_c

    return v2

    .line 154
    :cond_c
    invoke-direct {p0, v3}, Lcom/narvii/chat/audio/AudioRecordLayout;->changeState(I)V

    .line 155
    iput-boolean v2, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->beyondMaxDuration:Z

    .line 156
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->mediaRecordManager:Lcom/narvii/media/MediaRecordManager;

    new-instance v0, Lcom/narvii/chat/audio/AudioRecordLayout$1;

    invoke-direct {v0, p0}, Lcom/narvii/chat/audio/AudioRecordLayout$1;-><init>(Lcom/narvii/chat/audio/AudioRecordLayout;)V

    invoke-virtual {p1, v0}, Lcom/narvii/media/MediaRecordManager;->startRecord(Lcom/narvii/media/IMediaRecordListener;)V

    :cond_d
    :goto_5
    return v4

    .line 206
    :cond_e
    iget-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->fragment:Landroid/support/v4/app/Fragment;

    if-nez p1, :cond_f

    return v2

    .line 210
    :cond_f
    invoke-static {p1}, Lcom/narvii/permisson/NVPermission;->builder(Landroid/support/v4/app/Fragment;)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object p1

    .line 211
    invoke-virtual {p1, v6}, Lcom/narvii/permisson/NVPermission$Builder;->permission(Ljava/lang/String;)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object p1

    const/16 v0, 0xc8

    .line 212
    invoke-virtual {p1, v0}, Lcom/narvii/permisson/NVPermission$Builder;->requestCode(I)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object p1

    .line 213
    invoke-virtual {p1}, Lcom/narvii/permisson/NVPermission$Builder;->request()V

    return v2

    nop

    :array_0
    .array-data 4
        0x0
        0x430c0000    # 140.0f
    .end array-data
.end method

.method public removeRecordEventFinishListener(Lcom/narvii/chat/RecordEventFinishListener;)V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->recordEventFinishListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setFragment(Landroid/support/v4/app/Fragment;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->fragment:Landroid/support/v4/app/Fragment;

    return-void
.end method

.method public setRecordFinishListener(Lcom/narvii/chat/RecordFinishListener;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/narvii/chat/audio/AudioRecordLayout;->recordFinishListener:Lcom/narvii/chat/RecordFinishListener;

    return-void
.end method
