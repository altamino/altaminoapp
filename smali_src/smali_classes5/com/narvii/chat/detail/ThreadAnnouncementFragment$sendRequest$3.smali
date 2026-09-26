.class public final Lcom/narvii/chat/detail/ThreadAnnouncementFragment$sendRequest$3;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->sendRequest(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/model/api/ApiResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $isPinAnnouncement:Z

.field final synthetic this$0:Lcom/narvii/chat/detail/ThreadAnnouncementFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/detail/ThreadAnnouncementFragment;ZLjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/chat/detail/ThreadAnnouncementFragment;",
            "Z",
            "Ljava/lang/Class<",
            "Lcom/narvii/chat/ThreadResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment$sendRequest$3;->this$0:Lcom/narvii/chat/detail/ThreadAnnouncementFragment;

    .line 3
    .line 4
    iput-boolean p2, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment$sendRequest$3;->$isPinAnnouncement:Z

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p3}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 8
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
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment$sendRequest$3;->this$0:Lcom/narvii/chat/detail/ThreadAnnouncementFragment;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->getProgressDialog()Lcom/narvii/util/dialog/ProgressDialog;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment$sendRequest$3;->this$0:Lcom/narvii/chat/detail/ThreadAnnouncementFragment;

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

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 3
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/model/api/ApiResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment$sendRequest$3;->this$0:Lcom/narvii/chat/detail/ThreadAnnouncementFragment;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->getProgressDialog()Lcom/narvii/util/dialog/ProgressDialog;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment$sendRequest$3;->this$0:Lcom/narvii/chat/detail/ThreadAnnouncementFragment;

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->access$getChatThread$p(Lcom/narvii/chat/detail/ThreadAnnouncementFragment;)Lcom/narvii/model/ChatThread;

    .line 18
    move-result-object p1

    .line 19
    const/4 p2, 0x0

    .line 20
    .line 21
    const-string v0, "chatThread"

    .line 22
    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 27
    move-object p1, p2

    .line 28
    .line 29
    :cond_0
    iget-boolean v1, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment$sendRequest$3;->$isPinAnnouncement:Z

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v1}, Lcom/narvii/model/ChatThread;->setPinAnnouncement(Z)V

    .line 33
    .line 34
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment$sendRequest$3;->this$0:Lcom/narvii/chat/detail/ThreadAnnouncementFragment;

    .line 35
    .line 36
    const-string v1, "notification"

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    check-cast p1, Lcom/narvii/notification/NotificationCenter;

    .line 43
    .line 44
    new-instance v1, Lcom/narvii/notification/Notification;

    .line 45
    .line 46
    iget-object v2, p0, Lcom/narvii/chat/detail/ThreadAnnouncementFragment$sendRequest$3;->this$0:Lcom/narvii/chat/detail/ThreadAnnouncementFragment;

    .line 47
    .line 48
    .line 49
    invoke-static {v2}, Lcom/narvii/chat/detail/ThreadAnnouncementFragment;->access$getChatThread$p(Lcom/narvii/chat/detail/ThreadAnnouncementFragment;)Lcom/narvii/model/ChatThread;

    .line 50
    move-result-object v2

    .line 51
    .line 52
    if-nez v2, :cond_1

    .line 53
    .line 54
    .line 55
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    move-object p2, v2

    .line 58
    .line 59
    :goto_0
    const-string v0, "update"

    .line 60
    .line 61
    .line 62
    invoke-direct {v1, v0, p2}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 63
    .line 64
    .line 65
    invoke-static {p1, v1}, Lcom/narvii/util/NotificationUtils;->sendNotificationIncludeGlobal(Lcom/narvii/notification/NotificationCenter;Lcom/narvii/notification/Notification;)V

    .line 66
    return-void
.end method
