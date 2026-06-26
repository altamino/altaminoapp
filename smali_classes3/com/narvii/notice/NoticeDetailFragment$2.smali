.class Lcom/narvii/notice/NoticeDetailFragment$2;
.super Ljava/lang/Object;
.source "NoticeDetailFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/notice/NoticeDetailFragment;->appealNotice()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/notice/NoticeDetailFragment;

.field final synthetic val$noticeHelper:Lcom/narvii/notice/NoticeHelper;


# direct methods
.method constructor <init>(Lcom/narvii/notice/NoticeDetailFragment;Lcom/narvii/notice/NoticeHelper;)V
    .locals 0

    .line 337
    iput-object p1, p0, Lcom/narvii/notice/NoticeDetailFragment$2;->this$0:Lcom/narvii/notice/NoticeDetailFragment;

    iput-object p2, p0, Lcom/narvii/notice/NoticeDetailFragment$2;->val$noticeHelper:Lcom/narvii/notice/NoticeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 340
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 341
    iget-object p1, p0, Lcom/narvii/notice/NoticeDetailFragment$2;->this$0:Lcom/narvii/notice/NoticeDetailFragment;

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/notification/NotificationCenter;

    .line 342
    new-instance v0, Lcom/narvii/notification/Notification;

    iget-object v1, p0, Lcom/narvii/notice/NoticeDetailFragment$2;->this$0:Lcom/narvii/notice/NoticeDetailFragment;

    invoke-static {v1}, Lcom/narvii/notice/NoticeDetailFragment;->access$200(Lcom/narvii/notice/NoticeDetailFragment;)Lcom/narvii/account/notice/AccountNotice;

    move-result-object v1

    const-string v2, "delete"

    invoke-direct {v0, v2, v1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    invoke-static {p1, v0}, Lcom/narvii/util/NotificationUtils;->sendNotificationIncludeGlobal(Lcom/narvii/notification/NotificationCenter;Lcom/narvii/notification/Notification;)V

    .line 343
    iget-object p1, p0, Lcom/narvii/notice/NoticeDetailFragment$2;->this$0:Lcom/narvii/notice/NoticeDetailFragment;

    invoke-static {p1}, Lcom/narvii/notice/NoticeDetailFragment;->access$300(Lcom/narvii/notice/NoticeDetailFragment;)V

    .line 344
    iget-object p1, p0, Lcom/narvii/notice/NoticeDetailFragment$2;->val$noticeHelper:Lcom/narvii/notice/NoticeHelper;

    invoke-virtual {p1}, Lcom/narvii/notice/NoticeHelper;->showAppealReceivedDialog()V

    .line 345
    iget-object p1, p0, Lcom/narvii/notice/NoticeDetailFragment$2;->this$0:Lcom/narvii/notice/NoticeDetailFragment;

    invoke-static {p1}, Lcom/narvii/notice/NoticeDetailFragment;->access$400(Lcom/narvii/notice/NoticeDetailFragment;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 346
    iget-object p1, p0, Lcom/narvii/notice/NoticeDetailFragment$2;->this$0:Lcom/narvii/notice/NoticeDetailFragment;

    invoke-static {p1}, Lcom/narvii/notice/NoticeDetailFragment;->access$400(Lcom/narvii/notice/NoticeDetailFragment;)Landroid/widget/TextView;

    move-result-object p1

    const v0, 0x7f0f0124

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 347
    iget-object p1, p0, Lcom/narvii/notice/NoticeDetailFragment$2;->this$0:Lcom/narvii/notice/NoticeDetailFragment;

    invoke-static {p1}, Lcom/narvii/notice/NoticeDetailFragment;->access$400(Lcom/narvii/notice/NoticeDetailFragment;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 337
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/notice/NoticeDetailFragment$2;->call(Ljava/lang/Boolean;)V

    return-void
.end method
