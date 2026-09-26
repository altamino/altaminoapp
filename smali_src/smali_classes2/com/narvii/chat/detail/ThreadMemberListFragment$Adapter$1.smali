.class Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/onlinestatus/UserDialog$UserDialogClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->userOptions(Lcom/narvii/model/User;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;

.field final synthetic val$u:Lcom/narvii/model/User;


# direct methods
.method constructor <init>(Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;Lcom/narvii/model/User;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter$1;->this$1:Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter$1;->val$u:Lcom/narvii/model/User;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method public static safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/list/NVAdapter;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onClicked(ILcom/narvii/model/NVObject;)V
    .locals 4

    .line 1
    const/4 p2, 0x1

    .line 2
    .line 3
    if-eq p1, p2, :cond_5

    .line 4
    const/4 v0, 0x2

    .line 5
    .line 6
    if-eq p1, v0, :cond_3

    .line 7
    const/4 v0, 0x3

    .line 8
    .line 9
    if-eq p1, v0, :cond_2

    .line 10
    const/4 v0, 0x4

    .line 11
    .line 12
    if-eq p1, v0, :cond_1

    .line 13
    const/4 v0, 0x7

    .line 14
    .line 15
    if-eq p1, v0, :cond_0

    .line 16
    .line 17
    goto/16 :goto_0

    .line 18
    .line 19
    :cond_0
    new-instance p1, Lcom/narvii/notification/Notification;

    .line 20
    .line 21
    .line 22
    invoke-direct {p1}, Lcom/narvii/notification/Notification;-><init>()V

    .line 23
    .line 24
    new-instance v0, Lcom/narvii/chat/util/ThreadNotification;

    .line 25
    .line 26
    .line 27
    invoke-direct {v0}, Lcom/narvii/chat/util/ThreadNotification;-><init>()V

    .line 28
    .line 29
    iget-object v1, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter$1;->this$1:Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;

    .line 30
    .line 31
    iget-object v1, v1, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadMemberListFragment;

    .line 32
    .line 33
    .line 34
    invoke-static {v1}, Lcom/narvii/chat/detail/ThreadMemberListFragment;->u(Lcom/narvii/chat/detail/ThreadMemberListFragment;)Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    iput-object v1, v0, Lcom/narvii/chat/util/ThreadNotification;->threadId:Ljava/lang/String;

    .line 38
    .line 39
    iput p2, v0, Lcom/narvii/chat/util/ThreadNotification;->action:I

    .line 40
    .line 41
    iget-object p2, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter$1;->val$u:Lcom/narvii/model/User;

    .line 42
    .line 43
    iput-object p2, v0, Lcom/narvii/chat/util/ThreadNotification;->targetObj:Ljava/lang/Object;

    .line 44
    .line 45
    const-string p2, "update"

    .line 46
    .line 47
    iput-object p2, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 48
    .line 49
    iput-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 50
    .line 51
    iget-object p2, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter$1;->this$1:Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, p1}, Lcom/narvii/list/NVAdapter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 55
    .line 56
    goto/16 :goto_0

    .line 57
    .line 58
    :cond_1
    new-instance p1, Lcom/narvii/util/dialog/ProgressDialog;

    .line 59
    .line 60
    iget-object p2, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter$1;->this$1:Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 64
    move-result-object p2

    .line 65
    .line 66
    .line 67
    invoke-direct {p1, p2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 71
    .line 72
    new-instance p2, Lcom/narvii/chat/util/ChatRequestHelper;

    .line 73
    .line 74
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter$1;->this$1:Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;

    .line 75
    .line 76
    iget-object v0, v0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadMemberListFragment;

    .line 77
    .line 78
    .line 79
    invoke-direct {p2, v0}, Lcom/narvii/chat/util/ChatRequestHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 80
    .line 81
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter$1;->val$u:Lcom/narvii/model/User;

    .line 82
    .line 83
    iget-object v0, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 84
    .line 85
    iget-object v1, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter$1;->this$1:Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;

    .line 86
    .line 87
    iget-object v1, v1, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadMemberListFragment;

    .line 88
    .line 89
    .line 90
    invoke-static {v1}, Lcom/narvii/chat/detail/ThreadMemberListFragment;->u(Lcom/narvii/chat/detail/ThreadMemberListFragment;)Ljava/lang/String;

    .line 91
    move-result-object v1

    .line 92
    .line 93
    iget-object v2, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter$1;->this$1:Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;

    .line 94
    .line 95
    iget-object v2, v2, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadMemberListFragment;

    .line 96
    .line 97
    .line 98
    invoke-static {v2}, Lcom/narvii/chat/detail/ThreadMemberListFragment;->t(Lcom/narvii/chat/detail/ThreadMemberListFragment;)Lcom/narvii/model/ChatThread;

    .line 99
    move-result-object v2

    .line 100
    .line 101
    new-instance v3, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter$1$1;

    .line 102
    .line 103
    .line 104
    invoke-direct {v3, p0, p1}, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter$1$1;-><init>(Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter$1;Lcom/narvii/util/dialog/ProgressDialog;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/narvii/chat/util/ChatRequestHelper;->sendDeleteThreadRequest(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;)V

    .line 108
    goto :goto_0

    .line 109
    .line 110
    :cond_2
    new-instance p1, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    .line 111
    .line 112
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter$1;->this$1:Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;

    .line 113
    .line 114
    iget-object v0, v0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadMemberListFragment;

    .line 115
    .line 116
    .line 117
    invoke-direct {p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    .line 118
    .line 119
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter$1;->val$u:Lcom/narvii/model/User;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, v0}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    .line 123
    move-result-object p1

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, p2}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->miniProfile(Z)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    .line 127
    move-result-object p1

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->build()Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 131
    move-result-object p1

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->show()V

    .line 135
    goto :goto_0

    .line 136
    .line 137
    :cond_3
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter$1;->this$1:Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;

    .line 138
    .line 139
    iget-object p1, p1, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadMemberListFragment;

    .line 140
    .line 141
    iget-object p2, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter$1;->val$u:Lcom/narvii/model/User;

    .line 142
    .line 143
    .line 144
    invoke-static {p1, p2}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    .line 145
    move-result-object p1

    .line 146
    .line 147
    if-nez p1, :cond_4

    .line 148
    return-void

    .line 149
    .line 150
    :cond_4
    const-string p2, "Source"

    .line 151
    .line 152
    const-string v0, "Chat Thread More Info"

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    .line 157
    iget-object p2, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter$1;->this$1:Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;

    .line 158
    .line 159
    .line 160
    invoke-static {p2, p1}, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter$1;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 161
    goto :goto_0

    .line 162
    .line 163
    :cond_5
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter$1;->this$1:Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;

    .line 164
    .line 165
    iget-object p1, p1, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadMemberListFragment;

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 169
    move-result-object p1

    .line 170
    .line 171
    const-string p2, "chatInvite"

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 175
    move-result-object p1

    .line 176
    .line 177
    check-cast p1, Lcom/narvii/chat/invite/ChatInviteFragment;

    .line 178
    .line 179
    if-eqz p1, :cond_6

    .line 180
    .line 181
    iget-object p2, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter$1;->val$u:Lcom/narvii/model/User;

    .line 182
    .line 183
    .line 184
    invoke-virtual {p2}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    .line 185
    move-result-object p2

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1, p2}, Lcom/narvii/chat/invite/ChatInviteFragment;->startChat(Ljava/lang/String;)V

    .line 189
    :cond_6
    :goto_0
    return-void
.end method
