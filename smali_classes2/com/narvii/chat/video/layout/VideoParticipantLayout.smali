.class public Lcom/narvii/chat/video/layout/VideoParticipantLayout;
.super Lcom/narvii/chat/video/layout/RtcBaseLayout;
.source "VideoParticipantLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/video/layout/VideoParticipantLayout$ItemClickListener;
    }
.end annotation


# static fields
.field private static final CHILD_COUNT_LIMIT:I = 0x7

.field private static final DURATION:I = 0x32


# instance fields
.field childMargin:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field childSize:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

.field private focusedId:I

.field public focusedView:Landroid/view/View;

.field private hideFaceDetectView:Z

.field itemClickListener:Lcom/narvii/chat/video/layout/VideoParticipantLayout$ItemClickListener;

.field layoutInflater:Landroid/view/LayoutInflater;

.field private oldFocusedPos:I

.field private pendingMutedUserList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field rtcService:Lcom/narvii/chat/rtc/RtcService;

.field private viewHeight:I

.field private viewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/video/layout/VideoParticipantLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/video/layout/RtcBaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 56
    iput v0, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->focusedId:I

    .line 57
    iput v0, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->oldFocusedPos:I

    .line 86
    sget-object v0, Lcom/narvii/amino/R$styleable;->VideoParticipantLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 87
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->isFloatingMode:Z

    .line 88
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 89
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->userList:Landroid/util/SparseArray;

    .line 90
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->childSize:Landroid/util/SparseArray;

    const/4 p1, 0x1

    .line 91
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setKeepScreenOn(Z)V

    .line 92
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->childMargin:Landroid/util/SparseArray;

    .line 93
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->layoutInflater:Landroid/view/LayoutInflater;

    .line 94
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "rtc"

    .line 96
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/chat/rtc/RtcService;

    iput-object p2, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 98
    :cond_0
    new-instance p2, Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-direct {p2, p1}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p2, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/chat/video/layout/VideoParticipantLayout;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->focusedId:I

    return p0
.end method

