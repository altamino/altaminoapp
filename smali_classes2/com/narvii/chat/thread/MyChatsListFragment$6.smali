.class Lcom/narvii/chat/thread/MyChatsListFragment$6;
.super Ljava/lang/Object;
.source "MyChatsListFragment.java"

# interfaces
.implements Lcom/narvii/pushservice/PushService$PushListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/thread/MyChatsListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/thread/MyChatsListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/thread/MyChatsListFragment;)V
    .locals 0

    .line 1060
    iput-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$6;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptNotification(Lcom/narvii/pushservice/PushPayload;)Z
    .locals 2

    .line 1067
    iget v0, p1, Lcom/narvii/pushservice/PushPayload;->ndcId:I

    iget-object v1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$6;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    invoke-static {v1}, Lcom/narvii/chat/thread/MyChatsListFragment;->access$1200(Lcom/narvii/chat/thread/MyChatsListFragment;)Lcom/narvii/config/ConfigService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment$6;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    invoke-static {v0}, Lcom/narvii/chat/thread/MyChatsListFragment;->access$1300(Lcom/narvii/chat/thread/MyChatsListFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/narvii/pushservice/PushPayload;->isChat()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment$6;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    invoke-static {v0, p1}, Lcom/narvii/chat/thread/MyChatsListFragment;->access$1400(Lcom/narvii/chat/thread/MyChatsListFragment;Lcom/narvii/pushservice/PushPayload;)Z

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
