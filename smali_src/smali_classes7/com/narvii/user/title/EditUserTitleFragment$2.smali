.class Lcom/narvii/user/title/EditUserTitleFragment$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/user/title/EditUserTitleFragment;->submitTitles()V
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
.field final synthetic this$0:Lcom/narvii/user/title/EditUserTitleFragment;

.field final synthetic val$dialog:Lcom/narvii/util/dialog/ProgressDialog;

.field final synthetic val$selectedTagList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/narvii/user/title/EditUserTitleFragment;Ljava/lang/Class;Ljava/util/List;Lcom/narvii/util/dialog/ProgressDialog;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment$2;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/narvii/user/title/EditUserTitleFragment$2;->val$selectedTagList:Ljava/util/List;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/narvii/user/title/EditUserTitleFragment$2;->val$dialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 10
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
    .line 3
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment$2;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    return-void

    .line 13
    .line 14
    :cond_0
    iget-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment$2;->val$dialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 20
    .line 21
    :cond_1
    iget-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment$2;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 25
    move-result-object p1

    .line 26
    const/4 p2, 0x1

    .line 27
    .line 28
    .line 29
    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 34
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment$2;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/narvii/user/title/EditUserTitleFragment;->user:Lcom/narvii/model/User;

    .line 8
    .line 9
    iget-object p2, p1, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 10
    .line 11
    if-nez p2, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 15
    move-result-object p2

    .line 16
    .line 17
    iput-object p2, p1, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 18
    .line 19
    :cond_0
    iget-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment$2;->val$selectedTagList:Ljava/util/List;

    .line 20
    .line 21
    const-string p2, "customTitles"

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    sget-object v0, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    check-cast p1, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 32
    .line 33
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment$2;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/narvii/user/title/EditUserTitleFragment;->user:Lcom/narvii/model/User;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p2, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 41
    goto :goto_0

    .line 42
    .line 43
    :cond_1
    iget-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment$2;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    .line 44
    .line 45
    iget-object p1, p1, Lcom/narvii/user/title/EditUserTitleFragment;->user:Lcom/narvii/model/User;

    .line 46
    .line 47
    iget-object p1, p1, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 51
    .line 52
    :goto_0
    iget-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment$2;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    .line 53
    .line 54
    const-string p2, "notification"

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    check-cast p1, Lcom/narvii/notification/NotificationCenter;

    .line 61
    .line 62
    new-instance p2, Lcom/narvii/notification/Notification;

    .line 63
    .line 64
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment$2;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    .line 65
    .line 66
    iget-object v0, v0, Lcom/narvii/user/title/EditUserTitleFragment;->user:Lcom/narvii/model/User;

    .line 67
    .line 68
    .line 69
    const-string/jumbo v1, "update"

    .line 70
    .line 71
    .line 72
    invoke-direct {p2, v1, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, p2}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 76
    .line 77
    iget-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment$2;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 81
    move-result-object p1

    .line 82
    .line 83
    if-eqz p1, :cond_3

    .line 84
    .line 85
    iget-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment$2;->val$dialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 86
    .line 87
    if-eqz p1, :cond_2

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 91
    .line 92
    :cond_2
    iget-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment$2;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    .line 96
    :cond_3
    return-void
.end method
