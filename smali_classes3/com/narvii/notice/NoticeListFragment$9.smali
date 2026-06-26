.class Lcom/narvii/notice/NoticeListFragment$9;
.super Ljava/lang/Object;
.source "NoticeListFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/notice/NoticeListFragment;->delete(Lcom/narvii/notice/Notice;Z)V
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
.field final synthetic this$0:Lcom/narvii/notice/NoticeListFragment;

.field final synthetic val$notice:Lcom/narvii/notice/Notice;


# direct methods
.method constructor <init>(Lcom/narvii/notice/NoticeListFragment;Lcom/narvii/notice/Notice;)V
    .locals 0

    .line 1248
    iput-object p1, p0, Lcom/narvii/notice/NoticeListFragment$9;->this$0:Lcom/narvii/notice/NoticeListFragment;

    iput-object p2, p0, Lcom/narvii/notice/NoticeListFragment$9;->val$notice:Lcom/narvii/notice/Notice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 2

    .line 1251
    new-instance p1, Lcom/narvii/notification/Notification;

    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment$9;->val$notice:Lcom/narvii/notice/Notice;

    const-string v1, "delete"

    invoke-direct {p1, v1, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 1253
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment$9;->this$0:Lcom/narvii/notice/NoticeListFragment;

    invoke-static {v0, p1}, Lcom/narvii/util/NotificationUtils;->sendNotificationIncludeGlobal(Lcom/narvii/app/NVContext;Lcom/narvii/notification/Notification;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1248
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/notice/NoticeListFragment$9;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
