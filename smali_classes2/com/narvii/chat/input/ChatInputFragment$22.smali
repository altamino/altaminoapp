.class Lcom/narvii/chat/input/ChatInputFragment$22;
.super Ljava/lang/Object;
.source "ChatInputFragment.java"

# interfaces
.implements Lcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/input/ChatInputFragment;->checkCommunityAvailability(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/input/ChatInputFragment;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/narvii/chat/input/ChatInputFragment;Landroid/view/View;)V
    .locals 0

    .line 1409
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$22;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    iput-object p2, p0, Lcom/narvii/chat/input/ChatInputFragment$22;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public followingChatToJoin()Lcom/narvii/model/ChatThread;
    .locals 1

    .line 1428
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$22;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/input/ChatInputFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    return-object v0
.end method

.method public getActionRTCType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCheckLoginFailed()V
    .locals 3

    .line 1417
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$22;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "joinChannel"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;)V

    return-void
.end method

.method public onPostJoinCommunity(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1435
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$22;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {p1}, Lcom/narvii/chat/input/ChatInputFragment;->access$1900(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/chat/input/ChatInputMessageSenderHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/chat/input/ChatInputMessageSenderHelper;->recordChatActivity()V

    .line 1436
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$22;->val$v:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    :cond_0
    return-void
.end method

.method public onPreJoinCommunity(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
