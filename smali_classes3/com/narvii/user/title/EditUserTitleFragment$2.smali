.class Lcom/narvii/user/title/EditUserTitleFragment$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "EditUserTitleFragment.java"


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

    .line 178
    iput-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment$2;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    iput-object p3, p0, Lcom/narvii/user/title/EditUserTitleFragment$2;->val$selectedTagList:Ljava/util/List;

    iput-object p4, p0, Lcom/narvii/user/title/EditUserTitleFragment$2;->val$dialog:Lcom/narvii/util/dialog/ProgressDialog;

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

    .line 203
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 204
    iget-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment$2;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 207
    :cond_0
    iget-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment$2;->val$dialog:Lcom/narvii/util/dialog/ProgressDialog;

    if-eqz p1, :cond_1

    .line 208
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 210
    :cond_1
    iget-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment$2;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 181
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 182
    iget-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment$2;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    iget-object p1, p1, Lcom/narvii/user/title/EditUserTitleFragment;->user:Lcom/narvii/model/User;

    iget-object p2, p1, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-nez p2, :cond_0

    .line 183
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object p2

    iput-object p2, p1, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 185
    :cond_0
    iget-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment$2;->val$selectedTagList:Ljava/util/List;

    const-string p2, "customTitles"

    if-eqz p1, :cond_1

    .line 186
    sget-object v0, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 187
    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment$2;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    iget-object v0, v0, Lcom/narvii/user/title/EditUserTitleFragment;->user:Lcom/narvii/model/User;

    iget-object v0, v0, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-virtual {v0, p2, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    goto :goto_0

    .line 189
    :cond_1
    iget-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment$2;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    iget-object p1, p1, Lcom/narvii/user/title/EditUserTitleFragment;->user:Lcom/narvii/model/User;

    iget-object p1, p1, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 191
    :goto_0
    iget-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment$2;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    const-string p2, "notification"

    invoke-virtual {p1, p2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/notification/NotificationCenter;

    .line 192
    new-instance p2, Lcom/narvii/notification/Notification;

    iget-object v0, p0, Lcom/narvii/user/title/EditUserTitleFragment$2;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    iget-object v0, v0, Lcom/narvii/user/title/EditUserTitleFragment;->user:Lcom/narvii/model/User;

    const-string v1, "update"

    invoke-direct {p2, v1, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    invoke-virtual {p1, p2}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 193
    iget-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment$2;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 194
    iget-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment$2;->val$dialog:Lcom/narvii/util/dialog/ProgressDialog;

    if-eqz p1, :cond_2

    .line 195
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 197
    :cond_2
    iget-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment$2;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    :cond_3
    return-void
.end method
