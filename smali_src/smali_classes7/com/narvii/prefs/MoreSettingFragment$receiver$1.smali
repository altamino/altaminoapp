.class public final Lcom/narvii/prefs/MoreSettingFragment$receiver$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/prefs/MoreSettingFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/prefs/MoreSettingFragment;


# direct methods
.method constructor <init>(Lcom/narvii/prefs/MoreSettingFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/prefs/MoreSettingFragment$receiver$1;->this$0:Lcom/narvii/prefs/MoreSettingFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "context"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p1, "intent"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/prefs/MoreSettingFragment$receiver$1;->this$0:Lcom/narvii/prefs/MoreSettingFragment;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    if-nez p1, :cond_0

    .line 19
    return-void

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    const-string v0, "com.narvii.action.ACCOUNT_CHANGED"

    .line 26
    .line 27
    .line 28
    invoke-static {v0, p1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    move-result p1

    .line 30
    .line 31
    const-string v0, "null cannot be cast to non-null type android.widget.BaseAdapter"

    .line 32
    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    iget-object p1, p0, Lcom/narvii/prefs/MoreSettingFragment$receiver$1;->this$0:Lcom/narvii/prefs/MoreSettingFragment;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/narvii/list/NVListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    .line 42
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    check-cast p1, Landroid/widget/BaseAdapter;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 48
    goto :goto_0

    .line 49
    .line 50
    :cond_1
    const-string p1, "com.narvii.action.COMMUNITY_CHANGED"

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 54
    move-result-object v1

    .line 55
    .line 56
    .line 57
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    move-result p1

    .line 59
    .line 60
    if-eqz p1, :cond_2

    .line 61
    .line 62
    iget-object p1, p0, Lcom/narvii/prefs/MoreSettingFragment$receiver$1;->this$0:Lcom/narvii/prefs/MoreSettingFragment;

    .line 63
    .line 64
    .line 65
    invoke-static {p1}, Lcom/narvii/prefs/MoreSettingFragment;->access$getConfig$p(Lcom/narvii/prefs/MoreSettingFragment;)Lcom/narvii/config/ConfigService;

    .line 66
    move-result-object p1

    .line 67
    .line 68
    if-eqz p1, :cond_2

    .line 69
    .line 70
    const-string v1, "id"

    .line 71
    const/4 v2, 0x0

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 75
    move-result v1

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 79
    move-result p1

    .line 80
    .line 81
    if-ne v1, p1, :cond_2

    .line 82
    .line 83
    iget-object p1, p0, Lcom/narvii/prefs/MoreSettingFragment$receiver$1;->this$0:Lcom/narvii/prefs/MoreSettingFragment;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/narvii/list/NVListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    .line 87
    move-result-object p1

    .line 88
    .line 89
    .line 90
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    .line 92
    check-cast p1, Landroid/widget/BaseAdapter;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 96
    goto :goto_0

    .line 97
    .line 98
    :cond_2
    const-string p1, "com.narvii.action.WALLET_CHANGED"

    .line 99
    .line 100
    .line 101
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 102
    move-result-object v1

    .line 103
    .line 104
    .line 105
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 106
    move-result p1

    .line 107
    .line 108
    if-nez p1, :cond_3

    .line 109
    .line 110
    const-string p1, "com.narvii.action.MEMBERSHIP_CHANGED"

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 114
    move-result-object p2

    .line 115
    .line 116
    .line 117
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 118
    move-result p1

    .line 119
    .line 120
    if-eqz p1, :cond_4

    .line 121
    .line 122
    :cond_3
    iget-object p1, p0, Lcom/narvii/prefs/MoreSettingFragment$receiver$1;->this$0:Lcom/narvii/prefs/MoreSettingFragment;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1}, Lcom/narvii/list/NVListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    .line 126
    move-result-object p1

    .line 127
    .line 128
    .line 129
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    .line 131
    check-cast p1, Landroid/widget/BaseAdapter;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 135
    :cond_4
    :goto_0
    return-void
.end method
