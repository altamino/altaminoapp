.class final Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter;
.super Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/home/profile/CommunityProfileListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter$CommunityViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter<",
        "Lcom/narvii/model/Community;",
        "Lcom/narvii/community/MyCommunityListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/home/profile/CommunityProfileListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/master/home/profile/CommunityProfileListFragment;Lcom/narvii/app/NVContext;)V
    .locals 0
    .param p1    # Lcom/narvii/master/home/profile/CommunityProfileListFragment;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter;->this$0:Lcom/narvii/master/home/profile/CommunityProfileListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method

.method public static safedk_NVRecyclerViewBaseAdapter_startActivity_bb7b074de95a221f82540c32a0a969c2(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public createPageDataSource(Lcom/narvii/app/NVContext;)Lcom/narvii/paging/source/PageDataSource;
    .locals 2
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")",
            "Lcom/narvii/paging/source/PageDataSource<",
            "Lcom/narvii/model/Community;",
            "Lcom/narvii/community/MyCommunityListResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/master/home/profile/CommunityProfileListFragment$DataSource;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter;->this$0:Lcom/narvii/master/home/profile/CommunityProfileListFragment;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1, p1}, Lcom/narvii/master/home/profile/CommunityProfileListFragment$DataSource;-><init>(Lcom/narvii/master/home/profile/CommunityProfileListFragment;Lcom/narvii/app/NVContext;)V

    .line 8
    return-object v0
.end method

.method protected onBindItemViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "holder"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    instance-of v0, p1, Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter$CommunityViewHolder;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p2}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItem(I)Lcom/narvii/model/NVObject;

    .line 13
    move-result-object p2

    .line 14
    .line 15
    check-cast p2, Lcom/narvii/model/Community;

    .line 16
    .line 17
    check-cast p1, Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter$CommunityViewHolder;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter;->this$0:Lcom/narvii/master/home/profile/CommunityProfileListFragment;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/narvii/master/home/profile/CommunityProfileListFragment;->getUserProfiles()Ljava/util/HashMap;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    iget v1, p2, Lcom/narvii/model/Community;->id:I

    .line 26
    .line 27
    .line 28
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    check-cast v0, Lcom/narvii/model/User;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p2, v0}, Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter$CommunityViewHolder;->bindInfo(Lcom/narvii/model/Community;Lcom/narvii/model/User;)V

    .line 39
    :cond_0
    return-void
.end method

.method protected onCreateItemViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string p2, "parent"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    move-result-object p2

    .line 10
    .line 11
    .line 12
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 13
    move-result-object p2

    .line 14
    .line 15
    .line 16
    const v0, 0x7f0d044f

    .line 17
    const/4 v1, 0x0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    new-instance p2, Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter$CommunityViewHolder;

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p2, p0, p1}, Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter$CommunityViewHolder;-><init>(Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter;Landroid/view/View;)V

    .line 30
    return-object p2
.end method

