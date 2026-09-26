.class public final Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$1$1$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
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
    value = "SMAP\nChatBatchDeletionFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatBatchDeletionFragment.kt\ncom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$1$1$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,435:1\n1855#2,2:436\n*S KotlinDebug\n*F\n+ 1 ChatBatchDeletionFragment.kt\ncom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$1$1$2\n*L\n161#1:436,2\n*E\n"
.end annotation


# instance fields
.field final synthetic $this_apply:Lcom/narvii/widget/ACMAlertDialog;

.field final synthetic this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;Lcom/narvii/widget/ACMAlertDialog;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;",
            "Lcom/narvii/widget/ACMAlertDialog;",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/api/ApiResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$1$1$2;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$1$1$2;->$this_apply:Lcom/narvii/widget/ACMAlertDialog;

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
    iget-object p1, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$1$1$2;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->access$getProgress(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 13
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 4
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
    new-instance p1, Lcom/narvii/chat/util/ChatRequestHelper;

    .line 6
    .line 7
    iget-object p2, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$1$1$2;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;

    .line 8
    .line 9
    .line 10
    invoke-direct {p1, p2}, Lcom/narvii/chat/util/ChatRequestHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 11
    .line 12
    iget-object p2, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$1$1$2;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->getAccount()Lcom/narvii/account/AccountService;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 20
    move-result-object p2

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$1$1$2;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->access$getSelectThreads$p(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;)Ljava/util/List;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    check-cast v0, Ljava/lang/Iterable;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$1$1$2;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;

    .line 31
    .line 32
    .line 33
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    .line 37
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    move-result v2

    .line 39
    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    move-result-object v2

    .line 45
    .line 46
    check-cast v2, Lcom/narvii/model/ChatThread;

    .line 47
    .line 48
    iget-object v3, v2, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p2, v3, v2}, Lcom/narvii/chat/util/ChatRequestHelper;->handleDeleteUserResponse(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/model/ChatThread;)V

    .line 52
    .line 53
    .line 54
    invoke-static {v1, v2}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->access$removeThreadFromRTC(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;Lcom/narvii/model/ChatThread;)V

    .line 55
    goto :goto_0

    .line 56
    .line 57
    :cond_0
    new-instance p1, Lcom/narvii/chat/thread/object/BatchDeleteChatObject;

    .line 58
    .line 59
    .line 60
    invoke-direct {p1}, Lcom/narvii/chat/thread/object/BatchDeleteChatObject;-><init>()V

    .line 61
    .line 62
    iget-object p2, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$1$1$2;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;

    .line 63
    .line 64
    .line 65
    invoke-static {p2}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->access$selectIds(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;)Ljava/util/List;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v0}, Lcom/narvii/chat/thread/object/BatchDeleteChatObject;->setSelectThreadIdsList(Ljava/util/List;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->getNdcId()I

    .line 73
    move-result p2

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p2}, Lcom/narvii/chat/thread/object/BatchDeleteChatObject;->setNdcId(I)V

    .line 77
    .line 78
    new-instance p2, Lcom/narvii/notification/Notification;

    .line 79
    .line 80
    const-string v0, "delete"

    .line 81
    .line 82
    .line 83
    invoke-direct {p2, v0, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 84
    .line 85
    iget-object p1, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$1$1$2;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;

    .line 86
    .line 87
    .line 88
    invoke-static {p1}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->access$getProgress(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    .line 89
    move-result-object p1

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 93
    .line 94
    iget-object p1, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$1$1$2;->$this_apply:Lcom/narvii/widget/ACMAlertDialog;

    .line 95
    .line 96
    const-string v0, "notification"

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVDialog;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 100
    move-result-object p1

    .line 101
    .line 102
    check-cast p1, Lcom/narvii/notification/NotificationCenter;

    .line 103
    .line 104
    .line 105
    invoke-static {p1, p2}, Lcom/narvii/util/NotificationUtils;->sendNotificationIncludeGlobal(Lcom/narvii/notification/NotificationCenter;Lcom/narvii/notification/Notification;)V

    .line 106
    .line 107
    iget-object p1, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$1$1$2;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;

    .line 108
    .line 109
    .line 110
    invoke-static {p1}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->access$getSelectThreads$p(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;)Ljava/util/List;

    .line 111
    move-result-object p1

    .line 112
    .line 113
    .line 114
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 115
    .line 116
    iget-object p1, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$1$1$2;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->invalidateOptionsMenu()V

    .line 120
    return-void
.end method
