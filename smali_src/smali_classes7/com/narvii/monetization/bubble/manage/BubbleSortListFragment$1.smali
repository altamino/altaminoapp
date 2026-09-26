.class Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment$1;->this$0:Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    .line 2
    const-string p1, "com.narvii.action.MEMBERSHIP_CHANGED"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 6
    move-result-object p2

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment$1;->this$0:Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;->u(Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;)Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment$Adapter;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget-object p1, p0, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment$1;->this$0:Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;->u(Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;)Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment$Adapter;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 30
    .line 31
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment$1;->this$0:Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;->y(Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;)V

    .line 35
    :cond_1
    return-void
.end method
