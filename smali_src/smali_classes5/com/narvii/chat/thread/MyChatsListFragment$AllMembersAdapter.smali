.class Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;
.super Lcom/narvii/list/AdriftAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/thread/MyChatsListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AllMembersAdapter"
.end annotation


# instance fields
.field private memberCount:I

.field final synthetic this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

.field userNVArrayAdapter:Lcom/narvii/list/NVArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/list/NVArrayAdapter<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation
.end field

.field users:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/chat/thread/MyChatsListFragment;)V
    .locals 2

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/list/AdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    new-instance v0, Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter$1;

    .line 8
    .line 9
    const-class v1, Lcom/narvii/model/User;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, p0, p1, v1}, Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter$1;-><init>(Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;Lcom/narvii/app/NVContext;Ljava/lang/Class;)V

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;->userNVArrayAdapter:Lcom/narvii/list/NVArrayAdapter;

    .line 15
    return-void
.end method

.method static bridge synthetic f(Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;->memberCount:I

    return-void
.end method

.method private goToMemberListPage()V
    .locals 3

    .line 1
    .line 2
    const-class v0, Lcom/narvii/members/PeopleListFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "Source"

    .line 9
    .line 10
    const-string v2, "My Chats"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    invoke-static {p0, v0}, Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 17
    return-void
.end method

.method private isOldUserList()Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;->userNVArrayAdapter:Lcom/narvii/list/NVArrayAdapter;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    if-eqz v0, :cond_4

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;->users:Ljava/util/List;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    goto :goto_1

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;->userNVArrayAdapter:Lcom/narvii/list/NVArrayAdapter;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 26
    move-result v0

    .line 27
    .line 28
    iget-object v2, p0, Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;->users:Ljava/util/List;

    .line 29
    .line 30
    .line 31
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 32
    move-result v2

    .line 33
    .line 34
    if-eq v0, v2, :cond_1

    .line 35
    return v1

    .line 36
    :cond_1
    move v0, v1

    .line 37
    .line 38
    :goto_0
    iget-object v2, p0, Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;->userNVArrayAdapter:Lcom/narvii/list/NVArrayAdapter;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    .line 42
    move-result-object v2

    .line 43
    .line 44
    .line 45
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 46
    move-result v2

    .line 47
    .line 48
    if-ge v0, v2, :cond_3

    .line 49
    .line 50
    iget-object v2, p0, Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;->userNVArrayAdapter:Lcom/narvii/list/NVArrayAdapter;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    .line 54
    move-result-object v2

    .line 55
    .line 56
    .line 57
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 58
    move-result-object v2

    .line 59
    .line 60
    check-cast v2, Lcom/narvii/model/User;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    .line 64
    move-result-object v2

    .line 65
    .line 66
    iget-object v3, p0, Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;->users:Ljava/util/List;

    .line 67
    .line 68
    .line 69
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 70
    move-result-object v3

    .line 71
    .line 72
    check-cast v3, Lcom/narvii/model/User;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    .line 76
    move-result-object v3

    .line 77
    .line 78
    .line 79
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 80
    move-result v2

    .line 81
    .line 82
    if-nez v2, :cond_2

    .line 83
    return v1

    .line 84
    .line 85
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 86
    goto :goto_0

    .line 87
    :cond_3
    const/4 v0, 0x1

    .line 88
    return v0

    .line 89
    :cond_4
    :goto_1
    return v1
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

.method private sendRequest()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "/user-profile"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    const-string v1, "type"

    .line 13
    .line 14
    const-string v2, "summary"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 18
    const/4 v1, 0x0

    .line 19
    .line 20
    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    const-string v2, "start"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 28
    const/4 v1, 0x5

    .line 29
    .line 30
    .line 31
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    const-string v2, "size"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    const-string v1, "api"

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 50
    .line 51
    new-instance v2, Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter$2;

    .line 52
    .line 53
    const-class v3, Lcom/narvii/model/api/UserListResponse;

    .line 54
    .line 55
    .line 56
    invoke-direct {v2, p0, v3}, Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter$2;-><init>(Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;Ljava/lang/Class;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 60
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1
    .line 2
    .line 3
    const p1, 0x7f0d009e

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    :try_start_0
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 10
    .line 11
    .line 12
    invoke-static {p2}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    .line 13
    move-result-object p2

    .line 14
    .line 15
    iget p3, p0, Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;->memberCount:I

    .line 16
    int-to-long v0, p3

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, v0, v1}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    .line 20
    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :catch_0
    iget p2, p0, Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;->memberCount:I

    .line 24
    .line 25
    .line 26
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 27
    move-result-object p2

    .line 28
    .line 29
    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    .line 35
    .line 36
    .line 37
    const v1, 0x7f12030e

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    .line 44
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    iget v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;->memberCount:I

    .line 47
    .line 48
    if-nez v0, :cond_0

    .line 49
    .line 50
    const-string p2, ""

    .line 51
    goto :goto_1

    .line 52
    .line 53
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    const-string v1, " ("

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string p2, ")"

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object p2

    .line 74
    .line 75
    .line 76
    :goto_1
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object p2

    .line 81
    .line 82
    .line 83
    const p3, 0x7f0a0e9e

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 87
    move-result-object p3

    .line 88
    .line 89
    check-cast p3, Landroid/widget/TextView;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    .line 94
    .line 95
    const p2, 0x7f0a0101

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 99
    move-result-object p2

    .line 100
    .line 101
    check-cast p2, Lcom/narvii/widget/HorizontalUnbrokenLayout;

    .line 102
    .line 103
    .line 104
    invoke-direct {p0}, Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;->isOldUserList()Z

    .line 105
    move-result p3

    .line 106
    .line 107
    if-nez p3, :cond_2

    .line 108
    .line 109
    iget-object p3, p0, Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;->userNVArrayAdapter:Lcom/narvii/list/NVArrayAdapter;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p3}, Lcom/narvii/list/NVArrayAdapter;->clear()V

    .line 113
    .line 114
    iget-object p3, p0, Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;->users:Ljava/util/List;

    .line 115
    .line 116
    if-eqz p3, :cond_1

    .line 117
    .line 118
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;->userNVArrayAdapter:Lcom/narvii/list/NVArrayAdapter;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, p3}, Lcom/narvii/list/NVArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 122
    .line 123
    :cond_1
    if-eqz p2, :cond_2

    .line 124
    .line 125
    iget-object p3, p0, Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;->userNVArrayAdapter:Lcom/narvii/list/NVArrayAdapter;

    .line 126
    .line 127
    iget v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;->memberCount:I

    .line 128
    .line 129
    .line 130
    invoke-virtual {p2, p3, v0}, Lcom/narvii/widget/HorizontalUnbrokenLayout;->setAdapter(Lcom/narvii/list/NVArrayAdapter;I)V

    .line 131
    .line 132
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    :cond_2
    return-object p1
.end method

.method public onAttach()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onAttach()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;->sendRequest()V

    .line 7
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;->goToMemberListPage()V

    .line 4
    const/4 p1, 0x1

    .line 5
    return p1
.end method

.method public refresh(ILcom/narvii/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/narvii/list/NVAdapter;->refreshMonitorStart(ILcom/narvii/util/Callback;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;->sendRequest()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->refreshMonitorEnd()V

    .line 10
    return-void
.end method
