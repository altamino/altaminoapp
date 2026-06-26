.class Lcom/narvii/leaderboard/CheckinRegionFragment$1;
.super Ljava/lang/Object;
.source "CheckinRegionFragment.java"

# interfaces
.implements Lcom/narvii/leaderboard/LeaderBoardShareHelper$SaveCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/leaderboard/CheckinRegionFragment;->shareCheckinRegion()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/leaderboard/CheckinRegionFragment;

.field final synthetic val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/narvii/leaderboard/CheckinRegionFragment;Lcom/narvii/util/dialog/ProgressDialog;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/narvii/leaderboard/CheckinRegionFragment$1;->this$0:Lcom/narvii/leaderboard/CheckinRegionFragment;

    iput-object p2, p0, Lcom/narvii/leaderboard/CheckinRegionFragment$1;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSaved()V
    .locals 3

    .line 126
    iget-object v0, p0, Lcom/narvii/leaderboard/CheckinRegionFragment$1;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/leaderboard/CheckinRegionFragment$1;->this$0:Lcom/narvii/leaderboard/CheckinRegionFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/narvii/leaderboard/CheckinRegionFragment$1;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 129
    :cond_0
    new-instance v0, Lcom/narvii/share/ShareDarkRoomHelper;

    iget-object v1, p0, Lcom/narvii/leaderboard/CheckinRegionFragment$1;->this$0:Lcom/narvii/leaderboard/CheckinRegionFragment;

    invoke-direct {v0, v1}, Lcom/narvii/share/ShareDarkRoomHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iget-object v1, p0, Lcom/narvii/leaderboard/CheckinRegionFragment$1;->this$0:Lcom/narvii/leaderboard/CheckinRegionFragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/share/ShareDarkRoomHelper;->saveDynamicThemeBg(Landroid/app/Activity;)V

    .line 130
    const-class v0, Lcom/narvii/leaderboard/share/LeaderBoardShareFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 131
    sget-object v1, Lcom/narvii/share/ShareDarkRoomFragment;->KEY_STATISTIC_SOURCE:Ljava/lang/String;

    const-string v2, "Leaderboard"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "statistics_tab"

    const-string v2, "Check In"

    .line 132
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    iget-object v1, p0, Lcom/narvii/leaderboard/CheckinRegionFragment$1;->this$0:Lcom/narvii/leaderboard/CheckinRegionFragment;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
