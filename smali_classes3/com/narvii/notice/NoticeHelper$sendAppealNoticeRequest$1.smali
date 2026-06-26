.class public final Lcom/narvii/notice/NoticeHelper$sendAppealNoticeRequest$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "NoticeHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/notice/NoticeHelper;->sendAppealNoticeRequest(Lcom/narvii/account/notice/AccountNotice;Lcom/narvii/util/Callback;)V
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
.field final synthetic $callback:Lcom/narvii/util/Callback;

.field final synthetic $dlg:Lcom/narvii/util/dialog/ProgressDialog;

.field final synthetic this$0:Lcom/narvii/notice/NoticeHelper;


# direct methods
.method constructor <init>(Lcom/narvii/notice/NoticeHelper;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/util/Callback;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/dialog/ProgressDialog;",
            "Lcom/narvii/util/Callback;",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lcom/narvii/notice/NoticeHelper$sendAppealNoticeRequest$1;->this$0:Lcom/narvii/notice/NoticeHelper;

    iput-object p2, p0, Lcom/narvii/notice/NoticeHelper$sendAppealNoticeRequest$1;->$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    iput-object p3, p0, Lcom/narvii/notice/NoticeHelper$sendAppealNoticeRequest$1;->$callback:Lcom/narvii/util/Callback;

    invoke-direct {p0, p4}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

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

    .line 42
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 43
    iget-object p1, p0, Lcom/narvii/notice/NoticeHelper$sendAppealNoticeRequest$1;->this$0:Lcom/narvii/notice/NoticeHelper;

    invoke-virtual {p1}, Lcom/narvii/notice/NoticeHelper;->getCtx()Lcom/narvii/app/NVContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 44
    iget-object p1, p0, Lcom/narvii/notice/NoticeHelper$sendAppealNoticeRequest$1;->$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 45
    iget-object p1, p0, Lcom/narvii/notice/NoticeHelper$sendAppealNoticeRequest$1;->$callback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 36
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 37
    iget-object p1, p0, Lcom/narvii/notice/NoticeHelper$sendAppealNoticeRequest$1;->$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 38
    iget-object p1, p0, Lcom/narvii/notice/NoticeHelper$sendAppealNoticeRequest$1;->$callback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
