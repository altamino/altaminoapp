.class public Lcom/narvii/chat/screenroom/ReputationEarningComposite;
.super Ljava/lang/Object;
.source "ReputationEarningComposite.java"


# static fields
.field private static final API_ERR_CHAT_VVCHAT_NO_MORE_REPUTATIONS:I = 0x65b

.field private static final BASE_ANIMATION_DURATION:I = 0x12c

.field private static final BUBBLE_JUMP_INTERVAL:I = 0xce4

.field private static final REPUTATION_REFRESH_INTERVAL:I = 0x3a98


# instance fields
.field private apiService:Lcom/narvii/util/http/ApiService;

.field private bubble:Lcom/narvii/widget/ThumbImageView;

.field private bubbleAlpha:Landroid/animation/ObjectAnimator;

.field private bubbleJumpTask:Ljava/lang/Runnable;

.field private bubbleScaleX:Landroid/animation/ObjectAnimator;

.field private bubbleScaleY:Landroid/animation/ObjectAnimator;

.field private bubbleTransDown:Landroid/animation/ObjectAnimator;

.field private bubbleTransUp:Landroid/animation/ObjectAnimator;

.field private chatThread:Lcom/narvii/model/ChatThread;

.field private context:Lcom/narvii/app/NVContext;

.field private curAvailableRep:F

.field private curAvailableRepLevel:I

.field private curUserTotalRep:F

.field private dropAlpha:Landroid/animation/ObjectAnimator;

.field private explosionContentAnimator:Landroid/animation/ValueAnimator;

.field private explosionDrops:Landroid/widget/ImageView;

.field private explosionText:Landroid/widget/TextView;

.field private explosionTextAlpha:Landroid/animation/ObjectAnimator;

.field private explosionTextTransY:Landroid/animation/ObjectAnimator;

.field private getRepListener:Lcom/narvii/util/http/ApiResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/http/ApiResponseListener<",
            "Lcom/narvii/model/api/ReputationGetResponse;",
            ">;"
        }
    .end annotation
.end field

.field private getRepRequest:Lcom/narvii/util/http/ApiRequest;

.field private getRepTask:Ljava/lang/Runnable;

.field private handler:Landroid/os/Handler;

.field private isDestroyed:Z

.field private labelContentAnimator:Landroid/animation/ValueAnimator;

.field private labelScaleX:Landroid/animation/ObjectAnimator;

.field private labelScaleY:Landroid/animation/ObjectAnimator;

.field private maxRepPerRound:F

.field private newRepAlert:Landroid/widget/TextView;

.field private newRepAlertAlpha:Landroid/animation/ObjectAnimator;

.field private newRepAlertTransX:Landroid/animation/ObjectAnimator;

.field private postRepRequest:Lcom/narvii/util/http/ApiRequest;

.field private prevRep:F

.field private repTextBubble:Landroid/widget/TextView;

.field private repThresholdReached:Z

.field private resetBubble:Ljava/lang/Runnable;

