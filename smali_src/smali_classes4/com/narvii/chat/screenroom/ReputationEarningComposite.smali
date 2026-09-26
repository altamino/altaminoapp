.class public Lcom/narvii/chat/screenroom/ReputationEarningComposite;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->curAvailableRepLevel:I

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    iput v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->curAvailableRep:F

    .line 10
    .line 11
    iput v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->prevRep:F

    .line 12
    .line 13
    new-instance v0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$1;

    .line 14
    .line 15
    const-class v1, Lcom/narvii/model/api/ReputationGetResponse;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, p0, v1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite$1;-><init>(Lcom/narvii/chat/screenroom/ReputationEarningComposite;Ljava/lang/Class;)V

    .line 19
    .line 20
    iput-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->getRepListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 21
    .line 22
    new-instance v0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$2;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, p0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite$2;-><init>(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)V

    .line 26
    .line 27
    iput-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->getRepTask:Ljava/lang/Runnable;

    .line 28
    .line 29
    new-instance v0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$3;

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, p0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite$3;-><init>(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)V

    .line 33
    .line 34
    iput-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubbleJumpTask:Ljava/lang/Runnable;

    .line 35
    .line 36
    new-instance v0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$4;

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, p0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite$4;-><init>(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)V

    .line 40
    .line 41
    iput-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->resetBubble:Ljava/lang/Runnable;

    .line 42
    .line 43
    iput-object p2, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->context:Lcom/narvii/app/NVContext;

    .line 44
    .line 45
    iput-object p3, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->chatThread:Lcom/narvii/model/ChatThread;

    .line 46
    .line 47
    iput-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->root:Landroid/view/View;

    .line 48
    .line 49
    .line 50
    invoke-direct {p0, p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->initComponent(Landroid/view/View;)V

    .line 51
    .line 52
    .line 53
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->initAnimators()V

    .line 54
    .line 55
    .line 56
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->initNetworking()V

    .line 57
    return-void
.end method

.method static bridge synthetic A(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->newRepAlertTransX:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static bridge synthetic B(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Lcom/narvii/util/http/ApiRequest;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->postRepRequest:Lcom/narvii/util/http/ApiRequest;

    return-object p0
.end method

.method static bridge synthetic C(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->repTextBubble:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic D(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->repThresholdReached:Z

    return p0
.end method

.method static bridge synthetic E(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->resetBubble:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic F(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->root:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic G(Lcom/narvii/chat/screenroom/ReputationEarningComposite;F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->curAvailableRep:F

    return-void
.end method

.method static bridge synthetic H(Lcom/narvii/chat/screenroom/ReputationEarningComposite;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->curAvailableRepLevel:I

    return-void
.end method

.method static bridge synthetic I(Lcom/narvii/chat/screenroom/ReputationEarningComposite;F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->curUserTotalRep:F

    return-void
.end method

.method static bridge synthetic J(Lcom/narvii/chat/screenroom/ReputationEarningComposite;F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->maxRepPerRound:F

    return-void
.end method

.method static bridge synthetic K(Lcom/narvii/chat/screenroom/ReputationEarningComposite;F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->prevRep:F

    return-void
.end method

.method static bridge synthetic L(Lcom/narvii/chat/screenroom/ReputationEarningComposite;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->repThresholdReached:Z

    return-void
.end method

.method static bridge synthetic M(Lcom/narvii/chat/screenroom/ReputationEarningComposite;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->updateBubbleStyle(I)V

    return-void
.end method

.method static bridge synthetic N(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->updateRepBubble()V

    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Lcom/narvii/util/http/ApiService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->apiService:Lcom/narvii/util/http/ApiService;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Lcom/narvii/widget/ThumbImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubble:Lcom/narvii/widget/ThumbImageView;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubbleAlpha:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method private cancelAnimators()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubbleTransUp:Landroid/animation/ObjectAnimator;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubbleTransDown:Landroid/animation/ObjectAnimator;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 15
    .line 16
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubbleScaleX:Landroid/animation/ObjectAnimator;

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 22
    .line 23
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubbleScaleY:Landroid/animation/ObjectAnimator;

    .line 24
    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 29
    .line 30
    :cond_3
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubbleAlpha:Landroid/animation/ObjectAnimator;

    .line 31
    .line 32
    if-eqz v0, :cond_4

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 36
    .line 37
    :cond_4
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->dropAlpha:Landroid/animation/ObjectAnimator;

    .line 38
    .line 39
    if-eqz v0, :cond_5

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 43
    .line 44
    :cond_5
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->labelScaleX:Landroid/animation/ObjectAnimator;

    .line 45
    .line 46
    if-eqz v0, :cond_6

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 50
    .line 51
    :cond_6
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->labelScaleY:Landroid/animation/ObjectAnimator;

    .line 52
    .line 53
    if-eqz v0, :cond_7

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 57
    .line 58
    :cond_7
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->explosionTextAlpha:Landroid/animation/ObjectAnimator;

    .line 59
    .line 60
    if-eqz v0, :cond_8

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 64
    .line 65
    :cond_8
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->explosionTextTransY:Landroid/animation/ObjectAnimator;

    .line 66
    .line 67
    if-eqz v0, :cond_9

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 71
    .line 72
    :cond_9
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->newRepAlertAlpha:Landroid/animation/ObjectAnimator;

    .line 73
    .line 74
    if-eqz v0, :cond_a

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 78
    .line 79
    :cond_a
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->newRepAlertTransX:Landroid/animation/ObjectAnimator;

    .line 80
    .line 81
    if-eqz v0, :cond_b

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 85
    .line 86
    :cond_b
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->labelContentAnimator:Landroid/animation/ValueAnimator;

    .line 87
    .line 88
    if-eqz v0, :cond_c

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 92
    .line 93
    :cond_c
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->explosionContentAnimator:Landroid/animation/ValueAnimator;

    .line 94
    .line 95
    if-eqz v0, :cond_d

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 99
    :cond_d
    return-void
.end method

.method private checkRepLevel(F)I
    .locals 8

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v2, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->maxRepPerRound:F

    cmpl-float v3, p1, v2

    const/4 v4, 0x5

    if-nez v3, :cond_1

    return v4

    :cond_1
    const v3, 0x3e4ccccd    # 0.2f

    mul-float/2addr v3, v2

    const v5, 0x3ecccccd    # 0.4f

    mul-float/2addr v5, v2

    const v6, 0x3f19999a    # 0.6f

    mul-float/2addr v6, v2

    const v7, 0x3f4ccccd    # 0.8f

    mul-float/2addr v2, v7

    if-lez v0, :cond_2

    cmpg-float v0, p1, v3

    if-gtz v0, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    cmpl-float v0, p1, v3

    if-lez v0, :cond_3

    cmpg-float v0, p1, v5

    if-gtz v0, :cond_3

    const/4 p1, 0x2

    return p1

    :cond_3
    cmpl-float v0, p1, v5

    if-lez v0, :cond_4

    cmpg-float v0, p1, v6

    if-gtz v0, :cond_4

    const/4 p1, 0x3

    return p1

    :cond_4
    cmpl-float v0, p1, v6

    if-lez v0, :cond_5

    cmpg-float v0, p1, v2

    if-gtz v0, :cond_5

    const/4 p1, 0x4

    return p1

    :cond_5
    cmpl-float p1, p1, v2

    if-lez p1, :cond_6

    return v4

    :cond_6
    return v1
.end method

.method static bridge synthetic d(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubbleJumpTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubbleScaleX:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static bridge synthetic f(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubbleScaleY:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static bridge synthetic g(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubbleTransDown:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static bridge synthetic h(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubbleTransUp:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static bridge synthetic i(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->context:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method private initAnimators()V
    .locals 10

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->root:Landroid/view/View;

    .line 3
    .line 4
    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 5
    const/4 v2, 0x2

    .line 6
    .line 7
    new-array v3, v2, [F

    .line 8
    .line 9
    .line 10
    fill-array-data v3, :array_0

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    const-wide/16 v3, 0x12c

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    iput-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubbleTransUp:Landroid/animation/ObjectAnimator;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->root:Landroid/view/View;

    .line 25
    .line 26
    new-array v5, v2, [F

    .line 27
    .line 28
    .line 29
    fill-array-data v5, :array_1

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v1, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    iput-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubbleTransDown:Landroid/animation/ObjectAnimator;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v3, v4}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 43
    .line 44
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubbleTransDown:Landroid/animation/ObjectAnimator;

    .line 45
    .line 46
    new-instance v5, Landroid/view/animation/BounceInterpolator;

    .line 47
    .line 48
    .line 49
    invoke-direct {v5}, Landroid/view/animation/BounceInterpolator;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 53
    .line 54
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubble:Lcom/narvii/widget/ThumbImageView;

    .line 55
    .line 56
    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 57
    .line 58
    new-array v6, v2, [F

    .line 59
    .line 60
    .line 61
    fill-array-data v6, :array_2

    .line 62
    .line 63
    .line 64
    invoke-static {v0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 65
    move-result-object v0

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 69
    move-result-object v0

    .line 70
    .line 71
    iput-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubbleScaleX:Landroid/animation/ObjectAnimator;

    .line 72
    .line 73
    new-instance v6, Landroid/view/animation/OvershootInterpolator;

    .line 74
    .line 75
    const/high16 v7, 0x40400000    # 3.0f

    .line 76
    .line 77
    .line 78
    invoke-direct {v6, v7}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 82
    .line 83
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubble:Lcom/narvii/widget/ThumbImageView;

    .line 84
    .line 85
    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    .line 86
    .line 87
    new-array v8, v2, [F

    .line 88
    .line 89
    .line 90
    fill-array-data v8, :array_3

    .line 91
    .line 92
    .line 93
    invoke-static {v0, v6, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 94
    move-result-object v0

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 98
    move-result-object v0

    .line 99
    .line 100
    iput-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubbleScaleY:Landroid/animation/ObjectAnimator;

    .line 101
    .line 102
    new-instance v8, Landroid/view/animation/OvershootInterpolator;

    .line 103
    .line 104
    .line 105
    invoke-direct {v8, v7}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v8}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 109
    .line 110
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubble:Lcom/narvii/widget/ThumbImageView;

    .line 111
    .line 112
    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 113
    .line 114
    new-array v9, v2, [F

    .line 115
    .line 116
    .line 117
    fill-array-data v9, :array_4

    .line 118
    .line 119
    .line 120
    invoke-static {v0, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 121
    move-result-object v0

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 125
    move-result-object v0

    .line 126
    .line 127
    iput-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubbleAlpha:Landroid/animation/ObjectAnimator;

    .line 128
    .line 129
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->repTextBubble:Landroid/widget/TextView;

    .line 130
    .line 131
    new-array v9, v2, [F

    .line 132
    .line 133
    .line 134
    fill-array-data v9, :array_5

    .line 135
    .line 136
    .line 137
    invoke-static {v0, v5, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 138
    move-result-object v0

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 142
    move-result-object v0

    .line 143
    .line 144
    iput-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->labelScaleX:Landroid/animation/ObjectAnimator;

    .line 145
    .line 146
    new-instance v5, Landroid/view/animation/OvershootInterpolator;

    .line 147
    .line 148
    .line 149
    invoke-direct {v5, v7}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 153
    .line 154
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->repTextBubble:Landroid/widget/TextView;

    .line 155
    .line 156
    new-array v5, v2, [F

    .line 157
    .line 158
    .line 159
    fill-array-data v5, :array_6

    .line 160
    .line 161
    .line 162
    invoke-static {v0, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 163
    move-result-object v0

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 167
    move-result-object v0

    .line 168
    .line 169
    iput-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->labelScaleY:Landroid/animation/ObjectAnimator;

    .line 170
    .line 171
    new-instance v5, Landroid/view/animation/OvershootInterpolator;

    .line 172
    .line 173
    .line 174
    invoke-direct {v5, v7}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 178
    .line 179
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->explosionText:Landroid/widget/TextView;

    .line 180
    .line 181
    new-array v5, v2, [F

    .line 182
    .line 183
    .line 184
    fill-array-data v5, :array_7

    .line 185
    .line 186
    .line 187
    invoke-static {v0, v8, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 188
    move-result-object v0

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 192
    move-result-object v0

    .line 193
    .line 194
    iput-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->explosionTextAlpha:Landroid/animation/ObjectAnimator;

    .line 195
    .line 196
    new-instance v5, Lcom/narvii/chat/screenroom/ReputationEarningComposite$6;

    .line 197
    .line 198
    .line 199
    invoke-direct {v5, p0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite$6;-><init>(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 203
    .line 204
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->explosionText:Landroid/widget/TextView;

    .line 205
    .line 206
    new-array v5, v2, [F

    .line 207
    .line 208
    .line 209
    fill-array-data v5, :array_8

    .line 210
    .line 211
    .line 212
    invoke-static {v0, v1, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 213
    move-result-object v0

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 217
    move-result-object v0

    .line 218
    .line 219
    iput-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->explosionTextTransY:Landroid/animation/ObjectAnimator;

    .line 220
    .line 221
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->explosionDrops:Landroid/widget/ImageView;

    .line 222
    const/4 v1, 0x4

    .line 223
    .line 224
    new-array v1, v1, [F

    .line 225
    .line 226
    .line 227
    fill-array-data v1, :array_9

    .line 228
    .line 229
    .line 230
    invoke-static {v0, v8, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 231
    move-result-object v0

    .line 232
    .line 233
    const-wide/16 v5, 0x384

    .line 234
    .line 235
    .line 236
    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 237
    move-result-object v0

    .line 238
    .line 239
    iput-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->dropAlpha:Landroid/animation/ObjectAnimator;

    .line 240
    .line 241
    new-instance v1, Lcom/narvii/chat/screenroom/ReputationEarningComposite$7;

    .line 242
    .line 243
    .line 244
    invoke-direct {v1, p0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite$7;-><init>(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 248
    .line 249
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->newRepAlert:Landroid/widget/TextView;

    .line 250
    .line 251
    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 252
    .line 253
    new-array v5, v2, [F

    .line 254
    .line 255
    .line 256
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 257
    move-result v6

    .line 258
    .line 259
    if-eqz v6, :cond_0

    .line 260
    .line 261
    const/high16 v6, -0x3c380000    # -400.0f

    .line 262
    goto :goto_0

    .line 263
    .line 264
    :cond_0
    const/high16 v6, 0x43c80000    # 400.0f

    .line 265
    :goto_0
    const/4 v7, 0x0

    .line 266
    .line 267
    aput v6, v5, v7

    .line 268
    const/4 v6, 0x1

    .line 269
    const/4 v7, 0x0

    .line 270
    .line 271
    aput v7, v5, v6

    .line 272
    .line 273
    .line 274
    invoke-static {v0, v1, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 275
    move-result-object v0

    .line 276
    .line 277
    .line 278
    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 279
    move-result-object v0

    .line 280
    .line 281
    iput-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->newRepAlertTransX:Landroid/animation/ObjectAnimator;

    .line 282
    .line 283
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->newRepAlert:Landroid/widget/TextView;

    .line 284
    .line 285
    new-array v1, v2, [F

    .line 286
    .line 287
    .line 288
    fill-array-data v1, :array_a

    .line 289
    .line 290
    .line 291
    invoke-static {v0, v8, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 292
    move-result-object v0

    .line 293
    .line 294
    .line 295
    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 296
    move-result-object v0

    .line 297
    .line 298
    iput-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->newRepAlertAlpha:Landroid/animation/ObjectAnimator;

    .line 299
    .line 300
    const-wide/16 v3, 0x44c

    .line 301
    .line 302
    .line 303
    invoke-virtual {v0, v3, v4}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 304
    .line 305
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->newRepAlertAlpha:Landroid/animation/ObjectAnimator;

    .line 306
    .line 307
    new-instance v1, Lcom/narvii/chat/screenroom/ReputationEarningComposite$8;

    .line 308
    .line 309
    .line 310
    invoke-direct {v1, p0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite$8;-><init>(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 314
    .line 315
    new-array v0, v2, [F

    .line 316
    .line 317
    .line 318
    fill-array-data v0, :array_b

    .line 319
    .line 320
    .line 321
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 322
    move-result-object v0

    .line 323
    .line 324
    const-wide/16 v3, 0x1f4

    .line 325
    .line 326
    .line 327
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 328
    move-result-object v0

    .line 329
    .line 330
    iput-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->labelContentAnimator:Landroid/animation/ValueAnimator;

    .line 331
    .line 332
    new-instance v1, Lcom/narvii/chat/screenroom/ReputationEarningComposite$9;

    .line 333
    .line 334
    .line 335
    invoke-direct {v1, p0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite$9;-><init>(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 339
    .line 340
    new-array v0, v2, [F

    .line 341
    .line 342
    .line 343
    fill-array-data v0, :array_c

    .line 344
    .line 345
    .line 346
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 347
    move-result-object v0

    .line 348
    .line 349
    .line 350
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 351
    move-result-object v0

    .line 352
    .line 353
    iput-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->explosionContentAnimator:Landroid/animation/ValueAnimator;

    .line 354
    .line 355
    const-wide/16 v1, 0x96

    .line 356
    .line 357
    .line 358
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 359
    .line 360
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->explosionContentAnimator:Landroid/animation/ValueAnimator;

    .line 361
    .line 362
    new-instance v1, Lcom/narvii/chat/screenroom/ReputationEarningComposite$10;

    .line 363
    .line 364
    .line 365
    invoke-direct {v1, p0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite$10;-><init>(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 369
    .line 370
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->explosionContentAnimator:Landroid/animation/ValueAnimator;

    .line 371
    .line 372
    new-instance v1, Lcom/narvii/chat/screenroom/ReputationEarningComposite$11;

    .line 373
    .line 374
    .line 375
    invoke-direct {v1, p0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite$11;-><init>(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)V

    .line 376
    .line 377
    .line 378
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 379
    return-void

    .line 380
    nop

    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    :array_0
    .array-data 4
        0x0
        -0x3d6a0000    # -75.0f
    .end array-data

    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    :array_1
    .array-data 4
        -0x3d6a0000    # -75.0f
        0x0
    .end array-data

    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
    .end array-data

    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
    .end array-data

    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
    .end array-data

    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    :array_6
    .array-data 4
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
    .end array-data

    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    :array_7
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    :array_8
    .array-data 4
        0x41a00000    # 20.0f
        -0x3e600000    # -20.0f
    .end array-data

    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    :array_9
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    :array_a
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    :array_b
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    :array_c
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private initComponent(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a0c1b

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    check-cast v0, Lcom/narvii/widget/ThumbImageView;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubble:Lcom/narvii/widget/ThumbImageView;

    .line 12
    .line 13
    .line 14
    const v0, 0x7f0a0c21

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast v0, Landroid/widget/TextView;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->repTextBubble:Landroid/widget/TextView;

    .line 23
    .line 24
    .line 25
    const v0, 0x7f0a04a2

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    check-cast v0, Landroid/widget/ImageView;

    .line 32
    .line 33
    iput-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->explosionDrops:Landroid/widget/ImageView;

    .line 34
    .line 35
    .line 36
    const v0, 0x7f0a0c12

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    check-cast v0, Landroid/widget/TextView;

    .line 43
    .line 44
    iput-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->explosionText:Landroid/widget/TextView;

    .line 45
    .line 46
    .line 47
    const v0, 0x7f0a0c11

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    check-cast p1, Landroid/widget/TextView;

    .line 54
    .line 55
    iput-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->newRepAlert:Landroid/widget/TextView;

    .line 56
    .line 57
    .line 58
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 59
    move-result v0

    .line 60
    .line 61
    if-eqz v0, :cond_0

    .line 62
    .line 63
    const/high16 v0, -0x3c380000    # -400.0f

    .line 64
    goto :goto_0

    .line 65
    .line 66
    :cond_0
    const/high16 v0, 0x43c80000    # 400.0f

    .line 67
    .line 68
    .line 69
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 70
    .line 71
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubble:Lcom/narvii/widget/ThumbImageView;

    .line 72
    .line 73
    new-instance v0, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;

    .line 74
    .line 75
    .line 76
    invoke-direct {v0, p0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite$5;-><init>(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    return-void
.end method

.method private initNetworking()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    const-string v1, "api"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->apiService:Lcom/narvii/util/http/ApiService;

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->https()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    const-string v2, "/chat/thread/"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    iget-object v3, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->chatThread:Lcom/narvii/model/ChatThread;

    .line 33
    .line 34
    iget-object v3, v3, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v3, "/avchat-reputation"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    iput-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->getRepRequest:Lcom/narvii/util/http/ApiRequest;

    .line 57
    .line 58
    .line 59
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->https()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    iget-object v2, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->chatThread:Lcom/narvii/model/ChatThread;

    .line 75
    .line 76
    iget-object v2, v2, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    move-result-object v1

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 90
    move-result-object v0

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 94
    move-result-object v0

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 98
    move-result-object v0

    .line 99
    .line 100
    iput-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->postRepRequest:Lcom/narvii/util/http/ApiRequest;

    .line 101
    .line 102
    new-instance v0, Landroid/os/Handler;

    .line 103
    .line 104
    .line 105
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 106
    .line 107
    iput-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->handler:Landroid/os/Handler;

    .line 108
    .line 109
    iget-object v1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->getRepTask:Ljava/lang/Runnable;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 113
    return-void
.end method

.method static bridge synthetic j(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->curAvailableRep:F

    return p0
.end method

.method static bridge synthetic k(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->curAvailableRepLevel:I

    return p0
.end method

.method static bridge synthetic l(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->curUserTotalRep:F

    return p0
.end method

.method static bridge synthetic m(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->dropAlpha:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static bridge synthetic n(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->explosionContentAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static bridge synthetic o(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->explosionText:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic p(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->explosionTextAlpha:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static bridge synthetic q(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->explosionTextTransY:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static bridge synthetic r(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Lcom/narvii/util/http/ApiResponseListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->getRepListener:Lcom/narvii/util/http/ApiResponseListener;

    return-object p0
.end method

.method static bridge synthetic s(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Lcom/narvii/util/http/ApiRequest;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->getRepRequest:Lcom/narvii/util/http/ApiRequest;

    return-object p0
.end method

.method static bridge synthetic t(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->getRepTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic u(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method private updateBubbleStyle(I)V
    .locals 10

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->repTextBubble:Landroid/widget/TextView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x2

    .line 11
    .line 12
    if-eqz p1, :cond_5

    .line 13
    .line 14
    if-eq p1, v1, :cond_4

    .line 15
    .line 16
    if-eq p1, v2, :cond_3

    .line 17
    const/4 v3, 0x3

    .line 18
    .line 19
    if-eq p1, v3, :cond_2

    .line 20
    const/4 v3, 0x4

    .line 21
    .line 22
    if-eq p1, v3, :cond_1

    .line 23
    const/4 v3, 0x5

    .line 24
    .line 25
    if-eq p1, v3, :cond_0

    .line 26
    .line 27
    goto/16 :goto_0

    .line 28
    .line 29
    :cond_0
    iget-object v3, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubble:Lcom/narvii/widget/ThumbImageView;

    .line 30
    .line 31
    iget-object v4, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->context:Lcom/narvii/app/NVContext;

    .line 32
    .line 33
    .line 34
    invoke-interface {v4}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 35
    move-result-object v4

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 39
    move-result-object v4

    .line 40
    .line 41
    .line 42
    const v5, 0x7f0808d7

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 46
    move-result-object v4

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 50
    .line 51
    iget-object v3, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->context:Lcom/narvii/app/NVContext;

    .line 52
    .line 53
    .line 54
    invoke-interface {v3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 55
    move-result-object v3

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 59
    move-result-object v3

    .line 60
    .line 61
    .line 62
    const v4, 0x7f07046f

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 66
    move-result v3

    .line 67
    float-to-int v3, v3

    .line 68
    .line 69
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 70
    .line 71
    goto/16 :goto_0

    .line 72
    .line 73
    :cond_1
    iget-object v3, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubble:Lcom/narvii/widget/ThumbImageView;

    .line 74
    .line 75
    iget-object v4, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->context:Lcom/narvii/app/NVContext;

    .line 76
    .line 77
    .line 78
    invoke-interface {v4}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 79
    move-result-object v4

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 83
    move-result-object v4

    .line 84
    .line 85
    .line 86
    const v5, 0x7f0808d6

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 90
    move-result-object v4

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 94
    .line 95
    iget-object v3, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->context:Lcom/narvii/app/NVContext;

    .line 96
    .line 97
    .line 98
    invoke-interface {v3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 99
    move-result-object v3

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 103
    move-result-object v3

    .line 104
    .line 105
    .line 106
    const v4, 0x7f07046e

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 110
    move-result v3

    .line 111
    float-to-int v3, v3

    .line 112
    .line 113
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 114
    .line 115
    goto/16 :goto_0

    .line 116
    .line 117
    :cond_2
    iget-object v3, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubble:Lcom/narvii/widget/ThumbImageView;

    .line 118
    .line 119
    iget-object v4, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->context:Lcom/narvii/app/NVContext;

    .line 120
    .line 121
    .line 122
    invoke-interface {v4}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 123
    move-result-object v4

    .line 124
    .line 125
    .line 126
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 127
    move-result-object v4

    .line 128
    .line 129
    .line 130
    const v5, 0x7f0808d5

    .line 131
    .line 132
    .line 133
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 134
    move-result-object v4

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 138
    .line 139
    iget-object v3, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->context:Lcom/narvii/app/NVContext;

    .line 140
    .line 141
    .line 142
    invoke-interface {v3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 143
    move-result-object v3

    .line 144
    .line 145
    .line 146
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 147
    move-result-object v3

    .line 148
    .line 149
    .line 150
    const v4, 0x7f07046d

    .line 151
    .line 152
    .line 153
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 154
    move-result v3

    .line 155
    float-to-int v3, v3

    .line 156
    .line 157
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 158
    goto :goto_0

    .line 159
    .line 160
    :cond_3
    iget-object v3, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubble:Lcom/narvii/widget/ThumbImageView;

    .line 161
    .line 162
    iget-object v4, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->context:Lcom/narvii/app/NVContext;

    .line 163
    .line 164
    .line 165
    invoke-interface {v4}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 166
    move-result-object v4

    .line 167
    .line 168
    .line 169
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 170
    move-result-object v4

    .line 171
    .line 172
    .line 173
    const v5, 0x7f0808d4

    .line 174
    .line 175
    .line 176
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 177
    move-result-object v4

    .line 178
    .line 179
    .line 180
    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 181
    .line 182
    iget-object v3, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->context:Lcom/narvii/app/NVContext;

    .line 183
    .line 184
    .line 185
    invoke-interface {v3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 186
    move-result-object v3

    .line 187
    .line 188
    .line 189
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 190
    move-result-object v3

    .line 191
    .line 192
    .line 193
    const v4, 0x7f07046c

    .line 194
    .line 195
    .line 196
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 197
    move-result v3

    .line 198
    float-to-int v3, v3

    .line 199
    .line 200
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 201
    goto :goto_0

    .line 202
    .line 203
    :cond_4
    iget-object v3, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubble:Lcom/narvii/widget/ThumbImageView;

    .line 204
    .line 205
    iget-object v4, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->context:Lcom/narvii/app/NVContext;

    .line 206
    .line 207
    .line 208
    invoke-interface {v4}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 209
    move-result-object v4

    .line 210
    .line 211
    .line 212
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 213
    move-result-object v4

    .line 214
    .line 215
    .line 216
    const v5, 0x7f0808d3

    .line 217
    .line 218
    .line 219
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 220
    move-result-object v4

    .line 221
    .line 222
    .line 223
    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 224
    .line 225
    iget-object v3, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->context:Lcom/narvii/app/NVContext;

    .line 226
    .line 227
    .line 228
    invoke-interface {v3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 229
    move-result-object v3

    .line 230
    .line 231
    .line 232
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 233
    move-result-object v3

    .line 234
    .line 235
    .line 236
    const v4, 0x7f07046b

    .line 237
    .line 238
    .line 239
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 240
    move-result v3

    .line 241
    float-to-int v3, v3

    .line 242
    .line 243
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 244
    goto :goto_0

    .line 245
    .line 246
    :cond_5
    iget-object v3, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubble:Lcom/narvii/widget/ThumbImageView;

    .line 247
    const/4 v4, 0x0

    .line 248
    .line 249
    .line 250
    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 251
    .line 252
    iget-object v3, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->context:Lcom/narvii/app/NVContext;

    .line 253
    .line 254
    .line 255
    invoke-interface {v3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 256
    move-result-object v3

    .line 257
    .line 258
    .line 259
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 260
    move-result-object v3

    .line 261
    .line 262
    .line 263
    const v4, 0x7f07046a

    .line 264
    .line 265
    .line 266
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 267
    move-result v3

    .line 268
    float-to-int v3, v3

    .line 269
    .line 270
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 271
    .line 272
    :goto_0
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->repTextBubble:Landroid/widget/TextView;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 276
    .line 277
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubble:Lcom/narvii/widget/ThumbImageView;

    .line 278
    .line 279
    .line 280
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 281
    move-result v3

    .line 282
    const/4 v4, 0x0

    .line 283
    .line 284
    if-eqz v3, :cond_6

    .line 285
    move v3, v4

    .line 286
    goto :goto_1

    .line 287
    .line 288
    :cond_6
    iget-object v3, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubble:Lcom/narvii/widget/ThumbImageView;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 292
    move-result v3

    .line 293
    int-to-float v3, v3

    .line 294
    .line 295
    .line 296
    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setPivotX(F)V

    .line 297
    .line 298
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubble:Lcom/narvii/widget/ThumbImageView;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 302
    move-result v3

    .line 303
    int-to-float v3, v3

    .line 304
    .line 305
    .line 306
    invoke-virtual {v0, v3}, Landroid/view/View;->setPivotY(F)V

    .line 307
    const/4 v0, 0x0

    .line 308
    .line 309
    .line 310
    const v3, 0x3e4ccccd    # 0.2f

    .line 311
    .line 312
    const/high16 v5, 0x3f800000    # 1.0f

    .line 313
    .line 314
    if-nez p1, :cond_7

    .line 315
    .line 316
    iget-object v6, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubbleScaleX:Landroid/animation/ObjectAnimator;

    .line 317
    .line 318
    new-array v7, v2, [F

    .line 319
    .line 320
    .line 321
    fill-array-data v7, :array_0

    .line 322
    .line 323
    .line 324
    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 325
    .line 326
    iget-object v6, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubbleScaleY:Landroid/animation/ObjectAnimator;

    .line 327
    .line 328
    new-array v7, v2, [F

    .line 329
    .line 330
    .line 331
    fill-array-data v7, :array_1

    .line 332
    .line 333
    .line 334
    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 335
    .line 336
    iget-object v6, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubbleAlpha:Landroid/animation/ObjectAnimator;

    .line 337
    .line 338
    new-array v7, v2, [F

    .line 339
    .line 340
    .line 341
    fill-array-data v7, :array_2

    .line 342
    .line 343
    .line 344
    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 345
    .line 346
    iget-object v6, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubbleAlpha:Landroid/animation/ObjectAnimator;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->start()V

    .line 350
    goto :goto_2

    .line 351
    .line 352
    :cond_7
    iget-object v6, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubbleScaleX:Landroid/animation/ObjectAnimator;

    .line 353
    .line 354
    new-array v7, v2, [F

    .line 355
    .line 356
    iget v8, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->curAvailableRepLevel:I

    .line 357
    int-to-float v8, v8

    .line 358
    mul-float/2addr v8, v3

    .line 359
    add-float/2addr v8, v5

    .line 360
    .line 361
    aput v8, v7, v0

    .line 362
    int-to-float v8, p1

    .line 363
    mul-float/2addr v8, v3

    .line 364
    add-float/2addr v8, v5

    .line 365
    .line 366
    aput v8, v7, v1

    .line 367
    .line 368
    .line 369
    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 370
    .line 371
    iget-object v6, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubbleScaleY:Landroid/animation/ObjectAnimator;

    .line 372
    .line 373
    new-array v7, v2, [F

    .line 374
    .line 375
    iget v9, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->curAvailableRepLevel:I

    .line 376
    int-to-float v9, v9

    .line 377
    mul-float/2addr v9, v3

    .line 378
    add-float/2addr v9, v5

    .line 379
    .line 380
    aput v9, v7, v0

    .line 381
    .line 382
    aput v8, v7, v1

    .line 383
    .line 384
    .line 385
    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 386
    .line 387
    :goto_2
    iget-object v6, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->repTextBubble:Landroid/widget/TextView;

    .line 388
    .line 389
    .line 390
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 391
    move-result v7

    .line 392
    .line 393
    if-eqz v7, :cond_8

    .line 394
    goto :goto_3

    .line 395
    .line 396
    :cond_8
    iget-object v4, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->repTextBubble:Landroid/widget/TextView;

    .line 397
    .line 398
    .line 399
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 400
    move-result v4

    .line 401
    int-to-float v4, v4

    .line 402
    .line 403
    .line 404
    :goto_3
    invoke-virtual {v6, v4}, Landroid/view/View;->setPivotX(F)V

    .line 405
    .line 406
    iget-object v4, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->repTextBubble:Landroid/widget/TextView;

    .line 407
    .line 408
    .line 409
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 410
    move-result v6

    .line 411
    int-to-float v6, v6

    .line 412
    .line 413
    .line 414
    invoke-virtual {v4, v6}, Landroid/view/View;->setPivotY(F)V

    .line 415
    .line 416
    if-nez p1, :cond_9

    .line 417
    .line 418
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->labelScaleX:Landroid/animation/ObjectAnimator;

    .line 419
    .line 420
    new-array v1, v2, [F

    .line 421
    .line 422
    .line 423
    fill-array-data v1, :array_3

    .line 424
    .line 425
    .line 426
    invoke-virtual {p1, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 427
    .line 428
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->labelScaleY:Landroid/animation/ObjectAnimator;

    .line 429
    .line 430
    new-array v1, v2, [F

    .line 431
    .line 432
    .line 433
    fill-array-data v1, :array_4

    .line 434
    .line 435
    .line 436
    invoke-virtual {p1, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 437
    .line 438
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->repTextBubble:Landroid/widget/TextView;

    .line 439
    .line 440
    .line 441
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 442
    .line 443
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->repTextBubble:Landroid/widget/TextView;

    .line 444
    .line 445
    const-string v0, "0"

    .line 446
    .line 447
    .line 448
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 449
    goto :goto_4

    .line 450
    .line 451
    :cond_9
    iget-object v4, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->labelScaleX:Landroid/animation/ObjectAnimator;

    .line 452
    .line 453
    new-array v6, v2, [F

    .line 454
    .line 455
    iget v7, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->curAvailableRepLevel:I

    .line 456
    int-to-float v7, v7

    .line 457
    mul-float/2addr v7, v3

    .line 458
    add-float/2addr v7, v5

    .line 459
    .line 460
    aput v7, v6, v0

    .line 461
    int-to-float p1, p1

    .line 462
    mul-float/2addr p1, v3

    .line 463
    add-float/2addr p1, v5

    .line 464
    .line 465
    aput p1, v6, v1

    .line 466
    .line 467
    .line 468
    invoke-virtual {v4, v6}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 469
    .line 470
    iget-object v4, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->labelScaleY:Landroid/animation/ObjectAnimator;

    .line 471
    .line 472
    new-array v2, v2, [F

    .line 473
    .line 474
    iget v6, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->curAvailableRepLevel:I

    .line 475
    int-to-float v6, v6

    .line 476
    mul-float/2addr v6, v3

    .line 477
    add-float/2addr v6, v5

    .line 478
    .line 479
    aput v6, v2, v0

    .line 480
    .line 481
    aput p1, v2, v1

    .line 482
    .line 483
    .line 484
    invoke-virtual {v4, v2}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 485
    .line 486
    :goto_4
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubbleScaleX:Landroid/animation/ObjectAnimator;

    .line 487
    .line 488
    .line 489
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 490
    .line 491
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubbleScaleY:Landroid/animation/ObjectAnimator;

    .line 492
    .line 493
    .line 494
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 495
    .line 496
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->labelScaleX:Landroid/animation/ObjectAnimator;

    .line 497
    .line 498
    .line 499
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 500
    .line 501
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->labelScaleY:Landroid/animation/ObjectAnimator;

    .line 502
    .line 503
    .line 504
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 505
    return-void

    .line 506
    nop

    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateRepBubble()V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->curAvailableRep:F

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->updateRepLabel(F)V

    .line 6
    .line 7
    iget v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->curAvailableRep:F

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->checkRepLevel(F)I

    .line 11
    move-result v0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->updateBubbleStyle(I)V

    .line 17
    .line 18
    :cond_0
    iput v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->curAvailableRepLevel:I

    .line 19
    return-void
.end method

.method private updateRepLabel(F)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->repTextBubble:Landroid/widget/TextView;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    .line 8
    cmpl-float v1, p1, v1

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    const-string p1, "0"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    return-void

    .line 17
    .line 18
    :cond_1
    iget v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->prevRep:F

    .line 19
    .line 20
    cmpl-float v1, p1, v0

    .line 21
    .line 22
    if-nez v1, :cond_2

    .line 23
    return-void

    .line 24
    .line 25
    :cond_2
    iget-object v1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->labelContentAnimator:Landroid/animation/ValueAnimator;

    .line 26
    const/4 v2, 0x2

    .line 27
    .line 28
    new-array v2, v2, [F

    .line 29
    const/4 v3, 0x0

    .line 30
    .line 31
    aput v0, v2, v3

    .line 32
    const/4 v0, 0x1

    .line 33
    .line 34
    aput p1, v2, v0

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 38
    .line 39
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->labelContentAnimator:Landroid/animation/ValueAnimator;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 43
    return-void
.end method

.method static bridge synthetic v(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->isDestroyed:Z

    return p0
.end method

.method static bridge synthetic w(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->labelScaleX:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static bridge synthetic x(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->labelScaleY:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static bridge synthetic y(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->newRepAlert:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic z(Lcom/narvii/chat/screenroom/ReputationEarningComposite;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->newRepAlertAlpha:Landroid/animation/ObjectAnimator;

    return-object p0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->isDestroyed:Z

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->handler:Landroid/os/Handler;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->getRepTask:Ljava/lang/Runnable;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->handler:Landroid/os/Handler;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->bubbleJumpTask:Ljava/lang/Runnable;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->handler:Landroid/os/Handler;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->resetBubble:Ljava/lang/Runnable;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 27
    const/4 v0, 0x0

    .line 28
    .line 29
    iput-object v0, p0, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->handler:Landroid/os/Handler;

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-direct {p0}, Lcom/narvii/chat/screenroom/ReputationEarningComposite;->cancelAnimators()V

    .line 33
    return-void
.end method
