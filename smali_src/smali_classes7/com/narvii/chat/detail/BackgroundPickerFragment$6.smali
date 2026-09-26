.class Lcom/narvii/chat/detail/BackgroundPickerFragment$6;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/detail/BackgroundPickerFragment$6;->this$0:Lcom/narvii/chat/detail/BackgroundPickerFragment;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/narvii/chat/detail/BackgroundPickerFragment$6;->val$m:Lcom/narvii/model/Media;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 8
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

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/detail/BackgroundPickerFragment$6;->this$0:Lcom/narvii/chat/detail/BackgroundPickerFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/chat/detail/BackgroundPickerFragment;->n(Lcom/narvii/chat/detail/BackgroundPickerFragment;)Lcom/narvii/model/ChatThread;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    check-cast p1, Lcom/narvii/model/ChatThread;

    .line 13
    .line 14
    iget-object p2, p0, Lcom/narvii/chat/detail/BackgroundPickerFragment$6;->val$m:Lcom/narvii/model/Media;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2}, Lcom/narvii/model/ChatThread;->setBackground(Lcom/narvii/model/Media;)V

    .line 18
    .line 19
    new-instance p2, Lcom/narvii/notification/Notification;

    .line 20
    .line 21
    const-string v0, "update"

    .line 22
    .line 23
    .line 24
    invoke-direct {p2, v0, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 25
    .line 26
    iget-object p1, p0, Lcom/narvii/chat/detail/BackgroundPickerFragment$6;->this$0:Lcom/narvii/chat/detail/BackgroundPickerFragment;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2}, Lcom/narvii/app/NVFragment;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 30
    .line 31
    iget-object p1, p0, Lcom/narvii/chat/detail/BackgroundPickerFragment$6;->this$0:Lcom/narvii/chat/detail/BackgroundPickerFragment;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    .line 35
    return-void
.end method
