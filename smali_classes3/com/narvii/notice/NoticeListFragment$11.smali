.class Lcom/narvii/notice/NoticeListFragment$11;
.super Ljava/lang/Object;
.source "NoticeListFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/notice/NoticeListFragment;->clearAll(Z)V
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


# direct methods
.method constructor <init>(Lcom/narvii/notice/NoticeListFragment;)V
    .locals 0

    .line 1280
    iput-object p1, p0, Lcom/narvii/notice/NoticeListFragment$11;->this$0:Lcom/narvii/notice/NoticeListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 4

    .line 1284
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment$11;->this$0:Lcom/narvii/notice/NoticeListFragment;

    const-string v1, "DeleteAllAlerts"

    invoke-static {v0, v1}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 1286
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment$11;->this$0:Lcom/narvii/notice/NoticeListFragment;

    iget-object v0, v0, Lcom/narvii/notice/NoticeListFragment;->adapter:Lcom/narvii/notice/NoticeListFragment$Adapter;

    if-eqz v0, :cond_0

    .line 1287
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->resetEmptyList()V

    .line 1290
    :cond_0
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment$11;->this$0:Lcom/narvii/notice/NoticeListFragment;

    iget-boolean v0, v0, Lcom/narvii/notice/NoticeListFragment;->fromAggregation:Z

    if-nez v0, :cond_1

    .line 1291
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.narvii.action.CLEAR_ALL_ALERTS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1292
    iget-object v1, p0, Lcom/narvii/notice/NoticeListFragment$11;->this$0:Lcom/narvii/notice/NoticeListFragment;

    iget v1, v1, Lcom/narvii/notice/NoticeListFragment;->cid:I

    const-string v2, "cid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1293
    iget-object v1, p0, Lcom/narvii/notice/NoticeListFragment$11;->this$0:Lcom/narvii/notice/NoticeListFragment;

    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 1296
    :cond_1
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment$11;->this$0:Lcom/narvii/notice/NoticeListFragment;

    const-string v1, "account"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 1297
    iget-object v1, p0, Lcom/narvii/notice/NoticeListFragment$11;->this$0:Lcom/narvii/notice/NoticeListFragment;

    iget v1, v1, Lcom/narvii/notice/NoticeListFragment;->cid:I

    const/4 v2, 0x0

    iget-object p1, p1, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/narvii/account/AccountService;->updateNotificationCount(IILjava/lang/String;Z)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1280
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/notice/NoticeListFragment$11;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
