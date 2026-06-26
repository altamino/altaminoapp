.class Lcom/narvii/util/CheckEligibleHelper$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "CheckEligibleHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/CheckEligibleHelper;->checkEligible(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/util/Callback;)V
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
.field final synthetic this$0:Lcom/narvii/util/CheckEligibleHelper;

.field final synthetic val$callback:Lcom/narvii/util/Callback;

.field final synthetic val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/narvii/util/CheckEligibleHelper;Ljava/lang/Class;Lcom/narvii/util/Callback;Lcom/narvii/util/dialog/ProgressDialog;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/narvii/util/CheckEligibleHelper$2;->this$0:Lcom/narvii/util/CheckEligibleHelper;

    iput-object p3, p0, Lcom/narvii/util/CheckEligibleHelper$2;->val$callback:Lcom/narvii/util/Callback;

    iput-object p4, p0, Lcom/narvii/util/CheckEligibleHelper$2;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

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

    .line 75
    :try_start_0
    iget-object p1, p0, Lcom/narvii/util/CheckEligibleHelper$2;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    const/16 p1, 0xee

    if-ne p2, p1, :cond_0

    .line 79
    iget-object p1, p0, Lcom/narvii/util/CheckEligibleHelper$2;->this$0:Lcom/narvii/util/CheckEligibleHelper;

    invoke-static {p1}, Lcom/narvii/util/CheckEligibleHelper;->access$000(Lcom/narvii/util/CheckEligibleHelper;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    .line 80
    iget-object p1, p0, Lcom/narvii/util/CheckEligibleHelper$2;->this$0:Lcom/narvii/util/CheckEligibleHelper;

    iget-object p1, p1, Lcom/narvii/util/CheckEligibleHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/http/ApiService;->shouldShowErrMessage(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 81
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/narvii/util/CheckEligibleHelper$2;->this$0:Lcom/narvii/util/CheckEligibleHelper;

    iget-object p2, p2, Lcom/narvii/util/CheckEligibleHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 82
    invoke-virtual {p1, p4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 83
    sget p2, Lcom/narvii/lib/R$string;->close:I

    sget-object p3, Lcom/narvii/util/Utils;->DIALOG_BUTTON_EMPTY_LISTENER:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 84
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_1
    :goto_1
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 62
    iget-object p1, p0, Lcom/narvii/util/CheckEligibleHelper$2;->val$callback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 63
    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 66
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/narvii/util/CheckEligibleHelper$2;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