.method public onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 7
    .param p1    # Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 p1, 0x1

    .line 2
    .line 3
    const-string p3, "try to edit profile while user is null"

    .line 4
    const/4 p4, 0x0

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    if-eqz p5, :cond_2

    .line 8
    .line 9
    .line 10
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 11
    move-result p5

    .line 12
    .line 13
    .line 14
    const v1, 0x7f0a04b2

    .line 15
    .line 16
    if-ne p5, v1, :cond_2

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p2}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItem(I)Lcom/narvii/model/NVObject;

    .line 20
    move-result-object p2

    .line 21
    move-object v4, p2

    .line 22
    .line 23
    check-cast v4, Lcom/narvii/model/Community;

    .line 24
    .line 25
    iget-object p2, p0, Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter;->this$0:Lcom/narvii/master/home/profile/CommunityProfileListFragment;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Lcom/narvii/master/home/profile/CommunityProfileListFragment;->getUserProfiles()Ljava/util/HashMap;

    .line 29
    move-result-object p2

    .line 30
    .line 31
    if-eqz v4, :cond_0

    .line 32
    .line 33
    iget p4, v4, Lcom/narvii/model/Community;->id:I

    .line 34
    .line 35
    .line 36
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    move-result-object p4

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-interface {p2, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    move-result-object p2

    .line 42
    .line 43
    check-cast p2, Lcom/narvii/model/User;

    .line 44
    .line 45
    if-nez p2, :cond_1

    .line 46
    .line 47
    .line 48
    invoke-static {p3}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 49
    return v0

    .line 50
    .line 51
    :cond_1
    new-instance v2, Lcom/narvii/util/dialog/ProgressDialog;

    .line 52
    .line 53
    iget-object p3, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    .line 54
    .line 55
    .line 56
    invoke-interface {p3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 57
    move-result-object p3

    .line 58
    .line 59
    .line 60
    invoke-direct {v2, p3}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 64
    .line 65
    const-string p3, "api"

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, p3}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 69
    move-result-object p3

    .line 70
    .line 71
    check-cast p3, Lcom/narvii/util/http/ApiService;

    .line 72
    .line 73
    .line 74
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 75
    move-result-object p4

    .line 76
    .line 77
    iget p5, v4, Lcom/narvii/model/Community;->id:I

    .line 78
    .line 79
    .line 80
    invoke-virtual {p4, p5}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 81
    move-result-object p4

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    .line 85
    move-result-object p2

    .line 86
    .line 87
    new-instance p5, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    const-string v0, "/user-profile/"

    .line 93
    .line 94
    .line 95
    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    move-result-object p2

    .line 103
    .line 104
    .line 105
    invoke-virtual {p4, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 106
    move-result-object p2

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 110
    move-result-object p2

    .line 111
    .line 112
    const-class v6, Lcom/narvii/model/api/UserResponse;

    .line 113
    .line 114
    new-instance p4, Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter$onItemClick$1;

    .line 115
    .line 116
    iget-object v5, p0, Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter;->this$0:Lcom/narvii/master/home/profile/CommunityProfileListFragment;

    .line 117
    move-object v1, p4

    .line 118
    move-object v3, p0

    .line 119
    .line 120
    .line 121
    invoke-direct/range {v1 .. v6}, Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter$onItemClick$1;-><init>(Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter;Lcom/narvii/model/Community;Lcom/narvii/master/home/profile/CommunityProfileListFragment;Ljava/lang/Class;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p3, p2, p4}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 125
    return p1

    .line 126
    .line 127
    :cond_2
    sget-object p5, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0, p5}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->logClickEvent(Lcom/narvii/logging/ActSemantic;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0, p2}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItem(I)Lcom/narvii/model/NVObject;

    .line 134
    move-result-object p2

    .line 135
    .line 136
    check-cast p2, Lcom/narvii/model/Community;

    .line 137
    .line 138
    iget-object p5, p0, Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter;->this$0:Lcom/narvii/master/home/profile/CommunityProfileListFragment;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p5}, Lcom/narvii/master/home/profile/CommunityProfileListFragment;->getUserProfiles()Ljava/util/HashMap;

    .line 142
    move-result-object p5

    .line 143
    .line 144
    if-eqz p2, :cond_3

    .line 145
    .line 146
    iget p4, p2, Lcom/narvii/model/Community;->id:I

    .line 147
    .line 148
    .line 149
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 150
    move-result-object p4

    .line 151
    .line 152
    .line 153
    :cond_3
    invoke-interface {p5, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    move-result-object p4

    .line 155
    .line 156
    check-cast p4, Lcom/narvii/model/User;

    .line 157
    .line 158
    if-nez p4, :cond_4

    .line 159
    .line 160
    .line 161
    invoke-static {p3}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 162
    return v0

    .line 163
    .line 164
    :cond_4
    iget-object p3, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    .line 165
    .line 166
    .line 167
    invoke-static {p3, p4}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    .line 168
    move-result-object p3

    .line 169
    .line 170
    if-eqz p3, :cond_5

    .line 171
    .line 172
    const-string p4, "__communityId"

    .line 173
    .line 174
    iget p2, p2, Lcom/narvii/model/Community;->id:I

    .line 175
    .line 176
    .line 177
    invoke-virtual {p3, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 178
    .line 179
    :cond_5
    if-eqz p3, :cond_6

    .line 180
    .line 181
    const-string p2, "__model"

    .line 182
    .line 183
    .line 184
    invoke-virtual {p3, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 185
    .line 186
    :cond_6
    if-eqz p3, :cond_7

    .line 187
    .line 188
    const-string p2, "__interactionScope"

    .line 189
    .line 190
    .line 191
    invoke-virtual {p3, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 192
    .line 193
    :cond_7
    if-eqz p3, :cond_8

    .line 194
    .line 195
    .line 196
    invoke-static {p0, p3}, Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter;->safedk_NVRecyclerViewBaseAdapter_startActivity_bb7b074de95a221f82540c32a0a969c2(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;Landroid/content/Intent;)V

    .line 197
    :cond_8
    return p1
.end method

.method public refresh(ILcom/narvii/paging/source/PageRequestCallback;)V
    .locals 0
    .param p2    # Lcom/narvii/paging/source/PageRequestCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->refresh(ILcom/narvii/paging/source/PageRequestCallback;)V

    .line 4
    return-void
.end method
