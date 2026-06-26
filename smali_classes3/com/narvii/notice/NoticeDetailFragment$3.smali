.class Lcom/narvii/notice/NoticeDetailFragment$3;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "NoticeDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/notice/NoticeDetailFragment;->updateNoticeCount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/community/ReminderCheckResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/notice/NoticeDetailFragment;

.field final synthetic val$accountService:Lcom/narvii/account/AccountService;


# direct methods
.method constructor <init>(Lcom/narvii/notice/NoticeDetailFragment;Ljava/lang/Class;Lcom/narvii/account/AccountService;)V
    .locals 0

    .line 370
    iput-object p1, p0, Lcom/narvii/notice/NoticeDetailFragment$3;->this$0:Lcom/narvii/notice/NoticeDetailFragment;

    iput-object p3, p0, Lcom/narvii/notice/NoticeDetailFragment$3;->val$accountService:Lcom/narvii/account/AccountService;

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

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/community/ReminderCheckResult;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 373
    iget-object p1, p0, Lcom/narvii/notice/NoticeDetailFragment$3;->val$accountService:Lcom/narvii/account/AccountService;

    iget-object v0, p0, Lcom/narvii/notice/NoticeDetailFragment$3;->this$0:Lcom/narvii/notice/NoticeDetailFragment;

    invoke-static {v0}, Lcom/narvii/notice/NoticeDetailFragment;->access$200(Lcom/narvii/notice/NoticeDetailFragment;)Lcom/narvii/account/notice/AccountNotice;

    move-result-object v0

    iget v0, v0, Lcom/narvii/account/notice/AccountNotice;->cid:I

    iget-object v1, p2, Lcom/narvii/community/ReminderCheckResult;->reminderCheckResult:Lcom/narvii/community/ReminderCheck;

    iget v1, v1, Lcom/narvii/community/ReminderCheck;->notificationsCount:I

    iget-object v2, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/narvii/account/AccountService;->updateNotificationCount(IILjava/lang/String;Z)V

    .line 374
    iget-object p1, p0, Lcom/narvii/notice/NoticeDetailFragment$3;->val$accountService:Lcom/narvii/account/AccountService;

    iget-object v0, p0, Lcom/narvii/notice/NoticeDetailFragment$3;->this$0:Lcom/narvii/notice/NoticeDetailFragment;

    invoke-static {v0}, Lcom/narvii/notice/NoticeDetailFragment;->access$200(Lcom/narvii/notice/NoticeDetailFragment;)Lcom/narvii/account/notice/AccountNotice;

    move-result-object v0

    iget v0, v0, Lcom/narvii/account/notice/AccountNotice;->cid:I

    iget-object v1, p2, Lcom/narvii/community/ReminderCheckResult;->reminderCheckResult:Lcom/narvii/community/ReminderCheck;

    iget v1, v1, Lcom/narvii/community/ReminderCheck;->noticesCount:I

    iget-object p2, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, p2, v3}, Lcom/narvii/account/AccountService;->updateNoticeCount(IILjava/lang/String;Z)V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 370
    check-cast p2, Lcom/narvii/community/ReminderCheckResult;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/notice/NoticeDetailFragment$3;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/community/ReminderCheckResult;)V

    return-void
.end method
