.class Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter$Section;
    }
.end annotation


# instance fields
.field error:Ljava/lang/String;

.field final synthetic this$0:Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment;

.field uidList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field userList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;->this$0:Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    new-instance p1, Ljava/util/HashSet;

    .line 8
    .line 9
    .line 10
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;->uidList:Ljava/util/Set;

    .line 13
    return-void
.end method

.method static bridge synthetic f(Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;Lcom/narvii/suggest/interest/RcmdUserListResponse;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;->getUserList(Lcom/narvii/suggest/interest/RcmdUserListResponse;)V

    return-void
.end method

.method private getUserList(Lcom/narvii/suggest/interest/RcmdUserListResponse;)V
    .locals 5

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    iput-object v0, p0, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;->userList:Ljava/util/List;

    .line 8
    .line 9
    new-instance v0, Ljava/util/HashSet;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;->uidList:Ljava/util/Set;

    .line 15
    .line 16
    new-instance v0, Lcom/narvii/util/FilterHelper;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    iget-object p1, p1, Lcom/narvii/suggest/interest/RcmdUserListResponse;->rcmdUsersList:Ljava/util/List;

    .line 24
    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    move-result v1

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    .line 38
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    check-cast v1, Lcom/narvii/suggest/interest/RcmdUser;

    .line 42
    .line 43
    iget-object v2, v1, Lcom/narvii/suggest/interest/RcmdUser;->rcmdUsers:Ljava/util/List;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v2}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    .line 47
    move-result-object v2

    .line 48
    .line 49
    .line 50
    invoke-static {v2}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    .line 51
    move-result v3

    .line 52
    .line 53
    if-nez v3, :cond_0

    .line 54
    .line 55
    iget-object v3, p0, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;->userList:Ljava/util/List;

    .line 56
    .line 57
    new-instance v4, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter$Section;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/narvii/suggest/interest/RcmdUser;->getDisplayName()Ljava/lang/String;

    .line 61
    move-result-object v1

    .line 62
    .line 63
    .line 64
    invoke-direct {v4, p0, v1}, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter$Section;-><init>(Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    iget-object v1, p0, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;->userList:Ljava/util/List;

    .line 70
    .line 71
    .line 72
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 73
    .line 74
    .line 75
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 76
    move-result-object v1

    .line 77
    .line 78
    .line 79
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    move-result v2

    .line 81
    .line 82
    if-eqz v2, :cond_0

    .line 83
    .line 84
    .line 85
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    move-result-object v2

    .line 87
    .line 88
    check-cast v2, Lcom/narvii/model/User;

    .line 89
    .line 90
    iget-object v3, p0, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;->uidList:Ljava/util/Set;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    .line 94
    move-result-object v2

    .line 95
    .line 96
    .line 97
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 98
    goto :goto_0

    .line 99
    :cond_1
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
    const-string v1, "/rcmd/users"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    const-string v1, "scenario"

    .line 13
    .line 14
    const-string v2, "onboarding"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    iget-object v1, p0, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;->this$0:Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/narvii/suggest/interest/InterestPickerFragment$InterestPickerBaseFragment;->getLanguageCode()Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    const-string v2, "language"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    const-string v1, "api"

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 43
    .line 44
    new-instance v2, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter$1;

    .line 45
    .line 46
    const-class v3, Lcom/narvii/suggest/interest/RcmdUserListResponse;

    .line 47
    .line 48
    .line 49
    invoke-direct {v2, p0, v3}, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter$1;-><init>(Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;Ljava/lang/Class;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 53
    return-void
.end method


# virtual methods
.method public errorMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;->userList:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->getSize(Ljava/util/List;)I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;->userList:Ljava/util/List;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return-object v1

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    move-result v0

    .line 11
    .line 12
    if-ge p1, v0, :cond_1

    .line 13
    .line 14
    if-ltz p1, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;->userList:Ljava/util/List;

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    :cond_1
    return-object v1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    const/4 p1, -0x1

    .line 8
    return p1

    .line 9
    .line 10
    :cond_0
    instance-of p1, p1, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter$Section;

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    const/4 p1, 0x0

    .line 14
    return p1

    .line 15
    :cond_1
    const/4 p1, 0x1

    .line 16
    return p1
.end method

.method public getUidList()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;->uidList:Ljava/util/Set;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    instance-of v0, p1, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter$Section;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    const v0, 0x7f0d0694

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 15
    move-result-object p2

    .line 16
    .line 17
    .line 18
    const p3, 0x7f0a0cb7

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    move-result-object p3

    .line 23
    .line 24
    check-cast p3, Landroid/widget/TextView;

    .line 25
    .line 26
    check-cast p1, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter$Section;

    .line 27
    .line 28
    iget-object p1, p1, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter$Section;->name:Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    goto/16 :goto_2

    .line 34
    .line 35
    :cond_0
    instance-of v0, p1, Lcom/narvii/model/User;

    .line 36
    .line 37
    if-eqz v0, :cond_5

    .line 38
    .line 39
    check-cast p1, Lcom/narvii/model/User;

    .line 40
    .line 41
    .line 42
    const v0, 0x7f0d0695

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 46
    move-result-object p2

    .line 47
    .line 48
    .line 49
    const p3, 0x7f0a0f36

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    move-result-object p3

    .line 54
    .line 55
    check-cast p3, Lcom/narvii/widget/UserAvatarLayout;

    .line 56
    .line 57
    if-eqz p3, :cond_1

    .line 58
    .line 59
    .line 60
    invoke-virtual {p3, p1}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    const p3, 0x7f0a09f9

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 67
    move-result-object p3

    .line 68
    .line 69
    instance-of v0, p3, Lcom/narvii/widget/NicknameView;

    .line 70
    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    check-cast p3, Lcom/narvii/widget/NicknameView;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p3, p1}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 77
    .line 78
    .line 79
    :cond_2
    const p3, 0x7f0a01cd

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 83
    move-result-object p3

    .line 84
    .line 85
    check-cast p3, Landroid/widget/TextView;

    .line 86
    .line 87
    iget-object v0, p1, Lcom/narvii/model/User;->content:Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->compactContent(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    move-result-object v0

    .line 92
    .line 93
    .line 94
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 95
    move-result v1

    .line 96
    .line 97
    if-eqz v1, :cond_3

    .line 98
    .line 99
    const/16 v1, 0x8

    .line 100
    goto :goto_0

    .line 101
    :cond_3
    const/4 v1, 0x0

    .line 102
    .line 103
    .line 104
    :goto_0
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    .line 109
    .line 110
    const p3, 0x7f0a0cc5

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 114
    move-result-object p3

    .line 115
    .line 116
    check-cast p3, Landroid/widget/ImageView;

    .line 117
    .line 118
    iget-object v0, p0, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;->uidList:Ljava/util/Set;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    .line 122
    move-result-object p1

    .line 123
    .line 124
    .line 125
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 126
    move-result p1

    .line 127
    .line 128
    if-eqz p1, :cond_4

    .line 129
    .line 130
    .line 131
    const p1, 0x7f0805b7

    .line 132
    goto :goto_1

    .line 133
    .line 134
    .line 135
    :cond_4
    const p1, 0x7f0805b5

    .line 136
    .line 137
    .line 138
    :goto_1
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 139
    .line 140
    .line 141
    const p1, 0x7f0a0779

    .line 142
    .line 143
    .line 144
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 145
    move-result-object p1

    .line 146
    .line 147
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    goto :goto_2

    .line 152
    :cond_5
    const/4 p2, 0x0

    .line 153
    :goto_2
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public isListShown()Z
    .locals 1

    iget-object v0, p0, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;->userList:Ljava/util/List;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;->error:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
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
    invoke-direct {p0}, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;->sendRequest()V

    .line 7
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/model/User;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    if-eqz p5, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 10
    move-result v0

    .line 11
    .line 12
    .line 13
    const v1, 0x7f0a0779

    .line 14
    .line 15
    if-ne v0, v1, :cond_1

    .line 16
    move-object v0, p3

    .line 17
    .line 18
    check-cast v0, Lcom/narvii/model/User;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;->uidList:Ljava/util/Set;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    .line 27
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 28
    move-result v1

    .line 29
    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    iget-object v1, p0, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;->uidList:Ljava/util/Set;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 40
    goto :goto_0

    .line 41
    .line 42
    :cond_0
    iget-object v1, p0, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;->uidList:Ljava/util/Set;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    .line 49
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    :goto_0
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 53
    .line 54
    iget-object v0, p0, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;->this$0:Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment;

    .line 55
    .line 56
    .line 57
    invoke-static {v0}, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment;->w(Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 61
    move-result p1

    .line 62
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
    const/4 p1, 0x0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;->userList:Ljava/util/List;

    .line 4
    .line 5
    new-instance p2, Ljava/util/HashSet;

    .line 6
    .line 7
    .line 8
    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 9
    .line 10
    iput-object p2, p0, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;->uidList:Ljava/util/Set;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;->error:Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/narvii/suggest/interest/GlobalRecommendedUsersFragment$Adapter;->sendRequest()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 19
    return-void
.end method
