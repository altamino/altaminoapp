.class Lcom/narvii/notice/NoticeListFragment$6;
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

    .line 361
    iput-object p1, p0, Lcom/narvii/notice/NoticeListFragment$6;->this$0:Lcom/narvii/notice/NoticeListFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 364
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.narvii.action.ACCOUNT_CHANGED"

    .line 365
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 366
    iget-object p1, p0, Lcom/narvii/notice/NoticeListFragment$6;->this$0:Lcom/narvii/notice/NoticeListFragment;

    iget-object p1, p1, Lcom/narvii/notice/NoticeListFragment;->importNoticeAdapter:Lcom/narvii/notice/NoticeListFragment$ImportNoticeAdapter;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 367
    invoke-virtual {p1, p2, v0}, Lcom/narvii/notice/NoticeListFragment$ImportNoticeAdapter;->refresh(ILcom/narvii/util/Callback;)V

    :cond_0
    return-void
.end method
