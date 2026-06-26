.class final Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$$special$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "ChatBatchDeletionFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $this_apply:Lcom/narvii/widget/ACMAlertDialog;

.field final synthetic this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1;


# direct methods
.method constructor <init>(Lcom/narvii/widget/ACMAlertDialog;Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$$special$$inlined$apply$lambda$1;->$this_apply:Lcom/narvii/widget/ACMAlertDialog;

    iput-object p2, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$$special$$inlined$apply$lambda$1;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 146
    iget-object p1, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$$special$$inlined$apply$lambda$1;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1;

    iget-object p1, p1, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;

    invoke-static {p1}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->access$getProgress$p(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p1

    new-instance v0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$$special$$inlined$apply$lambda$1$1;

    invoke-direct {v0, p0}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$$special$$inlined$apply$lambda$1$1;-><init>(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$$special$$inlined$apply$lambda$1;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 151
    iget-object p1, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$$special$$inlined$apply$lambda$1;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1;

    iget-object p1, p1, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;

    invoke-static {p1}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->access$getProgress$p(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 155
    iget-object p1, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$$special$$inlined$apply$lambda$1;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1;

    iget-object p1, p1, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;

    .line 152
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "/chat/thread/leave"

    .line 153
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 154
    iget-object v1, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$$special$$inlined$apply$lambda$1;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1;

    iget-object v1, v1, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;

    invoke-static {v1}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->access$threadIds(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "threadIds"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->access$setApiRequest$p(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;Lcom/narvii/util/http/ApiRequest;)V

    .line 156
    iget-object p1, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$$special$$inlined$apply$lambda$1;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1;

    iget-object p1, p1, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;

    invoke-virtual {p1}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->getApi()Lcom/narvii/util/http/ApiService;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$$special$$inlined$apply$lambda$1;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1;

    iget-object v0, v0, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1;->this$0:Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;

    invoke-static {v0}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;->access$getApiRequest$p(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment;)Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    new-instance v1, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$$special$$inlined$apply$lambda$1$2;

    const-class v2, Lcom/narvii/model/api/ApiResponse;

    invoke-direct {v1, p0, v2}, Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$$special$$inlined$apply$lambda$1$2;-><init>(Lcom/narvii/chat/global/chat/ChatBatchDeletionFragment$onCreateOptionsMenu$1$$special$$inlined$apply$lambda$1;Ljava/lang/Class;)V

    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method
