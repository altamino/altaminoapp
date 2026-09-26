.class public Lcom/narvii/chat/detail/ThreadMemberListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;
    }
.end annotation


# static fields
.field static final ADD_MEMBER:I = 0x2


# instance fields
.field affiliationsService:Lcom/narvii/community/AffiliationsService;

.field private chatThread:Lcom/narvii/model/ChatThread;

.field private community:Lcom/narvii/model/Community;

.field globalChatHelper:Lcom/narvii/chat/global/GlobalChatHelper;

.field private threadId:Ljava/lang/String;

.field private userListAdapter:Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    return-void
.end method

.method private checkCommunityAvailability()Z
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment;->community:Lcom/narvii/model/Community;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    .line 8
    :cond_0
    iget-object v2, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment;->globalChatHelper:Lcom/narvii/chat/global/GlobalChatHelper;

    .line 9
    .line 10
    iget v3, v0, Lcom/narvii/model/Community;->id:I

    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x1

    .line 13
    const/4 v6, 0x1

    .line 14
    .line 15
    new-instance v7, Lcom/narvii/chat/detail/ThreadMemberListFragment$2;

    .line 16
    .line 17
    .line 18
    invoke-direct {v7, p0}, Lcom/narvii/chat/detail/ThreadMemberListFragment$2;-><init>(Lcom/narvii/chat/detail/ThreadMemberListFragment;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual/range {v2 .. v7}, Lcom/narvii/chat/global/GlobalChatHelper;->tryJoinCommunity(IZZZLcom/narvii/chat/global/GlobalChatHelper$JoinCommunityCallback;)Z

    .line 22
    move-result v0

    .line 23
    xor-int/2addr v0, v1

    .line 24
    return v0
.end method

.method static bridge synthetic t(Lcom/narvii/chat/detail/ThreadMemberListFragment;)Lcom/narvii/model/ChatThread;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment;->chatThread:Lcom/narvii/model/ChatThread;

    return-object p0
.end method

.method static bridge synthetic u(Lcom/narvii/chat/detail/ThreadMemberListFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment;->threadId:Ljava/lang/String;

    return-object p0
.end method

.method private updateTitle()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment;->chatThread:Lcom/narvii/model/ChatThread;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, ""

    .line 7
    goto :goto_0

    .line 8
    .line 9
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    const-string v1, "("

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment;->chatThread:Lcom/narvii/model/ChatThread;

    .line 20
    .line 21
    iget v1, v1, Lcom/narvii/model/ChatThread;->membersCount:I

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v1, ")"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const v2, 0x7f12030e

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 45
    move-result-object v2

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 59
    return-void
.end method

.method static bridge synthetic v(Lcom/narvii/chat/detail/ThreadMemberListFragment;)Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment;->userListAdapter:Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;

    return-object p0
.end method

.method static bridge synthetic w(Lcom/narvii/chat/detail/ThreadMemberListFragment;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/detail/ThreadMemberListFragment;->checkCommunityAvailability()Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 2

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;-><init>(Lcom/narvii/chat/detail/ThreadMemberListFragment;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment;->userListAdapter:Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    const/high16 v0, 0x40800000    # 4.0f

    .line 14
    .line 15
    .line 16
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 17
    move-result p1

    .line 18
    .line 19
    new-instance v0, Lcom/narvii/list/DivideColumnAdapter;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p0, p1, p1}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;II)V

    .line 23
    .line 24
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment;->userListAdapter:Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;

    .line 25
    const/4 v1, 0x5

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1, v1}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 29
    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    if-ne p1, v0, :cond_2

    .line 4
    const/4 v0, -0x1

    .line 5
    .line 6
    if-ne p2, v0, :cond_2

    .line 7
    .line 8
    if-eqz p3, :cond_2

    .line 9
    .line 10
    const-string v0, "users"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    const-class v1, Lcom/narvii/model/User;

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 26
    move-result v1

    .line 27
    .line 28
    if-nez v1, :cond_2

    .line 29
    .line 30
    new-instance v1, Lcom/narvii/util/dialog/ProgressDialog;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    .line 37
    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 38
    .line 39
    new-instance v2, Lcom/narvii/chat/detail/ThreadMemberListFragment$1;

    .line 40
    .line 41
    .line 42
    invoke-direct {v2, p0, v0}, Lcom/narvii/chat/detail/ThreadMemberListFragment$1;-><init>(Lcom/narvii/chat/detail/ThreadMemberListFragment;Ljava/util/List;)V

    .line 43
    .line 44
    iput-object v2, v1, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 45
    .line 46
    .line 47
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 48
    move-result-object v2

    .line 49
    .line 50
    .line 51
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    .line 55
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    move-result v3

    .line 57
    .line 58
    if-eqz v3, :cond_1

    .line 59
    .line 60
    .line 61
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    move-result-object v3

    .line 63
    .line 64
    check-cast v3, Lcom/narvii/model/User;

    .line 65
    .line 66
    iget-object v4, v3, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 70
    move-result v4

    .line 71
    .line 72
    if-eqz v4, :cond_0

    .line 73
    goto :goto_0

    .line 74
    .line 75
    :cond_0
    iget-object v3, v3, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 79
    goto :goto_0

    .line 80
    .line 81
    .line 82
    :cond_1
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 83
    move-result-object v0

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 87
    move-result-object v0

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 91
    move-result-object v0

    .line 92
    .line 93
    new-instance v3, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    const-string v4, "/chat/thread/"

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    iget-object v4, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment;->threadId:Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    const-string v4, "/member/invite"

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    move-result-object v3

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 119
    move-result-object v0

    .line 120
    .line 121
    const-string v3, "uids"

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 125
    move-result-object v0

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 129
    move-result-object v0

    .line 130
    .line 131
    const-string v2, "api"

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 135
    move-result-object v2

    .line 136
    .line 137
    check-cast v2, Lcom/narvii/util/http/ApiService;

    .line 138
    .line 139
    iget-object v3, v1, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v2, v0, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 146
    .line 147
    .line 148
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 149
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "threadId"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment;->threadId:Ljava/lang/String;

    .line 12
    .line 13
    const-string v0, "thread"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    const-class v1, Lcom/narvii/model/ChatThread;

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    check-cast v0, Lcom/narvii/model/ChatThread;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment;->chatThread:Lcom/narvii/model/ChatThread;

    .line 28
    .line 29
    const-string v0, "__community"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    const-class v1, Lcom/narvii/model/Community;

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    check-cast v0, Lcom/narvii/model/Community;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment;->community:Lcom/narvii/model/Community;

    .line 44
    .line 45
    const-string v0, "affiliations"

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    check-cast v0, Lcom/narvii/community/AffiliationsService;

    .line 52
    .line 53
    iput-object v0, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    .line 54
    .line 55
    if-nez p1, :cond_0

    .line 56
    .line 57
    new-instance p1, Lcom/narvii/chat/invite/ChatInviteFragment;

    .line 58
    .line 59
    .line 60
    invoke-direct {p1}, Lcom/narvii/chat/invite/ChatInviteFragment;-><init>()V

    .line 61
    .line 62
    new-instance v0, Landroid/os/Bundle;

    .line 63
    .line 64
    .line 65
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 72
    move-result-object v0

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 76
    move-result-object v0

    .line 77
    .line 78
    const-string v1, "chatInvite"

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 82
    move-result-object p1

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 86
    .line 87
    :cond_0
    new-instance p1, Lcom/narvii/chat/global/GlobalChatHelper;

    .line 88
    .line 89
    .line 90
    invoke-direct {p1, p0}, Lcom/narvii/chat/global/GlobalChatHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 91
    .line 92
    iput-object p1, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment;->globalChatHelper:Lcom/narvii/chat/global/GlobalChatHelper;

    .line 93
    .line 94
    .line 95
    invoke-direct {p0}, Lcom/narvii/chat/detail/ThreadMemberListFragment;->updateTitle()V

    .line 96
    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 4
    const/4 p2, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 8
    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 3
    .line 4
    const-string v1, "update"

    .line 5
    .line 6
    if-ne v0, v1, :cond_1

    .line 7
    .line 8
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 9
    .line 10
    instance-of v0, p1, Lcom/narvii/model/ChatThread;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    check-cast p1, Lcom/narvii/model/ChatThread;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment;->chatThread:Lcom/narvii/model/ChatThread;

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lcom/narvii/chat/detail/ThreadMemberListFragment;->updateTitle()V

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_0
    instance-of v0, p1, Lcom/narvii/chat/util/ThreadNotification;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    check-cast p1, Lcom/narvii/chat/util/ThreadNotification;

    .line 27
    .line 28
    iget v0, p1, Lcom/narvii/chat/util/ThreadNotification;->action:I

    .line 29
    const/4 v1, 0x1

    .line 30
    .line 31
    if-ne v0, v1, :cond_1

    .line 32
    .line 33
    iget-object v0, p1, Lcom/narvii/chat/util/ThreadNotification;->targetObj:Ljava/lang/Object;

    .line 34
    .line 35
    instance-of v0, v0, Lcom/narvii/model/User;

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment;->userListAdapter:Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    new-instance v0, Lcom/narvii/notification/Notification;

    .line 44
    .line 45
    .line 46
    invoke-direct {v0}, Lcom/narvii/notification/Notification;-><init>()V

    .line 47
    .line 48
    const-string v1, "delete"

    .line 49
    .line 50
    iput-object v1, v0, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 51
    .line 52
    iget-object p1, p1, Lcom/narvii/chat/util/ThreadNotification;->targetObj:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast p1, Lcom/narvii/model/User;

    .line 55
    .line 56
    iput-object p1, v0, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 57
    .line 58
    iget-object p1, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment;->userListAdapter:Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;

    .line 59
    const/4 v1, 0x0

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    .line 63
    :cond_1
    :goto_0
    return-void
.end method
