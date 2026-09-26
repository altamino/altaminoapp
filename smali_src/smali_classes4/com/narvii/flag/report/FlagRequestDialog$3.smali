.class Lcom/narvii/flag/report/FlagRequestDialog$3;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/flag/report/FlagRequestDialog$3;->this$0:Lcom/narvii/flag/report/FlagRequestDialog;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 6
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
    iget-object p2, p0, Lcom/narvii/flag/report/FlagRequestDialog$3;->this$0:Lcom/narvii/flag/report/FlagRequestDialog;

    .line 6
    .line 7
    .line 8
    invoke-static {p2}, Lcom/narvii/flag/report/FlagRequestDialog;->a(Lcom/narvii/flag/report/FlagRequestDialog;)Landroid/widget/ProgressBar;

    .line 9
    move-result-object p2

    .line 10
    .line 11
    const/16 p3, 0x8

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    iget-object p2, p0, Lcom/narvii/flag/report/FlagRequestDialog$3;->this$0:Lcom/narvii/flag/report/FlagRequestDialog;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, p1, p4}, Lcom/narvii/flag/report/FlagRequestDialog;->onRequestFail(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;)V

    .line 20
    .line 21
    iget-object p1, p0, Lcom/narvii/flag/report/FlagRequestDialog$3;->this$0:Lcom/narvii/flag/report/FlagRequestDialog;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 25
    move-result-object p1

    .line 26
    const/4 p2, 0x0

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

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/flag/report/FlagRequestDialog$3;->this$0:Lcom/narvii/flag/report/FlagRequestDialog;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p2}, Lcom/narvii/flag/report/FlagRequestDialog;->onReuqestFinished(Lcom/narvii/model/api/ApiResponse;)V

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/flag/report/FlagRequestDialog$3;->this$0:Lcom/narvii/flag/report/FlagRequestDialog;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/flag/report/FlagRequestDialog;->a(Lcom/narvii/flag/report/FlagRequestDialog;)Landroid/widget/ProgressBar;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    const/16 v1, 0x8

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/flag/report/FlagRequestDialog$3;->this$0:Lcom/narvii/flag/report/FlagRequestDialog;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1, p2}, Lcom/narvii/flag/report/FlagRequestDialog;->onRequestSuccess(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 25
    .line 26
    iget-object p1, p0, Lcom/narvii/flag/report/FlagRequestDialog$3;->this$0:Lcom/narvii/flag/report/FlagRequestDialog;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 30
    .line 31
    new-instance p1, Lcom/narvii/util/dialog/CheckDialog;

    .line 32
    .line 33
    iget-object p2, p0, Lcom/narvii/flag/report/FlagRequestDialog$3;->this$0:Lcom/narvii/flag/report/FlagRequestDialog;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 37
    move-result-object p2

    .line 38
    .line 39
    .line 40
    invoke-direct {p1, p2}, Lcom/narvii/util/dialog/CheckDialog;-><init>(Landroid/content/Context;)V

    .line 41
    .line 42
    iget-object p2, p0, Lcom/narvii/flag/report/FlagRequestDialog$3;->this$0:Lcom/narvii/flag/report/FlagRequestDialog;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 46
    move-result-object p2

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 50
    move-result-object p2

    .line 51
    .line 52
    .line 53
    const v0, 0x7f1207a1

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 57
    move-result-object p2

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, p2}, Lcom/narvii/util/dialog/CheckDialog;->setText(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/narvii/util/dialog/CheckDialog;->show()V

    .line 64
    return-void
.end method
