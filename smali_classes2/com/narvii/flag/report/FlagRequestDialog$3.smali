.class Lcom/narvii/flag/report/FlagRequestDialog$3;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "FlagRequestDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/flag/report/FlagRequestDialog;->sendFlagRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/flag/report/FlagRequestDialog;


# direct methods
.method constructor <init>(Lcom/narvii/flag/report/FlagRequestDialog;Ljava/lang/Class;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/narvii/flag/report/FlagRequestDialog$3;->this$0:Lcom/narvii/flag/report/FlagRequestDialog;

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

    .line 171
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 172
    iget-object p2, p0, Lcom/narvii/flag/report/FlagRequestDialog$3;->this$0:Lcom/narvii/flag/report/FlagRequestDialog;

    invoke-static {p2}, Lcom/narvii/flag/report/FlagRequestDialog;->access$000(Lcom/narvii/flag/report/FlagRequestDialog;)Landroid/widget/ProgressBar;

    move-result-object p2

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 173
    iget-object p2, p0, Lcom/narvii/flag/report/FlagRequestDialog$3;->this$0:Lcom/narvii/flag/report/FlagRequestDialog;

    invoke-virtual {p2, p1, p4}, Lcom/narvii/flag/report/FlagRequestDialog;->onRequestFail(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;)V

    .line 174
    iget-object p1, p0, Lcom/narvii/flag/report/FlagRequestDialog$3;->this$0:Lcom/narvii/flag/report/FlagRequestDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 159
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 160
    iget-object v0, p0, Lcom/narvii/flag/report/FlagRequestDialog$3;->this$0:Lcom/narvii/flag/report/FlagRequestDialog;

    invoke-virtual {v0, p2}, Lcom/narvii/flag/report/FlagRequestDialog;->onReuqestFinished(Lcom/narvii/model/api/ApiResponse;)V

    .line 161
    iget-object v0, p0, Lcom/narvii/flag/report/FlagRequestDialog$3;->this$0:Lcom/narvii/flag/report/FlagRequestDialog;

    invoke-static {v0}, Lcom/narvii/flag/report/FlagRequestDialog;->access$000(Lcom/narvii/flag/report/FlagRequestDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/narvii/flag/report/FlagRequestDialog$3;->this$0:Lcom/narvii/flag/report/FlagRequestDialog;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/flag/report/FlagRequestDialog;->onRequestSuccess(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 163
    iget-object p1, p0, Lcom/narvii/flag/report/FlagRequestDialog$3;->this$0:Lcom/narvii/flag/report/FlagRequestDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 164
    new-instance p1, Lcom/narvii/util/dialog/CheckDialog;

    iget-object p2, p0, Lcom/narvii/flag/report/FlagRequestDialog$3;->this$0:Lcom/narvii/flag/report/FlagRequestDialog;

    invoke-virtual {p2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/util/dialog/CheckDialog;-><init>(Landroid/content/Context;)V

    .line 165
    iget-object p2, p0, Lcom/narvii/flag/report/FlagRequestDialog$3;->this$0:Lcom/narvii/flag/report/FlagRequestDialog;

    invoke-virtual {p2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0f06f8

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/util/dialog/CheckDialog;->setText(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p1}, Lcom/narvii/util/dialog/CheckDialog;->show()V

    return-void
.end method
