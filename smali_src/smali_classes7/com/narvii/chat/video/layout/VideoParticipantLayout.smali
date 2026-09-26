.class public Lcom/narvii/chat/video/layout/VideoParticipantLayout;
.super Lcom/narvii/chat/video/layout/RtcBaseLayout;
.source "SourceFile"


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
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/video/layout/VideoParticipantLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/video/layout/RtcBaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->focusedId:I

    iput v0, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->oldFocusedPos:I

    .line 3
    sget-object v0, Lcom/narvii/amino/R$styleable;->VideoParticipantLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 4
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->isFloatingMode:Z

    .line 5
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 6
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->userList:Landroid/util/SparseArray;

    .line 7
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->childSize:Landroid/util/SparseArray;

    const/4 p1, 0x1

    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 9
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->childMargin:Landroid/util/SparseArray;

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->layoutInflater:Landroid/view/LayoutInflater;

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "rtc"

    .line 12
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/chat/rtc/RtcService;

    iput-object p2, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 13
    :cond_0
    new-instance p2, Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-direct {p2, p1}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p2, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/chat/video/layout/VideoParticipantLayout;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->focusedId:I

    return p0
.end method

.method private configNewSizeAndMargin(Landroid/view/View;III)V
    .locals 6

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

    iget-object p2, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->childSize:Landroid/util/SparseArray;

    .line 1
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->viewWidth:I

    div-int/2addr v1, v3

    iget v4, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->viewHeight:I

    div-int/lit8 v4, v4, 0x3

    invoke-direct {v0, v1, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p2, p4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p2, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->childMargin:Landroid/util/SparseArray;

    .line 2
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->viewWidth:I

    div-int/2addr v1, v3

    mul-int/2addr p3, v1

    invoke-direct {v0, p3, v2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p2, p4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_7

    :cond_1
    if-le p3, v0, :cond_2

    iget-object p2, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->childSize:Landroid/util/SparseArray;

    .line 3
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->viewWidth:I

    div-int/2addr v1, v3

    iget v2, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->viewHeight:I

    div-int/lit8 v2, v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p2, p4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p2, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->childMargin:Landroid/util/SparseArray;

    .line 4
    new-instance v0, Landroid/graphics/Point;

    add-int/lit8 p3, p3, -0x5

    iget v1, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->viewWidth:I

    div-int/2addr v1, v3

    mul-int/2addr p3, v1

    iget v1, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->viewHeight:I

    mul-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x3

    invoke-direct {v0, p3, v1}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p2, p4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_7

    :cond_2
    iget-object p2, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->childSize:Landroid/util/SparseArray;

    .line 5
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->viewWidth:I

    div-int/lit8 v1, v1, 0x3

    iget v2, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->viewHeight:I

    div-int/lit8 v2, v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p2, p4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p2, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->childMargin:Landroid/util/SparseArray;

    .line 6
    new-instance v0, Landroid/graphics/Point;

    sub-int/2addr p3, v3

    iget v1, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->viewWidth:I

    div-int/lit8 v1, v1, 0x3

    mul-int/2addr p3, v1

    iget v1, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->viewHeight:I

    div-int/lit8 v1, v1, 0x3

    invoke-direct {v0, p3, v1}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p2, p4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_1
    iget-object p2, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->childSize:Landroid/util/SparseArray;

    .line 7
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->viewWidth:I

    div-int/2addr v1, v3

    iget v2, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->viewHeight:I

    div-int/lit8 v2, v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p2, p4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p2, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->childMargin:Landroid/util/SparseArray;

    .line 8
    new-instance v0, Landroid/graphics/Point;

    rem-int/lit8 v1, p3, 0x2

    iget v2, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->viewWidth:I

    div-int/2addr v2, v3

    mul-int/2addr v1, v2

    div-int/2addr p3, v3

    iget v2, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->viewHeight:I

    div-int/lit8 v2, v2, 0x3

    mul-int/2addr p3, v2

    invoke-direct {v0, v1, p3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p2, p4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_2
    iget-object p2, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->childSize:Landroid/util/SparseArray;

    .line 9
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

    iget-object p2, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->childMargin:Landroid/util/SparseArray;

    .line 10
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

    mul-int/2addr v1, p3

    invoke-direct {v0, v2, v1}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p2, p4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_3
    iget-object p2, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->childSize:Landroid/util/SparseArray;

    .line 11
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->viewWidth:I

    div-int/2addr v1, v3

    iget v4, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->viewHeight:I

    div-int/2addr v4, v3

    invoke-direct {v0, v1, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p2, p4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p2, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->childMargin:Landroid/util/SparseArray;

    .line 12
    new-instance v0, Landroid/graphics/Point;

    rem-int/lit8 v1, p3, 0x2

    if-nez v1, :cond_5

    move v1, v2

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

    goto/16 :goto_7

    :pswitch_4
    iget-object p2, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->childSize:Landroid/util/SparseArray;

    .line 13
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

    iget-object p2, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->childMargin:Landroid/util/SparseArray;

    .line 14
    new-instance v0, Landroid/graphics/Point;

    const/4 v4, 0x1

    if-ne p3, v4, :cond_8

    iget v4, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->viewWidth:I

    div-int/2addr v4, v3

    goto :goto_4

    :cond_8
    move v4, v2

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

    :pswitch_5
    iget-object p2, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->childSize:Landroid/util/SparseArray;

    .line 15
    new-instance v0, Landroid/graphics/Point;

    iget v3, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->viewWidth:I

    iget v4, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->viewHeight:I

    int-to-float v4, v4

    div-float/2addr v4, v1

    float-to-int v4, v4

    invoke-direct {v0, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p2, p4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p2, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->childMargin:Landroid/util/SparseArray;

    .line 16
    new-instance v0, Landroid/graphics/Point;

    if-nez p3, :cond_a

    move p3, v2

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

    :pswitch_6
    iget-object p2, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->childSize:Landroid/util/SparseArray;

    .line 17
    new-instance p3, Landroid/graphics/Point;

    iget v0, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->viewWidth:I

    iget v1, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->viewHeight:I

    invoke-direct {p3, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p2, p4, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p2, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->childMargin:Landroid/util/SparseArray;

    .line 18
    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p2, p4, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_7
    iget-object p2, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->childSize:Landroid/util/SparseArray;

    .line 19
    invoke-virtual {p2, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Point;

    iget-object p3, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->childMargin:Landroid/util/SparseArray;

    .line 20
    invoke-virtual {p3, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Point;

    if-eqz p2, :cond_f

    if-nez p3, :cond_b

    goto :goto_8

    .line 21
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 22
    instance-of p4, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p4, :cond_f

    .line 23
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 24
    iget p4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v0, p3, Landroid/graphics/Point;->y:I

    if-eq p4, v0, :cond_c

    .line 25
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 26
    :cond_c
    iget p4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget p3, p3, Landroid/graphics/Point;->x:I

    if-eq p4, p3, :cond_d

    .line 27
    iput p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 28
    :cond_d
    iget p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget p4, p2, Landroid/graphics/Point;->x:I

    if-eq p3, p4, :cond_e

    .line 29
    iput p4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 30
    :cond_e
    iget p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    if-eq p3, p2, :cond_f

    .line 31
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

    move v1, v2

    :cond_0
    return v1

    :pswitch_1
    if-le p2, v2, :cond_1

    move v1, v2

    :cond_1
    return v1

    :pswitch_2
    if-le p2, v0, :cond_2

    move v1, v2

    :cond_2
    return v1

    :pswitch_3
    if-le p2, v2, :cond_3

    move v1, v2

    :cond_3
    return v1

    :pswitch_4
    if-ne p2, v0, :cond_4

    move v1, v2

    :cond_4
    return v1

    :pswitch_5
    if-ne p2, v2, :cond_5

    move v1, v2

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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->focusedView:Landroid/view/View;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    const v1, 0x7f0a0f21

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget v1, p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    .line 17
    .line 18
    check-cast v0, Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 22
    move-result v0

    .line 23
    .line 24
    if-ne v1, v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->focusedView:Landroid/view/View;

    .line 27
    .line 28
    iget v1, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->oldFocusedPos:I

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0, v1, p1}, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->updateChildView(Landroid/view/View;ILcom/narvii/chat/rtc/ChannelUserWrapper;)V

    .line 32
    :cond_1
    return-void
.end method

.method private updateLoadingView(Landroid/widget/ImageView;ZZ)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v0, v0, Lcom/narvii/widget/SpinDrawable;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Lcom/narvii/widget/SpinDrawable;

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    new-instance v0, Lcom/narvii/widget/SpinDrawable;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0}, Lcom/narvii/widget/SpinDrawable;-><init>()V

    .line 21
    const/4 v1, -0x1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/narvii/widget/SpinDrawable;->setLoadingColor(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 28
    .line 29
    :goto_0
    const/16 v1, 0x8

    .line 30
    .line 31
    if-nez p2, :cond_3

    .line 32
    .line 33
    if-eqz p3, :cond_1

    .line 34
    goto :goto_1

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/widget/SpinDrawable;->isRunning()Z

    .line 38
    move-result p2

    .line 39
    .line 40
    if-nez p2, :cond_2

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/narvii/widget/SpinDrawable;->start()V

    .line 44
    .line 45
    .line 46
    :cond_2
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 47
    goto :goto_2

    .line 48
    .line 49
    .line 50
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcom/narvii/widget/SpinDrawable;->stop()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 54
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->layoutInflater:Landroid/view/LayoutInflater;

    .line 3
    .line 4
    .line 5
    const v1, 0x7f0d0499

    .line 6
    const/4 v2, 0x0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 14
    move-result v1

    .line 15
    .line 16
    add-int/lit8 v1, v1, -0x1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0, v1, p1}, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->updateChildView(Landroid/view/View;ILcom/narvii/chat/rtc/ChannelUserWrapper;)V

    .line 20
    .line 21
    new-instance v1, Lcom/narvii/chat/video/layout/VideoParticipantLayout$1;

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, p0, p1}, Lcom/narvii/chat/video/layout/VideoParticipantLayout$1;-><init>(Lcom/narvii/chat/video/layout/VideoParticipantLayout;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    .line 25
    .line 26
    .line 27
    const v2, 0x7f0a0826

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    move-result-object v3

    .line 32
    .line 33
    iget v4, p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    .line 34
    .line 35
    .line 36
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    move-result-object v4

    .line 38
    .line 39
    .line 40
    const v5, 0x7f0a0f21

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, v5, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    move-result-object v2

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    .line 52
    .line 53
    const v2, 0x7f0a0052

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 57
    move-result-object v2

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    .line 62
    .line 63
    const v2, 0x7f0a0d91

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 67
    move-result-object v3

    .line 68
    .line 69
    iget v4, p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    .line 70
    .line 71
    .line 72
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    move-result-object v4

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, v5, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 80
    move-result-object v2

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    .line 85
    .line 86
    const v2, 0x7f0a0a08

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 90
    move-result-object v2

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    .line 95
    new-instance v1, Lcom/narvii/chat/video/layout/VideoParticipantLayout$2;

    .line 96
    .line 97
    .line 98
    invoke-direct {v1, p0, p1}, Lcom/narvii/chat/video/layout/VideoParticipantLayout$2;-><init>(Lcom/narvii/chat/video/layout/VideoParticipantLayout;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->childSize:Landroid/util/SparseArray;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->pendingMutedUserList:Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->updateViews()V

    .line 17
    return-void

    .line 18
    .line 19
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->pendingMutedUserList:Ljava/util/Set;

    .line 20
    return-void
.end method

.method public notifyUserDataChanged(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/chat/video/layout/RtcBaseLayout;->notifyUserDataChanged(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->focusedView:Landroid/view/View;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p2}, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->updateFocusView(Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    .line 11
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 4
    move-result v0

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->viewWidth:I

    .line 7
    .line 8
    .line 9
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 10
    move-result v0

    .line 11
    .line 12
    iput v0, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->viewHeight:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    .line 19
    :goto_0
    if-ge v1, v0, :cond_2

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    .line 26
    const v3, 0x7f0a0f21

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    instance-of v3, v2, Ljava/lang/Integer;

    .line 33
    const/4 v4, -0x1

    .line 34
    .line 35
    if-eqz v3, :cond_0

    .line 36
    .line 37
    check-cast v2, Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 41
    move-result v2

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    move v2, v4

    .line 44
    .line 45
    :goto_1
    if-eq v2, v4, :cond_1

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 49
    move-result-object v3

    .line 50
    .line 51
    .line 52
    invoke-direct {p0, v3, v0, v1, v2}, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->configNewSizeAndMargin(Landroid/view/View;III)V

    .line 53
    .line 54
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 55
    goto :goto_0

    .line 56
    .line 57
    .line 58
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 59
    return-void
.end method

.method protected onViewStatusReady()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/chat/video/layout/RtcBaseLayout;->onViewStatusReady()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->updateViews()V

    .line 7
    return-void
.end method

.method public setFocusedId(I)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 5
    move-result v1

    .line 6
    .line 7
    if-ge v0, v1, :cond_1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    const v2, 0x7f0a0f21

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    check-cast v2, Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 26
    move-result v3

    .line 27
    .line 28
    if-ne p1, v3, :cond_0

    .line 29
    .line 30
    iput v0, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->oldFocusedPos:I

    .line 31
    .line 32
    iput p1, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->focusedId:I

    .line 33
    .line 34
    iput-object v1, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->focusedView:Landroid/view/View;

    .line 35
    .line 36
    iget-object p1, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->userList:Landroid/util/SparseArray;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 40
    move-result v2

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    check-cast p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v1, v0, p1}, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->updateChildView(Landroid/view/View;ILcom/narvii/chat/rtc/ChannelUserWrapper;)V

    .line 50
    goto :goto_1

    .line 51
    .line 52
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    :goto_1
    return-void
.end method

.method public setHideFaceDetectView(Z)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->hideFaceDetectView:Z

    .line 3
    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iput-boolean p1, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->hideFaceDetectView:Z

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->updateViews()V

    .line 11
    return-void
.end method

.method public setItemClickListener(Lcom/narvii/chat/video/layout/VideoParticipantLayout$ItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->itemClickListener:Lcom/narvii/chat/video/layout/VideoParticipantLayout$ItemClickListener;

    return-void
.end method

.method public setUnFocusId(I)V
    .locals 2

    .line 1
    const/4 p1, -0x1

    .line 2
    .line 3
    iput p1, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->focusedId:I

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->focusedView:Landroid/view/View;

    .line 6
    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->stripView(Landroid/view/View;)V

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->focusedView:Landroid/view/View;

    .line 13
    const/4 v0, 0x1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 17
    .line 18
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->focusedView:Landroid/view/View;

    .line 19
    .line 20
    iget v0, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->oldFocusedPos:I

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 24
    move-result v1

    .line 25
    .line 26
    if-le v0, v1, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 30
    move-result v0

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :cond_0
    iget v0, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->oldFocusedPos:I

    .line 34
    .line 35
    .line 36
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 37
    const/4 p1, 0x0

    .line 38
    .line 39
    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->focusedView:Landroid/view/View;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->updateViews()V

    .line 43
    :cond_1
    return-void
.end method

.method public stripView(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    check-cast v0, Landroid/widget/FrameLayout;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 12
    :cond_0
    return-void
.end method

.method protected updateChildView(Landroid/view/View;ILcom/narvii/chat/rtc/ChannelUserWrapper;)V
    .locals 25

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    move-object/from16 v2, p3

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iget-object v3, v2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 12
    .line 13
    if-nez v3, :cond_1

    .line 14
    const/4 v5, 0x0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_1
    iget-object v5, v3, Lcom/narvii/chat/signalling/ChannelUser;->userProfile:Lcom/narvii/model/User;

    .line 18
    .line 19
    :goto_0
    iget-object v6, v2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    .line 20
    .line 21
    iget v7, v2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    .line 22
    .line 23
    iget v8, v0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->localChannelUid:I

    .line 24
    const/4 v9, 0x1

    .line 25
    const/4 v10, 0x0

    .line 26
    .line 27
    if-eq v7, v8, :cond_4

    .line 28
    .line 29
    if-nez v3, :cond_2

    .line 30
    const/4 v3, 0x0

    .line 31
    goto :goto_1

    .line 32
    .line 33
    .line 34
    :cond_2
    invoke-virtual {v3}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    .line 35
    move-result-object v3

    .line 36
    .line 37
    :goto_1
    iget-object v7, v0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->localUid:Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    invoke-static {v3, v7}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    move-result v3

    .line 42
    .line 43
    if-eqz v3, :cond_3

    .line 44
    goto :goto_2

    .line 45
    :cond_3
    move v3, v10

    .line 46
    goto :goto_3

    .line 47
    :cond_4
    :goto_2
    move v3, v9

    .line 48
    .line 49
    :goto_3
    const-string v7, ""

    .line 50
    .line 51
    if-nez v5, :cond_5

    .line 52
    move-object v8, v7

    .line 53
    goto :goto_4

    .line 54
    .line 55
    :cond_5
    if-eqz v3, :cond_6

    .line 56
    .line 57
    .line 58
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 59
    move-result-object v8

    .line 60
    .line 61
    .line 62
    const v11, 0x7f120c2a

    .line 63
    .line 64
    .line 65
    invoke-virtual {v8, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 66
    move-result-object v8

    .line 67
    goto :goto_4

    .line 68
    .line 69
    .line 70
    :cond_6
    invoke-virtual {v5}, Lcom/narvii/model/User;->nickname()Ljava/lang/String;

    .line 71
    move-result-object v8

    .line 72
    .line 73
    .line 74
    :goto_4
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 75
    move-result v11

    .line 76
    .line 77
    if-nez v11, :cond_7

    .line 78
    .line 79
    .line 80
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 81
    move-result v11

    .line 82
    .line 83
    const/16 v12, 0x14

    .line 84
    .line 85
    if-le v11, v12, :cond_7

    .line 86
    .line 87
    .line 88
    invoke-virtual {v8, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 89
    move-result-object v8

    .line 90
    .line 91
    :cond_7
    iget v11, v0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->focusedId:I

    .line 92
    const/4 v12, -0x1

    .line 93
    .line 94
    if-eq v11, v12, :cond_8

    .line 95
    .line 96
    move/from16 v18, v9

    .line 97
    goto :goto_5

    .line 98
    .line 99
    :cond_8
    move/from16 v18, v10

    .line 100
    .line 101
    .line 102
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 103
    move-result v11

    .line 104
    .line 105
    if-ne v11, v9, :cond_9

    .line 106
    move v11, v9

    .line 107
    goto :goto_6

    .line 108
    :cond_9
    move v11, v10

    .line 109
    .line 110
    .line 111
    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 112
    move-result v13

    .line 113
    .line 114
    move/from16 v14, p2

    .line 115
    .line 116
    .line 117
    invoke-direct {v0, v13, v14}, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->shouldShowTop(II)Z

    .line 118
    move-result v13

    .line 119
    .line 120
    iget-object v14, v0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->pendingMutedUserList:Ljava/util/Set;

    .line 121
    .line 122
    if-eqz v14, :cond_b

    .line 123
    .line 124
    iget-object v15, v2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 125
    .line 126
    if-eqz v15, :cond_a

    .line 127
    .line 128
    .line 129
    invoke-virtual {v15}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    .line 130
    move-result-object v15

    .line 131
    goto :goto_7

    .line 132
    :cond_a
    const/4 v15, 0x0

    .line 133
    .line 134
    .line 135
    :goto_7
    invoke-interface {v14, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 136
    move-result v14

    .line 137
    .line 138
    if-eqz v14, :cond_b

    .line 139
    move v15, v9

    .line 140
    goto :goto_8

    .line 141
    :cond_b
    move v15, v10

    .line 142
    .line 143
    :goto_8
    if-eqz v6, :cond_c

    .line 144
    .line 145
    .line 146
    invoke-virtual {v6}, Lcom/narvii/video/ui/UserStatusData;->isVideoMuted()Z

    .line 147
    move-result v14

    .line 148
    .line 149
    if-eqz v14, :cond_c

    .line 150
    .line 151
    move/from16 v19, v9

    .line 152
    goto :goto_9

    .line 153
    .line 154
    :cond_c
    move/from16 v19, v10

    .line 155
    .line 156
    :goto_9
    if-eqz v6, :cond_d

    .line 157
    .line 158
    .line 159
    invoke-virtual {v6}, Lcom/narvii/video/ui/UserStatusData;->isVoiceMuted()Z

    .line 160
    move-result v14

    .line 161
    .line 162
    if-eqz v14, :cond_d

    .line 163
    .line 164
    move/from16 v20, v9

    .line 165
    goto :goto_a

    .line 166
    .line 167
    :cond_d
    move/from16 v20, v10

    .line 168
    .line 169
    :goto_a
    if-eqz v6, :cond_e

    .line 170
    .line 171
    .line 172
    invoke-virtual {v6}, Lcom/narvii/video/ui/UserStatusData;->isBadNetwork()Z

    .line 173
    move-result v14

    .line 174
    .line 175
    if-eqz v14, :cond_e

    .line 176
    .line 177
    move/from16 v21, v9

    .line 178
    goto :goto_b

    .line 179
    .line 180
    :cond_e
    move/from16 v21, v10

    .line 181
    .line 182
    :goto_b
    iget v14, v2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->status:I

    .line 183
    .line 184
    if-ne v14, v9, :cond_f

    .line 185
    move v14, v9

    .line 186
    goto :goto_c

    .line 187
    :cond_f
    move v14, v10

    .line 188
    .line 189
    :goto_c
    if-eqz v3, :cond_10

    .line 190
    .line 191
    iget-boolean v10, v0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->isLauncher:Z

    .line 192
    .line 193
    if-eqz v10, :cond_10

    .line 194
    move v10, v9

    .line 195
    goto :goto_d

    .line 196
    :cond_10
    const/4 v10, 0x0

    .line 197
    .line 198
    :goto_d
    if-nez v14, :cond_11

    .line 199
    .line 200
    if-eqz v10, :cond_13

    .line 201
    .line 202
    :cond_11
    if-nez v15, :cond_13

    .line 203
    .line 204
    if-eqz v19, :cond_12

    .line 205
    goto :goto_e

    .line 206
    .line 207
    :cond_12
    const/16 v22, 0x0

    .line 208
    goto :goto_f

    .line 209
    .line 210
    :cond_13
    :goto_e
    move/from16 v22, v9

    .line 211
    .line 212
    :goto_f
    iget-object v4, v0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 213
    .line 214
    if-eqz v4, :cond_14

    .line 215
    .line 216
    .line 217
    invoke-virtual {v4}, Lcom/narvii/chat/rtc/RtcService;->onlyMePresenterInMainChannel()Z

    .line 218
    move-result v4

    .line 219
    .line 220
    if-eqz v4, :cond_14

    .line 221
    move v4, v9

    .line 222
    goto :goto_10

    .line 223
    :cond_14
    const/4 v4, 0x0

    .line 224
    .line 225
    :goto_10
    if-nez v6, :cond_15

    .line 226
    .line 227
    const/16 p2, 0x0

    .line 228
    goto :goto_11

    .line 229
    .line 230
    .line 231
    :cond_15
    invoke-virtual {v6}, Lcom/narvii/video/ui/UserStatusData;->getCurVolumeLevel()I

    .line 232
    move-result v16

    .line 233
    .line 234
    move/from16 p2, v16

    .line 235
    .line 236
    .line 237
    :goto_11
    const v9, 0x7f0a0052

    .line 238
    .line 239
    .line 240
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 241
    move-result-object v9

    .line 242
    .line 243
    check-cast v9, Lcom/narvii/chat/video/layout/VideoAccountInfoLayout;

    .line 244
    .line 245
    iget-boolean v12, v0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->isFloatingMode:Z

    .line 246
    .line 247
    move-object/from16 v23, v7

    .line 248
    .line 249
    if-nez v12, :cond_17

    .line 250
    .line 251
    if-eqz v13, :cond_17

    .line 252
    .line 253
    if-nez v18, :cond_17

    .line 254
    .line 255
    if-nez v11, :cond_17

    .line 256
    .line 257
    if-nez v15, :cond_17

    .line 258
    .line 259
    if-nez v14, :cond_16

    .line 260
    .line 261
    if-eqz v10, :cond_17

    .line 262
    .line 263
    :cond_16
    move/from16 v24, v4

    .line 264
    const/4 v4, 0x0

    .line 265
    goto :goto_14

    .line 266
    .line 267
    :cond_17
    if-nez v12, :cond_18

    .line 268
    .line 269
    if-nez v11, :cond_19

    .line 270
    .line 271
    if-eqz v18, :cond_18

    .line 272
    .line 273
    iget v7, v0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->focusedId:I

    .line 274
    .line 275
    move/from16 v24, v4

    .line 276
    .line 277
    iget v4, v2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    .line 278
    .line 279
    if-ne v7, v4, :cond_1b

    .line 280
    goto :goto_12

    .line 281
    .line 282
    :cond_18
    move/from16 v24, v4

    .line 283
    goto :goto_13

    .line 284
    .line 285
    :cond_19
    move/from16 v24, v4

    .line 286
    .line 287
    :goto_12
    if-nez v14, :cond_1a

    .line 288
    .line 289
    if-eqz v10, :cond_1b

    .line 290
    :cond_1a
    const/4 v4, 0x1

    .line 291
    goto :goto_14

    .line 292
    .line 293
    :cond_1b
    :goto_13
    if-nez v12, :cond_1d

    .line 294
    .line 295
    if-nez v13, :cond_1d

    .line 296
    .line 297
    if-nez v18, :cond_1d

    .line 298
    .line 299
    if-nez v11, :cond_1d

    .line 300
    .line 301
    if-nez v15, :cond_1d

    .line 302
    .line 303
    if-nez v14, :cond_1c

    .line 304
    .line 305
    if-eqz v10, :cond_1d

    .line 306
    :cond_1c
    const/4 v4, 0x2

    .line 307
    goto :goto_14

    .line 308
    :cond_1d
    const/4 v4, -0x1

    .line 309
    .line 310
    :goto_14
    const/16 v7, 0x8

    .line 311
    const/4 v10, -0x1

    .line 312
    .line 313
    if-eq v4, v10, :cond_1e

    .line 314
    const/4 v10, 0x0

    .line 315
    goto :goto_15

    .line 316
    :cond_1e
    move v10, v7

    .line 317
    .line 318
    .line 319
    :goto_15
    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v9, v4}, Lcom/narvii/chat/video/layout/VideoAccountInfoLayout;->setLayoutPosition(I)V

    .line 323
    .line 324
    xor-int/lit8 v13, v22, 0x1

    .line 325
    .line 326
    if-eqz v14, :cond_1f

    .line 327
    .line 328
    if-nez v15, :cond_1f

    .line 329
    .line 330
    if-nez v20, :cond_1f

    .line 331
    .line 332
    iget-boolean v4, v0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->isFloatingMode:Z

    .line 333
    .line 334
    if-nez v4, :cond_1f

    .line 335
    .line 336
    if-nez v22, :cond_1f

    .line 337
    .line 338
    const/16 v16, 0x1

    .line 339
    goto :goto_16

    .line 340
    .line 341
    :cond_1f
    const/16 v16, 0x0

    .line 342
    .line 343
    :goto_16
    if-eqz v5, :cond_20

    .line 344
    .line 345
    .line 346
    invoke-virtual {v5}, Lcom/narvii/model/User;->isSubscribeMemberShip()Z

    .line 347
    move-result v4

    .line 348
    .line 349
    if-eqz v4, :cond_20

    .line 350
    .line 351
    const/16 v17, 0x1

    .line 352
    goto :goto_17

    .line 353
    .line 354
    :cond_20
    const/16 v17, 0x0

    .line 355
    :goto_17
    move-object v11, v9

    .line 356
    .line 357
    move/from16 v12, v20

    .line 358
    move v9, v14

    .line 359
    move-object v14, v8

    .line 360
    move v10, v15

    .line 361
    .line 362
    move/from16 v15, p2

    .line 363
    .line 364
    .line 365
    invoke-virtual/range {v11 .. v17}, Lcom/narvii/chat/video/layout/VideoAccountInfoLayout;->setStatus(ZZLjava/lang/String;IZZ)V

    .line 366
    .line 367
    .line 368
    const v4, 0x7f0a0fea

    .line 369
    .line 370
    .line 371
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 372
    move-result-object v4

    .line 373
    .line 374
    check-cast v4, Lcom/narvii/widget/VolumeIndicator;

    .line 375
    .line 376
    move/from16 v11, p2

    .line 377
    int-to-float v12, v11

    .line 378
    .line 379
    const/high16 v13, 0x40800000    # 4.0f

    .line 380
    div-float/2addr v12, v13

    .line 381
    const/4 v13, 0x1

    .line 382
    .line 383
    .line 384
    invoke-virtual {v4, v12, v13}, Lcom/narvii/widget/VolumeIndicator;->setValue(FZ)V

    .line 385
    .line 386
    if-eqz v9, :cond_21

    .line 387
    .line 388
    if-nez v10, :cond_21

    .line 389
    .line 390
    if-nez v20, :cond_21

    .line 391
    .line 392
    if-eqz v19, :cond_21

    .line 393
    .line 394
    iget-boolean v12, v0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->isFloatingMode:Z

    .line 395
    .line 396
    if-nez v12, :cond_21

    .line 397
    const/4 v12, 0x0

    .line 398
    goto :goto_18

    .line 399
    :cond_21
    move v12, v7

    .line 400
    .line 401
    .line 402
    :goto_18
    invoke-virtual {v4, v12}, Landroid/view/View;->setVisibility(I)V

    .line 403
    .line 404
    .line 405
    const v4, 0x7f0a0826

    .line 406
    .line 407
    .line 408
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 409
    move-result-object v4

    .line 410
    .line 411
    if-eqz v10, :cond_22

    .line 412
    const/4 v12, 0x0

    .line 413
    goto :goto_19

    .line 414
    :cond_22
    move v12, v7

    .line 415
    .line 416
    .line 417
    :goto_19
    invoke-virtual {v4, v12}, Landroid/view/View;->setVisibility(I)V

    .line 418
    .line 419
    .line 420
    const v4, 0x7f0a0a08

    .line 421
    .line 422
    .line 423
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 424
    move-result-object v12

    .line 425
    .line 426
    check-cast v12, Landroid/widget/TextView;

    .line 427
    .line 428
    .line 429
    invoke-virtual {v12, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 430
    .line 431
    iget-boolean v8, v0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->isFloatingMode:Z

    .line 432
    .line 433
    if-nez v8, :cond_24

    .line 434
    .line 435
    if-eqz v5, :cond_24

    .line 436
    .line 437
    .line 438
    invoke-virtual {v5}, Lcom/narvii/model/User;->isSubscribeMemberShip()Z

    .line 439
    move-result v8

    .line 440
    .line 441
    if-eqz v8, :cond_24

    .line 442
    .line 443
    iget-object v8, v0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 444
    .line 445
    .line 446
    invoke-virtual {v8}, Lcom/narvii/modulization/CommunityConfigHelper;->isPremiumFeatureEnabled()Z

    .line 447
    move-result v8

    .line 448
    .line 449
    if-eqz v8, :cond_24

    .line 450
    .line 451
    .line 452
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 453
    move-result v8

    .line 454
    .line 455
    const/high16 v13, 0x41000000    # 8.0f

    .line 456
    .line 457
    .line 458
    const v14, 0x7f0803bd

    .line 459
    .line 460
    if-eqz v8, :cond_23

    .line 461
    .line 462
    .line 463
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 464
    move-result-object v8

    .line 465
    .line 466
    .line 467
    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 468
    move-result-object v8

    .line 469
    const/4 v15, 0x0

    .line 470
    .line 471
    .line 472
    invoke-virtual {v12, v15, v15, v8, v15}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 473
    .line 474
    .line 475
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 476
    move-result-object v8

    .line 477
    .line 478
    .line 479
    invoke-static {v8, v13}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 480
    move-result v8

    .line 481
    float-to-int v8, v8

    .line 482
    .line 483
    .line 484
    invoke-virtual {v12, v8}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 485
    goto :goto_1a

    .line 486
    :cond_23
    const/4 v15, 0x0

    .line 487
    .line 488
    .line 489
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 490
    move-result-object v8

    .line 491
    .line 492
    .line 493
    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 494
    move-result-object v8

    .line 495
    .line 496
    .line 497
    invoke-virtual {v12, v8, v15, v15, v15}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 498
    .line 499
    .line 500
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 501
    move-result-object v8

    .line 502
    .line 503
    .line 504
    invoke-static {v8, v13}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 505
    move-result v8

    .line 506
    float-to-int v8, v8

    .line 507
    .line 508
    .line 509
    invoke-virtual {v12, v8}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 510
    goto :goto_1a

    .line 511
    :cond_24
    const/4 v15, 0x0

    .line 512
    const/4 v8, 0x0

    .line 513
    .line 514
    .line 515
    invoke-virtual {v12, v8}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 516
    .line 517
    .line 518
    invoke-virtual {v12, v15, v15, v15, v15}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 519
    .line 520
    .line 521
    :goto_1a
    const v8, 0x7f0a0f87

    .line 522
    .line 523
    .line 524
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 525
    move-result-object v8

    .line 526
    .line 527
    if-nez v10, :cond_25

    .line 528
    .line 529
    if-eqz v19, :cond_25

    .line 530
    .line 531
    if-eqz v20, :cond_25

    .line 532
    const/4 v12, 0x0

    .line 533
    goto :goto_1b

    .line 534
    :cond_25
    move v12, v7

    .line 535
    .line 536
    .line 537
    :goto_1b
    invoke-virtual {v8, v12}, Landroid/view/View;->setVisibility(I)V

    .line 538
    .line 539
    .line 540
    const v8, 0x7f0a01a5

    .line 541
    .line 542
    .line 543
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 544
    move-result-object v8

    .line 545
    .line 546
    if-eqz v21, :cond_26

    .line 547
    const/4 v12, 0x0

    .line 548
    goto :goto_1c

    .line 549
    :cond_26
    move v12, v7

    .line 550
    .line 551
    .line 552
    :goto_1c
    invoke-virtual {v8, v12}, Landroid/view/View;->setVisibility(I)V

    .line 553
    .line 554
    .line 555
    const v8, 0x7f0a0f5b

    .line 556
    .line 557
    .line 558
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 559
    move-result-object v8

    .line 560
    .line 561
    check-cast v8, Lcom/narvii/chat/video/view/UserSpeakingView;

    .line 562
    .line 563
    iget-boolean v12, v0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->isFloatingMode:Z

    .line 564
    .line 565
    if-nez v12, :cond_27

    .line 566
    .line 567
    if-nez v20, :cond_27

    .line 568
    .line 569
    if-nez v10, :cond_27

    .line 570
    .line 571
    if-eqz v19, :cond_27

    .line 572
    goto :goto_1d

    .line 573
    :cond_27
    const/4 v11, 0x0

    .line 574
    .line 575
    .line 576
    :goto_1d
    invoke-virtual {v8, v11}, Lcom/narvii/chat/video/view/UserSpeakingView;->setVolumeLevel(I)V

    .line 577
    .line 578
    .line 579
    const v8, 0x7f0a0821

    .line 580
    .line 581
    .line 582
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 583
    move-result-object v8

    .line 584
    .line 585
    check-cast v8, Landroid/widget/ImageView;

    .line 586
    .line 587
    .line 588
    invoke-direct {v0, v8, v9, v10}, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->updateLoadingView(Landroid/widget/ImageView;ZZ)V

    .line 589
    .line 590
    .line 591
    const v8, 0x7f0a0d96

    .line 592
    .line 593
    .line 594
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 595
    move-result-object v8

    .line 596
    .line 597
    check-cast v8, Lcom/narvii/widget/BlurImageView;

    .line 598
    .line 599
    .line 600
    const v11, 0x7f0a0d91

    .line 601
    .line 602
    .line 603
    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 604
    move-result-object v11

    .line 605
    .line 606
    check-cast v11, Lcom/narvii/widget/NVImageView;

    .line 607
    .line 608
    if-nez v5, :cond_28

    .line 609
    .line 610
    move-object/from16 v5, v23

    .line 611
    goto :goto_1e

    .line 612
    .line 613
    .line 614
    :cond_28
    invoke-virtual {v5}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    .line 615
    move-result-object v5

    .line 616
    .line 617
    .line 618
    :goto_1e
    invoke-virtual {v11, v5}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 619
    .line 620
    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    .line 621
    .line 622
    .line 623
    const v12, -0xb3b3b4

    .line 624
    .line 625
    .line 626
    invoke-direct {v5, v12}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 627
    .line 628
    .line 629
    invoke-virtual {v8, v5}, Lcom/narvii/widget/BlurImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 630
    .line 631
    new-instance v5, Lcom/narvii/chat/video/layout/VideoParticipantLayout$3;

    .line 632
    .line 633
    .line 634
    invoke-direct {v5, v0, v8}, Lcom/narvii/chat/video/layout/VideoParticipantLayout$3;-><init>(Lcom/narvii/chat/video/layout/VideoParticipantLayout;Lcom/narvii/widget/BlurImageView;)V

    .line 635
    .line 636
    .line 637
    invoke-virtual {v11, v5}, Lcom/narvii/widget/NVImageView;->setOnImageChangedListener(Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    .line 638
    .line 639
    .line 640
    const v5, 0x7f0a0d97

    .line 641
    .line 642
    .line 643
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 644
    move-result-object v5

    .line 645
    .line 646
    if-eqz v22, :cond_29

    .line 647
    const/4 v8, 0x0

    .line 648
    goto :goto_1f

    .line 649
    :cond_29
    move v8, v7

    .line 650
    .line 651
    .line 652
    :goto_1f
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 653
    .line 654
    .line 655
    const v5, 0x7f0a0e0e

    .line 656
    .line 657
    .line 658
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 659
    move-result-object v5

    .line 660
    .line 661
    check-cast v5, Landroid/widget/FrameLayout;

    .line 662
    .line 663
    if-eqz v6, :cond_2a

    .line 664
    .line 665
    iget-object v8, v6, Lcom/narvii/video/ui/UserStatusData;->mView:Landroid/view/SurfaceView;

    .line 666
    .line 667
    if-eqz v8, :cond_2a

    .line 668
    .line 669
    iget v8, v0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->focusedId:I

    .line 670
    .line 671
    iget v11, v2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    .line 672
    .line 673
    if-eq v8, v11, :cond_2a

    .line 674
    .line 675
    .line 676
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    .line 677
    move-result v8

    .line 678
    .line 679
    if-eqz v8, :cond_2b

    .line 680
    .line 681
    .line 682
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    .line 683
    move-result v8

    .line 684
    const/4 v11, 0x1

    .line 685
    .line 686
    if-ne v8, v11, :cond_2a

    .line 687
    const/4 v13, 0x0

    .line 688
    .line 689
    .line 690
    invoke-virtual {v5, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 691
    move-result-object v8

    .line 692
    .line 693
    iget-object v11, v6, Lcom/narvii/video/ui/UserStatusData;->mView:Landroid/view/SurfaceView;

    .line 694
    .line 695
    if-eq v8, v11, :cond_2d

    .line 696
    goto :goto_20

    .line 697
    :cond_2a
    const/4 v13, 0x0

    .line 698
    goto :goto_21

    .line 699
    :cond_2b
    const/4 v13, 0x0

    .line 700
    .line 701
    .line 702
    :goto_20
    invoke-virtual {v5}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 703
    .line 704
    iget-object v8, v6, Lcom/narvii/video/ui/UserStatusData;->mView:Landroid/view/SurfaceView;

    .line 705
    .line 706
    .line 707
    invoke-virtual {v0, v8}, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->stripView(Landroid/view/View;)V

    .line 708
    .line 709
    iget-object v8, v0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->focusedView:Landroid/view/View;

    .line 710
    .line 711
    if-eqz v8, :cond_2c

    .line 712
    .line 713
    iget-object v8, v6, Lcom/narvii/video/ui/UserStatusData;->mView:Landroid/view/SurfaceView;

    .line 714
    const/4 v11, 0x1

    .line 715
    .line 716
    .line 717
    invoke-virtual {v8, v11}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    .line 718
    .line 719
    :cond_2c
    iget-object v8, v6, Lcom/narvii/video/ui/UserStatusData;->mView:Landroid/view/SurfaceView;

    .line 720
    .line 721
    .line 722
    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 723
    .line 724
    :cond_2d
    :goto_21
    if-eqz v6, :cond_2f

    .line 725
    .line 726
    iget-object v5, v6, Lcom/narvii/video/ui/UserStatusData;->mView:Landroid/view/SurfaceView;

    .line 727
    .line 728
    if-eqz v5, :cond_2f

    .line 729
    .line 730
    iget v8, v0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->focusedId:I

    .line 731
    .line 732
    iget v11, v2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    .line 733
    .line 734
    if-eq v8, v11, :cond_2e

    .line 735
    const/4 v8, 0x1

    .line 736
    goto :goto_22

    .line 737
    :cond_2e
    move v8, v13

    .line 738
    .line 739
    .line 740
    :goto_22
    invoke-virtual {v5, v8}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    .line 741
    .line 742
    :cond_2f
    if-eqz v10, :cond_30

    .line 743
    .line 744
    .line 745
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 746
    move-result-object v5

    .line 747
    .line 748
    .line 749
    const v8, 0x7f120bb4

    .line 750
    .line 751
    .line 752
    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 753
    move-result-object v5

    .line 754
    goto :goto_23

    .line 755
    .line 756
    :cond_30
    iget v5, v2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->status:I

    .line 757
    .line 758
    if-nez v5, :cond_31

    .line 759
    .line 760
    if-eqz v3, :cond_31

    .line 761
    .line 762
    .line 763
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 764
    move-result-object v5

    .line 765
    .line 766
    .line 767
    const v8, 0x7f12102c

    .line 768
    .line 769
    .line 770
    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 771
    move-result-object v5

    .line 772
    goto :goto_23

    .line 773
    .line 774
    :cond_31
    if-eqz v21, :cond_32

    .line 775
    .line 776
    .line 777
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 778
    move-result-object v5

    .line 779
    .line 780
    .line 781
    const v8, 0x7f120198

    .line 782
    .line 783
    .line 784
    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 785
    move-result-object v5

    .line 786
    goto :goto_23

    .line 787
    :cond_32
    move-object v5, v15

    .line 788
    .line 789
    .line 790
    :goto_23
    const v8, 0x7f0a0d9a

    .line 791
    .line 792
    .line 793
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 794
    move-result-object v8

    .line 795
    .line 796
    check-cast v8, Landroid/widget/TextView;

    .line 797
    .line 798
    .line 799
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 800
    .line 801
    iget-boolean v11, v0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->isFloatingMode:Z

    .line 802
    .line 803
    if-nez v11, :cond_33

    .line 804
    .line 805
    .line 806
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 807
    move-result v5

    .line 808
    .line 809
    if-nez v5, :cond_33

    .line 810
    move v5, v13

    .line 811
    goto :goto_24

    .line 812
    :cond_33
    move v5, v7

    .line 813
    .line 814
    .line 815
    :goto_24
    invoke-virtual {v8, v5}, Landroid/view/View;->setVisibility(I)V

    .line 816
    .line 817
    .line 818
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 819
    move-result-object v4

    .line 820
    .line 821
    if-nez v10, :cond_34

    .line 822
    .line 823
    if-nez v9, :cond_35

    .line 824
    .line 825
    :cond_34
    if-nez v18, :cond_35

    .line 826
    .line 827
    iget-boolean v5, v0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->isFloatingMode:Z

    .line 828
    .line 829
    if-nez v5, :cond_35

    .line 830
    move v8, v13

    .line 831
    goto :goto_25

    .line 832
    :cond_35
    const/4 v8, 0x4

    .line 833
    .line 834
    .line 835
    :goto_25
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 836
    .line 837
    .line 838
    const v4, 0x7f0a01a3

    .line 839
    .line 840
    .line 841
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 842
    move-result-object v4

    .line 843
    .line 844
    iget-boolean v5, v0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->isFloatingMode:Z

    .line 845
    .line 846
    if-nez v5, :cond_36

    .line 847
    .line 848
    if-nez v22, :cond_36

    .line 849
    .line 850
    if-eqz v21, :cond_36

    .line 851
    move v8, v13

    .line 852
    goto :goto_26

    .line 853
    :cond_36
    move v8, v7

    .line 854
    .line 855
    .line 856
    :goto_26
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 857
    .line 858
    .line 859
    const v4, 0x7f0a054a

    .line 860
    .line 861
    .line 862
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 863
    move-result-object v4

    .line 864
    .line 865
    if-eqz v3, :cond_38

    .line 866
    .line 867
    iget-boolean v5, v0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->hideFaceDetectView:Z

    .line 868
    .line 869
    if-nez v5, :cond_38

    .line 870
    .line 871
    if-nez v19, :cond_38

    .line 872
    .line 873
    if-eqz v6, :cond_38

    .line 874
    .line 875
    .line 876
    invoke-virtual {v6}, Lcom/narvii/video/ui/UserStatusData;->shouldShowFaceDetectHint()Z

    .line 877
    move-result v5

    .line 878
    .line 879
    if-eqz v5, :cond_38

    .line 880
    .line 881
    iget v5, v6, Lcom/narvii/video/ui/UserStatusData;->proItemStaus:I

    .line 882
    const/4 v8, 0x2

    .line 883
    .line 884
    if-ne v5, v8, :cond_38

    .line 885
    .line 886
    iget-boolean v5, v0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->isFloatingMode:Z

    .line 887
    .line 888
    if-eqz v5, :cond_37

    .line 889
    .line 890
    iget v5, v0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->focusedId:I

    .line 891
    .line 892
    iget v2, v2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    .line 893
    .line 894
    if-ne v5, v2, :cond_38

    .line 895
    :cond_37
    move v8, v13

    .line 896
    goto :goto_27

    .line 897
    :cond_38
    move v8, v7

    .line 898
    .line 899
    .line 900
    :goto_27
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 901
    .line 902
    .line 903
    const v2, 0x7f0a081e

    .line 904
    .line 905
    .line 906
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 907
    move-result-object v1

    .line 908
    .line 909
    if-nez v24, :cond_39

    .line 910
    .line 911
    if-eqz v9, :cond_3b

    .line 912
    .line 913
    :cond_39
    if-nez v22, :cond_3b

    .line 914
    .line 915
    if-eqz v3, :cond_3b

    .line 916
    .line 917
    if-nez v19, :cond_3b

    .line 918
    .line 919
    if-eqz v6, :cond_3b

    .line 920
    .line 921
    iget v2, v6, Lcom/narvii/video/ui/UserStatusData;->proItemStaus:I

    .line 922
    const/4 v3, 0x1

    .line 923
    .line 924
    if-ne v2, v3, :cond_3b

    .line 925
    .line 926
    iget-boolean v2, v0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->isFloatingMode:Z

    .line 927
    .line 928
    if-eqz v2, :cond_3a

    .line 929
    .line 930
    iget-object v2, v0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->focusedView:Landroid/view/View;

    .line 931
    .line 932
    if-eqz v2, :cond_3b

    .line 933
    :cond_3a
    move v10, v13

    .line 934
    goto :goto_28

    .line 935
    :cond_3b
    move v10, v7

    .line 936
    .line 937
    .line 938
    :goto_28
    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 939
    return-void
.end method

.method protected updateViews()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/chat/video/layout/RtcBaseLayout;->updateViews()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    const v2, 0x7f0a0f21

    .line 12
    .line 13
    if-ge v0, v1, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    if-nez v2, :cond_0

    .line 24
    goto :goto_1

    .line 25
    .line 26
    :cond_0
    iget-object v3, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->userList:Landroid/util/SparseArray;

    .line 27
    .line 28
    check-cast v2, Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 32
    move-result v2

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    check-cast v2, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v1, v0, v2}, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->updateChildView(Landroid/view/View;ILcom/narvii/chat/rtc/ChannelUserWrapper;)V

    .line 42
    .line 43
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->focusedView:Landroid/view/View;

    .line 47
    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    instance-of v1, v0, Ljava/lang/Integer;

    .line 55
    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    iget-object v1, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->userList:Landroid/util/SparseArray;

    .line 59
    .line 60
    check-cast v0, Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 64
    move-result v2

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 68
    move-result-object v1

    .line 69
    .line 70
    if-eqz v1, :cond_2

    .line 71
    .line 72
    iget-object v1, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->userList:Landroid/util/SparseArray;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 76
    move-result v0

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 80
    move-result-object v0

    .line 81
    .line 82
    check-cast v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 83
    .line 84
    iget-object v1, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->focusedView:Landroid/view/View;

    .line 85
    .line 86
    iget v2, p0, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->oldFocusedPos:I

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v1, v2, v0}, Lcom/narvii/chat/video/layout/VideoParticipantLayout;->updateChildView(Landroid/view/View;ILcom/narvii/chat/rtc/ChannelUserWrapper;)V

    .line 90
    :cond_2
    return-void
.end method
