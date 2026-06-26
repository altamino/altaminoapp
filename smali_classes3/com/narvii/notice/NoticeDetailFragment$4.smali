.class Lcom/narvii/notice/NoticeDetailFragment$4;
.super Ljava/lang/Object;
.source "NoticeDetailFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/notice/NoticeDetailFragment;->resolveCurNotice()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/model/api/ApiResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/notice/NoticeDetailFragment;


# direct methods
.method constructor <init>(Lcom/narvii/notice/NoticeDetailFragment;)V
    .locals 0

    .line 407
    iput-object p1, p0, Lcom/narvii/notice/NoticeDetailFragment$4;->this$0:Lcom/narvii/notice/NoticeDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 3

    .line 410
    iget-object p1, p0, Lcom/narvii/notice/NoticeDetailFragment$4;->this$0:Lcom/narvii/notice/NoticeDetailFragment;

    invoke-static {p1}, Lcom/narvii/notice/NoticeDetailFragment;->access$300(Lcom/narvii/notice/NoticeDetailFragment;)V

    .line 411
    iget-object p1, p0, Lcom/narvii/notice/NoticeDetailFragment$4;->this$0:Lcom/narvii/notice/NoticeDetailFragment;

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/notification/NotificationCenter;

    .line 412
    new-instance v0, Lcom/narvii/notification/Notification;

    iget-object v1, p0, Lcom/narvii/notice/NoticeDetailFragment$4;->this$0:Lcom/narvii/notice/NoticeDetailFragment;

    invoke-static {v1}, Lcom/narvii/notice/NoticeDetailFragment;->access$200(Lcom/narvii/notice/NoticeDetailFragment;)Lcom/narvii/account/notice/AccountNotice;

    move-result-object v1

    const-string v2, "delete"

    invoke-direct {v0, v2, v1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    invoke-static {p1, v0}, Lcom/narvii/util/NotificationUtils;->sendNotificationIncludeGlobal(Lcom/narvii/notification/NotificationCenter;Lcom/narvii/notification/Notification;)V

    .line 413
    iget-object p1, p0, Lcom/narvii/notice/NoticeDetailFragment$4;->this$0:Lcom/narvii/notice/NoticeDetailFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 407
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/notice/NoticeDetailFragment$4;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
