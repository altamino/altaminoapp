.class Lcom/narvii/chat/input/ChatThreadCheckFragment$5;
.super Ljava/lang/Object;
.source "ChatThreadCheckFragment.java"

# interfaces
.implements Lcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/input/ChatThreadCheckFragment;->checkCommunityAvailability(ILcom/narvii/util/Callback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/input/ChatThreadCheckFragment;

.field final synthetic val$channelType:I

.field final synthetic val$successCallback:Lcom/narvii/util/Callback;


# direct methods
.method constructor <init>(Lcom/narvii/chat/input/ChatThreadCheckFragment;ILcom/narvii/util/Callback;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment$5;->this$0:Lcom/narvii/chat/input/ChatThreadCheckFragment;

    iput p2, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment$5;->val$channelType:I

    iput-object p3, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment$5;->val$successCallback:Lcom/narvii/util/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public followingChatToJoin()Lcom/narvii/model/ChatThread;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment$5;->this$0:Lcom/narvii/chat/input/ChatThreadCheckFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/input/ChatThreadCheckFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    return-object v0
.end method

.method public getActionRTCType()I
    .locals 1

    .line 273
    iget v0, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment$5;->val$channelType:I

    return v0
.end method

.method public onCheckLoginFailed()V
    .locals 3

    .line 278
    iget-object v0, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment$5;->this$0:Lcom/narvii/chat/input/ChatThreadCheckFragment;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "joinChannel"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;)V

    return-void
.end method

.method public onPostJoinCommunity(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 295
    iget-object p1, p0, Lcom/narvii/chat/input/ChatThreadCheckFragment$5;->val$successCallback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_0

    .line 296
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onPreJoinCommunity(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
