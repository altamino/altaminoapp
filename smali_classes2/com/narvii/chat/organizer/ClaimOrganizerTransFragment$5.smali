.class Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$5;
.super Ljava/lang/Object;
.source "ClaimOrganizerTransFragment.java"

# interfaces
.implements Lcom/narvii/pushservice/PushService$PushListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;)V
    .locals 0

    .line 408
    iput-object p1, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$5;->this$0:Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptNotification(Lcom/narvii/pushservice/PushPayload;)Z
    .locals 2

    .line 419
    iget-object v0, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$5;->this$0:Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/narvii/pushservice/PushPayload;->threadId:Ljava/lang/String;

    iget-object v1, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$5;->this$0:Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;

    invoke-virtual {v1}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->getThreadId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget p1, p1, Lcom/narvii/pushservice/PushPayload;->type:I

    const/16 v0, 0x35

    if-eq p1, v0, :cond_0

    const/16 v0, 0x36

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onPushPayload(Lcom/narvii/pushservice/PushPayload;)V
    .locals 2

    .line 411
    iget-object v0, p1, Lcom/narvii/pushservice/PushPayload;->threadId:Ljava/lang/String;

    iget-object v1, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$5;->this$0:Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;

    invoke-virtual {v1}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->getThreadId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget p1, p1, Lcom/narvii/pushservice/PushPayload;->type:I

    const/16 v0, 0x35

    if-eq p1, v0, :cond_0

    const/16 v0, 0x36

    if-ne p1, v0, :cond_1

    .line 413
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$5;->this$0:Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;

    invoke-virtual {p1}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->getThreadId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->sendGetThreadRequest(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
