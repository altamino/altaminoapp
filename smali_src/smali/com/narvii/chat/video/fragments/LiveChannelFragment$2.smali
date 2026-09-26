.class Lcom/narvii/chat/video/fragments/LiveChannelFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/video/fragments/LiveChannelFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/fragments/LiveChannelFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/fragments/LiveChannelFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment$2;->this$0:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment$2;->this$0:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->o(Lcom/narvii/chat/video/fragments/LiveChannelFragment;)Landroid/view/View;

    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x2

    .line 8
    .line 9
    new-array v1, v0, [F

    .line 10
    .line 11
    .line 12
    fill-array-data v1, :array_0

    .line 13
    .line 14
    const-string v2, "alpha"

    .line 15
    .line 16
    .line 17
    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    iget-object v1, p0, Lcom/narvii/chat/video/fragments/LiveChannelFragment$2;->this$0:Lcom/narvii/chat/video/fragments/LiveChannelFragment;

    .line 21
    .line 22
    iget-object v1, v1, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->liveNormalContent:Lcom/narvii/chat/video/layout/VVContentLayout;

    .line 23
    .line 24
    new-array v2, v0, [F

    .line 25
    const/4 v3, 0x0

    .line 26
    const/4 v4, 0x0

    .line 27
    .line 28
    aput v3, v2, v4

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 32
    move-result v3

    .line 33
    .line 34
    mul-int/lit8 v3, v3, -0x1

    .line 35
    int-to-float v3, v3

    .line 36
    const/4 v5, 0x1

    .line 37
    .line 38
    aput v3, v2, v5

    .line 39
    .line 40
    const-string/jumbo v3, "translationY"

    .line 41
    .line 42
    .line 43
    invoke-static {v1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    new-instance v2, Landroid/animation/AnimatorSet;

    .line 47
    .line 48
    .line 49
    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 50
    .line 51
    new-instance v3, Lcom/narvii/chat/video/fragments/LiveChannelFragment$2$1;

    .line 52
    .line 53
    .line 54
    invoke-direct {v3, p0}, Lcom/narvii/chat/video/fragments/LiveChannelFragment$2$1;-><init>(Lcom/narvii/chat/video/fragments/LiveChannelFragment$2;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 58
    .line 59
    new-array v0, v0, [Landroid/animation/Animator;

    .line 60
    .line 61
    aput-object v1, v0, v4

    .line 62
    .line 63
    aput-object p1, v0, v5

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 67
    .line 68
    const-wide/16 v0, 0xc8

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 75
    return-void

    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
