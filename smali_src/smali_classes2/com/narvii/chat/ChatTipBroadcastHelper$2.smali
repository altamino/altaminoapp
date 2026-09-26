.class Lcom/narvii/chat/ChatTipBroadcastHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/ChatTipBroadcastHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/ChatTipBroadcastHelper;


# direct methods
.method constructor <init>(Lcom/narvii/chat/ChatTipBroadcastHelper;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/ChatTipBroadcastHelper$2;->this$0:Lcom/narvii/chat/ChatTipBroadcastHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/ChatTipBroadcastHelper$2;->this$0:Lcom/narvii/chat/ChatTipBroadcastHelper;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    iput-boolean v1, v0, Lcom/narvii/chat/ChatTipBroadcastHelper;->pendingAnimIn:Z

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/chat/ChatTipBroadcastHelper;->b(Lcom/narvii/chat/ChatTipBroadcastHelper;)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    return-void

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/ChatTipBroadcastHelper$2;->this$0:Lcom/narvii/chat/ChatTipBroadcastHelper;

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lcom/narvii/chat/ChatTipBroadcastHelper;->b(Lcom/narvii/chat/ChatTipBroadcastHelper;)Landroid/view/View;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/chat/ChatTipBroadcastHelper$2;->this$0:Lcom/narvii/chat/ChatTipBroadcastHelper;

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Lcom/narvii/chat/ChatTipBroadcastHelper;->b(Lcom/narvii/chat/ChatTipBroadcastHelper;)Landroid/view/View;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 34
    move-result v0

    .line 35
    const/4 v1, 0x0

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .line 40
    .line 41
    iget-object v2, p0, Lcom/narvii/chat/ChatTipBroadcastHelper$2;->this$0:Lcom/narvii/chat/ChatTipBroadcastHelper;

    .line 42
    .line 43
    iget-object v2, v2, Lcom/narvii/chat/ChatTipBroadcastHelper;->context:Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    invoke-static {v2}, Lcom/narvii/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    .line 47
    move-result v2

    .line 48
    neg-int v2, v2

    .line 49
    int-to-float v2, v2

    .line 50
    .line 51
    .line 52
    invoke-direct {v0, v2, v1, v1, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 53
    goto :goto_0

    .line 54
    .line 55
    :cond_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .line 56
    .line 57
    iget-object v2, p0, Lcom/narvii/chat/ChatTipBroadcastHelper$2;->this$0:Lcom/narvii/chat/ChatTipBroadcastHelper;

    .line 58
    .line 59
    iget-object v2, v2, Lcom/narvii/chat/ChatTipBroadcastHelper;->context:Landroid/content/Context;

    .line 60
    .line 61
    .line 62
    invoke-static {v2}, Lcom/narvii/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    .line 63
    move-result v2

    .line 64
    int-to-float v2, v2

    .line 65
    .line 66
    .line 67
    invoke-direct {v0, v2, v1, v1, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 68
    .line 69
    :goto_0
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    .line 70
    .line 71
    .line 72
    const v2, 0x3f333333    # 0.7f

    .line 73
    .line 74
    .line 75
    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 79
    .line 80
    const-wide/16 v1, 0x12c

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 84
    .line 85
    new-instance v1, Lcom/narvii/chat/ChatTipBroadcastHelper$2$1;

    .line 86
    .line 87
    .line 88
    invoke-direct {v1, p0}, Lcom/narvii/chat/ChatTipBroadcastHelper$2$1;-><init>(Lcom/narvii/chat/ChatTipBroadcastHelper$2;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 92
    .line 93
    iget-object v1, p0, Lcom/narvii/chat/ChatTipBroadcastHelper$2;->this$0:Lcom/narvii/chat/ChatTipBroadcastHelper;

    .line 94
    .line 95
    .line 96
    invoke-static {v1}, Lcom/narvii/chat/ChatTipBroadcastHelper;->b(Lcom/narvii/chat/ChatTipBroadcastHelper;)Landroid/view/View;

    .line 97
    move-result-object v1

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 101
    return-void
.end method
