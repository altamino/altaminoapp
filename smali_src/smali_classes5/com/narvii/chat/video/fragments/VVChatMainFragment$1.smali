.class Lcom/narvii/chat/video/fragments/VVChatMainFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/video/fragments/VVChatMainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$1;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    const-string v0, "com.narvii.action.LIVE_CHANNEL_QUIT"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    .line 12
    const-string v0, "threadId"

    .line 13
    .line 14
    if-eqz p1, :cond_2

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    iget-object p2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$1;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 21
    .line 22
    .line 23
    invoke-static {p2}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->w(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)Ljava/lang/String;

    .line 24
    move-result-object p2

    .line 25
    .line 26
    .line 27
    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    move-result p1

    .line 29
    .line 30
    if-eqz p1, :cond_3

    .line 31
    .line 32
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$1;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 36
    move-result p1

    .line 37
    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$1;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    .line 44
    move-result p1

    .line 45
    .line 46
    if-nez p1, :cond_1

    .line 47
    .line 48
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$1;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->isFinishing()Z

    .line 52
    move-result p1

    .line 53
    .line 54
    if-eqz p1, :cond_0

    .line 55
    goto :goto_0

    .line 56
    .line 57
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$1;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isResumed()Z

    .line 61
    move-result p1

    .line 62
    .line 63
    if-nez p1, :cond_3

    .line 64
    .line 65
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$1;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->removeLiveContentFragment()V

    .line 69
    .line 70
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$1;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 74
    move-result-object p1

    .line 75
    .line 76
    if-eqz p1, :cond_3

    .line 77
    .line 78
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$1;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 82
    move-result-object p1

    .line 83
    .line 84
    .line 85
    invoke-static {p1}, Lcom/narvii/util/Utils;->isLandscape(Landroid/content/Context;)Z

    .line 86
    move-result p1

    .line 87
    .line 88
    if-eqz p1, :cond_3

    .line 89
    .line 90
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$1;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 94
    move-result-object p1

    .line 95
    const/4 p2, 0x1

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, p2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 99
    goto :goto_1

    .line 100
    :cond_1
    :goto_0
    return-void

    .line 101
    .line 102
    :cond_2
    const-string p1, "com.narvii.action.ACTION_CHAT_ACTIVITY_FORCE_FINISH"

    .line 103
    .line 104
    .line 105
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 106
    move-result-object v1

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    move-result p1

    .line 111
    .line 112
    if-eqz p1, :cond_3

    .line 113
    .line 114
    .line 115
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 116
    move-result-object p1

    .line 117
    .line 118
    iget-object p2, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$1;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 119
    .line 120
    .line 121
    invoke-static {p2}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->w(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)Ljava/lang/String;

    .line 122
    move-result-object p2

    .line 123
    .line 124
    .line 125
    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 126
    move-result p1

    .line 127
    .line 128
    if-eqz p1, :cond_3

    .line 129
    .line 130
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$1;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 134
    move-result-object p1

    .line 135
    .line 136
    instance-of p1, p1, Lcom/narvii/app/NVActivity;

    .line 137
    .line 138
    if-eqz p1, :cond_3

    .line 139
    .line 140
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$1;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 144
    move-result-object p1

    .line 145
    .line 146
    check-cast p1, Lcom/narvii/app/NVActivity;

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->isActivityResumed()Z

    .line 150
    move-result p1

    .line 151
    .line 152
    if-nez p1, :cond_3

    .line 153
    .line 154
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$1;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 158
    move-result-object p1

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 162
    :cond_3
    :goto_1
    return-void
.end method
