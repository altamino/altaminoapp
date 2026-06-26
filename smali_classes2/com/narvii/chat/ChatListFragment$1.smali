.class Lcom/narvii/chat/ChatListFragment$1;
.super Ljava/lang/Object;
.source "ChatListFragment.java"

# interfaces
.implements Lcom/narvii/pushservice/PushService$PushListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/ChatListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/ChatListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/ChatListFragment;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/narvii/chat/ChatListFragment$1;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptNotification(Lcom/narvii/pushservice/PushPayload;)Z
    .locals 2

    .line 256
    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$1;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/narvii/pushservice/PushPayload;->threadId:Ljava/lang/String;

    iget-object v1, p0, Lcom/narvii/chat/ChatListFragment$1;->this$0:Lcom/narvii/chat/ChatListFragment;

    invoke-virtual {v1}, Lcom/narvii/chat/ChatListFragment;->getThreadId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/chat/ChatListFragment$1;->this$0:Lcom/narvii/chat/ChatListFragment;

    .line 257
    invoke-static {v0, p1}, Lcom/narvii/chat/ChatListFragment;->access$000(Lcom/narvii/chat/ChatListFragment;Lcom/narvii/pushservice/PushPayload;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onPushPayload(Lcom/narvii/pushservice/PushPayload;)V
    .locals 0

    return-void
.end method
