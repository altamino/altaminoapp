.class Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/user/profile/UserProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FavoriteAdapter"
.end annotation


# instance fields
.field public collection:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Item;",
            ">;"
        }
    .end annotation
.end field

.field collectionCount:Ljava/lang/Integer;

.field private collectionListener:Lcom/narvii/util/http/ApiResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/http/ApiResponseListener<",
            "Lcom/narvii/model/api/ItemListResponse;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/user/profile/UserProfileFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/user/profile/UserProfileFragment;)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    new-instance p1, Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter$1;

    .line 8
    .line 9
    const-class v0, Lcom/narvii/model/api/ItemListResponse;

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, p0, v0}, Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter$1;-><init>(Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;Ljava/lang/Class;)V

    .line 13
    .line 14
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;->collectionListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 15
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/user/profile/UserProfileFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isCatalogEnable()Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lcom/narvii/user/profile/UserProfileFragment;->y(Lcom/narvii/user/profile/UserProfileFragment;)Z

    .line 19
    move-result v0

    .line 20
    .line 21
    if-nez v0, :cond_2

    .line 22
    :cond_1
    return v1

    .line 23
    .line 24
    :cond_2
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;->collection:Ljava/util/List;

    .line 25
    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 30
    move-result v0

    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/narvii/user/profile/UserProfileFragment;->isMe()Z

    .line 38
    move-result v0

    .line 39
    .line 40
    if-nez v0, :cond_3

    .line 41
    goto :goto_0

    .line 42
    :cond_3
    const/4 v1, 0x1

    .line 43
    :goto_0
    return v1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 1
    .line 2
    .line 3
    const p1, 0x7f0d0778

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    iget-object p2, p0, Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 10
    .line 11
    iget-object p2, p2, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 15
    move-result-object p2

    .line 16
    .line 17
    check-cast p2, Lcom/narvii/model/User;

    .line 18
    .line 19
    iget-object p2, p0, Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;->collectionCount:Ljava/lang/Integer;

    .line 20
    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 25
    .line 26
    .line 27
    :cond_0
    const p2, 0x7f0a0f39

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    move-result-object p2

    .line 32
    .line 33
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    .line 38
    .line 39
    const p2, 0x7f0a0f3b

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    move-result-object p2

    .line 44
    .line 45
    check-cast p2, Landroid/widget/TextView;

    .line 46
    .line 47
    iget-boolean p3, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    .line 48
    .line 49
    .line 50
    const v0, -0x777778

    .line 51
    const/4 v1, -0x1

    .line 52
    .line 53
    if-eqz p3, :cond_1

    .line 54
    move p3, v1

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    move p3, v0

    .line 57
    .line 58
    .line 59
    :goto_0
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    .line 61
    iget-object p3, p0, Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p3}, Lcom/narvii/user/profile/UserProfileFragment;->isMe()Z

    .line 65
    move-result p3

    .line 66
    .line 67
    if-eqz p3, :cond_2

    .line 68
    .line 69
    iget-object p3, p0, Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 70
    .line 71
    .line 72
    const v2, 0x7f120d14

    .line 73
    .line 74
    .line 75
    invoke-virtual {p3, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 76
    move-result-object p3

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    goto :goto_1

    .line 81
    .line 82
    :cond_2
    iget-object p3, p0, Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 83
    .line 84
    .line 85
    const v2, 0x7f12122f

    .line 86
    .line 87
    .line 88
    invoke-virtual {p3, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 89
    move-result-object p3

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    .line 94
    .line 95
    :goto_1
    const p2, 0x7f0a0f3a

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 99
    move-result-object p2

    .line 100
    .line 101
    check-cast p2, Lcom/narvii/widget/TintButton;

    .line 102
    .line 103
    iget-boolean p3, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    .line 104
    .line 105
    if-eqz p3, :cond_3

    .line 106
    move p3, v1

    .line 107
    goto :goto_2

    .line 108
    :cond_3
    move p3, v0

    .line 109
    .line 110
    .line 111
    :goto_2
    invoke-virtual {p2, p3}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    .line 112
    .line 113
    .line 114
    const p2, 0x7f0a0ac1

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 118
    move-result-object p2

    .line 119
    .line 120
    check-cast p2, Lcom/narvii/user/profile/UserFavoriteGallery;

    .line 121
    .line 122
    iget-boolean p3, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    .line 123
    .line 124
    .line 125
    invoke-virtual {p2, p3}, Lcom/narvii/user/profile/UserFavoriteGallery;->setDarkTheme(Z)V

    .line 126
    .line 127
    iget-object p3, p0, Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;->collection:Ljava/util/List;

    .line 128
    const/4 v2, 0x0

    .line 129
    .line 130
    if-eqz p3, :cond_4

    .line 131
    .line 132
    .line 133
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 134
    move-result p3

    .line 135
    .line 136
    const/16 v3, 0x19

    .line 137
    .line 138
    if-lt p3, v3, :cond_4

    .line 139
    const/4 p3, 0x1

    .line 140
    goto :goto_3

    .line 141
    :cond_4
    move p3, v2

    .line 142
    .line 143
    :goto_3
    iget-object v3, p0, Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;->collection:Ljava/util/List;

    .line 144
    .line 145
    iget-object v4, p0, Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v4}, Lcom/narvii/user/profile/UserProfileFragment;->isMe()Z

    .line 149
    move-result v4

    .line 150
    .line 151
    .line 152
    invoke-virtual {p2, v3, v4, p3}, Lcom/narvii/user/profile/UserFavoriteGallery;->setItems(Ljava/util/List;ZZ)V

    .line 153
    .line 154
    iget-object p3, p0, Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 155
    .line 156
    .line 157
    invoke-static {p3}, Lcom/narvii/user/profile/UserProfileFragment;->z(Lcom/narvii/user/profile/UserProfileFragment;)Lcom/narvii/user/profile/UserFavoriteGallery$OnItemClickListener;

    .line 158
    move-result-object p3

    .line 159
    .line 160
    .line 161
    invoke-virtual {p2, p3}, Lcom/narvii/user/profile/UserFavoriteGallery;->setOnItemClickListener(Lcom/narvii/user/profile/UserFavoriteGallery$OnItemClickListener;)V

    .line 162
    .line 163
    .line 164
    const p3, 0x7f0a0f51

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 168
    move-result-object p3

    .line 169
    const/4 v3, 0x4

    .line 170
    .line 171
    .line 172
    invoke-virtual {p3, v3}, Landroid/view/View;->setVisibility(I)V

    .line 173
    .line 174
    .line 175
    const p3, 0x7f0a0f4c

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 179
    move-result-object p3

    .line 180
    .line 181
    check-cast p3, Lcom/narvii/widget/SpinningView;

    .line 182
    .line 183
    if-eqz p3, :cond_7

    .line 184
    .line 185
    iget-boolean v4, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    .line 186
    .line 187
    if-eqz v4, :cond_5

    .line 188
    move v0, v1

    .line 189
    .line 190
    .line 191
    :cond_5
    invoke-virtual {p3, v0}, Lcom/narvii/widget/SpinningView;->setSpinColor(I)V

    .line 192
    .line 193
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;->collection:Ljava/util/List;

    .line 194
    .line 195
    if-nez v0, :cond_6

    .line 196
    move v0, v2

    .line 197
    goto :goto_4

    .line 198
    :cond_6
    move v0, v3

    .line 199
    .line 200
    .line 201
    :goto_4
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 202
    .line 203
    :cond_7
    iget-object p3, p0, Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;->collection:Ljava/util/List;

    .line 204
    .line 205
    if-nez p3, :cond_8

    .line 206
    move v2, v3

    .line 207
    .line 208
    .line 209
    :cond_8
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 210
    return-object p1
.end method

.method public onAttach()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVAdapter;->onAttach()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;->collection:Ljava/util/List;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;->sendCollectionRequest()V

    .line 11
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 1
    .line 2
    if-nez p5, :cond_0

    .line 3
    goto :goto_0

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 7
    move-result v0

    .line 8
    .line 9
    .line 10
    const v1, 0x7f0a0f39

    .line 11
    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lcom/narvii/user/profile/UserProfileFragment;->F(Lcom/narvii/user/profile/UserProfileFragment;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    :goto_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 21
    move-result p1

    .line 22
    return p1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 3
    .line 4
    instance-of v0, v0, Lcom/narvii/model/Item;

    .line 5
    .line 6
    if-eqz v0, :cond_4

    .line 7
    .line 8
    const-string v0, "account"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    iget-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/narvii/user/profile/UserProfileFragment;->isMe()Z

    .line 24
    move-result v1

    .line 25
    .line 26
    if-eqz v1, :cond_4

    .line 27
    .line 28
    iget-object v1, p1, Lcom/narvii/notification/Notification;->uid:Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    invoke-static {v1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    move-result v0

    .line 33
    .line 34
    if-eqz v0, :cond_4

    .line 35
    .line 36
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v0, Lcom/narvii/model/Item;

    .line 39
    .line 40
    new-instance v1, Ljava/util/ArrayList;

    .line 41
    .line 42
    .line 43
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .line 45
    iget-object v2, p0, Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;->collection:Ljava/util/List;

    .line 46
    .line 47
    if-eqz v2, :cond_0

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 51
    .line 52
    .line 53
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/model/Item;->id()Ljava/lang/String;

    .line 54
    move-result-object v2

    .line 55
    .line 56
    .line 57
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->indexOfId(Ljava/util/Collection;Ljava/lang/String;)I

    .line 58
    move-result v2

    .line 59
    .line 60
    iget-object v3, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 61
    .line 62
    const-string v4, "delete"

    .line 63
    .line 64
    if-ne v3, v4, :cond_1

    .line 65
    .line 66
    if-ltz v2, :cond_3

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 70
    goto :goto_0

    .line 71
    .line 72
    :cond_1
    const-string v4, "new"

    .line 73
    .line 74
    if-ne v3, v4, :cond_2

    .line 75
    const/4 v2, 0x0

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 79
    goto :goto_0

    .line 80
    .line 81
    :cond_2
    if-ltz v2, :cond_3

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    :cond_3
    :goto_0
    iput-object v1, p0, Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;->collection:Ljava/util/List;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 90
    .line 91
    :cond_4
    iget v0, p1, Lcom/narvii/notification/Notification;->objectType:I

    .line 92
    .line 93
    const/16 v1, 0xd

    .line 94
    .line 95
    if-ne v0, v1, :cond_5

    .line 96
    .line 97
    iget-object p1, p1, Lcom/narvii/notification/Notification;->uid:Ljava/lang/String;

    .line 98
    .line 99
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 100
    .line 101
    const-string v1, "id"

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 105
    move-result-object v0

    .line 106
    .line 107
    .line 108
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 109
    move-result p1

    .line 110
    .line 111
    if-eqz p1, :cond_5

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;->sendCollectionRequest()V

    .line 115
    :cond_5
    return-void
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
    invoke-virtual {p0}, Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;->sendCollectionRequest()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->refreshMonitorEnd()V

    .line 10
    return-void
.end method

.method sendCollectionRequest()V
    .locals 4

    .line 1
    .line 2
    const-string v0, "api"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    const-string v2, "/item"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    const-string/jumbo v2, "type"

    .line 22
    .line 23
    .line 24
    const-string/jumbo v3, "user-all"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 28
    move-result-object v1

    .line 29
    const/4 v2, 0x0

    .line 30
    .line 31
    .line 32
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    const-string/jumbo v3, "start"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    const/16 v2, 0x19

    .line 42
    .line 43
    .line 44
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    move-result-object v2

    .line 46
    .line 47
    const-string/jumbo v3, "size"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    const-string v2, "cv"

    .line 54
    .line 55
    const-string v3, "1.2"

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 59
    move-result-object v1

    .line 60
    .line 61
    iget-object v2, p0, Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    .line 65
    move-result-object v2

    .line 66
    .line 67
    .line 68
    const-string/jumbo v3, "uid"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 72
    move-result-object v1

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 76
    move-result-object v1

    .line 77
    .line 78
    iget-object v2, p0, Lcom/narvii/user/profile/UserProfileFragment$FavoriteAdapter;->collectionListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 82
    return-void
.end method
