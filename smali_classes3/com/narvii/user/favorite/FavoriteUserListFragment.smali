.class public Lcom/narvii/user/favorite/FavoriteUserListFragment;
.super Lcom/narvii/list/DragSortPageFragment;
.source "FavoriteUserListFragment.java"


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

    .line 43
    invoke-direct {p0}, Lcom/narvii/list/DragSortPageFragment;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment;->showEditBtn:Z

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/user/favorite/FavoriteUserListFragment;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/narvii/user/favorite/FavoriteUserListFragment;->addNewFavoriteUser()V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/user/favorite/FavoriteUserListFragment;)Ljava/util/List;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment;->origList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$102(Lcom/narvii/user/favorite/FavoriteUserListFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment;->origList:Ljava/util/List;

    return-object p1
.end method

.method private addNewFavoriteUser()V
    .locals 3

    .line 257
    const-class v0, Lcom/narvii/user/favorite/AddFavoriteUserFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Source"

    const-string v2, "Manage View"

    .line 258
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private beginEdit()V
    .locals 6

    .line 160
    iget-object v0, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment;->addFavoriteUserView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v3, v2, v1

    const/4 v3, 0x1

    .line 161
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07004e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    aput v4, v2, v3

    const-string v3, "translationY"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x8c

    .line 162
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 163
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment;->listView:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 166
    invoke-virtual {v0}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/widget/ListView;->setPadding(IIII)V

    :cond_1
    return-void
.end method

.method private finishEdit()V
    .locals 6

    .line 171
    iget-object v0, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment;->addFavoriteUserView:Landroid/view/View;

    const v1, 0x7f07004e

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    .line 172
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput v4, v2, v3

    const-string v3, "translationY"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x8c

    .line 173
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 174
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment;->listView:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 177
    invoke-virtual {v0}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/widget/ListView;->setPadding(IIII)V

    :cond_1
    return-void
.end method

.method private isDirty()Z
    .locals 4

    .line 135
    iget-object v0, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment;->origList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 138
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 139
    iget-object v1, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment;->adapter:Lcom/narvii/user/favorite/FavoriteUserListFragment$FavUserListAdapter;

    invoke-virtual {v1}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 140
    instance-of v3, v2, Lcom/narvii/model/User;

    if-eqz v3, :cond_1

    .line 141
    check-cast v2, Lcom/narvii/model/User;

    iget-object v2, v2, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 144
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 145
    iget-object v2, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment;->origList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/User;

    .line 146
    iget-object v3, v3, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 149
    :cond_3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private submit()V
    .locals 10

    .line 183
    iget-object v0, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment;->origList:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 186
    :cond_0
    invoke-direct {p0}, Lcom/narvii/user/favorite/FavoriteUserListFragment;->isDirty()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 189
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 190
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 191
    iget-object v2, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment;->adapter:Lcom/narvii/user/favorite/FavoriteUserListFragment$FavUserListAdapter;

    invoke-virtual {v2}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 192
    instance-of v4, v3, Lcom/narvii/model/User;

    if-eqz v4, :cond_2

    .line 193
    check-cast v3, Lcom/narvii/model/User;

    iget-object v4, v3, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    iget-object v3, v3, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 197
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 198
    iget-object v3, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment;->origList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/model/User;

    .line 199
    iget-object v4, v4, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 202
    :cond_4
    new-instance v3, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 203
    new-instance v4, Lcom/narvii/user/favorite/FavoriteUserListFragment$2;

    const-class v5, Lcom/narvii/model/api/ApiResponse;

    invoke-direct {v4, p0, v5, v3}, Lcom/narvii/user/favorite/FavoriteUserListFragment$2;-><init>(Lcom/narvii/user/favorite/FavoriteUserListFragment;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;)V

    .line 227
    new-instance v5, Lcom/narvii/util/http/SequenceRequestHelper;

    invoke-direct {v5, v4}, Lcom/narvii/util/http/SequenceRequestHelper;-><init>(Lcom/narvii/util/http/ApiResponseListener;)V

    .line 229
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 230
    invoke-virtual {v1, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 231
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/narvii/util/http/ApiRequest$Builder;->delete()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/user-group/quick-access/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v6

    .line 232
    invoke-virtual {v5, v6}, Lcom/narvii/util/http/SequenceRequestHelper;->add(Lcom/narvii/util/http/ApiRequest;)V

    goto :goto_2

    .line 236
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_8

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 237
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v1

    .line 238
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 239
    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    goto :goto_3

    .line 241
    :cond_7
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v2, "/user-group/quick-access/position"

    .line 242
    invoke-virtual {v0, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v2, "uidList"

    .line 243
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    .line 244
    invoke-virtual {v5, v0}, Lcom/narvii/util/http/SequenceRequestHelper;->add(Lcom/narvii/util/http/ApiRequest;)V

    .line 247
    :cond_8
    invoke-virtual {v5}, Lcom/narvii/util/http/SequenceRequestHelper;->getCount()I

    move-result v0

    if-lez v0, :cond_9

    const-string v0, "api"

    .line 248
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 249
    invoke-virtual {v5, v0}, Lcom/narvii/util/http/SequenceRequestHelper;->start(Lcom/narvii/util/http/ApiService;)V

    .line 250
    invoke-virtual {v3}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    goto :goto_4

    .line 252
    :cond_9
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    :goto_4
    return-void
.end method


# virtual methods
.method protected createMainAdapter()Lcom/narvii/list/NVPagedAdapter;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment;->adapter:Lcom/narvii/user/favorite/FavoriteUserListFragment$FavUserListAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/narvii/user/favorite/FavoriteUserListFragment$FavUserListAdapter;

    invoke-direct {v0, p0}, Lcom/narvii/user/favorite/FavoriteUserListFragment$FavUserListAdapter;-><init>(Lcom/narvii/user/favorite/FavoriteUserListFragment;)V

    iput-object v0, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment;->adapter:Lcom/narvii/user/favorite/FavoriteUserListFragment$FavUserListAdapter;

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

    .line 56
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    .line 57
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    if-eqz p1, :cond_0

    const-string v0, "olist"

    .line 59
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    const-class v1, Lcom/narvii/model/User;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment;->origList:Ljava/util/List;

    const-string v0, "show_edit"

    .line 61
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment;->showEditBtn:Z

    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    const/4 v0, 0x0

    const v1, 0x7f090039

    const/4 v2, 0x1

    const v3, 0x7f0f03cd

    .line 104
    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f08033d

    .line 105
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    .line 106
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 107
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b020a

    const/4 v0, 0x0

    .line 67
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 112
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090039

    if-eq v0, v1, :cond_0

    .line 129
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 114
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment;->showEditBtn:Z

    if-eqz v0, :cond_1

    const v0, 0x7f08033d

    .line 115
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const p1, 0x7f0f069c

    .line 116
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 117
    invoke-direct {p0}, Lcom/narvii/user/favorite/FavoriteUserListFragment;->submit()V

    .line 118
    invoke-direct {p0}, Lcom/narvii/user/favorite/FavoriteUserListFragment;->finishEdit()V

    goto :goto_0

    .line 121
    :cond_1
    invoke-direct {p0}, Lcom/narvii/user/favorite/FavoriteUserListFragment;->beginEdit()V

    const v0, 0x7f0f03e5

    .line 122
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    const v0, 0x7f080325

    .line 123
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 125
    :goto_0
    iget-boolean p1, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment;->showEditBtn:Z

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment;->showEditBtn:Z

    .line 126
    iget-object p1, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment;->adapter:Lcom/narvii/user/favorite/FavoriteUserListFragment$FavUserListAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    .line 154
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    const v0, 0x7f090039

    .line 155
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment;->origList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 97
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 98
    iget-object v0, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment;->origList:Ljava/util/List;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "olist"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-boolean v0, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment;->showEditBtn:Z

    const-string v1, "show_edit"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 72
    invoke-super {p0, p1, p2}, Lcom/narvii/list/DragSortPageFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0b0208

    .line 73
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVListFragment;->setEmptyView(I)Landroid/view/View;

    const p2, 0x7f090065

    .line 74
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment;->addFavoriteUserView:Landroid/view/View;

    .line 75
    iget-object p1, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment;->addFavoriteUserView:Landroid/view/View;

    new-instance p2, Lcom/narvii/user/favorite/FavoriteUserListFragment$1;

    invoke-direct {p2, p0}, Lcom/narvii/user/favorite/FavoriteUserListFragment$1;-><init>(Lcom/narvii/user/favorite/FavoriteUserListFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0f069c

    .line 81
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 82
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment;->listView:Landroid/widget/ListView;

    return-void
.end method

.method public remove(I)V
    .locals 2

    .line 359
    iget-object v0, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment;->adapter:Lcom/narvii/user/favorite/FavoriteUserListFragment$FavUserListAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment;->adapter:Lcom/narvii/user/favorite/FavoriteUserListFragment$FavUserListAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment;->adapter:Lcom/narvii/user/favorite/FavoriteUserListFragment$FavUserListAdapter;

    invoke-virtual {v1, p1}, Lcom/narvii/list/NVPagedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 361
    iget-object p1, p0, Lcom/narvii/user/favorite/FavoriteUserListFragment;->adapter:Lcom/narvii/user/favorite/FavoriteUserListFragment$FavUserListAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
