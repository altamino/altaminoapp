.class public final Lcom/narvii/chat/setting/AddCoHostFragment$deleteCoHost$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "AddCoHostFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/setting/AddCoHostFragment;->deleteCoHost(Lcom/narvii/model/User;)V
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
.field final synthetic $user:Lcom/narvii/model/User;

.field final synthetic this$0:Lcom/narvii/chat/setting/AddCoHostFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/setting/AddCoHostFragment;Lcom/narvii/model/User;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/model/User;",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .line 262
    iput-object p1, p0, Lcom/narvii/chat/setting/AddCoHostFragment$deleteCoHost$1;->this$0:Lcom/narvii/chat/setting/AddCoHostFragment;

    iput-object p2, p0, Lcom/narvii/chat/setting/AddCoHostFragment$deleteCoHost$1;->$user:Lcom/narvii/model/User;

    invoke-direct {p0, p3}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

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

    .line 273
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 274
    iget-object p1, p0, Lcom/narvii/chat/setting/AddCoHostFragment$deleteCoHost$1;->this$0:Lcom/narvii/chat/setting/AddCoHostFragment;

    invoke-static {p1}, Lcom/narvii/chat/setting/AddCoHostFragment;->access$getLoadingDialog$p(Lcom/narvii/chat/setting/AddCoHostFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 265
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 266
    iget-object p1, p0, Lcom/narvii/chat/setting/AddCoHostFragment$deleteCoHost$1;->this$0:Lcom/narvii/chat/setting/AddCoHostFragment;

    invoke-static {p1}, Lcom/narvii/chat/setting/AddCoHostFragment;->access$getCoHostDataSource$p(Lcom/narvii/chat/setting/AddCoHostFragment;)Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter$CoHostDataSource;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/chat/setting/AddCoHostFragment$deleteCoHost$1;->$user:Lcom/narvii/model/User;

    invoke-virtual {p1, p2}, Lcom/narvii/paging/source/DataSource;->removeData(Lcom/narvii/model/NVObject;)I

    .line 267
    iget-object p1, p0, Lcom/narvii/chat/setting/AddCoHostFragment$deleteCoHost$1;->this$0:Lcom/narvii/chat/setting/AddCoHostFragment;

    invoke-static {p1}, Lcom/narvii/chat/setting/AddCoHostFragment;->access$getMergeAdapter$p(Lcom/narvii/chat/setting/AddCoHostFragment;)Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 268
    iget-object p1, p0, Lcom/narvii/chat/setting/AddCoHostFragment$deleteCoHost$1;->this$0:Lcom/narvii/chat/setting/AddCoHostFragment;

    invoke-static {p1}, Lcom/narvii/chat/setting/AddCoHostFragment;->access$sendCoHostNotification(Lcom/narvii/chat/setting/AddCoHostFragment;)V

    .line 269
    iget-object p1, p0, Lcom/narvii/chat/setting/AddCoHostFragment$deleteCoHost$1;->this$0:Lcom/narvii/chat/setting/AddCoHostFragment;

    invoke-static {p1}, Lcom/narvii/chat/setting/AddCoHostFragment;->access$getLoadingDialog$p(Lcom/narvii/chat/setting/AddCoHostFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    return-void
.end method
