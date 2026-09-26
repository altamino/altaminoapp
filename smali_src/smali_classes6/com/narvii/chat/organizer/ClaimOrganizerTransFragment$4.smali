.class Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$4;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->sendGetThreadRequest(Lcom/narvii/app/NVContext;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/chat/ThreadResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$hasRecentChatToRecord:Z

.field final synthetic val$nc:Lcom/narvii/notification/NotificationCenter;

.field final synthetic val$nvContext:Lcom/narvii/app/NVContext;


# direct methods
.method constructor <init>(Ljava/lang/Class;ZLcom/narvii/app/NVContext;Lcom/narvii/notification/NotificationCenter;)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p2, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$4;->val$hasRecentChatToRecord:Z

    .line 3
    .line 4
    iput-object p3, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$4;->val$nvContext:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$4;->val$nc:Lcom/narvii/notification/NotificationCenter;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 10
    return-void
.end method


# virtual methods
.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/ThreadResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    iget-object p1, p2, Lcom/narvii/chat/ThreadResponse;->thread:Lcom/narvii/model/ChatThread;

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$4;->val$hasRecentChatToRecord:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$4;->val$nvContext:Lcom/narvii/app/NVContext;

    const-string v0, "globalChat"

    .line 3
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/util/GlobalChatService;

    iget-object v0, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$4;->val$nvContext:Lcom/narvii/app/NVContext;

    const-string v1, "config"

    .line 4
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 5
    iget-object v1, p2, Lcom/narvii/chat/ThreadResponse;->thread:Lcom/narvii/model/ChatThread;

    .line 6
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    iget-object v2, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$4;->val$nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 7
    invoke-static {v1, v0, v2}, Lcom/narvii/chat/global/GlobalChatThread;->newGlobalChatThread(Lcom/narvii/model/ChatThread;ILandroid/content/Context;)Lcom/narvii/chat/global/GlobalChatThread;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/chat/util/GlobalChatService;->addRecentChat(Lcom/narvii/chat/global/GlobalChatThread;)V

    .line 8
    :cond_0
    new-instance p1, Lcom/narvii/notification/Notification;

    const-string v0, "update"

    iget-object p2, p2, Lcom/narvii/chat/ThreadResponse;->thread:Lcom/narvii/model/ChatThread;

    invoke-direct {p1, v0, p2}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 9
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iput-object p2, p1, Lcom/narvii/notification/Notification;->bundle:Landroid/os/Bundle;

    const-string v0, "_instantFullInfo"

    const/4 v1, 0x1

    .line 10
    invoke-virtual {p2, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p2, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$4;->val$nc:Lcom/narvii/notification/NotificationCenter;

    .line 11
    invoke-virtual {p2, p1}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/narvii/chat/ThreadResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$4;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/ThreadResponse;)V

    return-void
.end method
