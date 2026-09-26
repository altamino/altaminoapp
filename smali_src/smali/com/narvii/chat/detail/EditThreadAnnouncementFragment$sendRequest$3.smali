.class public final Lcom/narvii/chat/detail/EditThreadAnnouncementFragment$sendRequest$3;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;->sendRequest(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
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
.field final synthetic $announcement:Ljava/lang/String;

.field final synthetic $isPinAnnouncement:Z

.field final synthetic this$0:Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;Ljava/lang/String;ZLjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/Class<",
            "Lcom/narvii/chat/ThreadResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment$sendRequest$3;->this$0:Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment$sendRequest$3;->$announcement:Ljava/lang/String;

    .line 5
    .line 6
    iput-boolean p3, p0, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment$sendRequest$3;->$isPinAnnouncement:Z

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p4}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 10
    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/model/api/ApiResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "I",
            "Ljava/util/List<",
            "Lcom/narvii/util/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/narvii/model/api/ApiResponse;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment$sendRequest$3;->this$0:Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/narvii/master/home/profile/BaseSingleEditFragment;->getProgressDialog()Lcom/narvii/util/dialog/ProgressDialog;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment$sendRequest$3;->this$0:Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-static {p1, p4}, Lcom/narvii/util/Utils;->showShortToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/ThreadResponse;)V
    .locals 2
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/chat/ThreadResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    iget-object p1, p0, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment$sendRequest$3;->this$0:Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;

    .line 3
    invoke-virtual {p1}, Lcom/narvii/master/home/profile/BaseSingleEditFragment;->getProgressDialog()Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    if-eqz p2, :cond_0

    .line 4
    iget-object p1, p2, Lcom/narvii/chat/ThreadResponse;->thread:Lcom/narvii/model/ChatThread;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment$sendRequest$3;->this$0:Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;

    .line 5
    invoke-virtual {p1}, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;->getChatThread()Lcom/narvii/model/ChatThread;

    move-result-object p1

    iget-object v0, p2, Lcom/narvii/chat/ThreadResponse;->thread:Lcom/narvii/model/ChatThread;

    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->getAnnouncement()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/model/ChatThread;->setAnnouncement(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment$sendRequest$3;->this$0:Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;

    .line 6
    invoke-virtual {p1}, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;->getChatThread()Lcom/narvii/model/ChatThread;

    move-result-object p1

    iget-object p2, p2, Lcom/narvii/chat/ThreadResponse;->thread:Lcom/narvii/model/ChatThread;

    invoke-virtual {p2}, Lcom/narvii/model/ChatThread;->isPinAnnouncement()Ljava/lang/Boolean;

    move-result-object p2

    const-string v0, "isPinAnnouncement(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/narvii/model/ChatThread;->setPinAnnouncement(Z)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment$sendRequest$3;->this$0:Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;

    .line 7
    invoke-virtual {p1}, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;->getChatThread()Lcom/narvii/model/ChatThread;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment$sendRequest$3;->$announcement:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/narvii/model/ChatThread;->setAnnouncement(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment$sendRequest$3;->$isPinAnnouncement:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment$sendRequest$3;->this$0:Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;

    .line 8
    invoke-virtual {p1}, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;->getChatThread()Lcom/narvii/model/ChatThread;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/narvii/model/ChatThread;->setPinAnnouncement(Z)V

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment$sendRequest$3;->this$0:Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;

    const-string p2, "notification"

    .line 9
    invoke-virtual {p1, p2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/notification/NotificationCenter;

    .line 10
    new-instance p2, Lcom/narvii/notification/Notification;

    iget-object v0, p0, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment$sendRequest$3;->this$0:Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;

    invoke-virtual {v0}, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;->getChatThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    const-string/jumbo v1, "update"

    invoke-direct {p2, v1, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    invoke-static {p1, p2}, Lcom/narvii/util/NotificationUtils;->sendNotificationIncludeGlobal(Lcom/narvii/notification/NotificationCenter;Lcom/narvii/notification/Notification;)V

    iget-object p1, p0, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment$sendRequest$3;->this$0:Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;

    .line 11
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/chat/ThreadResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment$sendRequest$3;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/ThreadResponse;)V

    return-void
.end method
