.class Lcom/narvii/leaderboard/LeaderBoardTabFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment$1;->this$0:Lcom/narvii/leaderboard/LeaderBoardTabFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment$1;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

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
    iget-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment$1;->this$0:Lcom/narvii/leaderboard/LeaderBoardTabFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment$1;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment$1;->this$0:Lcom/narvii/leaderboard/LeaderBoardTabFragment;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 23
    move-result v0

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment$1;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 31
    .line 32
    :cond_1
    new-instance v0, Lcom/narvii/share/ShareDarkRoomHelper;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment$1;->this$0:Lcom/narvii/leaderboard/LeaderBoardTabFragment;

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, v1}, Lcom/narvii/share/ShareDarkRoomHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 38
    .line 39
    iget-object v1, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment$1;->this$0:Lcom/narvii/leaderboard/LeaderBoardTabFragment;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/narvii/share/ShareDarkRoomHelper;->saveDynamicThemeBg(Landroid/app/Activity;)V

    .line 47
    .line 48
    const-class v0, Lcom/narvii/leaderboard/share/LeaderBoardShareFragment;

    .line 49
    .line 50
    .line 51
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    sget-object v1, Lcom/narvii/share/ShareDarkRoomFragment;->KEY_STATISTIC_SOURCE:Ljava/lang/String;

    .line 55
    .line 56
    const-string v2, "Leaderboard"

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    .line 61
    iget-object v1, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment$1;->this$0:Lcom/narvii/leaderboard/LeaderBoardTabFragment;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurIndex()I

    .line 65
    move-result v1

    .line 66
    .line 67
    iget-object v2, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment$1;->this$0:Lcom/narvii/leaderboard/LeaderBoardTabFragment;

    .line 68
    .line 69
    .line 70
    invoke-static {v2}, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->p(Lcom/narvii/leaderboard/LeaderBoardTabFragment;)[Ljava/lang/String;

    .line 71
    move-result-object v2

    .line 72
    array-length v2, v2

    .line 73
    .line 74
    if-ge v1, v2, :cond_2

    .line 75
    .line 76
    iget-object v1, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment$1;->this$0:Lcom/narvii/leaderboard/LeaderBoardTabFragment;

    .line 77
    .line 78
    .line 79
    invoke-static {v1}, Lcom/narvii/leaderboard/LeaderBoardTabFragment;->p(Lcom/narvii/leaderboard/LeaderBoardTabFragment;)[Ljava/lang/String;

    .line 80
    move-result-object v1

    .line 81
    .line 82
    iget-object v2, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment$1;->this$0:Lcom/narvii/leaderboard/LeaderBoardTabFragment;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurIndex()I

    .line 86
    move-result v2

    .line 87
    .line 88
    aget-object v1, v1, v2

    .line 89
    goto :goto_0

    .line 90
    .line 91
    :cond_2
    const-string v1, ""

    .line 92
    .line 93
    :goto_0
    const-string v2, "statistics_tab"

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    .line 98
    iget-object v1, p0, Lcom/narvii/leaderboard/LeaderBoardTabFragment$1;->this$0:Lcom/narvii/leaderboard/LeaderBoardTabFragment;

    .line 99
    .line 100
    .line 101
    invoke-static {v1, v0}, Lcom/narvii/leaderboard/LeaderBoardTabFragment$1;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 102
    return-void
.end method
