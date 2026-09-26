.class Lcom/narvii/chat/thread/MyChatsListFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$5;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onInterceptNotification(Lcom/narvii/pushservice/PushPayload;)Z
    .locals 2

    .line 1
    .line 2
    iget v0, p1, Lcom/narvii/pushservice/PushPayload;->ndcId:I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$5;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    .line 5
    .line 6
    .line 7
    invoke-static {v1}, Lcom/narvii/chat/thread/MyChatsListFragment;->y(Lcom/narvii/chat/thread/MyChatsListFragment;)Lcom/narvii/config/ConfigService;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 12
    move-result v1

    .line 13
    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment$5;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lcom/narvii/chat/thread/MyChatsListFragment;->C(Lcom/narvii/chat/thread/MyChatsListFragment;)Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/narvii/pushservice/PushPayload;->isChat()Z

    .line 26
    move-result v0

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment$5;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    .line 31
    .line 32
    .line 33
    invoke-static {v0, p1}, Lcom/narvii/chat/thread/MyChatsListFragment;->F(Lcom/narvii/chat/thread/MyChatsListFragment;Lcom/narvii/pushservice/PushPayload;)Z

    .line 34
    move-result p1

    .line 35
    .line 36
    if-nez p1, :cond_0

    .line 37
    const/4 p1, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 p1, 0x0

    .line 40
    :goto_0
    return p1
.end method

.method public onPushPayload(Lcom/narvii/pushservice/PushPayload;)V
    .locals 0

    return-void
.end method
