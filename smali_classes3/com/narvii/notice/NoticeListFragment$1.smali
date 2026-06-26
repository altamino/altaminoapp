.class Lcom/narvii/notice/NoticeListFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "NoticeListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/notice/NoticeListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/notice/NoticeListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/notice/NoticeListFragment;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/narvii/notice/NoticeListFragment$1;->this$0:Lcom/narvii/notice/NoticeListFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 114
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 115
    iget-object v0, p0, Lcom/narvii/notice/NoticeListFragment$1;->this$0:Lcom/narvii/notice/NoticeListFragment;

    iget-boolean v0, v0, Lcom/narvii/notice/NoticeListFragment;->fromAggregation:Z

    if-eqz v0, :cond_0

    const-string v0, "com.narvii.action.CLEAR_ALL_ALERTS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    const-string v0, "cid"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object p2, p0, Lcom/narvii/notice/NoticeListFragment$1;->this$0:Lcom/narvii/notice/NoticeListFragment;

    iget v0, p2, Lcom/narvii/notice/NoticeListFragment;->cid:I

    if-ne p1, v0, :cond_0

    .line 116
    iget-object p1, p2, Lcom/narvii/notice/NoticeListFragment;->adapter:Lcom/narvii/notice/NoticeListFragment$Adapter;

    if-eqz p1, :cond_0

    .line 117
    invoke-virtual {p1}, Lcom/narvii/list/NVPagedAdapter;->resetEmptyList()V

    :cond_0
    return-void
.end method