.field private root:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/narvii/app/NVContext;Lcom/narvii/model/ChatThread;)V
    .locals 2

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->curAvailableRepLevel:I

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->curAvailableRep:F

    .line 57
    iput v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->prevRep:F

    .line 63
    new-instance v0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$1;

    const-class v1, Lcom/narvii/model/api/ReputationGetResponse;

    invoke-direct {v0, p0, v1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite$1;-><init>(Lcom/narvii/chat/screenroom/ReputationEarningComposite;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->getRepListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 107
    new-instance v0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$2;

    invoke-direct {v0, p0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite$2;-><init>(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)V

    iput-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->getRepTask:Ljava/lang/Runnable;

    .line 117
    new-instance v0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$3;

    invoke-direct {v0, p0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite$3;-><init>(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)V

    iput-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubbleJumpTask:Ljava/lang/Runnable;

    .line 127
    new-instance v0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$4;

    invoke-direct {v0, p0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite$4;-><init>(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)V

    iput-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->resetBubble:Ljava/lang/Runnable;

    .line 172
    iput-object p2, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->context:Lcom/narvii/app/NVContext;

    .line 173
    iput-object p3, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->chatThread:Lcom/narvii/model/ChatThread;

    .line 174
    iput-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->root:Landroid/view/View;

    .line 175
    invoke-direct {p0, p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->initComponent(Landroid/view/View;)V

    .line 176
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->initAnimators()V

    .line 177
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->initNetworking()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->isDestroyed:Z

    return p0
.end method

.method static synthetic access$100(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Lcom/narvii/widget/ThumbImageView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubble:Lcom/narvii/widget/ThumbImageView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)I
    .locals 0

    .line 37
    iget p0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->curAvailableRepLevel:I

    return p0
.end method

.method static synthetic access$1002(Lcom/narvii/chat/screenroom/ReputationEarningComposite;I)I
    .locals 0

    .line 37
    iput p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->curAvailableRepLevel:I

    return p1
.end method

.method static synthetic access$1100(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/os/Handler;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Ljava/lang/Runnable;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubbleJumpTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->repThresholdReached:Z

    return p0
.end method

.method static synthetic access$1302(Lcom/narvii/chat/screenroom/ReputationEarningComposite;Z)Z
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->repThresholdReached:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Ljava/lang/Runnable;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->getRepTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/view/View;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->root:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Lcom/narvii/util/http/ApiRequest;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->getRepRequest:Lcom/narvii/util/http/ApiRequest;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Lcom/narvii/util/http/ApiResponseListener;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->getRepListener:Lcom/narvii/util/http/ApiResponseListener;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Lcom/narvii/util/http/ApiService;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->apiService:Lcom/narvii/util/http/ApiService;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubbleTransUp:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/widget/TextView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->repTextBubble:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubbleTransDown:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/narvii/chat/screenroom/ReputationEarningComposite;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->updateBubbleStyle(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubbleScaleX:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubbleScaleY:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->labelScaleX:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->labelScaleY:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->context:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Lcom/narvii/util/http/ApiRequest;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->postRepRequest:Lcom/narvii/util/http/ApiRequest;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubbleAlpha:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->dropAlpha:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)F
    .locals 0

    .line 37
    iget p0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->curUserTotalRep:F

    return p0
.end method

.method static synthetic access$3000(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/widget/TextView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->explosionText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$302(Lcom/narvii/chat/screenroom/ReputationEarningComposite;F)F
    .locals 0

    .line 37
    iput p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->curUserTotalRep:F

    return p1
.end method

.method static synthetic access$3100(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->explosionTextTransY:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->explosionTextAlpha:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->explosionContentAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->updateRepBubble()V

    return-void
.end method

.method static synthetic access$3500(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Ljava/lang/Runnable;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->resetBubble:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$402(Lcom/narvii/chat/screenroom/ReputationEarningComposite;F)F
    .locals 0

    .line 37
    iput p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->maxRepPerRound:F

    return p1
.end method

.method static synthetic access$500(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)F
    .locals 0

    .line 37
    iget p0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->curAvailableRep:F

    return p0
.end method

.method static synthetic access$502(Lcom/narvii/chat/screenroom/ReputationEarningComposite;F)F
    .locals 0

    .line 37
    iput p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->curAvailableRep:F

    return p1
.end method

.method static synthetic access$600(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/widget/TextView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->newRepAlert:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->newRepAlertTransX:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static synthetic access$800(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->newRepAlertAlpha:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static synthetic access$902(Lcom/narvii/chat/screenroom/ReputationEarningComposite;F)F
    .locals 0

    .line 37
    iput p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->prevRep:F

    return p1
.end method

.method private cancelAnimators()V
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubbleTransUp:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 395
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubbleTransDown:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 398
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 400
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubbleScaleX:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    .line 401
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 403
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubbleScaleY:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_3

    .line 404
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 406
    :cond_3
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubbleAlpha:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_4

    .line 407
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 409
    :cond_4
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->dropAlpha:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_5

    .line 410
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 412
    :cond_5
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->labelScaleX:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_6

    .line 413
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 415
    :cond_6
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->labelScaleY:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_7

    .line 416
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 418
    :cond_7
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->explosionTextAlpha:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_8

    .line 419
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 421
    :cond_8
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->explosionTextTransY:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_9

    .line 422
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 424
    :cond_9
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->newRepAlertAlpha:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_a

    .line 425
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 427
    :cond_a
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->newRepAlertTransX:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_b

    .line 428
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 430
    :cond_b
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->labelContentAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_c

    .line 431
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 433
    :cond_c
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->explosionContentAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_d

    .line 434
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_d
    return-void
.end method

.method private checkRepLevel(F)I
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    cmpl-float v2, p1, v1

    if-nez v2, :cond_0

    return v0

    .line 453
    :cond_0
    iget v2, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->maxRepPerRound:F

    const/4 v3, 0x5

    cmpl-float v4, p1, v2

    if-nez v4, :cond_1

    return v3

    :cond_1
    const v4, 0x3e4ccccd    # 0.2f

    mul-float v4, v4, v2

    const v5, 0x3ecccccd    # 0.4f

    mul-float v5, v5, v2

    const v6, 0x3f19999a    # 0.6f

    mul-float v6, v6, v2

    const v7, 0x3f4ccccd    # 0.8f

    mul-float v2, v2, v7

    cmpl-float v1, p1, v1

    if-lez v1, :cond_2

    cmpg-float v1, p1, v4

    if-gtz v1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    cmpl-float v1, p1, v4

    if-lez v1, :cond_3

    cmpg-float v1, p1, v5

    if-gtz v1, :cond_3

    const/4 p1, 0x2

    return p1

    :cond_3
    cmpl-float v1, p1, v5

    if-lez v1, :cond_4

    cmpg-float v1, p1, v6

    if-gtz v1, :cond_4

    const/4 p1, 0x3

    return p1

    :cond_4
    cmpl-float v1, p1, v6

    if-lez v1, :cond_5

    cmpg-float v1, p1, v2

    if-gtz v1, :cond_5

    const/4 p1, 0x4

    return p1

    :cond_5
    cmpl-float p1, p1, v2

    if-lez p1, :cond_6

    return v3

    :cond_6
    return v0
.end method

.method private initAnimators()V
    .locals 8

    .line 255
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->root:Landroid/view/View;

    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubbleTransUp:Landroid/animation/ObjectAnimator;

    .line 256
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->root:Landroid/view/View;

    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v5, v2, [F

    fill-array-data v5, :array_1

    invoke-static {v0, v1, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubbleTransDown:Landroid/animation/ObjectAnimator;

    .line 257
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubbleTransDown:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 258
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubbleTransDown:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v1}, Landroid/view/animation/BounceInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 259
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubble:Lcom/narvii/widget/ThumbImageView;

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v5, v2, [F

    fill-array-data v5, :array_2

    invoke-static {v0, v1, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubbleScaleX:Landroid/animation/ObjectAnimator;

    .line 260
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubbleScaleX:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const/high16 v5, 0x40400000    # 3.0f

    invoke-direct {v1, v5}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 261
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubble:Lcom/narvii/widget/ThumbImageView;

    sget-object v1, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v2, [F

    fill-array-data v6, :array_3

    invoke-static {v0, v1, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubbleScaleY:Landroid/animation/ObjectAnimator;

    .line 262
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubbleScaleY:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1, v5}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 263
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubble:Lcom/narvii/widget/ThumbImageView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v2, [F

    fill-array-data v6, :array_4

    invoke-static {v0, v1, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubbleAlpha:Landroid/animation/ObjectAnimator;

    .line 264
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->repTextBubble:Landroid/widget/TextView;

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v2, [F

    fill-array-data v6, :array_5

    invoke-static {v0, v1, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->labelScaleX:Landroid/animation/ObjectAnimator;

    .line 265
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->labelScaleX:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1, v5}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 266
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->repTextBubble:Landroid/widget/TextView;

    sget-object v1, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v2, [F

    fill-array-data v6, :array_6

    invoke-static {v0, v1, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->labelScaleY:Landroid/animation/ObjectAnimator;

    .line 267
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->labelScaleY:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1, v5}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 268
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->explosionText:Landroid/widget/TextView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v2, [F

    fill-array-data v5, :array_7

    invoke-static {v0, v1, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->explosionTextAlpha:Landroid/animation/ObjectAnimator;

    .line 269
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->explosionTextAlpha:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/narvii/chat/screenroom/ReputationEarningComposite$6;

    invoke-direct {v1, p0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite$6;-><init>(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 291
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->explosionText:Landroid/widget/TextView;

    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v5, v2, [F

    fill-array-data v5, :array_8

    invoke-static {v0, v1, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->explosionTextTransY:Landroid/animation/ObjectAnimator;

    .line 292
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->explosionDrops:Landroid/widget/ImageView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v5, 0x4

    new-array v5, v5, [F

    fill-array-data v5, :array_9

    invoke-static {v0, v1, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v5, 0x384

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->dropAlpha:Landroid/animation/ObjectAnimator;

    .line 293
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->dropAlpha:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/narvii/chat/screenroom/ReputationEarningComposite$7;

    invoke-direct {v1, p0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite$7;-><init>(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 319
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->newRepAlert:Landroid/widget/TextView;

    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v5, v2, [F

    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v6

    if-eqz v6, :cond_0

    const/high16 v6, -0x3c380000    # -400.0f

    goto :goto_0

    :cond_0
    const/high16 v6, 0x43c80000    # 400.0f

    :goto_0
    const/4 v7, 0x0

    aput v6, v5, v7

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput v7, v5, v6

    invoke-static {v0, v1, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 320
    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->newRepAlertTransX:Landroid/animation/ObjectAnimator;

    .line 321
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->newRepAlert:Landroid/widget/TextView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v2, [F

    fill-array-data v5, :array_a

    invoke-static {v0, v1, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 322
    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->newRepAlertAlpha:Landroid/animation/ObjectAnimator;

    .line 323
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->newRepAlertAlpha:Landroid/animation/ObjectAnimator;

    const-wide/16 v3, 0x44c

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 324
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->newRepAlertAlpha:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/narvii/chat/screenroom/ReputationEarningComposite$8;

    invoke-direct {v1, p0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite$8;-><init>(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v0, v2, [F

    .line 347
    fill-array-data v0, :array_b

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->labelContentAnimator:Landroid/animation/ValueAnimator;

    .line 348
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->labelContentAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/narvii/chat/screenroom/ReputationEarningComposite$9;

    invoke-direct {v1, p0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite$9;-><init>(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v2, [F

    .line 356
    fill-array-data v0, :array_c

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->explosionContentAnimator:Landroid/animation/ValueAnimator;

    .line 357
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->explosionContentAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 358
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->explosionContentAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/narvii/chat/screenroom/ReputationEarningComposite$10;

    invoke-direct {v1, p0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite$10;-><init>(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 365
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->explosionContentAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/narvii/chat/screenroom/ReputationEarningComposite$11;

    invoke-direct {v1, p0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite$11;-><init>(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        -0x3d6a0000    # -75.0f
    .end array-data

    :array_1
    .array-data 4
        -0x3d6a0000    # -75.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
    .end array-data

    :array_6
    .array-data 4
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
    .end array-data

    :array_7
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_8
    .array-data 4
        0x41a00000    # 20.0f
        -0x3e600000    # -20.0f
    .end array-data

    :array_9
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_a
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_b
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_c
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private initComponent(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f09095d

    .line 200
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/ThumbImageView;

    iput-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubble:Lcom/narvii/widget/ThumbImageView;

    const v0, 0x7f090963

    .line 201
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->repTextBubble:Landroid/widget/TextView;

    const v0, 0x7f0903b0

    .line 202
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->explosionDrops:Landroid/widget/ImageView;

    const v0, 0x7f090956

    .line 203
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->explosionText:Landroid/widget/TextView;

    const v0, 0x7f090955

    .line 204
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->newRepAlert:Landroid/widget/TextView;

    .line 205
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->newRepAlert:Landroid/widget/TextView;

    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, -0x3c380000    # -400.0f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x43c80000    # 400.0f

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 206
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubble:Lcom/narvii/widget/ThumbImageView;

    new-instance v0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;

    invoke-direct {v0, p0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;-><init>(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initNetworking()V
    .locals 4

    .line 192
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->context:Lcom/narvii/app/NVContext;

    const-string v1, "api"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    iput-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->apiService:Lcom/narvii/util/http/ApiService;

    .line 193
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->https()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/chat/thread/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->chatThread:Lcom/narvii/model/ChatThread;

    iget-object v3, v3, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/avchat-reputation"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->getRepRequest:Lcom/narvii/util/http/ApiRequest;

    .line 194
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->https()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->chatThread:Lcom/narvii/model/ChatThread;

    iget-object v2, v2, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->postRepRequest:Lcom/narvii/util/http/ApiRequest;

    .line 195
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->handler:Landroid/os/Handler;

    .line 196
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->getRepTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateBubbleStyle(I)V
    .locals 10

    .line 497
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->repTextBubble:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz p1, :cond_5

    if-eq p1, v1, :cond_4

    if-eq p1, v2, :cond_3

    const/4 v3, 0x3

    if-eq p1, v3, :cond_2

    const/4 v3, 0x4

    if-eq p1, v3, :cond_1

    const/4 v3, 0x5

    if-eq p1, v3, :cond_0

    goto/16 :goto_0

    .line 520
    :cond_0
    iget-object v3, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubble:Lcom/narvii/widget/ThumbImageView;

    iget-object v4, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v4}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0806dc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 521
    iget-object v3, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070252

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto/16 :goto_0

    .line 516
    :cond_1
    iget-object v3, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubble:Lcom/narvii/widget/ThumbImageView;

    iget-object v4, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v4}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0806db

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 517
    iget-object v3, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070251

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto/16 :goto_0

    .line 512
    :cond_2
    iget-object v3, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubble:Lcom/narvii/widget/ThumbImageView;

    iget-object v4, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v4}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0806da

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 513
    iget-object v3, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070250

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_0

    .line 508
    :cond_3
    iget-object v3, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubble:Lcom/narvii/widget/ThumbImageView;

    iget-object v4, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v4}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0806d9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 509
    iget-object v3, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07024f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_0

    .line 504
    :cond_4
    iget-object v3, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubble:Lcom/narvii/widget/ThumbImageView;

    iget-object v4, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v4}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0806d8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 505
    iget-object v3, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07024e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_0

    .line 500
    :cond_5
    iget-object v3, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubble:Lcom/narvii/widget/ThumbImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 501
    iget-object v3, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07024d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 526
    :goto_0
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->repTextBubble:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestLayout()V

    .line 528
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubble:Lcom/narvii/widget/ThumbImageView;

    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    const/4 v3, 0x0

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubble:Lcom/narvii/widget/ThumbImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 529
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubble:Lcom/narvii/widget/ThumbImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setPivotY(F)V

    const/4 v0, 0x0

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v5, 0x3f800000    # 1.0f

    if-nez p1, :cond_7

    .line 531
    iget-object v6, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubbleScaleX:Landroid/animation/ObjectAnimator;

    new-array v7, v2, [F

    fill-array-data v7, :array_0

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 532
    iget-object v6, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubbleScaleY:Landroid/animation/ObjectAnimator;

    new-array v7, v2, [F

    fill-array-data v7, :array_1

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 533
    iget-object v6, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubbleAlpha:Landroid/animation/ObjectAnimator;

    new-array v7, v2, [F

    fill-array-data v7, :array_2

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 534
    iget-object v6, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubbleAlpha:Landroid/animation/ObjectAnimator;

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_2

    .line 536
    :cond_7
    iget-object v6, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubbleScaleX:Landroid/animation/ObjectAnimator;

    new-array v7, v2, [F

    iget v8, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->curAvailableRepLevel:I

    int-to-float v8, v8

    mul-float v8, v8, v3

    add-float/2addr v8, v5

    aput v8, v7, v0

    int-to-float v8, p1

    mul-float v8, v8, v3

    add-float/2addr v8, v5

    aput v8, v7, v1

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 537
    iget-object v6, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubbleScaleY:Landroid/animation/ObjectAnimator;

    new-array v7, v2, [F

    iget v9, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->curAvailableRepLevel:I

    int-to-float v9, v9

    mul-float v9, v9, v3

    add-float/2addr v9, v5

    aput v9, v7, v0

    aput v8, v7, v1

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 540
    :goto_2
    iget-object v6, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->repTextBubble:Landroid/widget/TextView;

    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v7

    if-eqz v7, :cond_8

    goto :goto_3

    :cond_8
    iget-object v4, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->repTextBubble:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    :goto_3
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setPivotX(F)V

    .line 541
    iget-object v4, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->repTextBubble:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setPivotY(F)V

    if-nez p1, :cond_9

    .line 543
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->labelScaleX:Landroid/animation/ObjectAnimator;

    new-array v1, v2, [F

    fill-array-data v1, :array_3

    invoke-virtual {p1, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 544
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->labelScaleY:Landroid/animation/ObjectAnimator;

    new-array v1, v2, [F

    fill-array-data v1, :array_4

    invoke-virtual {p1, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 545
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->repTextBubble:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 546
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->repTextBubble:Landroid/widget/TextView;

    const-string v0, "0"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 548
    :cond_9
    iget-object v4, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->labelScaleX:Landroid/animation/ObjectAnimator;

    new-array v6, v2, [F

    iget v7, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->curAvailableRepLevel:I

    int-to-float v7, v7

    mul-float v7, v7, v3

    add-float/2addr v7, v5

    aput v7, v6, v0

    int-to-float p1, p1

    mul-float p1, p1, v3

    add-float/2addr p1, v5

    aput p1, v6, v1

    invoke-virtual {v4, v6}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 549
    iget-object v4, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->labelScaleY:Landroid/animation/ObjectAnimator;

    new-array v2, v2, [F

    iget v6, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->curAvailableRepLevel:I

    int-to-float v6, v6

    mul-float v6, v6, v3

    add-float/2addr v6, v5

    aput v6, v2, v0

    aput p1, v2, v1

    invoke-virtual {v4, v2}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 552
    :goto_4
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubbleScaleX:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 553
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubbleScaleY:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 554
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->labelScaleX:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 555
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->labelScaleY:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateRepBubble()V
    .locals 1

    .line 439
    iget v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->curAvailableRep:F

    invoke-direct {p0, v0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->updateRepLabel(F)V

    .line 441
    iget v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->curAvailableRep:F

    invoke-direct {p0, v0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->checkRepLevel(F)I

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    invoke-direct {p0, v0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->updateBubbleStyle(I)V

    .line 445
    :cond_0
    iput v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->curAvailableRepLevel:I

    return-void
.end method

.method private updateRepLabel(F)V
    .locals 4

    .line 482
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->repTextBubble:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_1

    const-string p1, "0"

    .line 486
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 489
    :cond_1
    iget v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->prevRep:F

    cmpl-float v1, p1, v0

    if-nez v1, :cond_2

    return-void

    .line 492
    :cond_2
    iget-object v1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->labelContentAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput p1, v2, v0

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 493
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->labelContentAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    const/4 v0, 0x1

    .line 181
    iput-boolean v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->isDestroyed:Z

    .line 182
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 183
    iget-object v1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->getRepTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 184
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubbleJumpTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 185
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->resetBubble:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 186
    iput-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->handler:Landroid/os/Handler;

    .line 188
    :cond_0
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->cancelAnimators()V

    return-void
.end method
