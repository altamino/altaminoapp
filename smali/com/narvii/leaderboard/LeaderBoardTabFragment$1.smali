.class Lcom/narvii/leaderboard/LeaderBoardTabFragment$1;
.super Ljava/lang/Object;
.source "LeaderBoardTabFragment.java"

# interfaces
.implements Lcom/narvii/leaderboard/LeaderBoardShareHelper$SaveCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/leaderboard/LeaderBoardTabFragment;->shareLeaderBoard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/leaderboard/LeaderBoardTabFragment;

.field final synthetic val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/narvii/leaderboard/LeaderBoardTabFragment;Lcom/narvii/util/dialog/ProgressDialog;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment$1;->this$0:Lcom/narvii/leaderboard/LeaderBoardTabFragment;

    iput-object p2, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment$1;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSaved()V
    .locals 3

    .line 256
    iget-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment$1;->this$0:Lcom/narvii/leaderboard/LeaderBoardTabFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment$1;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment$1;->this$0:Lcom/narvii/leaderboard/LeaderBoardTabFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment$1;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 262
    :cond_1
    new-instance v0, Lcom/narvii/share/ShareDarkRoomHelper;

    iget-object v1, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment$1;->this$0:Lcom/narvii/leaderboard/LeaderBoardTabFragment;

    invoke-direct {v0, v1}, Lcom/narvii/share/ShareDarkRoomHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iget-object v1, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment$1;->this$0:Lcom/narvii/leaderboard/LeaderBoardTabFragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/share/ShareDarkRoomHelper;->saveDynamicThemeBg(Landroid/app/Activity;)V

    .line 263
    const-class v0, Lcom/narvii/leaderboard/share/LeaderBoardShareFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 264
    sget-object v1, Lcom/narvii/share/ShareDarkRoomFragment;->KEY_STATISTIC_SOURCE:Ljava/lang/String;

    const-string v2, "Leaderboard"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    iget-object v1, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment$1;->this$0:Lcom/narvii/leaderboard/LeaderBoardTabFragment;

    invoke-virtual {v1}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurIndex()I

    move-result v1

    iget-object v2, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment$1;->this$0:Lcom/narvii/leaderboard/LeaderBoardTabFragment;

    invoke-static {v2}, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->access$000(Lcom/narvii/leaderboard/LeaderBoardTabFragment;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_2

    iget-object v1, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment$1;->this$0:Lcom/narvii/leaderboard/LeaderBoardTabFragment;

    invoke-static {v1}, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->access$000(Lcom/narvii/leaderboard/LeaderBoardTabFragment;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment$1;->this$0:Lcom/narvii/leaderboard/LeaderBoardTabFragment;

    invoke-virtual {v2}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurIndex()I

    move-result v2

    aget-object v1, v1, v2

    goto :goto_0

    :cond_2
    const-string v1, ""

    :goto_0
    const-string/jumbo v2, "statistics_tab"

    .line 266
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    iget-object v1, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment$1;->this$0:Lcom/narvii/leaderboard/LeaderBoardTabFragment;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
