.class public Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/narvii/chat/ThreadInfoHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$OnFragmentSizeChangedFragment;
    }
.end annotation


# static fields
.field private static final REQUEST_TYPE_ACCEPT:I = 0x1

.field private static final REQUEST_TYPE_CLAIM:I = 0x2


# instance fields
.field private claimLayout:Landroid/view/View;

.field private communityHelper:Lcom/narvii/community/CommunityHelper;

.field private confirmLayout:Landroid/view/View;

.field private isGlobal:Z

.field private listener:Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$OnFragmentSizeChangedFragment;

.field private final pushListener:Lcom/narvii/pushservice/PushService$PushListener;

.field private requestLayout:Landroid/view/View;

.field private requestType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$5;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$5;-><init>(Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->pushListener:Lcom/narvii/pushservice/PushService$PushListener;

    .line 11
    return-void
.end method

.method private checkAuthBeforeShowConfirmView()V
    .locals 6

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/modulization/entry/EntryManager;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/modulization/entry/EntryManager;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    const-string v1, "postType"

    .line 8
    .line 9
    const-string v2, "publicChatRooms"

    .line 10
    .line 11
    const-string v3, "post"

    .line 12
    .line 13
    .line 14
    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/narvii/modulization/entry/EntryManager;->getEntrySetting([Ljava/lang/String;)Lcom/narvii/modulization/entry/EntrySetting;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    const-string v1, "account"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    check-cast v1, Lcom/narvii/account/AccountService;

    .line 28
    .line 29
    iget-boolean v2, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->isGlobal:Z

    .line 30
    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    const-string v0, "membership"

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    check-cast v0, Lcom/narvii/wallet/MembershipService;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    .line 43
    move-result v0

    .line 44
    .line 45
    iget-boolean v1, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->isGlobal:Z

    .line 46
    .line 47
    if-eqz v1, :cond_0

    .line 48
    .line 49
    if-nez v0, :cond_0

    .line 50
    .line 51
    new-instance v0, Lcom/narvii/membership/MembershipHintDialog;

    .line 52
    .line 53
    .line 54
    invoke-direct {v0, p0}, Lcom/narvii/membership/MembershipHintDialog;-><init>(Lcom/narvii/app/NVContext;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 58
    goto :goto_0

    .line 59
    .line 60
    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->showConfirmLayout()V

    .line 62
    :goto_0
    return-void

    .line 63
    .line 64
    :cond_1
    if-eqz v0, :cond_4

    .line 65
    .line 66
    iget-object v2, v0, Lcom/narvii/modulization/entry/EntrySetting;->privilege:Lcom/narvii/modulization/entry/Privilege;

    .line 67
    .line 68
    if-eqz v2, :cond_4

    .line 69
    .line 70
    iget v2, v2, Lcom/narvii/modulization/entry/Privilege;->type:I

    .line 71
    const/4 v3, 0x2

    .line 72
    const/4 v4, 0x0

    .line 73
    .line 74
    .line 75
    const v5, 0x104000a

    .line 76
    .line 77
    if-ne v2, v3, :cond_2

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 81
    move-result v2

    .line 82
    .line 83
    if-eqz v2, :cond_2

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 87
    move-result-object v2

    .line 88
    .line 89
    iget v2, v2, Lcom/narvii/model/User;->level:I

    .line 90
    .line 91
    iget-object v3, v0, Lcom/narvii/modulization/entry/EntrySetting;->privilege:Lcom/narvii/modulization/entry/Privilege;

    .line 92
    .line 93
    iget v3, v3, Lcom/narvii/modulization/entry/Privilege;->minLevel:I

    .line 94
    .line 95
    if-ge v2, v3, :cond_2

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 99
    move-result-object v2

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2}, Lcom/narvii/model/User;->isCurator()Z

    .line 103
    move-result v2

    .line 104
    .line 105
    if-nez v2, :cond_2

    .line 106
    .line 107
    new-instance v1, Lcom/narvii/widget/ACMAlertDialog;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 111
    move-result-object v2

    .line 112
    .line 113
    .line 114
    invoke-direct {v1, v2}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 115
    const/4 v2, 0x1

    .line 116
    .line 117
    new-array v2, v2, [Ljava/lang/Object;

    .line 118
    .line 119
    iget-object v0, v0, Lcom/narvii/modulization/entry/EntrySetting;->privilege:Lcom/narvii/modulization/entry/Privilege;

    .line 120
    .line 121
    iget v0, v0, Lcom/narvii/modulization/entry/Privilege;->minLevel:I

    .line 122
    .line 123
    .line 124
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    move-result-object v0

    .line 126
    const/4 v3, 0x0

    .line 127
    .line 128
    aput-object v0, v2, v3

    .line 129
    .line 130
    .line 131
    const v0, 0x7f1211ec

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 135
    move-result-object v0

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1, v5, v4}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1}, Lcom/narvii/app/NVDialog;->show()V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->hideAllLayout()V

    .line 148
    goto :goto_1

    .line 149
    .line 150
    :cond_2
    iget-object v0, v0, Lcom/narvii/modulization/entry/EntrySetting;->privilege:Lcom/narvii/modulization/entry/Privilege;

    .line 151
    .line 152
    iget v0, v0, Lcom/narvii/modulization/entry/Privilege;->type:I

    .line 153
    const/4 v2, 0x3

    .line 154
    .line 155
    if-ne v0, v2, :cond_3

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 159
    move-result v0

    .line 160
    .line 161
    if-eqz v0, :cond_3

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 165
    move-result-object v0

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0}, Lcom/narvii/model/User;->isCurator()Z

    .line 169
    move-result v0

    .line 170
    .line 171
    if-nez v0, :cond_3

    .line 172
    .line 173
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 177
    move-result-object v1

    .line 178
    .line 179
    .line 180
    invoke-direct {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0, v5, v4}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->hideAllLayout()V

    .line 190
    goto :goto_1

    .line 191
    .line 192
    .line 193
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->showConfirmLayout()V

    .line 194
    goto :goto_1

    .line 195
    .line 196
    .line 197
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->showConfirmLayout()V

    .line 198
    :goto_1
    return-void
