.class Lcom/narvii/chat/ChatTipBroadcastHelper$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/ChatTipBroadcastHelper$1$1;->this$1:Lcom/narvii/chat/ChatTipBroadcastHelper$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/ChatTipBroadcastHelper$1$1;->this$1:Lcom/narvii/chat/ChatTipBroadcastHelper$1;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/chat/ChatTipBroadcastHelper$1;->this$0:Lcom/narvii/chat/ChatTipBroadcastHelper;

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Lcom/narvii/chat/ChatTipBroadcastHelper;->d(Lcom/narvii/chat/ChatTipBroadcastHelper;)V

    .line 8
    .line 9
    iget-object p1, p0, Lcom/narvii/chat/ChatTipBroadcastHelper$1$1;->this$1:Lcom/narvii/chat/ChatTipBroadcastHelper$1;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/narvii/chat/ChatTipBroadcastHelper$1;->this$0:Lcom/narvii/chat/ChatTipBroadcastHelper;

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lcom/narvii/chat/ChatTipBroadcastHelper;->e(Lcom/narvii/chat/ChatTipBroadcastHelper;)V

    .line 15
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
