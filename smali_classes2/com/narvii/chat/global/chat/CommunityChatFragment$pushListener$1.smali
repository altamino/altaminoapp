.class public final Lcom/narvii/chat/global/chat/CommunityChatFragment$pushListener$1;
.super Ljava/lang/Object;
.source "CommunityChatFragment.kt"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 463
    iput-object p1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$pushListener$1;->this$0:Lcom/narvii/chat/global/chat/CommunityChatFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptNotification(Lcom/narvii/pushservice/PushPayload;)Z
    .locals 3

    const-string v0, "payload"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 468
    iget v0, p1, Lcom/narvii/pushservice/PushPayload;->ndcId:I

    iget-object v1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$pushListener$1;->this$0:Lcom/narvii/chat/global/chat/CommunityChatFragment;

    const-string v2, "ndcId"

    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$pushListener$1;->this$0:Lcom/narvii/chat/global/chat/CommunityChatFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/narvii/pushservice/PushPayload;->isChat()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$pushListener$1;->this$0:Lcom/narvii/chat/global/chat/CommunityChatFragment;

    invoke-static {v0, p1}, Lcom/narvii/chat/global/chat/CommunityChatFragment;->access$isAnnouncementMsg(Lcom/narvii/chat/global/chat/CommunityChatFragment;Lcom/narvii/pushservice/PushPayload;)Z

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
    .locals 1

    const-string v0, "payload"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
