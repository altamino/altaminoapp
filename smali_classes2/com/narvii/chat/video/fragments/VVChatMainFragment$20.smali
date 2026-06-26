.class Lcom/narvii/chat/video/fragments/VVChatMainFragment$20;
.super Ljava/lang/Object;
.source "VVChatMainFragment.java"

# interfaces
.implements Lcom/narvii/pushservice/PushService$PushListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/video/fragments/VVChatMainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)V
    .locals 0

    .line 1458
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$20;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptNotification(Lcom/narvii/pushservice/PushPayload;)Z
    .locals 2

    .line 1468
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$20;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/narvii/pushservice/PushPayload;->threadId:Ljava/lang/String;

    iget-object v1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$20;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    invoke-virtual {v1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->getThreadId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p1, p1, Lcom/narvii/pushservice/PushPayload;->type:I

    const/16 v0, 0x42

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onPushPayload(Lcom/narvii/pushservice/PushPayload;)V
    .locals 2

    .line 1461
    iget v0, p1, Lcom/narvii/pushservice/PushPayload;->type:I

    const/16 v1, 0x42

    if-ne v0, v1, :cond_0

    .line 1462
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$20;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    invoke-static {v0, p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->access$2100(Lcom/narvii/chat/video/fragments/VVChatMainFragment;Lcom/narvii/pushservice/PushPayload;)V

    :cond_0
    return-void
.end method