.method private configNewSizeAndMargin(Landroid/view/View;III)V
    .locals 6

    .line 378
    iget v0, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->focusedId:I

    if-ne p4, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x4

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    const/4 v3, 0x2

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    if-ge p3, v3, :cond_1

    .line 423
    iget-object p2, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->childSize:Landroid/util/SparseArray;

    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->viewWidth:I

    div-int/2addr v1, v3

    iget v4, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->viewHeight:I

    div-int/lit8 v4, v4, 0x3

    invoke-direct {v0, v1, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p2, p4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 424
    iget-object p2, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->childMargin:Landroid/util/SparseArray;

    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->viewWidth:I

    div-int/2addr v1, v3

    mul-int p3, p3, v1

    invoke-direct {v0, p3, v2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p2, p4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_7

    :cond_1
    if-le p3, v0, :cond_2

    .line 426
    iget-object p2, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->childSize:Landroid/util/SparseArray;

    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->viewWidth:I

    div-int/2addr v1, v3

    iget v2, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->viewHeight:I

    div-int/lit8 v2, v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p2, p4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 427
    iget-object p2, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->childMargin:Landroid/util/SparseArray;

    new-instance v0, Landroid/graphics/Point;

    add-int/lit8 p3, p3, -0x5

    iget v1, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->viewWidth:I

    div-int/2addr v1, v3

    mul-int p3, p3, v1

    iget v1, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->viewHeight:I

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x3

    invoke-direct {v0, p3, v1}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p2, p4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_7

    .line 429
    :cond_2
    iget-object p2, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->childSize:Landroid/util/SparseArray;

    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->viewWidth:I

    div-int/lit8 v1, v1, 0x3

    iget v2, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->viewHeight:I

    div-int/lit8 v2, v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p2, p4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 430
    iget-object p2, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->childMargin:Landroid/util/SparseArray;

    new-instance v0, Landroid/graphics/Point;

    sub-int/2addr p3, v3

    iget v1, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->viewWidth:I

    div-int/lit8 v1, v1, 0x3

    mul-int p3, p3, v1

    iget v1, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->viewHeight:I

    div-int/lit8 v1, v1, 0x3

    invoke-direct {v0, p3, v1}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p2, p4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_7

    .line 417
    :pswitch_1
    iget-object p2, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->childSize:Landroid/util/SparseArray;

    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->viewWidth:I

    div-int/2addr v1, v3

    iget v2, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->viewHeight:I

    div-int/lit8 v2, v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p2, p4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 418
    iget-object p2, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->childMargin:Landroid/util/SparseArray;

    new-instance v0, Landroid/graphics/Point;

    rem-int/lit8 v1, p3, 0x2

    iget v2, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->viewWidth:I

    div-int/2addr v2, v3

    mul-int v1, v1, v2

    div-int/2addr p3, v3

    iget v2, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->viewHeight:I

    div-int/lit8 v2, v2, 0x3

    mul-int p3, p3, v2

    invoke-direct {v0, v1, p3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p2, p4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_7

    .line 411
    :pswitch_2
    iget-object p2, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->childSize:Landroid/util/SparseArray;

    new-instance v1, Landroid/graphics/Point;

    if-ge p3, v0, :cond_3

    iget v0, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->viewWidth:I

    div-int/2addr v0, v3

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->viewWidth:I

    :goto_0
    iget v4, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->viewHeight:I

    int-to-float v4, v4

    const/high16 v5, 0x40400000    # 3.0f

    div-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v1, v0, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p2, p4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 413
    iget-object p2, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->childMargin:Landroid/util/SparseArray;

    new-instance v0, Landroid/graphics/Point;

    rem-int/lit8 v1, p3, 0x2

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    iget v1, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->viewWidth:I

    div-int/lit8 v2, v1, 0x2

    :goto_1
    iget v1, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->viewHeight:I

    div-int/lit8 v1, v1, 0x3

    div-int/2addr p3, v3

    mul-int v1, v1, p3

    invoke-direct {v0, v2, v1}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p2, p4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_7

    .line 399
    :pswitch_3
    iget-object p2, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->childSize:Landroid/util/SparseArray;

    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->viewWidth:I

    div-int/2addr v1, v3

    iget v4, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->viewHeight:I

    div-int/2addr v4, v3

    invoke-direct {v0, v1, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p2, p4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 400
    iget-object p2, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->childMargin:Landroid/util/SparseArray;

    new-instance v0, Landroid/graphics/Point;

    rem-int/lit8 v1, p3, 0x2

    if-nez v1, :cond_5

    const/4 v1, 0x0

    goto :goto_2

    :cond_5
    iget v1, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->viewWidth:I

    div-int/2addr v1, v3

    :goto_2
    if-ge p3, v3, :cond_6

    goto :goto_3

    :cond_6
    iget p3, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->viewHeight:I

    div-int/lit8 v2, p3, 0x2

    :goto_3
    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p2, p4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_7

    .line 393
    :pswitch_4
    iget-object p2, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->childSize:Landroid/util/SparseArray;

    new-instance v0, Landroid/graphics/Point;

    iget v4, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->viewWidth:I

    if-ge p3, v3, :cond_7

    div-int/2addr v4, v3

    :cond_7
    iget v5, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->viewHeight:I

    int-to-float v5, v5

    div-float/2addr v5, v1

    float-to-int v5, v5

    invoke-direct {v0, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p2, p4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 395
    iget-object p2, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->childMargin:Landroid/util/SparseArray;

    new-instance v0, Landroid/graphics/Point;

    const/4 v4, 0x1

    if-ne p3, v4, :cond_8

    iget v4, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->viewWidth:I

    div-int/2addr v4, v3

    goto :goto_4

    :cond_8
    const/4 v4, 0x0

    :goto_4
    if-ge p3, v3, :cond_9

    goto :goto_5

    :cond_9
    iget p3, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->viewHeight:I

    int-to-float p3, p3

    div-float/2addr p3, v1

    float-to-int v2, p3

    :goto_5
    invoke-direct {v0, v4, v2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p2, p4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_7

    .line 388
    :pswitch_5
    iget-object p2, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->childSize:Landroid/util/SparseArray;

    new-instance v0, Landroid/graphics/Point;

    iget v3, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->viewWidth:I

    iget v4, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->viewHeight:I

    int-to-float v4, v4

    div-float/2addr v4, v1

    float-to-int v4, v4

    invoke-direct {v0, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p2, p4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 389
    iget-object p2, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->childMargin:Landroid/util/SparseArray;

    new-instance v0, Landroid/graphics/Point;

    if-nez p3, :cond_a

    const/4 p3, 0x0

    goto :goto_6

    :cond_a
    iget p3, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->viewHeight:I

    int-to-float p3, p3

    div-float/2addr p3, v1

    float-to-int p3, p3

    :goto_6
    invoke-direct {v0, v2, p3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p2, p4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_7

    .line 383
    :pswitch_6
    iget-object p2, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->childSize:Landroid/util/SparseArray;

    new-instance p3, Landroid/graphics/Point;

    iget v0, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->viewWidth:I

    iget v1, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->viewHeight:I

    invoke-direct {p3, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p2, p4, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 384
    iget-object p2, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->childMargin:Landroid/util/SparseArray;

    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p2, p4, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 435
    :goto_7
    iget-object p2, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->childSize:Landroid/util/SparseArray;

    invoke-virtual {p2, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Point;

    .line 436
    iget-object p3, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->childMargin:Landroid/util/SparseArray;

    invoke-virtual {p3, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Point;

    if-eqz p2, :cond_f

    if-nez p3, :cond_b

    goto :goto_8

    .line 440
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 441
    instance-of p4, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p4, :cond_f

    .line 442
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 443
    iget p4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v0, p3, Landroid/graphics/Point;->y:I

    if-eq p4, v0, :cond_c

    .line 444
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 446
    :cond_c
    iget p4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget p3, p3, Landroid/graphics/Point;->x:I

    if-eq p4, p3, :cond_d

    .line 447
    iput p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 449
    :cond_d
    iget p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget p4, p2, Landroid/graphics/Point;->x:I

    if-eq p3, p4, :cond_e

    .line 450
    iput p4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 452
    :cond_e
    iget p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    if-eq p3, p2, :cond_f

    .line 453
    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    :cond_f
    :goto_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private shouldShowTop(II)Z
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    return v1

    :pswitch_0
    if-le p2, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :pswitch_1
    if-le p2, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :pswitch_2
    if-le p2, v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    :pswitch_3
    if-le p2, v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1

    :pswitch_4
    if-ne p2, v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1

    :pswitch_5
    if-ne p2, v2, :cond_5

    const/4 v1, 0x1

    :cond_5
    return v1

    :pswitch_6
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateFocusView(Lcom/narvii/chat/rtc/ChannelUserWrapper;)V
    .locals 2

    .line 497
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->focusedView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f090bfe

    .line 500
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 501
    iget v1, p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v1, v0, :cond_1

    .line 502
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->focusedView:Landroid/view/View;

    iget v1, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->oldFocusedPos:I

    invoke-virtual {p0, v0, v1, p1}, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->updateChildView(Landroid/view/View;ILcom/narvii/chat/rtc/ChannelUserWrapper;)V

    :cond_1
    return-void
.end method

.method private updateLoadingView(Landroid/widget/ImageView;ZZ)V
    .locals 2

    .line 334
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/widget/SpinDrawable;

    if-eqz v0, :cond_0

    .line 335
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/SpinDrawable;

    goto :goto_0

    .line 337
    :cond_0
    new-instance v0, Lcom/narvii/widget/SpinDrawable;

    invoke-direct {v0}, Lcom/narvii/widget/SpinDrawable;-><init>()V

    const/4 v1, -0x1

    .line 338
    invoke-virtual {v0, v1}, Lcom/narvii/widget/SpinDrawable;->setLoadingColor(I)V

    .line 339
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    const/16 v1, 0x8

    if-nez p2, :cond_3

    if-eqz p3, :cond_1

    goto :goto_1

    .line 345
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/widget/SpinDrawable;->isRunning()Z

    move-result p2

    if-nez p2, :cond_2

    .line 346
    invoke-virtual {v0}, Lcom/narvii/widget/SpinDrawable;->start()V

    .line 348
    :cond_2
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 342
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcom/narvii/widget/SpinDrawable;->stop()V

    .line 343
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    return-void
.end method


# virtual methods
.method protected childLimitCount()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method protected constructNewChildView(Lcom/narvii/chat/rtc/ChannelUserWrapper;)Landroid/view/View;
    .locals 6

    .line 102
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->layoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0b046a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 103
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1, p1}, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->updateChildView(Landroid/view/View;ILcom/narvii/chat/rtc/ChannelUserWrapper;)V

    .line 104
    new-instance v1, Lcom/narvii/chat/video/layout/VideoParticipantLayout$1;

    invoke-direct {v1, p0, p1}, Lcom/narvii/chat/video/layout/VideoParticipantLayout$1;-><init>(Lcom/narvii/chat/video/layout/VideoParticipantLayout;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    const v2, 0x7f09069c

    .line 114
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget v4, p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x7f090bfe

    invoke-virtual {v3, v5, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 115
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f090024

    .line 116
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f090a98

    .line 117
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget v4, p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 118
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f09076c

    .line 119
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    new-instance v1, Lcom/narvii/chat/video/layout/VideoParticipantLayout$2;

    invoke-direct {v1, p0, p1}, Lcom/narvii/chat/video/layout/VideoParticipantLayout$2;-><init>(Lcom/narvii/chat/video/layout/VideoParticipantLayout;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method protected getChannelType()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method protected keepMeInFirstPosition()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public notifyLocalMuteUserListChanged(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 480
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->childSize:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 484
    :cond_0
    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->pendingMutedUserList:Ljava/util/Set;

    .line 485
    invoke-virtual {p0}, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->updateViews()V

    return-void

    .line 481
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->pendingMutedUserList:Ljava/util/Set;

    return-void
.end method

.method public notifyUserDataChanged(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V
    .locals 0

    .line 490
    invoke-super {p0, p1, p2}, Lcom/narvii/chat/video/layout/RtcBaseLayout;->notifyUserDataChanged(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    .line 491
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->focusedView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 492
    invoke-direct {p0, p2}, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->updateFocusView(Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 359
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->viewWidth:I

    .line 360
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->viewHeight:I

    .line 361
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 363
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f090bfe

    .line 364
    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    .line 366
    instance-of v3, v2, Ljava/lang/Integer;

    const/4 v4, -0x1

    if-eqz v3, :cond_0

    .line 367
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    :cond_0
    const/4 v2, -0x1

    :goto_1
    if-eq v2, v4, :cond_1

    .line 370
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->configNewSizeAndMargin(Landroid/view/View;III)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 373
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method protected onViewStatusReady()V
    .locals 0

    .line 185
    invoke-super {p0}, Lcom/narvii/chat/video/layout/RtcBaseLayout;->onViewStatusReady()V

    .line 186
    invoke-virtual {p0}, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->updateViews()V

    return-void
.end method

.method public setFocusedId(I)V
    .locals 4

    const/4 v0, 0x0

    .line 168
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 169
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090bfe

    .line 170
    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 171
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 172
    iput v0, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->oldFocusedPos:I

    .line 173
    iput p1, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->focusedId:I

    .line 174
    iput-object v1, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->focusedView:Landroid/view/View;

    .line 175
    iget-object p1, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->userList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 176
    invoke-virtual {p0, v1, v0, p1}, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->updateChildView(Landroid/view/View;ILcom/narvii/chat/rtc/ChannelUserWrapper;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public setHideFaceDetectView(Z)V
    .locals 1

    .line 73
    iget-boolean v0, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->hideFaceDetectView:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 76
    :cond_0
    iput-boolean p1, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->hideFaceDetectView:Z

    .line 77
    invoke-virtual {p0}, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->updateViews()V

    return-void
.end method

.method public setItemClickListener(Lcom/narvii/chat/video/layout/VideoParticipantLayout$ItemClickListener;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->itemClickListener:Lcom/narvii/chat/video/layout/VideoParticipantLayout$ItemClickListener;

    return-void
.end method

.method public setUnFocusId(I)V
    .locals 2

    const/4 p1, -0x1

    .line 190
    iput p1, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->focusedId:I

    .line 191
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->focusedView:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 192
    invoke-virtual {p0, p1}, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->stripView(Landroid/view/View;)V

    .line 193
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->focusedView:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 194
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->focusedView:Landroid/view/View;

    iget v0, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->oldFocusedPos:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->oldFocusedPos:I

    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    const/4 p1, 0x0

    .line 195
    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->focusedView:Landroid/view/View;

    .line 196
    invoke-virtual {p0}, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->updateViews()V

    :cond_1
    return-void
.end method

.method public stripView(Landroid/view/View;)V
    .locals 1

    .line 135
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected updateChildView(Landroid/view/View;ILcom/narvii/chat/rtc/ChannelUserWrapper;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    if-nez v2, :cond_0

    return-void

    .line 210
    :cond_0
    iget-object v3, v2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    iget-object v3, v3, Lcom/narvii/chat/signalling/ChannelUser;->userProfile:Lcom/narvii/model/User;

    .line 211
    :goto_0
    iget-object v5, v2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    .line 212
    iget v6, v2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    iget v7, v0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->localChannelUid:I

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eq v6, v7, :cond_4

    iget-object v6, v2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-nez v6, :cond_2

    const/4 v6, 0x0

    goto :goto_1

    .line 213
    :cond_2
    invoke-virtual {v6}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    move-result-object v6

    :goto_1
    iget-object v7, v0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->localUid:Ljava/lang/String;

    .line 212
    invoke-static {v6, v7}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v6, 0x1

    :goto_3
    const-string v7, ""

    if-nez v3, :cond_5

    move-object v10, v7

    goto :goto_4

    :cond_5
    if-eqz v6, :cond_6

    .line 214
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0f0b28

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_4

    :cond_6
    invoke-virtual {v3}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    move-result-object v10

    .line 215
    :goto_4
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_7

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v12, 0x14

    if-le v11, v12, :cond_7

    .line 216
    invoke-virtual {v10, v9, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 218
    :cond_7
    iget v11, v0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->focusedId:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_8

    const/16 v18, 0x1

    goto :goto_5

    :cond_8
    const/16 v18, 0x0

    .line 219
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v11

    if-ne v11, v8, :cond_9

    const/4 v11, 0x1

    goto :goto_6

    :cond_9
    const/4 v11, 0x0

    .line 220
    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v13

    move/from16 v14, p2

    invoke-direct {v0, v13, v14}, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->shouldShowTop(II)Z

    move-result v13

    .line 221
    iget-object v14, v0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->pendingMutedUserList:Ljava/util/Set;

    if-eqz v14, :cond_b

    iget-object v15, v2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-eqz v15, :cond_a

    invoke-virtual {v15}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    move-result-object v15

    goto :goto_7

    :cond_a
    const/4 v15, 0x0

    :goto_7
    invoke-interface {v14, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    const/4 v15, 0x1

    goto :goto_8

    :cond_b
    const/4 v15, 0x0

    :goto_8
    if-eqz v5, :cond_c

    .line 222
    invoke-virtual {v5}, Lcom/narvii/video/ui/UserStatusData;->isVideoMuted()Z

    move-result v14

    if-eqz v14, :cond_c

    const/16 v19, 0x1

    goto :goto_9

    :cond_c
    const/16 v19, 0x0

    :goto_9
    if-eqz v5, :cond_d

    .line 223
    invoke-virtual {v5}, Lcom/narvii/video/ui/UserStatusData;->isVoiceMuted()Z

    move-result v14

    if-eqz v14, :cond_d

    const/16 v20, 0x1

    goto :goto_a

    :cond_d
    const/16 v20, 0x0

    :goto_a
    if-eqz v5, :cond_e

    .line 224
    invoke-virtual {v5}, Lcom/narvii/video/ui/UserStatusData;->isBadNetwork()Z

    move-result v14

    if-eqz v14, :cond_e

    const/16 v21, 0x1

    goto :goto_b

    :cond_e
    const/16 v21, 0x0

    .line 225
    :goto_b
    iget v14, v2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->status:I

    if-ne v14, v8, :cond_f

    const/4 v14, 0x1

    goto :goto_c

    :cond_f
    const/4 v14, 0x0

    :goto_c
    if-eqz v6, :cond_10

    .line 226
    iget-boolean v9, v0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->isLauncher:Z

    if-eqz v9, :cond_10

    const/4 v9, 0x1

    goto :goto_d

    :cond_10
    const/4 v9, 0x0

    :goto_d
    if-nez v14, :cond_11

    if-eqz v9, :cond_13

    :cond_11
    if-nez v15, :cond_13

    if-eqz v19, :cond_12

    goto :goto_e

    :cond_12
    const/16 v22, 0x0

    goto :goto_f

    :cond_13
    :goto_e
    const/16 v22, 0x1

    .line 230
    :goto_f
    iget-object v4, v0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    if-eqz v4, :cond_14

    invoke-virtual {v4}, Lcom/narvii/chat/rtc/RtcService;->onlyMePresenterInMainChannel()Z

    move-result v4

    if-eqz v4, :cond_14

    const/4 v4, 0x1

    goto :goto_10

    :cond_14
    const/4 v4, 0x0

    :goto_10
    if-nez v5, :cond_15

    const/16 p2, 0x0

    goto :goto_11

    .line 232
    :cond_15
    invoke-virtual {v5}, Lcom/narvii/video/ui/UserStatusData;->getCurVolumeLevel()I

    move-result v16

    move/from16 p2, v16

    :goto_11
    const v8, 0x7f090024

    .line 233
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/narvii/chat/video/layout/VideoAccountInfoLayout;

    .line 235
    iget-boolean v12, v0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->isFloatingMode:Z

    move-object/from16 v23, v7

    if-nez v12, :cond_17

    if-eqz v13, :cond_17

    if-nez v18, :cond_17

    if-nez v11, :cond_17

    if-nez v15, :cond_17

    if-nez v14, :cond_16

    if-eqz v9, :cond_17

    :cond_16
    const/4 v7, 0x0

    goto :goto_12

    .line 237
    :cond_17
    iget-boolean v12, v0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->isFloatingMode:Z

    if-nez v12, :cond_1a

    if-nez v11, :cond_18

    if-eqz v18, :cond_1a

    iget v12, v0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->focusedId:I

    iget v7, v2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    if-ne v12, v7, :cond_1a

    :cond_18
    if-nez v14, :cond_19

    if-eqz v9, :cond_1a

    :cond_19
    const/4 v7, 0x1

    goto :goto_12

    .line 239
    :cond_1a
    iget-boolean v7, v0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->isFloatingMode:Z

    if-nez v7, :cond_1c

    if-nez v13, :cond_1c

    if-nez v18, :cond_1c

    if-nez v11, :cond_1c

    if-nez v15, :cond_1c

    if-nez v14, :cond_1b

    if-eqz v9, :cond_1c

    :cond_1b
    const/4 v7, 0x2

    goto :goto_12

    :cond_1c
    const/4 v7, -0x1

    :goto_12
    const/4 v11, -0x1

    if-eq v7, v11, :cond_1d

    const/4 v11, 0x0

    goto :goto_13

    :cond_1d
    const/16 v11, 0x8

    .line 242
    :goto_13
    invoke-virtual {v8, v11}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 243
    invoke-virtual {v8, v7}, Lcom/narvii/chat/video/layout/VideoAccountInfoLayout;->setLayoutPosition(I)V

    xor-int/lit8 v13, v22, 0x1

    if-eqz v14, :cond_1e

    if-nez v15, :cond_1e

    if-nez v20, :cond_1e

    .line 244
    iget-boolean v7, v0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->isFloatingMode:Z

    if-nez v7, :cond_1e

    if-nez v22, :cond_1e

    const/16 v16, 0x1

    goto :goto_14

    :cond_1e
    const/16 v16, 0x0

    :goto_14
    if-eqz v3, :cond_1f

    .line 245
    invoke-virtual {v3}, Lcom/narvii/model/User;->isSubscribeMemberShip()Z

    move-result v7

    if-eqz v7, :cond_1f

    const/16 v17, 0x1

    goto :goto_15

    :cond_1f
    const/16 v17, 0x0

    :goto_15
    move-object v11, v8

    move/from16 v12, v20

    move v8, v14

    move-object v14, v10

    move v7, v15

    move/from16 v15, p2

    .line 244
    invoke-virtual/range {v11 .. v17}, Lcom/narvii/chat/video/layout/VideoAccountInfoLayout;->setStatus(ZZLjava/lang/String;IZZ)V

    const v11, 0x7f090cc4

    .line 247
    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/narvii/widget/VolumeIndicator;

    move/from16 v12, p2

    int-to-float v13, v12

    const/high16 v14, 0x40800000    # 4.0f

    div-float/2addr v13, v14

    const/4 v14, 0x1

    .line 248
    invoke-virtual {v11, v13, v14}, Lcom/narvii/widget/VolumeIndicator;->setValue(FZ)V

    if-eqz v8, :cond_20

    if-nez v7, :cond_20

    if-nez v20, :cond_20

    if-eqz v19, :cond_20

    .line 249
    iget-boolean v13, v0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->isFloatingMode:Z

    if-nez v13, :cond_20

    const/4 v13, 0x0

    goto :goto_16

    :cond_20
    const/16 v13, 0x8

    :goto_16
    invoke-virtual {v11, v13}, Landroid/view/View;->setVisibility(I)V

    const v11, 0x7f09069c

    .line 251
    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    if-eqz v7, :cond_21

    const/4 v13, 0x0

    goto :goto_17

    :cond_21
    const/16 v13, 0x8

    :goto_17
    invoke-virtual {v11, v13}, Landroid/view/View;->setVisibility(I)V

    const v11, 0x7f09076c

    .line 252
    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 253
    invoke-virtual {v13, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-boolean v10, v0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->isFloatingMode:Z

    if-nez v10, :cond_23

    if-eqz v3, :cond_23

    invoke-virtual {v3}, Lcom/narvii/model/User;->isSubscribeMemberShip()Z

    move-result v10

    if-eqz v10, :cond_23

    iget-object v10, v0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {v10}, Lcom/narvii/modulization/CommunityConfigHelper;->isPremiumFeatureEnabled()Z

    move-result v10

    if-eqz v10, :cond_23

    .line 255
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v10

    const/high16 v14, 0x41000000    # 8.0f

    const v15, 0x7f0802b6

    if-eqz v10, :cond_22

    .line 256
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    const/4 v15, 0x0

    invoke-virtual {v13, v15, v15, v10, v15}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 257
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v14}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {v13, v10}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    move-object v10, v15

    goto :goto_18

    :cond_22
    const/4 v10, 0x0

    .line 259
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v13, v9, v10, v10, v10}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 260
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v14}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v13, v9}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    goto :goto_18

    :cond_23
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 263
    invoke-virtual {v13, v9}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 264
    invoke-virtual {v13, v10, v10, v10, v10}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_18
    const v9, 0x7f090c61

    .line 266
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    if-nez v7, :cond_24

    if-eqz v19, :cond_24

    if-eqz v20, :cond_24

    const/4 v13, 0x0

    goto :goto_19

    :cond_24
    const/16 v13, 0x8

    :goto_19
    invoke-virtual {v9, v13}, Landroid/view/View;->setVisibility(I)V

    const v9, 0x7f090113

    .line 267
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    if-eqz v21, :cond_25

    const/4 v13, 0x0

    goto :goto_1a

    :cond_25
    const/16 v13, 0x8

    :goto_1a
    invoke-virtual {v9, v13}, Landroid/view/View;->setVisibility(I)V

    const v9, 0x7f090c39

    .line 269
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/narvii/chat/video/view/UserSpeakingView;

    iget-boolean v13, v0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->isFloatingMode:Z

    if-nez v13, :cond_26

    if-nez v20, :cond_26

    if-nez v7, :cond_26

    if-eqz v19, :cond_26

    goto :goto_1b

    :cond_26
    const/4 v12, 0x0

    :goto_1b
    invoke-virtual {v9, v12}, Lcom/narvii/chat/video/view/UserSpeakingView;->setVolumeLevel(I)V

    const v9, 0x7f090697

    .line 272
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    invoke-direct {v0, v9, v8, v7}, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->updateLoadingView(Landroid/widget/ImageView;ZZ)V

    const v9, 0x7f090a9d

    .line 274
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/narvii/widget/BlurImageView;

    const v12, 0x7f090a98

    .line 275
    invoke-virtual {v1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/narvii/widget/NVImageView;

    if-nez v3, :cond_27

    move-object/from16 v3, v23

    goto :goto_1c

    .line 276
    :cond_27
    invoke-virtual {v3}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    move-result-object v3

    :goto_1c
    invoke-virtual {v12, v3}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 277
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const v13, -0xb3b3b4

    invoke-direct {v3, v13}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v9, v3}, Lcom/narvii/widget/BlurImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 278
    new-instance v3, Lcom/narvii/chat/video/layout/VideoParticipantLayout$3;

    invoke-direct {v3, v0, v9}, Lcom/narvii/chat/video/layout/VideoParticipantLayout$3;-><init>(Lcom/narvii/chat/video/layout/VideoParticipantLayout;Lcom/narvii/widget/BlurImageView;)V

    invoke-virtual {v12, v3}, Lcom/narvii/widget/NVImageView;->setOnImageChangedListener(Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    const v3, 0x7f090a9e

    .line 287
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v22, :cond_28

    const/4 v9, 0x0

    goto :goto_1d

    :cond_28
    const/16 v9, 0x8

    .line 288
    :goto_1d
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f090b29

    .line 290
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    if-eqz v5, :cond_2b

    .line 291
    iget-object v9, v5, Lcom/narvii/video/ui/UserStatusData;->mView:Landroid/view/SurfaceView;

    if-eqz v9, :cond_2b

    iget v9, v0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->focusedId:I

    iget v12, v2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    if-eq v9, v12, :cond_2b

    .line 293
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v9

    if-eqz v9, :cond_29

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v9

    const/4 v12, 0x1

    if-ne v9, v12, :cond_2b

    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    iget-object v13, v5, Lcom/narvii/video/ui/UserStatusData;->mView:Landroid/view/SurfaceView;

    if-eq v12, v13, :cond_2c

    goto :goto_1e

    :cond_29
    const/4 v9, 0x0

    .line 294
    :goto_1e
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 295
    iget-object v12, v5, Lcom/narvii/video/ui/UserStatusData;->mView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v12}, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->stripView(Landroid/view/View;)V

    .line 296
    iget-object v12, v0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->focusedView:Landroid/view/View;

    if-eqz v12, :cond_2a

    .line 297
    iget-object v12, v5, Lcom/narvii/video/ui/UserStatusData;->mView:Landroid/view/SurfaceView;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    .line 299
    :cond_2a
    iget-object v12, v5, Lcom/narvii/video/ui/UserStatusData;->mView:Landroid/view/SurfaceView;

    invoke-virtual {v3, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_1f

    :cond_2b
    const/4 v9, 0x0

    :cond_2c
    :goto_1f
    if-eqz v5, :cond_2e

    .line 302
    iget-object v3, v5, Lcom/narvii/video/ui/UserStatusData;->mView:Landroid/view/SurfaceView;

    if-eqz v3, :cond_2e

    .line 303
    iget v12, v0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->focusedId:I

    iget v13, v2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    if-eq v12, v13, :cond_2d

    const/4 v12, 0x1

    goto :goto_20

    :cond_2d
    const/4 v12, 0x0

    :goto_20
    invoke-virtual {v3, v12}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    :cond_2e
    if-eqz v7, :cond_2f

    .line 307
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const v10, 0x7f0f0b06

    invoke-virtual {v3, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_21

    .line 308
    :cond_2f
    iget v3, v2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->status:I

    if-nez v3, :cond_30

    if-eqz v6, :cond_30

    .line 309
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const v10, 0x7f0f0f1a

    invoke-virtual {v3, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_21

    :cond_30
    if-eqz v21, :cond_31

    .line 311
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const v10, 0x7f0f0158

    invoke-virtual {v3, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_21

    :cond_31
    move-object v3, v10

    :goto_21
    const v10, 0x7f090aa1

    .line 313
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 314
    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    iget-boolean v12, v0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->isFloatingMode:Z

    if-nez v12, :cond_32

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_32

    const/4 v3, 0x0

    goto :goto_22

    :cond_32
    const/16 v3, 0x8

    :goto_22
    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 316
    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-nez v7, :cond_33

    if-nez v8, :cond_34

    :cond_33
    if-nez v18, :cond_34

    iget-boolean v7, v0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->isFloatingMode:Z

    if-nez v7, :cond_34

    const/4 v7, 0x0

    goto :goto_23

    :cond_34
    const/4 v7, 0x4

    :goto_23
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f090111

    .line 317
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-boolean v7, v0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->isFloatingMode:Z

    if-nez v7, :cond_35

    if-nez v22, :cond_35

    if-eqz v21, :cond_35

    const/4 v7, 0x0

    goto :goto_24

    :cond_35
    const/16 v7, 0x8

    :goto_24
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f090412

    .line 318
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v6, :cond_37

    iget-boolean v7, v0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->hideFaceDetectView:Z

    if-nez v7, :cond_37

    if-nez v19, :cond_37

    if-eqz v5, :cond_37

    .line 320
    invoke-virtual {v5}, Lcom/narvii/video/ui/UserStatusData;->shouldShowFaceDetectHint()Z

    move-result v7

    if-eqz v7, :cond_37

    iget v7, v5, Lcom/narvii/video/ui/UserStatusData;->proItemStaus:I

    const/4 v10, 0x2

    if-ne v7, v10, :cond_37

    iget-boolean v7, v0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->isFloatingMode:Z

    if-eqz v7, :cond_36

    iget v7, v0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->focusedId:I

    iget v2, v2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    if-ne v7, v2, :cond_37

    :cond_36
    const/4 v2, 0x0

    goto :goto_25

    :cond_37
    const/16 v2, 0x8

    .line 318
    :goto_25
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f090694

    .line 323
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v4, :cond_38

    if-eqz v8, :cond_39

    :cond_38
    if-nez v22, :cond_39

    if-eqz v6, :cond_39

    if-nez v19, :cond_39

    if-eqz v5, :cond_39

    iget v2, v5, Lcom/narvii/video/ui/UserStatusData;->proItemStaus:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_39

    iget-boolean v2, v0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->isFloatingMode:Z

    if-eqz v2, :cond_3a

    iget-object v2, v0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->focusedView:Landroid/view/View;

    if-eqz v2, :cond_39

    goto :goto_26

    :cond_39
    const/16 v9, 0x8

    :cond_3a
    :goto_26
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected updateViews()V
    .locals 4

    .line 148
    invoke-super {p0}, Lcom/narvii/chat/video/layout/RtcBaseLayout;->updateViews()V

    const/4 v0, 0x0

    .line 149
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    const v2, 0x7f090bfe

    if-ge v0, v1, :cond_1

    .line 150
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 151
    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 155
    :cond_0
    iget-object v3, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->userList:Landroid/util/SparseArray;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 156
    invoke-virtual {p0, v1, v0, v2}, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->updateChildView(Landroid/view/View;ILcom/narvii/chat/rtc/ChannelUserWrapper;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->focusedView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 159
    invoke-virtual {v0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 160
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->userList:Landroid/util/SparseArray;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 161
    iget-object v1, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->userList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 162
    iget-object v1, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->focusedView:Landroid/view/View;

    iget v2, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->oldFocusedPos:I

    invoke-virtual {p0, v1, v2, v0}, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->updateChildView(Landroid/view/View;ILcom/narvii/chat/rtc/ChannelUserWrapper;)V

    :cond_2
    return-void
.end method
