.class Lcom/narvii/notice/NoticeListFragment$7;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/notice/NoticeListFragment$7;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/notice/NoticeListFragment$7;->val$notice:Lcom/narvii/notice/Notice;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 2

    .line 2
    new-instance p1, Lcom/narvii/notification/Notification;

    const-string v0, "delete"

    iget-object v1, p0, Lcom/narvii/notice/NoticeListFragment$7;->val$notice:Lcom/narvii/notice/Notice;

    invoke-direct {p1, v0, v1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment$7;->this$0:Lcom/narvii/notice/NoticeListFragment;

    .line 3
    invoke-static {v0, p1}, Lcom/narvii/util/NotificationUtils;->sendNotificationIncludeGlobal(Lcom/narvii/app/NVContext;Lcom/narvii/notification/Notification;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/notice/NoticeListFragment$7;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
