.class public final Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$$special$$inlined$apply$lambda$1$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "ChatBatchDeletionFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$$special$$inlined$apply$lambda$1;->onClick(Landroid/view/View;)V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatBatchDeletionFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatBatchDeletionFragment.kt\ncom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$1$1$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,432:1\n1587#2,2:433\n*E\n*S KotlinDebug\n*F\n+ 1 ChatBatchDeletionFragment.kt\ncom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$1$1$2\n*L\n162#1,2:433\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$$special$$inlined$apply$lambda$1;


# direct methods
.method constructor <init>(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$$special$$inlined$apply$lambda$1;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$$special$$inlined$apply$lambda$1$2;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$$special$$inlined$apply$lambda$1;

    .line 156
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

    .line 181
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 182
    iget-object p1, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$$special$$inlined$apply$lambda$1$2;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$$special$$inlined$apply$lambda$1;

    iget-object p1, p1, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$$special$$inlined$apply$lambda$1;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1;

    iget-object p1, p1, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;

    invoke-static {p1}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->access$getProgress$p(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 3

    .line 159
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 160
    new-instance p1, Lcom/narvii/chat/util/ChatRequestHelper;

    iget-object p2, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$$special$$inlined$apply$lambda$1$2;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$$special$$inlined$apply$lambda$1;

    iget-object p2, p2, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$$special$$inlined$apply$lambda$1;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1;

    iget-object p2, p2, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;

    invoke-direct {p1, p2}, Lcom/narvii/chat/util/ChatRequestHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 161
    iget-object p2, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$$special$$inlined$apply$lambda$1$2;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$$special$$inlined$apply$lambda$1;

    iget-object p2, p2, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$$special$$inlined$apply$lambda$1;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1;

    iget-object p2, p2, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;

    invoke-virtual {p2}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->getAccount()Lcom/narvii/account/AccountService;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object p2

    .line 162
    iget-object v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$$special$$inlined$apply$lambda$1$2;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$$special$$inlined$apply$lambda$1;

    iget-object v0, v0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$$special$$inlined$apply$lambda$1;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1;

    iget-object v0, v0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;

    invoke-static {v0}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->access$getSelectThreads$p(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;)Ljava/util/List;

    move-result-object v0

    .line 433
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/ChatThread;

    .line 163
    iget-object v2, v1, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    invoke-virtual {p1, p2, v2, v1}, Lcom/narvii/chat/util/ChatRequestHelper;->handleDeleteUserResponse(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/model/ChatThread;)V

    .line 164
    iget-object v2, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$$special$$inlined$apply$lambda$1$2;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$$special$$inlined$apply$lambda$1;

    iget-object v2, v2, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$$special$$inlined$apply$lambda$1;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1;

    iget-object v2, v2, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;

    invoke-static {v2, v1}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->access$removeThreadFromRTC(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;Lcom/narvii/model/ChatThread;)V

    goto :goto_0

    .line 167
    :cond_0
    new-instance p1, Lcom/narvii/chat/thread/object/BatchDeleteChatObject;

    invoke-direct {p1}, Lcom/narvii/chat/thread/object/BatchDeleteChatObject;-><init>()V

    .line 168
    iget-object p2, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$$special$$inlined$apply$lambda$1$2;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$$special$$inlined$apply$lambda$1;

    iget-object p2, p2, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$$special$$inlined$apply$lambda$1;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1;

    iget-object p2, p2, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;

    invoke-static {p2}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->access$selectIds(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/chat/thread/object/BatchDeleteChatObject;->setSelectThreadIdsList(Ljava/util/List;)V

    .line 169
    iget-object p2, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$$special$$inlined$apply$lambda$1$2;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$$special$$inlined$apply$lambda$1;

    iget-object p2, p2, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$$special$$inlined$apply$lambda$1;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1;

    iget-object p2, p2, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;

    invoke-virtual {p2}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->getNdcId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/narvii/chat/thread/object/BatchDeleteChatObject;->setNdcId(I)V

    .line 167
    new-instance p2, Lcom/narvii/notification/Notification;

    const-string v0, "delete"

    invoke-direct {p2, v0, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 172
    iget-object p1, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$$special$$inlined$apply$lambda$1$2;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$$special$$inlined$apply$lambda$1;

    iget-object p1, p1, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$$special$$inlined$apply$lambda$1;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1;

    iget-object p1, p1, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;

    invoke-static {p1}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->access$getProgress$p(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 173
    iget-object p1, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$$special$$inlined$apply$lambda$1$2;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$$special$$inlined$apply$lambda$1;

    iget-object p1, p1, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$$special$$inlined$apply$lambda$1;->$this_apply:Lcom/narvii/widget/ACMAlertDialog;

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVDialog;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/notification/NotificationCenter;

    .line 174
    invoke-static {p1, p2}, Lcom/narvii/util/NotificationUtils;->sendNotificationIncludeGlobal(Lcom/narvii/notification/NotificationCenter;Lcom/narvii/notification/Notification;)V

    .line 176
    iget-object p1, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$$special$$inlined$apply$lambda$1$2;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$$special$$inlined$apply$lambda$1;

    iget-object p1, p1, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$$special$$inlined$apply$lambda$1;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1;

    iget-object p1, p1, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;

    invoke-static {p1}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->access$getSelectThreads$p(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 177
    iget-object p1, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$$special$$inlined$apply$lambda$1$2;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$$special$$inlined$apply$lambda$1;

    iget-object p1, p1, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$$special$$inlined$apply$lambda$1;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1;

    iget-object p1, p1, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->invalidateOptionsMenu()V

    return-void
.end method
