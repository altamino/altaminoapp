.class Lcom/narvii/chat/detail/BackgroundPickerFragment$6;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "BackgroundPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/detail/BackgroundPickerFragment;->setBackground(Lcom/narvii/model/Media;)V
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
.field final synthetic this$0:Lcom/narvii/chat/detail/BackgroundPickerFragment;

.field final synthetic val$m:Lcom/narvii/model/Media;


# direct methods
.method constructor <init>(Lcom/narvii/chat/detail/BackgroundPickerFragment;Ljava/lang/Class;Lcom/narvii/model/Media;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/narvii/chat/detail/BackgroundPickerFragment$6;->this$0:Lcom/narvii/chat/detail/BackgroundPickerFragment;

    iput-object p3, p0, Lcom/narvii/chat/detail/BackgroundPickerFragment$6;->val$m:Lcom/narvii/model/Media;

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

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

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 206
    iget-object p1, p0, Lcom/narvii/chat/detail/BackgroundPickerFragment$6;->this$0:Lcom/narvii/chat/detail/BackgroundPickerFragment;

    invoke-static {p1}, Lcom/narvii/chat/detail/BackgroundPickerFragment;->access$000(Lcom/narvii/chat/detail/BackgroundPickerFragment;)Lcom/narvii/model/ChatThread;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/ChatThread;

    .line 207
    iget-object p2, p0, Lcom/narvii/chat/detail/BackgroundPickerFragment$6;->val$m:Lcom/narvii/model/Media;

    invoke-virtual {p1, p2}, Lcom/narvii/model/ChatThread;->setBackground(Lcom/narvii/model/Media;)V

    .line 208
    new-instance p2, Lcom/narvii/notification/Notification;

    const-string/jumbo v0, "update"

    invoke-direct {p2, v0, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 209
    iget-object p1, p0, Lcom/narvii/chat/detail/BackgroundPickerFragment$6;->this$0:Lcom/narvii/chat/detail/BackgroundPickerFragment;

    invoke-virtual {p1, p2}, Lcom/narvii/app/NVFragment;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 211
    iget-object p1, p0, Lcom/narvii/chat/detail/BackgroundPickerFragment$6;->this$0:Lcom/narvii/chat/detail/BackgroundPickerFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method
