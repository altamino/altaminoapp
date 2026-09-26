.class Lcom/narvii/leaderboard/CheckinRegionFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/leaderboard/CheckinRegionFragment$1;->this$0:Lcom/narvii/leaderboard/CheckinRegionFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/leaderboard/CheckinRegionFragment$1;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method public static safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onSaved()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/leaderboard/CheckinRegionFragment$1;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/leaderboard/CheckinRegionFragment$1;->this$0:Lcom/narvii/leaderboard/CheckinRegionFragment;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/leaderboard/CheckinRegionFragment$1;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 22
    .line 23
    :cond_0
    new-instance v0, Lcom/narvii/share/ShareDarkRoomHelper;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/narvii/leaderboard/CheckinRegionFragment$1;->this$0:Lcom/narvii/leaderboard/CheckinRegionFragment;

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v1}, Lcom/narvii/share/ShareDarkRoomHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 29
    .line 30
    iget-object v1, p0, Lcom/narvii/leaderboard/CheckinRegionFragment$1;->this$0:Lcom/narvii/leaderboard/CheckinRegionFragment;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/narvii/share/ShareDarkRoomHelper;->saveDynamicThemeBg(Landroid/app/Activity;)V

    .line 38
    .line 39
    const-class v0, Lcom/narvii/leaderboard/share/LeaderBoardShareFragment;

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    sget-object v1, Lcom/narvii/share/ShareDarkRoomFragment;->KEY_STATISTIC_SOURCE:Ljava/lang/String;

    .line 46
    .line 47
    const-string v2, "Leaderboard"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    .line 52
    const-string v1, "statistics_tab"

    .line 53
    .line 54
    const-string v2, "Check In"

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    .line 59
    iget-object v1, p0, Lcom/narvii/leaderboard/CheckinRegionFragment$1;->this$0:Lcom/narvii/leaderboard/CheckinRegionFragment;

    .line 60
    .line 61
    .line 62
    invoke-static {v1, v0}, Lcom/narvii/leaderboard/CheckinRegionFragment$1;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 63
    return-void
.end method
