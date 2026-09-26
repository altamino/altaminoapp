.class Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment$2;->this$0:Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method

.method public static safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # I

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    const-class p1, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment$2;->this$0:Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;->curSelectedBubbleId:Ljava/lang/String;

    .line 11
    .line 12
    const-string v1, "curSelectedBubbleId"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment$2;->this$0:Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;->threadId:Ljava/lang/String;

    .line 20
    .line 21
    const-string/jumbo v1, "threadId"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment$2;->this$0:Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment;

    .line 27
    .line 28
    const/16 v1, 0x65

    .line 29
    .line 30
    .line 31
    invoke-static {v0, p1, v1}, Lcom/narvii/monetization/bubble/manage/BubbleManageListFragment$2;->safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 32
    return-void
.end method
