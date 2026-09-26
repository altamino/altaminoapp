.class Lcom/narvii/notice/ImportNoticeListAdapter$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/notice/ImportNoticeListAdapter$1;->this$0:Lcom/narvii/notice/ImportNoticeListAdapter;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/narvii/notice/ImportNoticeListAdapter$1;->val$notice:Lcom/narvii/account/notice/AccountNotice;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/narvii/notice/ImportNoticeListAdapter$1;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 7
    .line 8
    iput-boolean p5, p0, Lcom/narvii/notice/ImportNoticeListAdapter$1;->val$accept:Z

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 12
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/notice/ImportNoticeListAdapter$1;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 6
    .line 7
    const/16 v0, 0x101

    .line 8
    .line 9
    if-ne p2, v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/narvii/notice/ImportNoticeListAdapter$1;->this$0:Lcom/narvii/notice/ImportNoticeListAdapter;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    const v1, 0x7f12106d

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 27
    .line 28
    new-instance v1, Lcom/narvii/notice/ImportNoticeListAdapter$1$1;

    .line 29
    .line 30
    .line 31
    invoke-direct {v1, p0}, Lcom/narvii/notice/ImportNoticeListAdapter$1$1;-><init>(Lcom/narvii/notice/ImportNoticeListAdapter$1;)V

    .line 32
    .line 33
    .line 34
    const v2, 0x7f12033f

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 38
    .line 39
    .line 40
    const v1, 0x7f1201e2

    .line 41
    const/4 v2, 0x0

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 48
    goto :goto_0

    .line 49
    .line 50
    :cond_0
    iget-object v0, p0, Lcom/narvii/notice/ImportNoticeListAdapter$1;->this$0:Lcom/narvii/notice/ImportNoticeListAdapter;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 54
    move-result-object v0

    .line 55
    const/4 v1, 0x1

    .line 56
    .line 57
    .line 58
    invoke-static {v0, p4, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    .line 63
    .line 64
    .line 65
    :goto_0
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 66
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 2
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
    iget-object p1, p0, Lcom/narvii/notice/ImportNoticeListAdapter$1;->this$0:Lcom/narvii/notice/ImportNoticeListAdapter;

    .line 6
    .line 7
    const-string p2, "notification"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p2}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    check-cast p1, Lcom/narvii/notification/NotificationCenter;

    .line 14
    .line 15
    new-instance p2, Lcom/narvii/notification/Notification;

    .line 16
    .line 17
    const-string v0, "delete"

    .line 18
    .line 19
    iget-object v1, p0, Lcom/narvii/notice/ImportNoticeListAdapter$1;->val$notice:Lcom/narvii/account/notice/AccountNotice;

    .line 20
    .line 21
    .line 22
    invoke-direct {p2, v0, v1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p1, p2}, Lcom/narvii/util/NotificationUtils;->sendNotificationIncludeGlobal(Lcom/narvii/notification/NotificationCenter;Lcom/narvii/notification/Notification;)V

    .line 26
    .line 27
    iget-object p1, p0, Lcom/narvii/notice/ImportNoticeListAdapter$1;->this$0:Lcom/narvii/notice/ImportNoticeListAdapter;

    .line 28
    .line 29
    iget-object p2, p0, Lcom/narvii/notice/ImportNoticeListAdapter$1;->val$notice:Lcom/narvii/account/notice/AccountNotice;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p2}, Lcom/narvii/notice/ImportNoticeListAdapter;->sendRefreshReminderRequest(Lcom/narvii/account/notice/AccountNotice;)V

    .line 33
    .line 34
    iget-object p1, p0, Lcom/narvii/notice/ImportNoticeListAdapter$1;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 38
    .line 39
    new-instance p1, Lcom/narvii/util/dialog/CheckDialog;

    .line 40
    .line 41
    iget-object p2, p0, Lcom/narvii/notice/ImportNoticeListAdapter$1;->this$0:Lcom/narvii/notice/ImportNoticeListAdapter;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 45
    move-result-object p2

    .line 46
    .line 47
    .line 48
    invoke-direct {p1, p2}, Lcom/narvii/util/dialog/CheckDialog;-><init>(Landroid/content/Context;)V

    .line 49
    .line 50
    iget-object p2, p0, Lcom/narvii/notice/ImportNoticeListAdapter$1;->this$0:Lcom/narvii/notice/ImportNoticeListAdapter;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 54
    move-result-object p2

    .line 55
    .line 56
    .line 57
    const v0, 0x7f121182

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 61
    move-result-object p2

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p2}, Lcom/narvii/util/dialog/CheckDialog;->setText(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/narvii/util/dialog/CheckDialog;->show()V

    .line 68
    .line 69
    iget-boolean p1, p0, Lcom/narvii/notice/ImportNoticeListAdapter$1;->val$accept:Z

    .line 70
    .line 71
    if-eqz p1, :cond_0

    .line 72
    .line 73
    iget-object p1, p0, Lcom/narvii/notice/ImportNoticeListAdapter$1;->this$0:Lcom/narvii/notice/ImportNoticeListAdapter;

    .line 74
    .line 75
    iget-object p2, p0, Lcom/narvii/notice/ImportNoticeListAdapter$1;->val$notice:Lcom/narvii/account/notice/AccountNotice;

    .line 76
    .line 77
    iget p2, p2, Lcom/narvii/account/notice/AccountNotice;->cid:I

    .line 78
    .line 79
    .line 80
    invoke-static {p1, p2}, Lcom/narvii/notice/ImportNoticeListAdapter;->n(Lcom/narvii/notice/ImportNoticeListAdapter;I)V

    .line 81
    :cond_0
    return-void
.end method
