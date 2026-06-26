.class public final Lcom/narvii/chat/setting/SelectCoHostFragment$onConfirmPick$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SelectCoHostFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/setting/SelectCoHostFragment;->onConfirmPick(Ljava/util/List;)V
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
.field final synthetic $list:Ljava/util/List;

.field final synthetic this$0:Lcom/narvii/chat/setting/SelectCoHostFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/setting/SelectCoHostFragment;Ljava/util/List;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List;",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lcom/narvii/chat/setting/SelectCoHostFragment$onConfirmPick$2;->this$0:Lcom/narvii/chat/setting/SelectCoHostFragment;

    iput-object p2, p0, Lcom/narvii/chat/setting/SelectCoHostFragment$onConfirmPick$2;->$list:Ljava/util/List;

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

    .line 73
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 74
    iget-object p1, p0, Lcom/narvii/chat/setting/SelectCoHostFragment$onConfirmPick$2;->this$0:Lcom/narvii/chat/setting/SelectCoHostFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 75
    iget-object p1, p0, Lcom/narvii/chat/setting/SelectCoHostFragment$onConfirmPick$2;->this$0:Lcom/narvii/chat/setting/SelectCoHostFragment;

    invoke-static {p1}, Lcom/narvii/chat/setting/SelectCoHostFragment;->access$getLoadingDialog$p(Lcom/narvii/chat/setting/SelectCoHostFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 67
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 68
    iget-object p1, p0, Lcom/narvii/chat/setting/SelectCoHostFragment$onConfirmPick$2;->this$0:Lcom/narvii/chat/setting/SelectCoHostFragment;

    invoke-static {p1}, Lcom/narvii/chat/setting/SelectCoHostFragment;->access$getLoadingDialog$p(Lcom/narvii/chat/setting/SelectCoHostFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 69
    iget-object p1, p0, Lcom/narvii/chat/setting/SelectCoHostFragment$onConfirmPick$2;->this$0:Lcom/narvii/chat/setting/SelectCoHostFragment;

    iget-object p2, p0, Lcom/narvii/chat/setting/SelectCoHostFragment$onConfirmPick$2;->$list:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/narvii/chat/setting/SelectCoHostFragment;->access$onConfirmPick$s-1081147680(Lcom/narvii/chat/setting/SelectCoHostFragment;Ljava/util/List;)V

    return-void
.end method
