.class Lcom/narvii/chat/detail/ThreadDetailFragment$11;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/detail/ThreadDetailFragment;->switchClicked(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

.field final synthetic val$alertOption:I

.field final synthetic val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

.field final synthetic val$isCurPinned:Z

.field final synthetic val$isForMute:Z


# direct methods
.method constructor <init>(Lcom/narvii/chat/detail/ThreadDetailFragment;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;ZIZ)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$11;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$11;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 5
    .line 6
    iput-boolean p4, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$11;->val$isForMute:Z

    .line 7
    .line 8
    iput p5, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$11;->val$alertOption:I

    .line 9
    .line 10
    iput-boolean p6, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$11;->val$isCurPinned:Z

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 14
    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 0
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
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$11;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object p1

    .line 7
    const/4 p2, 0x0

    .line 8
    .line 9
    .line 10
    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$11;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 20
    .line 21
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$11;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 22
    .line 23
    iget-object p1, p1, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    .line 27
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$11;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$11;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/narvii/chat/detail/ThreadDetailFragment;->adapter:Lcom/narvii/chat/detail/ThreadDetailFragment$Adapter;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    check-cast p1, Lcom/narvii/model/ChatThread;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    check-cast p1, Lcom/narvii/model/ChatThread;

    .line 22
    .line 23
    iget-boolean p2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$11;->val$isForMute:Z

    .line 24
    .line 25
    if-eqz p2, :cond_0

    .line 26
    .line 27
    iget p2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$11;->val$alertOption:I

    .line 28
    .line 29
    iput p2, p1, Lcom/narvii/model/ChatThread;->alertOption:I

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :cond_0
    iget-boolean p2, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$11;->val$isCurPinned:Z

    .line 33
    .line 34
    xor-int/lit8 p2, p2, 0x1

    .line 35
    .line 36
    iput-boolean p2, p1, Lcom/narvii/model/ChatThread;->isPinned:Z

    .line 37
    .line 38
    :goto_0
    new-instance p2, Lcom/narvii/notification/Notification;

    .line 39
    .line 40
    const-string v0, "update"

    .line 41
    .line 42
    .line 43
    invoke-direct {p2, v0, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 44
    .line 45
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadDetailFragment$11;->this$0:Lcom/narvii/chat/detail/ThreadDetailFragment;

    .line 46
    .line 47
    const-string v0, "notification"

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    check-cast p1, Lcom/narvii/notification/NotificationCenter;

    .line 54
    .line 55
    .line 56
    invoke-static {p1, p2}, Lcom/narvii/util/NotificationUtils;->sendNotificationIncludeGlobal(Lcom/narvii/notification/NotificationCenter;Lcom/narvii/notification/Notification;)V

    .line 57
    return-void
.end method
