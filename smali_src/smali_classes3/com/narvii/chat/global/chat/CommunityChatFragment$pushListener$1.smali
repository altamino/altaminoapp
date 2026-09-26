.class public final Lcom/narvii/chat/global/chat/CommunityChatFragment$pushListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/pushservice/PushService$PushListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/global/chat/CommunityChatFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/global/chat/CommunityChatFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/global/chat/CommunityChatFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$pushListener$1;->this$0:Lcom/narvii/chat/global/chat/CommunityChatFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onInterceptNotification(Lcom/narvii/pushservice/PushPayload;)Z
    .locals 3
    .param p1    # Lcom/narvii/pushservice/PushPayload;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "payload"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget v0, p1, Lcom/narvii/pushservice/PushPayload;->ndcId:I

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$pushListener$1;->this$0:Lcom/narvii/chat/global/chat/CommunityChatFragment;

    .line 10
    .line 11
    const-string v2, "ndcId"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 15
    move-result v1

    .line 16
    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$pushListener$1;->this$0:Lcom/narvii/chat/global/chat/CommunityChatFragment;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->isActive()Z

    .line 23
    move-result v0

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/narvii/pushservice/PushPayload;->isChat()Z

    .line 29
    move-result v0

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    iget-object v0, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$pushListener$1;->this$0:Lcom/narvii/chat/global/chat/CommunityChatFragment;

    .line 34
    .line 35
    .line 36
    invoke-static {v0, p1}, Lcom/narvii/chat/global/chat/CommunityChatFragment;->access$isAnnouncementMsg(Lcom/narvii/chat/global/chat/CommunityChatFragment;Lcom/narvii/pushservice/PushPayload;)Z

    .line 37
    move-result p1

    .line 38
    .line 39
    if-nez p1, :cond_0

    .line 40
    const/4 p1, 0x1

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 p1, 0x0

    .line 43
    :goto_0
    return p1
.end method

.method public onPushPayload(Lcom/narvii/pushservice/PushPayload;)V
    .locals 1
    .param p1    # Lcom/narvii/pushservice/PushPayload;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "payload"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
