.class Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;
.super Lcom/narvii/list/NVArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/video/overlay/ParticipantsListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChannelUserListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVArrayAdapter<",
        "Lcom/narvii/model/User;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;Lcom/narvii/app/NVContext;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/User;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2, p3}, Lcom/narvii/list/NVArrayAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/Class;)V

    .line 6
    return-void
.end method

.method static bridge synthetic f(Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->showVVChatUserDialog(Ljava/lang/Object;)V

    return-void
.end method

.method private getHostLabel(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/narvii/chat/util/ChatHelper;->isHost(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    .line 13
    .line 14
    .line 15
    const p2, 0x7f120817

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    return-object p1

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1, p2}, Lcom/narvii/chat/util/ChatHelper;->isCoHost(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Z

    .line 28
    move-result p1

    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    .line 33
    .line 34
    .line 35
    const p2, 0x7f1202c1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 39
    move-result-object p1

    .line 40
    return-object p1

    .line 41
    .line 42
    :cond_1
    const-string p1, ""

    .line 43
    return-object p1
.end method

.method private showVVChatUserDialog(Ljava/lang/Object;)V
    .locals 6

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 6
    .line 7
    check-cast p1, Lcom/narvii/model/User;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    .line 10
    .line 11
    .line 12
    invoke-static {v0, p1}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->I(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;Lcom/narvii/model/User;)Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 13
    move-result-object p1

    .line 14
    const/4 v0, 0x0

    .line 15
    const/4 v1, 0x1

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object v2, p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    iget-boolean v2, v2, Lcom/narvii/chat/signalling/ChannelUser;->isHost:Z

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    move v2, v1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v2, v0

    .line 29
    .line 30
    :goto_0
    new-instance v3, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;

    .line 31
    .line 32
    iget-object v4, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    .line 33
    .line 34
    .line 35
    invoke-direct {v3, v4, p1}, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    .line 36
    .line 37
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    .line 38
    .line 39
    const-string v4, "id"

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v4}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    iget-object v4, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    .line 46
    .line 47
    .line 48
    invoke-static {v4}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->u(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)I

    .line 49
    move-result v4

    .line 50
    .line 51
    iget-object v5, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 55
    move-result-object v5

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, p1, v4, v5}, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->configUserDialog(Ljava/lang/String;ILcom/narvii/model/ChatThread;)Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;

    .line 59
    .line 60
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    .line 61
    .line 62
    iget-object p1, p1, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->VVProfileClickListener:Lcom/narvii/chat/dialog/VVChatUserDialog$VVProfileClickListener;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, p1}, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->clickListener(Lcom/narvii/chat/dialog/VVChatUserDialog$VVProfileClickListener;)Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;

    .line 66
    move-result-object p1

    .line 67
    const/4 v4, 0x5

    .line 68
    .line 69
    if-eqz v2, :cond_2

    .line 70
    .line 71
    iget-object v2, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    .line 72
    .line 73
    .line 74
    invoke-static {v2}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->u(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)I

    .line 75
    move-result v2

    .line 76
    .line 77
    if-eq v2, v4, :cond_1

    .line 78
    goto :goto_1

    .line 79
    :cond_1
    move v2, v0

    .line 80
    goto :goto_2

    .line 81
    :cond_2
    :goto_1
    move v2, v1

    .line 82
    .line 83
    .line 84
    :goto_2
    invoke-virtual {p1, v2}, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->muteVideoWhenBlockUser(Z)Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;

    .line 85
    move-result-object p1

    .line 86
    .line 87
    iget-object v2, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    .line 88
    .line 89
    .line 90
    invoke-static {v2}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->u(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)I

    .line 91
    move-result v2

    .line 92
    .line 93
    if-eq v2, v4, :cond_3

    .line 94
    move v0, v1

    .line 95
    .line 96
    .line 97
    :cond_3
    invoke-virtual {p1, v0}, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->needVideoFrameWhenFlag(Z)Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3}, Lcom/narvii/chat/dialog/VVChatUserDialog$Builder;->build()Lcom/narvii/chat/dialog/VVChatUserDialog;

    .line 101
    move-result-object p1

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1}, Lcom/narvii/chat/dialog/VVChatUserDialog;->show()V

    .line 105
    return-void
