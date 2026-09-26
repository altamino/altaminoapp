.class public Lcom/narvii/user/favorite/FavoriteUserListFragment;
.super Lcom/narvii/list/DragSortPageFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/user/favorite/FavoriteUserListFragment$FavUserListAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/DragSortPageFragment<",
        "Lcom/narvii/model/User;",
        ">;"
    }
.end annotation


# static fields
.field public static final ACTION_ADD_FAVORITE_USER:Ljava/lang/String; = "addFavoriteUser"

.field public static final ACTION_FAVORITE_USER_CHANGED:Ljava/lang/String; = "favoriteUserChanged"


# instance fields
.field adapter:Lcom/narvii/user/favorite/FavoriteUserListFragment$FavUserListAdapter;

.field addFavoriteUserView:Landroid/view/View;

.field listView:Landroid/widget/ListView;

.field private origList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation
.end field

.field showEditBtn:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/DragSortPageFragment;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment;->showEditBtn:Z

    .line 7
    return-void
.end method

.method private addNewFavoriteUser()V
    .locals 3

    .line 1
    .line 2
    const-class v0, Lcom/narvii/user/favorite/AddFavoriteUserFragment;

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
    const-string v2, "Manage View"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    invoke-static {p0, v0}, Lcom/narvii/user/favorite/FavoriteUserListFragment;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 17
    return-void
.end method

