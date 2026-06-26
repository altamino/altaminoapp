.class Lcom/narvii/chat/ChatTipBroadcastHelper$1$1;
.super Ljava/lang/Object;
.source "ChatTipBroadcastHelper.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/ChatTipBroadcastHelper$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/chat/ChatTipBroadcastHelper$1;


# direct methods
.method constructor <init>(Lcom/narvii/chat/ChatTipBroadcastHelper$1;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/narvii/chat/ChatTipBroadcastHelper$1$1;->this$1:Lcom/narvii/chat/ChatTipBroadcastHelper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 58
    iget-object p1, p0, Lcom/narvii/chat/ChatTipBroadcastHelper$1$1;->this$1:Lcom/narvii/chat/ChatTipBroadcastHelper$1;

    iget-object p1, p1, Lcom/narvii/chat/ChatTipBroadcastHelper$1;->this$0:Lcom/narvii/chat/ChatTipBroadcastHelper;

    invoke-static {p1}, Lcom/narvii/chat/ChatTipBroadcastHelper;->access$100(Lcom/narvii/chat/ChatTipBroadcastHelper;)V

    .line 59
    iget-object p1, p0, Lcom/narvii/chat/ChatTipBroadcastHelper$1$1;->this$1:Lcom/narvii/chat/ChatTipBroadcastHelper$1;

    iget-object p1, p1, Lcom/narvii/chat/ChatTipBroadcastHelper$1;->this$0:Lcom/narvii/chat/ChatTipBroadcastHelper;

    invoke-static {p1}, Lcom/narvii/chat/ChatTipBroadcastHelper;->access$200(Lcom/narvii/chat/ChatTipBroadcastHelper;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
