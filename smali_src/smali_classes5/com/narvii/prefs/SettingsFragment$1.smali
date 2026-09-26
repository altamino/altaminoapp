.class Lcom/narvii/prefs/SettingsFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/prefs/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/prefs/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/narvii/prefs/SettingsFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/prefs/SettingsFragment$1;->this$0:Lcom/narvii/prefs/SettingsFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/prefs/SettingsFragment$1;->this$0:Lcom/narvii/prefs/SettingsFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    const-string v0, "com.narvii.action.ACCOUNT_CHANGED"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result p1

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    iget-object p1, p0, Lcom/narvii/prefs/SettingsFragment$1;->this$0:Lcom/narvii/prefs/SettingsFragment;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/narvii/list/NVListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    check-cast p1, Landroid/widget/BaseAdapter;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_1
    const-string p1, "com.narvii.action.COMMUNITY_CHANGED"

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    move-result p1

    .line 44
    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    const-string p1, "id"

    .line 48
    const/4 v0, 0x0

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 52
    move-result p1

    .line 53
    .line 54
    iget-object v0, p0, Lcom/narvii/prefs/SettingsFragment$1;->this$0:Lcom/narvii/prefs/SettingsFragment;

    .line 55
    .line 56
    iget-object v0, v0, Lcom/narvii/prefs/SettingsFragment;->config:Lcom/narvii/config/ConfigService;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 60
    move-result v0

    .line 61
    .line 62
    if-ne p1, v0, :cond_2

    .line 63
    .line 64
    iget-object p1, p0, Lcom/narvii/prefs/SettingsFragment$1;->this$0:Lcom/narvii/prefs/SettingsFragment;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/narvii/list/NVListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    check-cast p1, Landroid/widget/BaseAdapter;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 74
    goto :goto_0

    .line 75
    .line 76
    :cond_2
    const-string p1, "com.narvii.action.WALLET_CHANGED"

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 80
    move-result-object v0

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    move-result p1

    .line 85
    .line 86
    if-nez p1, :cond_3

    .line 87
    .line 88
    const-string p1, "com.narvii.action.MEMBERSHIP_CHANGED"

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 92
    move-result-object p2

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    move-result p1

    .line 97
    .line 98
    if-eqz p1, :cond_4

    .line 99
    .line 100
    :cond_3
    iget-object p1, p0, Lcom/narvii/prefs/SettingsFragment$1;->this$0:Lcom/narvii/prefs/SettingsFragment;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1}, Lcom/narvii/list/NVListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    .line 104
    move-result-object p1

    .line 105
    .line 106
    check-cast p1, Landroid/widget/BaseAdapter;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 110
    :cond_4
    :goto_0
    return-void
.end method
