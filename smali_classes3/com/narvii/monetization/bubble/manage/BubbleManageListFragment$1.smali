.class Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "BubbleManageListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment$1;->this$0:Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 55
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.narvii.action.MEMBERSHIP_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 56
    iget-object p1, p0, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment$1;->this$0:Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;

    iget-object p1, p1, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;->bubbleListAdapter:Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment$MyBubbleListAdapter;

    if-eqz p1, :cond_0

    .line 57
    invoke-virtual {p1}, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment$MyBubbleListAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