.method private beginEdit()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment;->addFavoriteUserView:Landroid/view/View;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    const/4 v2, 0x2

    .line 7
    .line 8
    new-array v2, v2, [F

    .line 9
    const/4 v3, 0x0

    .line 10
    .line 11
    aput v3, v2, v1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 15
    move-result-object v3

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 19
    move-result-object v3

    .line 20
    .line 21
    .line 22
    const v4, 0x7f07005d

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 26
    move-result v3

    .line 27
    const/4 v4, 0x1

    .line 28
    .line 29
    aput v3, v2, v4

    .line 30
    .line 31
    .line 32
    const-string/jumbo v3, "translationY"

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    const-wide/16 v2, 0x8c

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 45
    .line 46
    :cond_0
    iget-object v0, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment;->listView:Landroid/widget/ListView;

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 52
    move-result v2

    .line 53
    .line 54
    iget-object v3, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment;->listView:Landroid/widget/ListView;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    .line 58
    move-result v3

    .line 59
    .line 60
    iget-object v4, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment;->listView:Landroid/widget/ListView;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    .line 64
    move-result v4

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 68
    :cond_1
    return-void
.end method

.method private finishEdit()V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment;->addFavoriteUserView:Landroid/view/View;

    .line 3
    .line 4
    .line 5
    const v1, 0x7f07005d

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    const/4 v2, 0x2

    .line 9
    .line 10
    new-array v2, v2, [F

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 14
    move-result-object v3

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 18
    move-result-object v3

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 22
    move-result v3

    .line 23
    const/4 v4, 0x0

    .line 24
    .line 25
    aput v3, v2, v4

    .line 26
    const/4 v3, 0x1

    .line 27
    const/4 v4, 0x0

    .line 28
    .line 29
    aput v4, v2, v3

    .line 30
    .line 31
    .line 32
    const-string/jumbo v3, "translationY"

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    const-wide/16 v2, 0x8c

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 45
    .line 46
    :cond_0
    iget-object v0, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment;->listView:Landroid/widget/ListView;

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 52
    move-result v2

    .line 53
    .line 54
    iget-object v3, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment;->listView:Landroid/widget/ListView;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    .line 58
    move-result v3

    .line 59
    .line 60
    iget-object v4, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment;->listView:Landroid/widget/ListView;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    .line 64
    move-result v4

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 68
    move-result-object v5

    .line 69
    .line 70
    .line 71
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 72
    move-result-object v5

    .line 73
    .line 74
    .line 75
    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 76
    move-result v1

    .line 77
    float-to-int v1, v1

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 81
    :cond_1
    return-void
.end method

.method private isDirty()Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment;->origList:Ljava/util/List;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    .line 8
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    iget-object v1, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment;->adapter:Lcom/narvii/user/favorite/FavoriteUserListFragment$FavUserListAdapter;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result v2

    .line 26
    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v2

    .line 32
    .line 33
    instance-of v3, v2, Lcom/narvii/model/User;

    .line 34
    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    check-cast v2, Lcom/narvii/model/User;

    .line 38
    .line 39
    iget-object v2, v2, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    goto :goto_0

    .line 44
    .line 45
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    .line 46
    .line 47
    .line 48
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    iget-object v2, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment;->origList:Ljava/util/List;

    .line 51
    .line 52
    .line 53
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 54
    move-result-object v2

    .line 55
    .line 56
    .line 57
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    move-result v3

    .line 59
    .line 60
    if-eqz v3, :cond_3

    .line 61
    .line 62
    .line 63
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    move-result-object v3

    .line 65
    .line 66
    check-cast v3, Lcom/narvii/model/User;

    .line 67
    .line 68
    iget-object v3, v3, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    goto :goto_1

    .line 73
    .line 74
    .line 75
    :cond_3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    .line 76
    move-result v0

    .line 77
    .line 78
    xor-int/lit8 v0, v0, 0x1

    .line 79
    return v0
.end method

.method public static safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private submit()V
    .locals 10

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment;->origList:Ljava/util/List;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/narvii/user/favorite/FavoriteUserListFragment;->isDirty()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    return-void

    .line 13
    .line 14
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    new-instance v1, Ljava/util/HashSet;

    .line 20
    .line 21
    .line 22
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 23
    .line 24
    iget-object v2, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment;->adapter:Lcom/narvii/user/favorite/FavoriteUserListFragment$FavUserListAdapter;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    .line 31
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 32
    move-result-object v2

    .line 33
    .line 34
    .line 35
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    move-result v3

    .line 37
    .line 38
    if-eqz v3, :cond_3

    .line 39
    .line 40
    .line 41
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    move-result-object v3

    .line 43
    .line 44
    instance-of v4, v3, Lcom/narvii/model/User;

    .line 45
    .line 46
    if-eqz v4, :cond_2

    .line 47
    .line 48
    check-cast v3, Lcom/narvii/model/User;

    .line 49
    .line 50
    iget-object v4, v3, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    iget-object v3, v3, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 59
    goto :goto_0

    .line 60
    .line 61
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    .line 62
    .line 63
    .line 64
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .line 66
    iget-object v3, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment;->origList:Ljava/util/List;

    .line 67
    .line 68
    .line 69
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 70
    move-result-object v3

    .line 71
    .line 72
    .line 73
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    move-result v4

    .line 75
    .line 76
    if-eqz v4, :cond_4

    .line 77
    .line 78
    .line 79
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    move-result-object v4

    .line 81
    .line 82
    check-cast v4, Lcom/narvii/model/User;

    .line 83
    .line 84
    iget-object v4, v4, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    goto :goto_1

    .line 89
    .line 90
    :cond_4
    new-instance v3, Lcom/narvii/util/dialog/ProgressDialog;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 94
    move-result-object v4

    .line 95
    .line 96
    .line 97
    invoke-direct {v3, v4}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 98
    .line 99
    new-instance v4, Lcom/narvii/user/favorite/FavoriteUserListFragment$2;

    .line 100
    .line 101
    const-class v5, Lcom/narvii/model/api/ApiResponse;

    .line 102
    .line 103
    .line 104
    invoke-direct {v4, p0, v5, v3}, Lcom/narvii/user/favorite/FavoriteUserListFragment$2;-><init>(Lcom/narvii/user/favorite/FavoriteUserListFragment;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;)V

    .line 105
    .line 106
    new-instance v5, Lcom/narvii/util/http/SequenceRequestHelper;

    .line 107
    .line 108
    .line 109
    invoke-direct {v5, v4}, Lcom/narvii/util/http/SequenceRequestHelper;-><init>(Lcom/narvii/util/http/ApiResponseListener;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 113
    move-result-object v4

    .line 114
    .line 115
    .line 116
    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 117
    move-result v6

    .line 118
    .line 119
    if-eqz v6, :cond_6

    .line 120
    .line 121
    .line 122
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 123
    move-result-object v6

    .line 124
    .line 125
    check-cast v6, Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 129
    move-result v7

    .line 130
    .line 131
    if-nez v7, :cond_5

    .line 132
    .line 133
    .line 134
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 135
    move-result-object v7

    .line 136
    .line 137
    .line 138
    invoke-virtual {v7}, Lcom/narvii/util/http/ApiRequest$Builder;->delete()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 139
    move-result-object v7

    .line 140
    .line 141
    new-instance v8, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .line 146
    const-string v9, "/user-group/quick-access/"

    .line 147
    .line 148
    .line 149
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    move-result-object v6

    .line 157
    .line 158
    .line 159
    invoke-virtual {v7, v6}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 160
    move-result-object v6

    .line 161
    .line 162
    .line 163
    invoke-virtual {v6}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 164
    move-result-object v6

    .line 165
    .line 166
    .line 167
    invoke-virtual {v5, v6}, Lcom/narvii/util/http/SequenceRequestHelper;->add(Lcom/narvii/util/http/ApiRequest;)V

    .line 168
    goto :goto_2

    .line 169
    .line 170
    .line 171
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 172
    move-result v1

    .line 173
    .line 174
    if-lez v1, :cond_8

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    .line 178
    move-result v1

    .line 179
    .line 180
    if-nez v1, :cond_8

    .line 181
    .line 182
    .line 183
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 184
    move-result-object v1

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 188
    move-result-object v0

    .line 189
    .line 190
    .line 191
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 192
    move-result v2

    .line 193
    .line 194
    if-eqz v2, :cond_7

    .line 195
    .line 196
    .line 197
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 198
    move-result-object v2

    .line 199
    .line 200
    check-cast v2, Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 204
    goto :goto_3

    .line 205
    .line 206
    .line 207
    :cond_7
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 208
    move-result-object v0

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 212
    move-result-object v0

    .line 213
    .line 214
    const-string v2, "/user-group/quick-access/position"

    .line 215
    .line 216
    .line 217
    invoke-virtual {v0, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 218
    move-result-object v0

    .line 219
    .line 220
    .line 221
    const-string/jumbo v2, "uidList"

    .line 222
    .line 223
    .line 224
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 225
    move-result-object v0

    .line 226
    .line 227
    .line 228
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 229
    move-result-object v0

    .line 230
    .line 231
    .line 232
    invoke-virtual {v5, v0}, Lcom/narvii/util/http/SequenceRequestHelper;->add(Lcom/narvii/util/http/ApiRequest;)V

    .line 233
    .line 234
    .line 235
    :cond_8
    invoke-virtual {v5}, Lcom/narvii/util/http/SequenceRequestHelper;->getCount()I

    .line 236
    move-result v0

    .line 237
    .line 238
    if-lez v0, :cond_9

    .line 239
    .line 240
    const-string v0, "api"

    .line 241
    .line 242
    .line 243
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 244
    move-result-object v0

    .line 245
    .line 246
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v5, v0}, Lcom/narvii/util/http/SequenceRequestHelper;->start(Lcom/narvii/util/http/ApiService;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v3}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 253
    goto :goto_4

    .line 254
    .line 255
    .line 256
    :cond_9
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 257
    :goto_4
    return-void
.end method

.method static bridge synthetic u(Lcom/narvii/user/favorite/FavoriteUserListFragment;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment;->origList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic v(Lcom/narvii/user/favorite/FavoriteUserListFragment;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment;->origList:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic w(Lcom/narvii/user/favorite/FavoriteUserListFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/user/favorite/FavoriteUserListFragment;->addNewFavoriteUser()V

    return-void
.end method


# virtual methods
.method protected createMainAdapter()Lcom/narvii/list/NVPagedAdapter;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment;->adapter:Lcom/narvii/user/favorite/FavoriteUserListFragment$FavUserListAdapter;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/narvii/user/favorite/FavoriteUserListFragment$FavUserListAdapter;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/narvii/user/favorite/FavoriteUserListFragment$FavUserListAdapter;-><init>(Lcom/narvii/user/favorite/FavoriteUserListFragment;)V

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment;->adapter:Lcom/narvii/user/favorite/FavoriteUserListFragment$FavUserListAdapter;

    .line 12
    :cond_0
    return-object v0
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const-string v0, "olist"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    const-class v1, Lcom/narvii/model/User;

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    iput-object v0, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment;->origList:Ljava/util/List;

    .line 24
    .line 25
    const-string v0, "show_edit"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 29
    move-result p1

    .line 30
    .line 31
    iput-boolean p1, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment;->showEditBtn:Z

    .line 32
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    const v1, 0x7f120438

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    const v3, 0x7f0a0069

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, v2, v3, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    const v1, 0x7f08044c

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x2

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 24
    .line 25
    .line 26
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 27
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d0238

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

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    const v1, 0x7f0a0069

    .line 8
    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 13
    move-result p1

    .line 14
    return p1

    .line 15
    .line 16
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment;->showEditBtn:Z

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    .line 21
    const v0, 0x7f08044c

    .line 22
    .line 23
    .line 24
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 25
    .line 26
    .line 27
    const p1, 0x7f120748

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Lcom/narvii/user/favorite/FavoriteUserListFragment;->submit()V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0}, Lcom/narvii/user/favorite/FavoriteUserListFragment;->finishEdit()V

    .line 37
    goto :goto_0

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-direct {p0}, Lcom/narvii/user/favorite/FavoriteUserListFragment;->beginEdit()V

    .line 41
    .line 42
    .line 43
    const v0, 0x7f120450

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 47
    .line 48
    .line 49
    const v0, 0x7f080431

    .line 50
    .line 51
    .line 52
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 53
    .line 54
    :goto_0
    iget-boolean p1, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment;->showEditBtn:Z

    .line 55
    const/4 v0, 0x1

    .line 56
    xor-int/2addr p1, v0

    .line 57
    .line 58
    iput-boolean p1, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment;->showEditBtn:Z

    .line 59
    .line 60
    iget-object p1, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment;->adapter:Lcom/narvii/user/favorite/FavoriteUserListFragment$FavUserListAdapter;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 64
    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a0069

    .line 7
    .line 8
    .line 9
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment;->origList:Ljava/util/List;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 18
    move-result v0

    .line 19
    .line 20
    if-lez v0, :cond_0

    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 27
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment;->origList:Ljava/util/List;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    const-string v1, "olist"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    const-string v0, "show_edit"

    .line 17
    .line 18
    iget-boolean v1, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment;->showEditBtn:Z

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 22
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/DragSortPageFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p2, 0x7f0d0236

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVListFragment;->setEmptyView(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    const p2, 0x7f0a009d

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    iput-object p1, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment;->addFavoriteUserView:Landroid/view/View;

    .line 19
    .line 20
    new-instance p2, Lcom/narvii/user/favorite/FavoriteUserListFragment$1;

    .line 21
    .line 22
    .line 23
    invoke-direct {p2, p0}, Lcom/narvii/user/favorite/FavoriteUserListFragment$1;-><init>(Lcom/narvii/user/favorite/FavoriteUserListFragment;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    .line 28
    .line 29
    const p1, 0x7f120748

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    iput-object p1, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment;->listView:Landroid/widget/ListView;

    .line 39
    return-void
.end method

.method public remove(I)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment;->adapter:Lcom/narvii/user/favorite/FavoriteUserListFragment$FavUserListAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->getCount()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-ge p1, v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment;->adapter:Lcom/narvii/user/favorite/FavoriteUserListFragment$FavUserListAdapter;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment;->adapter:Lcom/narvii/user/favorite/FavoriteUserListFragment$FavUserListAdapter;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1}, Lcom/narvii/list/NVPagedAdapter;->getItem(I)Ljava/lang/Object;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 24
    .line 25
    iget-object p1, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment;->adapter:Lcom/narvii/user/favorite/FavoriteUserListFragment$FavUserListAdapter;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 29
    :cond_0
    return-void
.end method
