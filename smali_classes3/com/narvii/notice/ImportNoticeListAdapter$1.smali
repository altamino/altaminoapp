.class Lcom/narvii/notice/ImportNoticeListAdapter$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "ImportNoticeListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/notice/ImportNoticeListAdapter;->handleNoticeAction(Lcom/narvii/account/notice/AccountNotice;Z)V
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
.field final synthetic this$0:Lcom/narvii/notice/ImportNoticeListAdapter;

.field final synthetic val$accept:Z

.field final synthetic val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

.field final synthetic val$notice:Lcom/narvii/account/notice/AccountNotice;


# direct methods
.method constructor <init>(Lcom/narvii/notice/ImportNoticeListAdapter;Ljava/lang/Class;Lcom/narvii/account/notice/AccountNotice;Lcom/narvii/util/dialog/ProgressDialog;Z)V
    .locals 0

    .line 481
    iput-object p1, p0, Lcom/narvii/notice/ImportNoticeListAdapter$1;->this$0:Lcom/narvii/notice/ImportNoticeListAdapter;

    iput-object p3, p0, Lcom/narvii/notice/ImportNoticeListAdapter$1;->val$notice:Lcom/narvii/account/notice/AccountNotice;

    iput-object p4, p0, Lcom/narvii/notice/ImportNoticeListAdapter$1;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    iput-boolean p5, p0, Lcom/narvii/notice/ImportNoticeListAdapter$1;->val$accept:Z

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 3
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

    .line 499
    iget-object v0, p0, Lcom/narvii/notice/ImportNoticeListAdapter$1;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    const/16 v0, 0x101

    if-ne p2, v0, :cond_0

    .line 501
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/narvii/notice/ImportNoticeListAdapter$1;->this$0:Lcom/narvii/notice/ImportNoticeListAdapter;

    invoke-virtual {v1}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0f61

    .line 502
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0f02ee

    .line 503
    new-instance v2, Lcom/narvii/notice/ImportNoticeListAdapter$1$1;

    invoke-direct {v2, p0}, Lcom/narvii/notice/ImportNoticeListAdapter$1$1;-><init>(Lcom/narvii/notice/ImportNoticeListAdapter$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0f0193

    const/4 v2, 0x0

    .line 509
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 510
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/narvii/notice/ImportNoticeListAdapter$1;->this$0:Lcom/narvii/notice/ImportNoticeListAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p4, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    .line 514
    :goto_0
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 484
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 485
    iget-object p1, p0, Lcom/narvii/notice/ImportNoticeListAdapter$1;->this$0:Lcom/narvii/notice/ImportNoticeListAdapter;

    const-string p2, "notification"

    invoke-virtual {p1, p2}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/notification/NotificationCenter;

    .line 486
    new-instance p2, Lcom/narvii/notification/Notification;

    iget-object v0, p0, Lcom/narvii/notice/ImportNoticeListAdapter$1;->val$notice:Lcom/narvii/account/notice/AccountNotice;

    const-string v1, "delete"

    invoke-direct {p2, v1, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    invoke-static {p1, p2}, Lcom/narvii/util/NotificationUtils;->sendNotificationIncludeGlobal(Lcom/narvii/notification/NotificationCenter;Lcom/narvii/notification/Notification;)V

    .line 487
    iget-object p1, p0, Lcom/narvii/notice/ImportNoticeListAdapter$1;->this$0:Lcom/narvii/notice/ImportNoticeListAdapter;

    iget-object p2, p0, Lcom/narvii/notice/ImportNoticeListAdapter$1;->val$notice:Lcom/narvii/account/notice/AccountNotice;

    invoke-virtual {p1, p2}, Lcom/narvii/notice/ImportNoticeListAdapter;->sendRefreshReminderRequest(Lcom/narvii/account/notice/AccountNotice;)V

    .line 488
    iget-object p1, p0, Lcom/narvii/notice/ImportNoticeListAdapter$1;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 489
    new-instance p1, Lcom/narvii/util/dialog/CheckDialog;

    iget-object p2, p0, Lcom/narvii/notice/ImportNoticeListAdapter$1;->this$0:Lcom/narvii/notice/ImportNoticeListAdapter;

    invoke-virtual {p2}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/util/dialog/CheckDialog;-><init>(Landroid/content/Context;)V

    .line 490
    iget-object p2, p0, Lcom/narvii/notice/ImportNoticeListAdapter$1;->this$0:Lcom/narvii/notice/ImportNoticeListAdapter;

    invoke-virtual {p2}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f0f1083

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/util/dialog/CheckDialog;->setText(Ljava/lang/String;)V

    .line 491
    invoke-virtual {p1}, Lcom/narvii/util/dialog/CheckDialog;->show()V

    .line 492
    iget-boolean p1, p0, Lcom/narvii/notice/ImportNoticeListAdapter$1;->val$accept:Z

    if-eqz p1, :cond_0

    .line 493
    iget-object p1, p0, Lcom/narvii/notice/ImportNoticeListAdapter$1;->this$0:Lcom/narvii/notice/ImportNoticeListAdapter;

    iget-object p2, p0, Lcom/narvii/notice/ImportNoticeListAdapter$1;->val$notice:Lcom/narvii/account/notice/AccountNotice;

    iget p2, p2, Lcom/narvii/account/notice/AccountNotice;->cid:I

    invoke-static {p1, p2}, Lcom/narvii/notice/ImportNoticeListAdapter;->access$000(Lcom/narvii/notice/ImportNoticeListAdapter;I)V

    :cond_0
    return-void
.end method