.end method


# virtual methods
.method public checkCommunityAvailability(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    .line 2
    const-string v0, "config"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 12
    move-result v0

    .line 13
    .line 14
    new-instance v1, Lcom/narvii/chat/global/GlobalChatHelper;

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, p0}, Lcom/narvii/chat/global/GlobalChatHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 18
    .line 19
    new-instance v2, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter$1;

    .line 20
    .line 21
    .line 22
    invoke-direct {v2, p0, p1}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter$1;-><init>(Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;Ljava/lang/Object;)V

    .line 23
    const/4 p1, 0x0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v0, p1, v2}, Lcom/narvii/chat/global/GlobalChatHelper;->tryJoinCommunity(IZLcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;)Z

    .line 27
    move-result p1

    .line 28
    .line 29
    xor-int/lit8 p1, p1, 0x1

    .line 30
    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0d03d7

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 7
    move-result-object p2

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVArrayAdapter;->getItem(I)Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    check-cast p1, Lcom/narvii/model/User;

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    return-object p2

    .line 17
    .line 18
    :cond_0
    iget-object p3, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    .line 19
    .line 20
    .line 21
    invoke-static {p3}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->B(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)Ljava/util/HashMap;

    .line 22
    move-result-object p3

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object p3

    .line 31
    .line 32
    check-cast p3, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 33
    .line 34
    .line 35
    const v0, 0x7f0a0f36

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    check-cast v0, Lcom/narvii/widget/UserAvatarLayout;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p1}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 45
    .line 46
    .line 47
    const v0, 0x7f0a095b

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    check-cast v0, Lcom/narvii/chat/video/VVChatMembershipNameLayout;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p1}, Lcom/narvii/chat/video/VVChatMembershipNameLayout;->setUser(Lcom/narvii/model/User;)V

    .line 57
    .line 58
    if-eqz p3, :cond_1

    .line 59
    .line 60
    iget v1, p3, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    .line 61
    .line 62
    iget-object v2, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    .line 63
    .line 64
    .line 65
    invoke-static {v2}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->w(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)I

    .line 66
    move-result v2

    .line 67
    .line 68
    if-ne v1, v2, :cond_1

    .line 69
    .line 70
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    .line 71
    .line 72
    .line 73
    const v2, 0x7f120c2a

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 77
    move-result-object v1

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Lcom/narvii/chat/video/VVChatMembershipNameLayout;->setText(Ljava/lang/String;)V

    .line 81
    .line 82
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 86
    move-result-object v0

    .line 87
    .line 88
    if-eqz v0, :cond_2

    .line 89
    .line 90
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 94
    move-result-object v0

    .line 95
    .line 96
    iget v0, v0, Lcom/narvii/model/ChatThread;->type:I

    .line 97
    const/4 v1, 0x2

    .line 98
    .line 99
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 103
    move-result-object v0

    .line 104
    .line 105
    if-eqz v0, :cond_3

    .line 106
    .line 107
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 111
    move-result-object v0

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->owner()Lcom/narvii/model/User;

    .line 115
    move-result-object v0

    .line 116
    .line 117
    if-eqz v0, :cond_3

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    .line 121
    move-result-object v0

    .line 122
    .line 123
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 127
    move-result-object v1

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1}, Lcom/narvii/model/ChatThread;->owner()Lcom/narvii/model/User;

    .line 131
    move-result-object v1

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    .line 135
    move-result-object v1

    .line 136
    .line 137
    .line 138
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 139
    move-result v0

    .line 140
    .line 141
    :cond_3
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    .line 142
    .line 143
    .line 144
    invoke-static {v0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->z(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)Lcom/narvii/chat/rtc/RtcService;

    .line 145
    move-result-object v0

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 149
    move-result-object v0

    .line 150
    const/4 v1, 0x5

    .line 151
    const/4 v2, 0x1

    .line 152
    const/4 v3, 0x0

    .line 153
    .line 154
    if-eqz v0, :cond_4

    .line 155
    .line 156
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    .line 157
    .line 158
    .line 159
    invoke-static {v0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->z(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)Lcom/narvii/chat/rtc/RtcService;

    .line 160
    move-result-object v0

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 164
    move-result-object v0

    .line 165
    .line 166
    iget v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 167
    .line 168
    if-ne v0, v1, :cond_4

    .line 169
    move v0, v2

    .line 170
    goto :goto_0

    .line 171
    :cond_4
    move v0, v3

    .line 172
    .line 173
    :goto_0
    iget-object v4, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    .line 174
    .line 175
    iget-object v5, v4, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->chatHelper:Lcom/narvii/chat/util/ChatHelper;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v4}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 179
    move-result-object v4

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    .line 183
    move-result-object v6

    .line 184
    .line 185
    .line 186
    invoke-virtual {v5, v4, v6}, Lcom/narvii/chat/util/ChatHelper;->isHostOrCoHost(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Z

    .line 187
    move-result v4

    .line 188
    .line 189
    if-eqz v4, :cond_6

    .line 190
    .line 191
    iget-object v4, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v4}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 195
    move-result-object v4

    .line 196
    .line 197
    .line 198
    invoke-static {v4}, Lcom/narvii/chat/util/ChatHelperKt;->isPublicChat(Lcom/narvii/model/ChatThread;)Z

    .line 199
    move-result v4

    .line 200
    .line 201
    if-nez v4, :cond_5

    .line 202
    .line 203
    iget-object v4, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v4}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 207
    move-result-object v4

    .line 208
    .line 209
    .line 210
    invoke-static {v4}, Lcom/narvii/chat/util/ChatHelperKt;->isGroupChat(Lcom/narvii/model/ChatThread;)Z

    .line 211
    move-result v4

    .line 212
    .line 213
    if-eqz v4, :cond_6

    .line 214
    :cond_5
    move v4, v2

    .line 215
    goto :goto_1

    .line 216
    :cond_6
    move v4, v3

    .line 217
    .line 218
    .line 219
    :goto_1
    const v5, 0x7f0a0a9f

    .line 220
    .line 221
    .line 222
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 223
    move-result-object v5

    .line 224
    .line 225
    check-cast v5, Landroid/widget/TextView;

    .line 226
    .line 227
    const/16 v6, 0x8

    .line 228
    .line 229
    if-eqz v4, :cond_7

    .line 230
    move v4, v3

    .line 231
    goto :goto_2

    .line 232
    :cond_7
    move v4, v6

    .line 233
    .line 234
    .line 235
    :goto_2
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 236
    .line 237
    iget-object v4, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v4}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 241
    move-result-object v4

    .line 242
    .line 243
    .line 244
    invoke-virtual {p1}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    .line 245
    move-result-object p1

    .line 246
    .line 247
    .line 248
    invoke-direct {p0, v4, p1}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->getHostLabel(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Ljava/lang/String;

    .line 249
    move-result-object p1

    .line 250
    .line 251
    .line 252
    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    const/4 p1, 0x0

    .line 254
    .line 255
    if-nez p3, :cond_8

    .line 256
    move-object v4, p1

    .line 257
    goto :goto_3

    .line 258
    .line 259
    :cond_8
    iget v4, p3, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    .line 260
    .line 261
    .line 262
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 263
    move-result-object v4

    .line 264
    .line 265
    :goto_3
    iget-object v5, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    .line 266
    .line 267
    .line 268
    invoke-static {v5}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->z(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)Lcom/narvii/chat/rtc/RtcService;

    .line 269
    move-result-object v5

    .line 270
    .line 271
    .line 272
    invoke-virtual {v5}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 273
    move-result-object v5

    .line 274
    .line 275
    if-nez v5, :cond_9

    .line 276
    move-object v5, p1

    .line 277
    goto :goto_4

    .line 278
    .line 279
    :cond_9
    iget-object v5, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    .line 280
    .line 281
    .line 282
    invoke-static {v5}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->z(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)Lcom/narvii/chat/rtc/RtcService;

    .line 283
    move-result-object v5

    .line 284
    .line 285
    .line 286
    invoke-virtual {v5}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 287
    move-result-object v5

    .line 288
    .line 289
    iget v5, v5, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    .line 290
    .line 291
    .line 292
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 293
    move-result-object v5

    .line 294
    .line 295
    .line 296
    :goto_4
    invoke-static {v4, v5}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 297
    move-result v4

    .line 298
    .line 299
    iget-object v5, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    .line 300
    .line 301
    .line 302
    invoke-static {v5}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->u(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)I

    .line 303
    move-result v5

    .line 304
    const/4 v7, 0x4

    .line 305
    .line 306
    if-eq v5, v7, :cond_b

    .line 307
    .line 308
    iget-object v5, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    .line 309
    .line 310
    .line 311
    invoke-static {v5}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->u(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)I

    .line 312
    move-result v5

    .line 313
    const/4 v7, 0x3

    .line 314
    .line 315
    if-eq v5, v7, :cond_b

    .line 316
    .line 317
    iget-object v5, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    .line 318
    .line 319
    .line 320
    invoke-static {v5}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->u(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)I

    .line 321
    move-result v5

    .line 322
    .line 323
    if-ne v5, v1, :cond_a

    .line 324
    goto :goto_5

    .line 325
    :cond_a
    move v1, v3

    .line 326
    goto :goto_6

    .line 327
    :cond_b
    :goto_5
    move v1, v2

    .line 328
    .line 329
    :goto_6
    iget-object v5, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    .line 330
    .line 331
    iget-object v5, v5, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->localMutedUserList:Ljava/util/Set;

    .line 332
    .line 333
    if-eqz p3, :cond_d

    .line 334
    .line 335
    iget-object v7, p3, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 336
    .line 337
    if-nez v7, :cond_c

    .line 338
    goto :goto_7

    .line 339
    .line 340
    .line 341
    :cond_c
    invoke-virtual {v7}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    .line 342
    move-result-object p1

    .line 343
    .line 344
    .line 345
    :cond_d
    :goto_7
    invoke-interface {v5, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 346
    move-result p1

    .line 347
    .line 348
    if-eqz p3, :cond_e

    .line 349
    .line 350
    iget-object v5, p3, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 351
    .line 352
    if-eqz v5, :cond_e

    .line 353
    .line 354
    iget-boolean v5, v5, Lcom/narvii/chat/signalling/ChannelUser;->isHost:Z

    .line 355
    .line 356
    if-eqz v5, :cond_e

    .line 357
    move v5, v2

    .line 358
    goto :goto_8

    .line 359
    :cond_e
    move v5, v3

    .line 360
    .line 361
    :goto_8
    if-eqz p3, :cond_f

    .line 362
    .line 363
    iget-object v7, p3, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    .line 364
    .line 365
    if-eqz v7, :cond_f

    .line 366
    .line 367
    .line 368
    invoke-virtual {v7}, Lcom/narvii/video/ui/UserStatusData;->isVoiceMuted()Z

    .line 369
    move-result v7

    .line 370
    .line 371
    if-eqz v7, :cond_f

    .line 372
    move v7, v2

    .line 373
    goto :goto_9

    .line 374
    :cond_f
    move v7, v3

    .line 375
    .line 376
    :goto_9
    if-eqz v5, :cond_11

    .line 377
    .line 378
    if-eqz v0, :cond_11

    .line 379
    .line 380
    if-eqz v4, :cond_10

    .line 381
    .line 382
    iget-object v4, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    .line 383
    .line 384
    .line 385
    invoke-static {v4}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->A(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 386
    move-result-object v4

    .line 387
    .line 388
    .line 389
    invoke-virtual {v4}, Lcom/narvii/chat/screenroom/ScreenRoomService;->getLocalMicMuted()Z

    .line 390
    move-result v4

    .line 391
    :goto_a
    move v7, v4

    .line 392
    goto :goto_b

    .line 393
    .line 394
    :cond_10
    iget-object v4, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    .line 395
    .line 396
    .line 397
    invoke-static {v4}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->A(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 398
    move-result-object v4

    .line 399
    .line 400
    .line 401
    invoke-virtual {v4}, Lcom/narvii/chat/screenroom/ScreenRoomService;->isSrHostMuted()Z

    .line 402
    move-result v4

    .line 403
    goto :goto_a

    .line 404
    .line 405
    :cond_11
    :goto_b
    if-eqz p3, :cond_12

    .line 406
    .line 407
    iget-object p3, p3, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    .line 408
    .line 409
    if-eqz p3, :cond_12

    .line 410
    .line 411
    .line 412
    invoke-virtual {p3}, Lcom/narvii/video/ui/UserStatusData;->isVideoMuted()Z

    .line 413
    move-result p3

    .line 414
    .line 415
    if-eqz p3, :cond_12

    .line 416
    goto :goto_c

    .line 417
    :cond_12
    move v2, v3

    .line 418
    .line 419
    .line 420
    :goto_c
    const p3, 0x7f0a0826

    .line 421
    .line 422
    .line 423
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 424
    move-result-object p3

    .line 425
    .line 426
    if-eqz p1, :cond_13

    .line 427
    .line 428
    .line 429
    invoke-virtual {p0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->showIndicator()Z

    .line 430
    move-result v4

    .line 431
    .line 432
    if-eqz v4, :cond_13

    .line 433
    move v4, v3

    .line 434
    goto :goto_d

    .line 435
    :cond_13
    move v4, v6

    .line 436
    .line 437
    .line 438
    :goto_d
    invoke-virtual {p3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 439
    .line 440
    .line 441
    const p3, 0x7f0a0681

    .line 442
    .line 443
    .line 444
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 445
    move-result-object p3

    .line 446
    .line 447
    .line 448
    invoke-virtual {p3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 449
    .line 450
    .line 451
    const p3, 0x7f0a0d9b

    .line 452
    .line 453
    .line 454
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 455
    move-result-object p3

    .line 456
    .line 457
    check-cast p3, Landroid/widget/ImageView;

    .line 458
    .line 459
    const-string v4, "screenRoom"

    .line 460
    .line 461
    .line 462
    invoke-virtual {p0, v4}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 463
    move-result-object v4

    .line 464
    .line 465
    check-cast v4, Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 466
    .line 467
    .line 468
    const v4, 0x7f08067f

    .line 469
    .line 470
    .line 471
    const v8, 0x7f08067d

    .line 472
    .line 473
    if-eqz v1, :cond_17

    .line 474
    .line 475
    if-eqz v0, :cond_14

    .line 476
    .line 477
    if-eqz v5, :cond_14

    .line 478
    goto :goto_f

    .line 479
    .line 480
    :cond_14
    if-eqz v2, :cond_15

    .line 481
    .line 482
    if-eqz v7, :cond_18

    .line 483
    goto :goto_e

    .line 484
    .line 485
    :cond_15
    if-eqz v7, :cond_16

    .line 486
    goto :goto_e

    .line 487
    .line 488
    .line 489
    :cond_16
    const v8, 0x7f080677

    .line 490
    :goto_e
    move v4, v8

    .line 491
    goto :goto_10

    .line 492
    .line 493
    :cond_17
    :goto_f
    if-eqz v7, :cond_18

    .line 494
    goto :goto_e

    .line 495
    .line 496
    .line 497
    :cond_18
    :goto_10
    invoke-virtual {p3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 498
    .line 499
    .line 500
    invoke-virtual {p0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->showIndicator()Z

    .line 501
    move-result v0

    .line 502
    .line 503
    if-eqz v0, :cond_19

    .line 504
    .line 505
    if-nez p1, :cond_19

    .line 506
    goto :goto_11

    .line 507
    :cond_19
    move v3, v6

    .line 508
    .line 509
    .line 510
    :goto_11
    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 511
    return-object p2
.end method

.method public onAttach()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onAttach()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/logging/Impression/DivideColumnImpressionCollector;

    .line 6
    .line 7
    const-class v1, Lcom/narvii/model/User;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/narvii/logging/Impression/DivideColumnImpressionCollector;-><init>(Ljava/lang/Class;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    .line 14
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/model/User;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p3}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->showVVChatUserDialog(Ljava/lang/Object;)V

    .line 8
    const/4 p1, 0x1

    .line 9
    return p1

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method protected showIndicator()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
