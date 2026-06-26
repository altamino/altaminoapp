.class Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment$2;
.super Ljava/lang/Object;
.source "BubbleManageListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 106
    iput-object p1, p0, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment$2;->this$0:Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 109
    const-class p1, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 110
    iget-object v0, p0, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment$2;->this$0:Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;

    iget-object v0, v0, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;->curSelectedBubbleId:Ljava/lang/String;

    const-string v1, "curSelectedBubbleId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    iget-object v0, p0, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment$2;->this$0:Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;

    iget-object v0, v0, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;->threadId:Ljava/lang/String;

    const-string v1, "threadId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    iget-object v0, p0, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment$2;->this$0:Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;

    const/16 v1, 0x65

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
