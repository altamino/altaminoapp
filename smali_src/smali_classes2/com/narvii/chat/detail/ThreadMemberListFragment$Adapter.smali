.class Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/detail/ThreadMemberListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVPagedAdapter<",
        "Lcom/narvii/model/User;",
        "Lcom/narvii/chat/detail/MemberListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field accountService:Lcom/narvii/account/AccountService;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/chat/detail/ThreadMemberListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/detail/ThreadMemberListFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadMemberListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    const-string p1, "account"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->accountService:Lcom/narvii/account/AccountService;

    .line 16
    return-void
.end method

.method public static safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # I

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public addUsers(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->notifyDataSetChanged()V

    .line 15
    :cond_1
    :goto_0
    return-void
.end method

.method public createLoadingItem(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 2

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0d041f

    .line 4
    .line 5
    const-string v1, "loading"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    const p2, 0x7f0a0d67

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    check-cast p2, Lcom/narvii/widget/SpinningView;

    .line 19
    .line 20
    if-eqz p2, :cond_1

    .line 21
    .line 22
    iget-boolean v0, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    const/4 v0, -0x1

    .line 26
    goto :goto_0

    .line 27
    .line 28
    .line 29
    :cond_0
    const v0, -0xbbbbbc

    .line 30
    .line 31
    .line 32
    :goto_0
    invoke-virtual {p2, v0}, Lcom/narvii/widget/SpinningView;->setSpinColor(I)V

    .line 33
    :cond_1
    return-object p1
.end method

.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 1
    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v0, "/chat/thread/"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadMemberListFragment;

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/narvii/chat/detail/ThreadMemberListFragment;->u(Lcom/narvii/chat/detail/ThreadMemberListFragment;)Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v0, "/member"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 31
    .line 32
    .line 33
    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    const-string v0, "type"

    .line 40
    .line 41
    const-string v1, "default"

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 48
    move-result-object p1

    .line 49
    return-object p1
.end method

.method protected dataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/model/User;

    return-object v0
.end method

.method protected filterDuplicate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getItemType(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected getItemTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/model/User;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    check-cast p1, Lcom/narvii/model/User;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->accountService:Lcom/narvii/account/AccountService;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    const v1, 0x7f0d048f

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 19
    move-result-object p2

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    .line 23
    move-result-object p3

    .line 24
    .line 25
    iget-object v1, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->accountService:Lcom/narvii/account/AccountService;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    .line 32
    invoke-static {p3, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    move-result p3

    .line 34
    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    if-eqz p3, :cond_0

    .line 38
    .line 39
    iget-boolean p3, v0, Lcom/narvii/model/User;->isPremiumItemMembership:Z

    .line 40
    .line 41
    iput-boolean p3, p1, Lcom/narvii/model/User;->isPremiumItemMembership:Z

    .line 42
    .line 43
    .line 44
    :cond_0
    const p3, 0x7f0a0f36

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    move-result-object p3

    .line 49
    .line 50
    check-cast p3, Lcom/narvii/widget/UserAvatarLayout;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p3, p1}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 54
    .line 55
    .line 56
    const p3, 0x7f0a09f9

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 60
    move-result-object p3

    .line 61
    .line 62
    check-cast p3, Lcom/narvii/widget/NicknameView;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p3, p1}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 66
    .line 67
    .line 68
    const p3, 0x7f0a02aa

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    move-result-object p3

    .line 73
    .line 74
    iget p1, p1, Lcom/narvii/model/User;->membershipStatus:I

    .line 75
    const/4 v0, 0x2

    .line 76
    .line 77
    if-ne p1, v0, :cond_1

    .line 78
    const/4 p1, 0x0

    .line 79
    goto :goto_0

    .line 80
    :cond_1
    const/4 p1, 0x4

    .line 81
    .line 82
    .line 83
    :goto_0
    invoke-virtual {p3, p1}, Landroid/view/View;->setVisibility(I)V

    .line 84
    return-object p2

    .line 85
    :cond_2
    const/4 p1, 0x0

    .line 86
    return-object p1
.end method

.method public inviteMembers()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadMemberListFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/chat/detail/ThreadMemberListFragment;->t(Lcom/narvii/chat/detail/ThreadMemberListFragment;)Lcom/narvii/model/ChatThread;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadMemberListFragment;

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/narvii/chat/detail/ThreadMemberListFragment;->t(Lcom/narvii/chat/detail/ThreadMemberListFragment;)Lcom/narvii/model/ChatThread;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    iget v0, v0, Lcom/narvii/model/ChatThread;->type:I

    .line 18
    const/4 v1, 0x2

    .line 19
    const/4 v2, 0x1

    .line 20
    .line 21
    if-eq v0, v2, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadMemberListFragment;

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Lcom/narvii/chat/detail/ThreadMemberListFragment;->t(Lcom/narvii/chat/detail/ThreadMemberListFragment;)Lcom/narvii/model/ChatThread;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    iget v0, v0, Lcom/narvii/model/ChatThread;->type:I

    .line 30
    .line 31
    if-ne v0, v1, :cond_6

    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadMemberListFragment;

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Lcom/narvii/chat/detail/ThreadMemberListFragment;->t(Lcom/narvii/chat/detail/ThreadMemberListFragment;)Lcom/narvii/model/ChatThread;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    iget v0, v0, Lcom/narvii/model/ChatThread;->membersCount:I

    .line 40
    .line 41
    iget-object v3, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadMemberListFragment;

    .line 42
    .line 43
    .line 44
    invoke-static {v3}, Lcom/narvii/chat/detail/ThreadMemberListFragment;->v(Lcom/narvii/chat/detail/ThreadMemberListFragment;)Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;

    .line 45
    move-result-object v3

    .line 46
    .line 47
    iget-object v3, v3, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->l:Ljava/util/List;

    .line 48
    .line 49
    if-eqz v3, :cond_2

    .line 50
    .line 51
    iget-object v3, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadMemberListFragment;

    .line 52
    .line 53
    .line 54
    invoke-static {v3}, Lcom/narvii/chat/detail/ThreadMemberListFragment;->v(Lcom/narvii/chat/detail/ThreadMemberListFragment;)Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;

    .line 55
    move-result-object v3

    .line 56
    .line 57
    iget-object v3, v3, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->l:Ljava/util/List;

    .line 58
    .line 59
    .line 60
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 61
    move-result v3

    .line 62
    .line 63
    .line 64
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    .line 65
    move-result v0

    .line 66
    goto :goto_0

    .line 67
    .line 68
    :cond_2
    iget-object v3, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadMemberListFragment;

    .line 69
    .line 70
    .line 71
    invoke-static {v3}, Lcom/narvii/chat/detail/ThreadMemberListFragment;->t(Lcom/narvii/chat/detail/ThreadMemberListFragment;)Lcom/narvii/model/ChatThread;

    .line 72
    move-result-object v3

    .line 73
    .line 74
    iget-object v3, v3, Lcom/narvii/model/ChatThread;->membersSummary:Ljava/util/List;

    .line 75
    .line 76
    if-eqz v3, :cond_3

    .line 77
    .line 78
    iget-object v3, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadMemberListFragment;

    .line 79
    .line 80
    .line 81
    invoke-static {v3}, Lcom/narvii/chat/detail/ThreadMemberListFragment;->t(Lcom/narvii/chat/detail/ThreadMemberListFragment;)Lcom/narvii/model/ChatThread;

    .line 82
    move-result-object v3

    .line 83
    .line 84
    iget-object v3, v3, Lcom/narvii/model/ChatThread;->membersSummary:Ljava/util/List;

    .line 85
    .line 86
    .line 87
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 88
    move-result v3

    .line 89
    .line 90
    .line 91
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    .line 92
    move-result v0

    .line 93
    .line 94
    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadMemberListFragment;

    .line 95
    .line 96
    .line 97
    invoke-static {v3}, Lcom/narvii/chat/detail/ThreadMemberListFragment;->t(Lcom/narvii/chat/detail/ThreadMemberListFragment;)Lcom/narvii/model/ChatThread;

    .line 98
    move-result-object v3

    .line 99
    .line 100
    iget v3, v3, Lcom/narvii/model/ChatThread;->membersQuota:I

    .line 101
    .line 102
    if-lt v0, v3, :cond_4

    .line 103
    .line 104
    new-instance v0, Lcom/narvii/util/dialog/AlertDialog;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 108
    move-result-object v1

    .line 109
    .line 110
    .line 111
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 112
    .line 113
    iget-object v1, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadMemberListFragment;

    .line 114
    .line 115
    new-array v2, v2, [Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    invoke-static {v1}, Lcom/narvii/chat/detail/ThreadMemberListFragment;->t(Lcom/narvii/chat/detail/ThreadMemberListFragment;)Lcom/narvii/model/ChatThread;

    .line 119
    move-result-object v3

    .line 120
    .line 121
    iget v3, v3, Lcom/narvii/model/ChatThread;->membersQuota:I

    .line 122
    .line 123
    .line 124
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    move-result-object v3

    .line 126
    const/4 v4, 0x0

    .line 127
    .line 128
    aput-object v3, v2, v4

    .line 129
    .line 130
    .line 131
    const v3, 0x7f12027e

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1, v3, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 135
    move-result-object v1

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 139
    .line 140
    .line 141
    const v1, 0x104000a

    .line 142
    const/4 v2, 0x0

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v1, v4, v2}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 149
    goto :goto_1

    .line 150
    .line 151
    :cond_4
    const-class v0, Lcom/narvii/user/picker/MultiUserPickerFragment;

    .line 152
    .line 153
    .line 154
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 155
    move-result-object v0

    .line 156
    .line 157
    const-string v3, "showSearchBar"

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 161
    .line 162
    iget-object v2, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadMemberListFragment;

    .line 163
    .line 164
    .line 165
    invoke-static {v2}, Lcom/narvii/chat/detail/ThreadMemberListFragment;->v(Lcom/narvii/chat/detail/ThreadMemberListFragment;)Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;

    .line 166
    move-result-object v2

    .line 167
    .line 168
    .line 169
    invoke-virtual {v2}, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->list()Ljava/util/List;

    .line 170
    move-result-object v2

    .line 171
    .line 172
    if-nez v2, :cond_5

    .line 173
    .line 174
    iget-object v2, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadMemberListFragment;

    .line 175
    .line 176
    .line 177
    invoke-static {v2}, Lcom/narvii/chat/detail/ThreadMemberListFragment;->t(Lcom/narvii/chat/detail/ThreadMemberListFragment;)Lcom/narvii/model/ChatThread;

    .line 178
    move-result-object v2

    .line 179
    .line 180
    iget-object v2, v2, Lcom/narvii/model/ChatThread;->membersSummary:Ljava/util/List;

    .line 181
    .line 182
    :cond_5
    const-string v3, "exists"

    .line 183
    .line 184
    .line 185
    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 186
    move-result-object v2

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    .line 191
    iget-object v2, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadMemberListFragment;

    .line 192
    .line 193
    .line 194
    invoke-static {v2}, Lcom/narvii/chat/detail/ThreadMemberListFragment;->t(Lcom/narvii/chat/detail/ThreadMemberListFragment;)Lcom/narvii/model/ChatThread;

    .line 195
    move-result-object v2

    .line 196
    .line 197
    iget v2, v2, Lcom/narvii/model/ChatThread;->membersQuota:I

    .line 198
    .line 199
    const-string v3, "maxMember"

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 203
    .line 204
    iget-object v2, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadMemberListFragment;

    .line 205
    .line 206
    .line 207
    invoke-static {v2}, Lcom/narvii/chat/detail/ThreadMemberListFragment;->t(Lcom/narvii/chat/detail/ThreadMemberListFragment;)Lcom/narvii/model/ChatThread;

    .line 208
    move-result-object v2

    .line 209
    .line 210
    .line 211
    invoke-virtual {v2}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    .line 212
    move-result-object v2

    .line 213
    .line 214
    const-string v3, "threadId"

    .line 215
    .line 216
    .line 217
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    .line 219
    iget-object v2, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadMemberListFragment;

    .line 220
    .line 221
    .line 222
    invoke-static {v2, v0, v1}, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 223
    :cond_6
    :goto_1
    return-void
.end method

.method public list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->l:Ljava/util/List;

    return-object v0
.end method

.method public notJoined()Z
    .locals 2

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
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadMemberListFragment;

    .line 17
    .line 18
    iget-object v1, v1, Lcom/narvii/chat/detail/ThreadMemberListFragment;->affiliationsService:Lcom/narvii/community/AffiliationsService;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v0}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    const/4 v0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    :goto_0
    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    iput-object v0, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->l:Ljava/util/List;

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    iput-object v0, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->l:Ljava/util/List;

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    iput-object v1, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->l:Ljava/util/List;

    .line 32
    .line 33
    .line 34
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 35
    .line 36
    .line 37
    :goto_0
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 38
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/model/User;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadMemberListFragment;

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/narvii/chat/detail/ThreadMemberListFragment;->w(Lcom/narvii/chat/detail/ThreadMemberListFragment;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    const/4 p1, 0x1

    .line 14
    return p1

    .line 15
    :cond_0
    move-object v0, p3

    .line 16
    .line 17
    check-cast v0, Lcom/narvii/model/User;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->userOptions(Lcom/narvii/model/User;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 24
    move-result p1

    .line 25
    return p1
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/chat/detail/MemberListResponse;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/chat/detail/MemberListResponse;

    return-object v0
.end method

.method public userOptions(Lcom/narvii/model/User;)V
    .locals 4

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadMemberListFragment;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/chat/detail/ThreadMemberListFragment;->t(Lcom/narvii/chat/detail/ThreadMemberListFragment;)Lcom/narvii/model/ChatThread;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    return-void

    .line 13
    .line 14
    :cond_1
    new-instance v0, Lcom/narvii/chat/profile/ChatUserInfoEntryHelper;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/narvii/chat/profile/ChatUserInfoEntryHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 18
    .line 19
    iget-object v1, p0, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;->this$0:Lcom/narvii/chat/detail/ThreadMemberListFragment;

    .line 20
    .line 21
    .line 22
    invoke-static {v1}, Lcom/narvii/chat/detail/ThreadMemberListFragment;->t(Lcom/narvii/chat/detail/ThreadMemberListFragment;)Lcom/narvii/model/ChatThread;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    new-instance v2, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter$1;

    .line 26
    .line 27
    .line 28
    invoke-direct {v2, p0, p1}, Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter$1;-><init>(Lcom/narvii/chat/detail/ThreadMemberListFragment$Adapter;Lcom/narvii/model/User;)V

    .line 29
    .line 30
    const-string v3, "Chat Thread More Info"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1, p1, v3, v2}, Lcom/narvii/chat/profile/ChatUserInfoEntryHelper;->showUserInfoInChatThread(Lcom/narvii/model/ChatThread;Lcom/narvii/model/User;Ljava/lang/String;Lcom/narvii/onlinestatus/UserDialog$UserDialogClickListener;)V

    .line 34
    return-void
.end method
