.class Lcom/narvii/chat/ChatTipBroadcastHelper$2;
.super Ljava/lang/Object;
.source "ChatTipBroadcastHelper.java"

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

    .line 72
    iput-object p1, p0, Lcom/narvii/chat/ChatTipBroadcastHelper$2;->this$0:Lcom/narvii/chat/ChatTipBroadcastHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/narvii/chat/ChatTipBroadcastHelper$2;->this$0:Lcom/narvii/chat/ChatTipBroadcastHelper;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/narvii/chat/ChatTipBroadcastHelper;->pendingAnimIn:Z

    .line 76
    invoke-static {v0}, Lcom/narvii/chat/ChatTipBroadcastHelper;->access$000(Lcom/narvii/chat/ChatTipBroadcastHelper;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/ChatTipBroadcastHelper$2;->this$0:Lcom/narvii/chat/ChatTipBroadcastHelper;

    invoke-static {v0}, Lcom/narvii/chat/ChatTipBroadcastHelper;->access$000(Lcom/narvii/chat/ChatTipBroadcastHelper;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 80
    iget-object v0, p0, Lcom/narvii/chat/ChatTipBroadcastHelper$2;->this$0:Lcom/narvii/chat/ChatTipBroadcastHelper;

    invoke-static {v0}, Lcom/narvii/chat/ChatTipBroadcastHelper;->access$000(Lcom/narvii/chat/ChatTipBroadcastHelper;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 82
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 83
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v2, p0, Lcom/narvii/chat/ChatTipBroadcastHelper$2;->this$0:Lcom/narvii/chat/ChatTipBroadcastHelper;

    iget-object v2, v2, Lcom/narvii/chat/ChatTipBroadcastHelper;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/narvii/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-direct {v0, v2, v1, v1, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_0

    .line 85
    :cond_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v2, p0, Lcom/narvii/chat/ChatTipBroadcastHelper$2;->this$0:Lcom/narvii/chat/ChatTipBroadcastHelper;

    iget-object v2, v2, Lcom/narvii/chat/ChatTipBroadcastHelper;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/narvii/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v2, v1, v1, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 87
    :goto_0
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const v2, 0x3f333333    # 0.7f

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v1, 0x12c

    .line 88
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 89
    new-instance v1, Lcom/narvii/chat/ChatTipBroadcastHelper$2$1;

    invoke-direct {v1, p0}, Lcom/narvii/chat/ChatTipBroadcastHelper$2$1;-><init>(Lcom/narvii/chat/ChatTipBroadcastHelper$2;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 112
    iget-object v1, p0, Lcom/narvii/chat/ChatTipBroadcastHelper$2;->this$0:Lcom/narvii/chat/ChatTipBroadcastHelper;

    invoke-static {v1}, Lcom/narvii/chat/ChatTipBroadcastHelper;->access$000(Lcom/narvii/chat/ChatTipBroadcastHelper;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
