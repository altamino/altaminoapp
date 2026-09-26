.class Lcom/narvii/notice/NoticeDetailFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/notice/NoticeDetailFragment$2;->this$0:Lcom/narvii/notice/NoticeDetailFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/notice/NoticeDetailFragment$2;->val$noticeHelper:Lcom/narvii/notice/NoticeHelper;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/notice/NoticeDetailFragment$2;->this$0:Lcom/narvii/notice/NoticeDetailFragment;

    const-string v0, "notification"

    .line 3
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/notification/NotificationCenter;

    .line 4
    new-instance v0, Lcom/narvii/notification/Notification;

    iget-object v1, p0, Lcom/narvii/notice/NoticeDetailFragment$2;->this$0:Lcom/narvii/notice/NoticeDetailFragment;

    invoke-static {v1}, Lcom/narvii/notice/NoticeDetailFragment;->u(Lcom/narvii/notice/NoticeDetailFragment;)Lcom/narvii/account/notice/AccountNotice;

    move-result-object v1

    const-string v2, "delete"

    invoke-direct {v0, v2, v1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    invoke-static {p1, v0}, Lcom/narvii/util/NotificationUtils;->sendNotificationIncludeGlobal(Lcom/narvii/notification/NotificationCenter;Lcom/narvii/notification/Notification;)V

    iget-object p1, p0, Lcom/narvii/notice/NoticeDetailFragment$2;->this$0:Lcom/narvii/notice/NoticeDetailFragment;

    .line 5
    invoke-static {p1}, Lcom/narvii/notice/NoticeDetailFragment;->x(Lcom/narvii/notice/NoticeDetailFragment;)V

    iget-object p1, p0, Lcom/narvii/notice/NoticeDetailFragment$2;->val$noticeHelper:Lcom/narvii/notice/NoticeHelper;

    .line 6
    invoke-virtual {p1}, Lcom/narvii/notice/NoticeHelper;->showAppealReceivedDialog()V

    iget-object p1, p0, Lcom/narvii/notice/NoticeDetailFragment$2;->this$0:Lcom/narvii/notice/NoticeDetailFragment;

    .line 7
    invoke-static {p1}, Lcom/narvii/notice/NoticeDetailFragment;->t(Lcom/narvii/notice/NoticeDetailFragment;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/notice/NoticeDetailFragment$2;->this$0:Lcom/narvii/notice/NoticeDetailFragment;

    .line 8
    invoke-static {p1}, Lcom/narvii/notice/NoticeDetailFragment;->t(Lcom/narvii/notice/NoticeDetailFragment;)Landroid/widget/TextView;

    move-result-object p1

    const v0, 0x7f12015b

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/narvii/notice/NoticeDetailFragment$2;->this$0:Lcom/narvii/notice/NoticeDetailFragment;

    .line 9
    invoke-static {p1}, Lcom/narvii/notice/NoticeDetailFragment;->t(Lcom/narvii/notice/NoticeDetailFragment;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/notice/NoticeDetailFragment$2;->call(Ljava/lang/Boolean;)V

    return-void
.end method