.end method

.method static bridge synthetic n(Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->showActivatedToast(I)V

    return-void
.end method

.method private sendClaim()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    const-string v3, "/chat/thread/"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v0, "/transfer-organizer/apply"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 43
    .line 44
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 48
    move-result-object v2

    .line 49
    .line 50
    .line 51
    invoke-direct {v0, v2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 55
    .line 56
    const-string v2, "api"

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 60
    move-result-object v2

    .line 61
    .line 62
    check-cast v2, Lcom/narvii/util/http/ApiService;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 66
    move-result-object v1

    .line 67
    .line 68
    new-instance v3, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$2;

    .line 69
    .line 70
    const-class v4, Lcom/narvii/model/api/ApiResponse;

    .line 71
    .line 72
    .line 73
    invoke-direct {v3, p0, v4, v0}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$2;-><init>(Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, v1, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 77
    return-void
.end method

.method public static sendGetThreadRequest(Lcom/narvii/app/NVContext;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->sendGetThreadRequest(Lcom/narvii/app/NVContext;Ljava/lang/String;Z)V

    return-void
.end method

.method public static sendGetThreadRequest(Lcom/narvii/app/NVContext;Ljava/lang/String;Z)V
    .locals 5

    const-string v0, "api"

    .line 2
    invoke-interface {p0, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    const-string v1, "notification"

    .line 3
    invoke-interface {p0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/notification/NotificationCenter;

    .line 4
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/chat/thread/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    .line 5
    new-instance v2, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$4;

    const-class v3, Lcom/narvii/chat/ThreadResponse;

    invoke-direct {v2, v3, p2, p0, v1}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$4;-><init>(Ljava/lang/Class;ZLcom/narvii/app/NVContext;Lcom/narvii/notification/NotificationCenter;)V

    invoke-virtual {v0, p1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private sendReplyRequest(Z)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->getOrganizerTransferRequest()Lcom/narvii/model/OrganizerTransferRequest;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    goto :goto_1

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    const-string v4, "/chat/thread/"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v0, "/transfer-organizer/"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    iget-object v0, v1, Lcom/narvii/model/OrganizerTransferRequest;->requestId:Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    if-eqz p1, :cond_1

    .line 49
    .line 50
    const-string v0, "/accept"

    .line 51
    goto :goto_0

    .line 52
    .line 53
    :cond_1
    const-string v0, "/decline"

    .line 54
    .line 55
    .line 56
    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 64
    .line 65
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 69
    move-result-object v1

    .line 70
    .line 71
    .line 72
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 76
    .line 77
    const-string v1, "api"

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    move-result-object v1

    .line 82
    .line 83
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 87
    move-result-object v2

    .line 88
    .line 89
    new-instance v3, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$1;

    .line 90
    .line 91
    const-class v4, Lcom/narvii/model/api/ApiResponse;

    .line 92
    .line 93
    .line 94
    invoke-direct {v3, p0, v4, v0, p1}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$1;-><init>(Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;Z)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v2, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 98
    :cond_2
    :goto_1
    return-void
.end method

.method private showActivatedToast(I)V
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v0, v0, Lcom/narvii/app/NVActivity;

    .line 7
    .line 8
    .line 9
    const v1, 0x7f12033b

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 15
    move-result-object v0

    .line 16
    move-object v2, v0

    .line 17
    .line 18
    check-cast v2, Lcom/narvii/app/NVActivity;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    const v3, 0x7f0801d7

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 29
    move-result-object v3

    .line 30
    .line 31
    if-eqz p1, :cond_0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move p1, v1

    .line 34
    .line 35
    .line 36
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 37
    move-result-object v4

    .line 38
    .line 39
    .line 40
    const v5, 0x7f01006a

    .line 41
    .line 42
    const-wide/16 v6, 0x1f4

    .line 43
    .line 44
    .line 45
    invoke-virtual/range {v2 .. v7}, Lcom/narvii/app/NVActivity;->toastImageWithText(Landroid/graphics/drawable/Drawable;Ljava/lang/String;IJ)V

    .line 46
    goto :goto_2

    .line 47
    .line 48
    .line 49
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    if-eqz p1, :cond_2

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    move p1, v1

    .line 55
    :goto_1
    const/4 v1, 0x0

    .line 56
    .line 57
    .line 58
    invoke-static {v0, p1, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 63
    :goto_2
    return-void
.end method


# virtual methods
.method public getThread()Lcom/narvii/model/ChatThread;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/chat/util/ChatHelper;->Companion:Lcom/narvii/chat/util/ChatHelper$Companion;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/narvii/chat/util/ChatHelper$Companion;->getThreadFromThreadInfoHost(Lcom/narvii/app/NVFragment;)Lcom/narvii/model/ChatThread;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getThreadId()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    const-string v0, "id"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public hideAllLayout()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->requestLayout:Landroid/view/View;

    .line 3
    .line 4
    const/16 v1, 0x8

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->confirmLayout:Landroid/view/View;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->claimLayout:Landroid/view/View;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->listener:Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$OnFragmentSizeChangedFragment;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-interface {v0}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$OnFragmentSizeChangedFragment;->OnFragmentSizeChangedFragment()V

    .line 25
    :cond_0
    return-void
.end method

.method public isValidPage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 7
    move-result p1

    .line 8
    const/4 v0, 0x2

    .line 9
    const/4 v1, 0x1

    .line 10
    .line 11
    .line 12
    packed-switch p1, :pswitch_data_0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :pswitch_0
    iget p1, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->requestType:I

    .line 16
    .line 17
    if-ne p1, v1, :cond_1

    .line 18
    const/4 p1, 0x0

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p1}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->sendReplyRequest(Z)V

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_1
    if-ne p1, v0, :cond_4

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->hideAllLayout()V

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :pswitch_1
    iget p1, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->requestType:I

    .line 31
    .line 32
    if-ne p1, v1, :cond_2

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, v1}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->sendReplyRequest(Z)V

    .line 36
    goto :goto_0

    .line 37
    .line 38
    :cond_2
    if-ne p1, v0, :cond_4

    .line 39
    .line 40
    .line 41
    invoke-direct {p0}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->sendClaim()V

    .line 42
    goto :goto_0

    .line 43
    .line 44
    .line 45
    :pswitch_2
    invoke-direct {p0}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->checkAuthBeforeShowConfirmView()V

    .line 46
    goto :goto_0

    .line 47
    .line 48
    :pswitch_3
    const-string p1, "account"

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 55
    .line 56
    new-instance v0, Lcom/narvii/modulization/entry/EntryManager;

    .line 57
    .line 58
    .line 59
    invoke-direct {v0, p0}, Lcom/narvii/modulization/entry/EntryManager;-><init>(Lcom/narvii/app/NVContext;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, p1}, Lcom/narvii/modulization/entry/EntryManager;->canUserChat(Lcom/narvii/model/User;)Lcom/narvii/modulization/entry/EntryEligibleCheckResult;

    .line 67
    move-result-object p1

    .line 68
    .line 69
    iget-boolean v0, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->isGlobal:Z

    .line 70
    .line 71
    if-eqz v0, :cond_3

    .line 72
    .line 73
    iget-boolean v0, p1, Lcom/narvii/modulization/entry/EntryEligibleCheckResult;->isEligible:Z

    .line 74
    .line 75
    if-nez v0, :cond_3

    .line 76
    .line 77
    iget-boolean p1, p1, Lcom/narvii/modulization/entry/EntryEligibleCheckResult;->needMembership:Z

    .line 78
    .line 79
    if-eqz p1, :cond_3

    .line 80
    .line 81
    new-instance p1, Lcom/narvii/membership/MembershipHintDialog;

    .line 82
    .line 83
    .line 84
    invoke-direct {p1, p0}, Lcom/narvii/membership/MembershipHintDialog;-><init>(Lcom/narvii/app/NVContext;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 88
    goto :goto_0

    .line 89
    .line 90
    .line 91
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 92
    move-result-object p1

    .line 93
    .line 94
    if-eqz p1, :cond_4

    .line 95
    .line 96
    iget-object v0, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->communityHelper:Lcom/narvii/community/CommunityHelper;

    .line 97
    .line 98
    iget p1, p1, Lcom/narvii/model/ChatThread;->ndcId:I

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, p1}, Lcom/narvii/community/CommunityHelper;->checkCommunityJoined(I)Z

    .line 102
    move-result p1

    .line 103
    .line 104
    if-eqz p1, :cond_4

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->showConfirmLayout()V

    .line 108
    :cond_4
    :goto_0
    return-void

    .line 109
    .line 110
    :pswitch_data_0
    .packed-switch 0x7f0a0306
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string p1, "push"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    check-cast p1, Lcom/narvii/pushservice/PushService;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->pushListener:Lcom/narvii/pushservice/PushService$PushListener;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lcom/narvii/pushservice/PushService;->addPushListener(Lcom/narvii/pushservice/PushService$PushListener;)V

    .line 17
    .line 18
    new-instance p1, Lcom/narvii/community/CommunityHelper;

    .line 19
    .line 20
    .line 21
    invoke-direct {p1, p0}, Lcom/narvii/community/CommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 22
    .line 23
    iput-object p1, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->communityHelper:Lcom/narvii/community/CommunityHelper;

    .line 24
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d00b0

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    .line 4
    .line 5
    const-string v0, "push"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Lcom/narvii/pushservice/PushService;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->pushListener:Lcom/narvii/pushservice/PushService$PushListener;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/narvii/pushservice/PushService;->removePushListener(Lcom/narvii/pushservice/PushService$PushListener;)V

    .line 17
    return-void
.end method

.method public onThreadChanged(Lcom/narvii/model/ChatThread;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->updateView()V

    .line 4
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 28
    move-result v0

    .line 29
    .line 30
    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 31
    .line 32
    .line 33
    const p2, 0x7f0a0306

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    move-result-object p2

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    .line 42
    .line 43
    const p2, 0x7f0a030a

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    move-result-object p2

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    .line 52
    .line 53
    const p2, 0x7f0a0309

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 57
    move-result-object p2

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    .line 62
    .line 63
    const p2, 0x7f0a0308

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 67
    move-result-object p2

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    .line 72
    .line 73
    const p2, 0x7f0a0307

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    move-result-object p2

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    .line 82
    .line 83
    const p2, 0x7f0a0aaa

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 87
    move-result-object p2

    .line 88
    .line 89
    iput-object p2, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->requestLayout:Landroid/view/View;

    .line 90
    .line 91
    .line 92
    const p2, 0x7f0a0aa7

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 96
    move-result-object p2

    .line 97
    .line 98
    iput-object p2, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->confirmLayout:Landroid/view/View;

    .line 99
    .line 100
    .line 101
    const p2, 0x7f0a0aa6

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 105
    move-result-object p1

    .line 106
    .line 107
    iput-object p1, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->claimLayout:Landroid/view/View;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->updateView()V

    .line 111
    .line 112
    const-string p1, "config"

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 116
    move-result-object p1

    .line 117
    .line 118
    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 122
    move-result p1

    .line 123
    .line 124
    if-nez p1, :cond_0

    .line 125
    const/4 p1, 0x1

    .line 126
    goto :goto_0

    .line 127
    :cond_0
    const/4 p1, 0x0

    .line 128
    .line 129
    :goto_0
    iput-boolean p1, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->isGlobal:Z

    .line 130
    return-void
.end method

.method public setOnFragmentSizeChange(Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$OnFragmentSizeChangedFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->listener:Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$OnFragmentSizeChangedFragment;

    return-void
.end method

.method public showAcceptLayout()V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->getOrganizerTransferRequest()Lcom/narvii/model/OrganizerTransferRequest;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    iget-object v2, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->requestLayout:Landroid/view/View;

    .line 16
    const/4 v3, 0x0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    iget-object v2, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->requestLayout:Landroid/view/View;

    .line 22
    .line 23
    .line 24
    const v4, 0x7f0a0aa8

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    check-cast v2, Landroid/widget/TextView;

    .line 31
    const/4 v4, 0x1

    .line 32
    .line 33
    new-array v5, v4, [Ljava/lang/Object;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/narvii/model/ChatThread;->author:Lcom/narvii/model/User;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/narvii/model/User;->nickname:Ljava/lang/String;

    .line 38
    .line 39
    aput-object v0, v5, v3

    .line 40
    .line 41
    .line 42
    const v0, 0x7f1211f2

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v0, v5}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    .line 51
    iget-object v0, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->requestLayout:Landroid/view/View;

    .line 52
    .line 53
    .line 54
    const v2, 0x7f0a0aab

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    check-cast v0, Landroid/widget/TextView;

    .line 61
    .line 62
    new-instance v2, Lcom/narvii/util/DateTimeFormatter;

    .line 63
    .line 64
    .line 65
    invoke-direct {v2}, Lcom/narvii/util/DateTimeFormatter;-><init>()V

    .line 66
    .line 67
    iget-object v1, v1, Lcom/narvii/model/OrganizerTransferRequest;->createdTime:Ljava/util/Date;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, v1}, Lcom/narvii/util/DateTimeFormatter;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 71
    move-result-object v1

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    .line 76
    iput v4, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->requestType:I

    .line 77
    .line 78
    iget-object v0, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->confirmLayout:Landroid/view/View;

    .line 79
    .line 80
    const/16 v1, 0x8

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 84
    .line 85
    iget-object v0, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->claimLayout:Landroid/view/View;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 89
    .line 90
    iget-object v0, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->listener:Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$OnFragmentSizeChangedFragment;

    .line 91
    .line 92
    if-eqz v0, :cond_1

    .line 93
    .line 94
    .line 95
    invoke-interface {v0}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$OnFragmentSizeChangedFragment;->OnFragmentSizeChangedFragment()V

    .line 96
    :cond_1
    return-void

    .line 97
    .line 98
    .line 99
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->hideAllLayout()V

    .line 100
    return-void
.end method

.method public showClaimLayout()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->requestLayout:Landroid/view/View;

    .line 3
    .line 4
    const/16 v1, 0x8

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->confirmLayout:Landroid/view/View;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->claimLayout:Landroid/view/View;

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    const/4 v0, 0x2

    .line 20
    .line 21
    iput v0, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->requestType:I

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->listener:Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$OnFragmentSizeChangedFragment;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-interface {v0}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$OnFragmentSizeChangedFragment;->OnFragmentSizeChangedFragment()V

    .line 29
    :cond_0
    return-void
.end method

.method public showConfirmLayout()V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->requestLayout:Landroid/view/View;

    .line 3
    .line 4
    const/16 v1, 0x8

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->confirmLayout:Landroid/view/View;

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->confirmLayout:Landroid/view/View;

    .line 16
    .line 17
    .line 18
    const v2, 0x7f0a0aa5

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    check-cast v0, Landroid/widget/TextView;

    .line 25
    .line 26
    .line 27
    const v2, 0x7f1211ed

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 31
    move-result-object v2

    .line 32
    .line 33
    .line 34
    const v3, 0x7f120267

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 38
    move-result-object v3

    .line 39
    .line 40
    new-instance v4, Landroid/text/SpannableStringBuilder;

    .line 41
    .line 42
    new-instance v5, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v6, " "

    .line 51
    .line 52
    .line 53
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object v5

    .line 61
    .line 62
    .line 63
    invoke-direct {v4, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 64
    .line 65
    new-instance v5, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$3;

    .line 66
    .line 67
    .line 68
    invoke-direct {v5, p0}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$3;-><init>(Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 72
    move-result v6

    .line 73
    .line 74
    add-int/lit8 v6, v6, 0x1

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 78
    move-result v2

    .line 79
    .line 80
    add-int/lit8 v2, v2, 0x1

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 84
    move-result v3

    .line 85
    add-int/2addr v2, v3

    .line 86
    .line 87
    const/16 v3, 0x12

    .line 88
    .line 89
    .line 90
    invoke-virtual {v4, v5, v6, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 91
    .line 92
    .line 93
    invoke-static {}, Lcom/narvii/util/text/LinkTouchMovementMethod;->getInstance()Lcom/narvii/util/text/LinkTouchMovementMethod;

    .line 94
    move-result-object v2

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    .line 102
    iget-object v0, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->claimLayout:Landroid/view/View;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 106
    .line 107
    iget-object v0, p0, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->listener:Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$OnFragmentSizeChangedFragment;

    .line 108
    .line 109
    if-eqz v0, :cond_0

    .line 110
    .line 111
    .line 112
    invoke-interface {v0}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment$OnFragmentSizeChangedFragment;->OnFragmentSizeChangedFragment()V

    .line 113
    :cond_0
    return-void
.end method

.method public updateThread(Z)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->getThreadId()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {p0, v0, p1}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->sendGetThreadRequest(Lcom/narvii/app/NVContext;Ljava/lang/String;Z)V

    .line 8
    return-void
.end method

.method public updateView()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->getThread()Lcom/narvii/model/ChatThread;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->hideAllLayout()V

    .line 10
    return-void

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->getOrganizerTransferRequest()Lcom/narvii/model/OrganizerTransferRequest;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->showAcceptLayout()V

    .line 20
    goto :goto_0

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/model/ChatThread;->isCurrentUserEligibleToBeTheOrganizer()Z

    .line 24
    move-result v0

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    goto :goto_0

    .line 28
    .line 29
    .line 30
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/chat/organizer/ClaimOrganizerTransFragment;->hideAllLayout()V

    .line 31
    :goto_0
    return-void
.end method
