.class Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "BubbleSortListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment$1;->this$0:Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 57
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.narvii.action.MEMBERSHIP_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 58
    iget-object p1, p0, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment$1;->this$0:Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;

    invoke-static {p1}, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;->access$000(Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;)Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment$Adapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 59
    iget-object p1, p0, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment$1;->this$0:Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;

    invoke-static {p1}, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;->access$000(Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;)Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 61
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment$1;->this$0:Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;

    invoke-static {p1}, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;->access$100(Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;)V

    :cond_1
    return-void
.end method
