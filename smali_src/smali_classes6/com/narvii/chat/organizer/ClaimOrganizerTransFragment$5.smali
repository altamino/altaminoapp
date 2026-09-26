.class Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$5;->this$0:Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;

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
    iget-object v0, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$5;->this$0:Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->isActive()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p1, Lcom/narvii/pushservice/PushPayload;->threadId:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$5;->this$0:Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->getThreadId()Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget p1, p1, Lcom/narvii/pushservice/PushPayload;->type:I

    .line 25
    .line 26
    const/16 v0, 0x35

    .line 27
    .line 28
    if-eq p1, v0, :cond_0

    .line 29
    .line 30
    const/16 v0, 0x36

    .line 31
    .line 32
    if-ne p1, v0, :cond_1

    .line 33
    :cond_0
    const/4 p1, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 p1, 0x0

    .line 36
    :goto_0
    return p1
.end method

.method public onPushPayload(Lcom/narvii/pushservice/PushPayload;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/pushservice/PushPayload;->threadId:Ljava/lang/String;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$5;->this$0:Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->getThreadId()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget p1, p1, Lcom/narvii/pushservice/PushPayload;->type:I

    .line 17
    .line 18
    const/16 v0, 0x35

    .line 19
    .line 20
    if-eq p1, v0, :cond_0

    .line 21
    .line 22
    const/16 v0, 0x36

    .line 23
    .line 24
    if-ne p1, v0, :cond_1

    .line 25
    .line 26
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$5;->this$0:Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->getThreadId()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-static {p1, v0}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->sendGetThreadRequest(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 34
    :cond_1
    return-void
.end method
