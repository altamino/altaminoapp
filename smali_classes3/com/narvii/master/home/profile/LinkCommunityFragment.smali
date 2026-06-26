.class public final Lcom/narvii/master/home/profile/LinkCommunityFragment;
.super Lcom/narvii/paging/NVRecyclerViewFragment;
.source "LinkCommunityFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/home/profile/LinkCommunityFragment$TitleAdapter;,
        Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;,
        Lcom/narvii/master/home/profile/LinkCommunityFragment$CreateCommuAdapter;,
        Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkCommuTouchCallback;,
        Lcom/narvii/master/home/profile/LinkCommunityFragment$ItemMoveListener;,
        Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkCommunityResponse;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLinkCommunityFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LinkCommunityFragment.kt\ncom/narvii/master/home/profile/LinkCommunityFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,401:1\n1587#2,2:402\n*E\n*S KotlinDebug\n*F\n+ 1 LinkCommunityFragment.kt\ncom/narvii/master/home/profile/LinkCommunityFragment\n*L\n183#1,2:402\n*E\n"
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private api:Lcom/narvii/util/http/ApiService;

.field private itemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

.field private linkedAdapter:Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;

.field private linkedCommu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation
.end field

.field private linkedCommuCopy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation
.end field

.field private linkedDataSource:Lcom/narvii/paging/source/DataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/paging/source/DataSource<",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation
.end field

.field private optionBackgroundColor:I

.field private optionTextColor:I

.field private progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

.field private titleTextColor:I

.field private unlinkedAdapter:Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;

.field private unlinkedCommu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation
.end field

.field private unlinkedDataSource:Lcom/narvii/paging/source/DataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/paging/source/DataSource<",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation
.end field

.field private user:Lcom/narvii/model/User;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->linkedCommu:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->unlinkedCommu:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->linkedCommuCopy:Ljava/util/List;

    const-string v0, "#FFD0D0E8"

    .line 56
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->titleTextColor:I

    const/4 v0, -0x1

    .line 57
    iput v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->optionTextColor:I

    const-string v0, "#1AFFFFFF"

    .line 58
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->optionBackgroundColor:I

    return-void
.end method

.method public static final synthetic access$addLinkCommunity(Lcom/narvii/master/home/profile/LinkCommunityFragment;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/narvii/master/home/profile/LinkCommunityFragment;->addLinkCommunity(I)V

    return-void
.end method

.method public static final synthetic access$getItemTouchHelper$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;)Landroid/support/v7/widget/helper/ItemTouchHelper;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->itemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    return-object p0
.end method

.method public static final synthetic access$getLinkedAdapter$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;)Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->linkedAdapter:Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;

    return-object p0
.end method

.method public static final synthetic access$getLinkedCommu$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;)Ljava/util/List;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->linkedCommu:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getLinkedCommuCopy$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;)Ljava/util/List;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->linkedCommuCopy:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getLinkedDataSource$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;)Lcom/narvii/paging/source/DataSource;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->linkedDataSource:Lcom/narvii/paging/source/DataSource;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "linkedDataSource"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getOptionBackgroundColor$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->optionBackgroundColor:I

    return p0
.end method

.method public static final synthetic access$getOptionTextColor$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->optionTextColor:I

    return p0
.end method

.method public static final synthetic access$getProgressDialog$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;)Lcom/narvii/util/dialog/ProgressDialog;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "progressDialog"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getTitleTextColor$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->titleTextColor:I

    return p0
.end method

.method public static final synthetic access$getUnlinkedCommu$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;)Ljava/util/List;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->unlinkedCommu:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getUnlinkedDataSource$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;)Lcom/narvii/paging/source/DataSource;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->unlinkedDataSource:Lcom/narvii/paging/source/DataSource;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "unlinkedDataSource"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getUser$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;)Lcom/narvii/model/User;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->user:Lcom/narvii/model/User;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "user"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$get_backgroundColor$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/narvii/app/NVFragment;->_backgroundColor:I

    return p0
.end method

.method public static final synthetic access$reloadData(Lcom/narvii/master/home/profile/LinkCommunityFragment;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/narvii/master/home/profile/LinkCommunityFragment;->reloadData()V

    return-void
.end method

.method public static final synthetic access$removeLinkCommunity(Lcom/narvii/master/home/profile/LinkCommunityFragment;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/narvii/master/home/profile/LinkCommunityFragment;->removeLinkCommunity(I)V

    return-void
.end method

.method public static final synthetic access$reorderCommunity(Lcom/narvii/master/home/profile/LinkCommunityFragment;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/narvii/master/home/profile/LinkCommunityFragment;->reorderCommunity()V

    return-void
.end method

.method public static final synthetic access$sendUserChangedNotification(Lcom/narvii/master/home/profile/LinkCommunityFragment;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/narvii/master/home/profile/LinkCommunityFragment;->sendUserChangedNotification()V

    return-void
.end method

.method public static final synthetic access$setItemTouchHelper$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;Landroid/support/v7/widget/helper/ItemTouchHelper;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->itemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    return-void
.end method

.method public static final synthetic access$setLinkedAdapter$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->linkedAdapter:Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;

    return-void
.end method

.method public static final synthetic access$setLinkedCommu$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;Ljava/util/List;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->linkedCommu:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$setLinkedCommuCopy$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;Ljava/util/List;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->linkedCommuCopy:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$setLinkedDataSource$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;Lcom/narvii/paging/source/DataSource;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->linkedDataSource:Lcom/narvii/paging/source/DataSource;

    return-void
.end method

.method public static final synthetic access$setOptionBackgroundColor$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;I)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->optionBackgroundColor:I

    return-void
.end method

.method public static final synthetic access$setOptionTextColor$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;I)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->optionTextColor:I

    return-void
.end method

.method public static final synthetic access$setProgressDialog$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;Lcom/narvii/util/dialog/ProgressDialog;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    return-void
.end method

.method public static final synthetic access$setTitleTextColor$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;I)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->titleTextColor:I

    return-void
.end method

.method public static final synthetic access$setUnlinkedCommu$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;Ljava/util/List;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->unlinkedCommu:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$setUnlinkedDataSource$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;Lcom/narvii/paging/source/DataSource;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->unlinkedDataSource:Lcom/narvii/paging/source/DataSource;

    return-void
.end method

.method public static final synthetic access$setUser$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;Lcom/narvii/model/User;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->user:Lcom/narvii/model/User;

    return-void
.end method

.method public static final synthetic access$set_backgroundColor$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;I)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/narvii/app/NVFragment;->_backgroundColor:I

    return-void
.end method

.method private final addLinkCommunity(I)V
    .locals 5

    .line 152
    iget-object v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->unlinkedCommu:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ltz p1, :cond_4

    if-gt v0, p1, :cond_0

    goto :goto_0

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 156
    iget-object v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->unlinkedCommu:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Community;

    .line 157
    new-instance v2, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v2}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "user-profile/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->user:Lcom/narvii/model/User;

    if-eqz v4, :cond_2

    iget-object v4, v4, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/linked-community/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/narvii/model/Community;->id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    .line 158
    iget-object v2, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->api:Lcom/narvii/util/http/ApiService;

    if-eqz v2, :cond_1

    new-instance v1, Lcom/narvii/master/home/profile/LinkCommunityFragment$addLinkCommunity$1;

    const-class v3, Lcom/narvii/model/api/ApiResponse;

    invoke-direct {v1, p0, p1, v3}, Lcom/narvii/master/home/profile/LinkCommunityFragment$addLinkCommunity$1;-><init>(Lcom/narvii/master/home/profile/LinkCommunityFragment;ILjava/lang/Class;)V

    invoke-virtual {v2, v0, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void

    :cond_1
    const-string p1, "api"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string p1, "user"

    .line 157
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string p1, "progressDialog"

    .line 155
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_4
    :goto_0
    return-void
.end method

.method private final reloadData()V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->linkedDataSource:Lcom/narvii/paging/source/DataSource;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/narvii/paging/source/DataSource;->loadInitData()V

    .line 206
    iget-object v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->unlinkedDataSource:Lcom/narvii/paging/source/DataSource;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/paging/source/DataSource;->loadInitData()V

    return-void

    :cond_0
    const-string v0, "unlinkedDataSource"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string v0, "linkedDataSource"

    .line 205
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method private final removeLinkCommunity(I)V
    .locals 5

    .line 126
    iget-object v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->linkedCommu:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ltz p1, :cond_4

    if-gt v0, p1, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 130
    iget-object v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->linkedCommu:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Community;

    .line 131
    new-instance v2, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v2}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "user-profile/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->user:Lcom/narvii/model/User;

    if-eqz v4, :cond_2

    iget-object v4, v4, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/linked-community/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/narvii/model/Community;->id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->delete()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    .line 132
    iget-object v2, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->api:Lcom/narvii/util/http/ApiService;

    if-eqz v2, :cond_1

    new-instance v1, Lcom/narvii/master/home/profile/LinkCommunityFragment$removeLinkCommunity$1;

    const-class v3, Lcom/narvii/model/api/ApiResponse;

    invoke-direct {v1, p0, p1, v3}, Lcom/narvii/master/home/profile/LinkCommunityFragment$removeLinkCommunity$1;-><init>(Lcom/narvii/master/home/profile/LinkCommunityFragment;ILjava/lang/Class;)V

    invoke-virtual {v2, v0, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void

    :cond_1
    const-string p1, "api"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string p1, "user"

    .line 131
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string p1, "progressDialog"

    .line 129
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_4
    :goto_0
    return-void
.end method

.method private final reorderCommunity()V
    .locals 5

    .line 178
    iget-object v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->linkedCommu:Ljava/util/List;

    iget-object v1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->linkedCommuCopy:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isListEquals(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 182
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    .line 183
    iget-object v2, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->linkedCommu:Ljava/util/List;

    .line 402
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/Community;

    .line 183
    iget v3, v3, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(I)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    goto :goto_0

    .line 185
    :cond_1
    new-instance v2, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v2}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "user-profile/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->user:Lcom/narvii/model/User;

    if-eqz v4, :cond_3

    iget-object v4, v4, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/linked-community/reorder"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    const-string v3, "ndcIds"

    invoke-virtual {v2, v3, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    .line 186
    iget-object v2, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->api:Lcom/narvii/util/http/ApiService;

    if-eqz v2, :cond_2

    new-instance v1, Lcom/narvii/master/home/profile/LinkCommunityFragment$reorderCommunity$2;

    const-class v3, Lcom/narvii/model/api/ApiResponse;

    invoke-direct {v1, p0, v3}, Lcom/narvii/master/home/profile/LinkCommunityFragment$reorderCommunity$2;-><init>(Lcom/narvii/master/home/profile/LinkCommunityFragment;Ljava/lang/Class;)V

    invoke-virtual {v2, v0, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void

    :cond_2
    const-string v0, "api"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string v0, "user"

    .line 185
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_4
    const-string v0, "progressDialog"

    .line 181
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method private final sendUserChangedNotification()V
    .locals 4

    .line 210
    iget-object v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->user:Lcom/narvii/model/User;

    const/4 v1, 0x0

    const-string v2, "user"

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->linkedCommu:Ljava/util/List;

    iput-object v3, v0, Lcom/narvii/model/User;->linkedCommunityList:Ljava/util/List;

    .line 211
    new-instance v3, Lcom/narvii/notification/Notification;

    if-eqz v0, :cond_0

    const-string v1, "update"

    invoke-direct {v3, v1, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 212
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->sendNotification(Lcom/narvii/notification/Notification;)V

    return-void

    .line 211
    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 210
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method protected createAdapter()Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
    .locals 14

    .line 113
    new-instance v0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;

    invoke-direct {v0, p0}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 114
    new-instance v1, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;

    iget-object v2, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->linkedDataSource:Lcom/narvii/paging/source/DataSource;

    const-string v3, "linkedDataSource"

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    const/4 v5, 0x1

    invoke-direct {v1, p0, p0, v5, v2}, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;-><init>(Lcom/narvii/master/home/profile/LinkCommunityFragment;Lcom/narvii/app/NVContext;ZLcom/narvii/paging/source/DataSource;)V

    iput-object v1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->linkedAdapter:Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;

    .line 115
    new-instance v1, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->unlinkedDataSource:Lcom/narvii/paging/source/DataSource;

    const-string v7, "unlinkedDataSource"

    if-eqz v6, :cond_2

    invoke-direct {v1, p0, p0, v2, v6}, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;-><init>(Lcom/narvii/master/home/profile/LinkCommunityFragment;Lcom/narvii/app/NVContext;ZLcom/narvii/paging/source/DataSource;)V

    iput-object v1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->unlinkedAdapter:Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;

    .line 117
    new-instance v1, Lcom/narvii/master/home/profile/LinkCommunityFragment$TitleAdapter;

    const v11, 0x7f0f0aec

    const/high16 v12, 0x41e00000    # 28.0f

    iget-object v13, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->linkedDataSource:Lcom/narvii/paging/source/DataSource;

    if-eqz v13, :cond_1

    move-object v8, v1

    move-object v9, p0

    move-object v10, p0

    invoke-direct/range {v8 .. v13}, Lcom/narvii/master/home/profile/LinkCommunityFragment$TitleAdapter;-><init>(Lcom/narvii/master/home/profile/LinkCommunityFragment;Lcom/narvii/app/NVContext;IFLcom/narvii/paging/source/DataSource;)V

    invoke-virtual {v0, v1}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->addAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 118
    iget-object v1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->linkedAdapter:Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;

    invoke-virtual {v0, v1}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->addAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 119
    new-instance v1, Lcom/narvii/master/home/profile/LinkCommunityFragment$TitleAdapter;

    const v11, 0x7f0f1106

    const/high16 v12, 0x42300000    # 44.0f

    iget-object v13, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->unlinkedDataSource:Lcom/narvii/paging/source/DataSource;

    if-eqz v13, :cond_0

    move-object v8, v1

    move-object v9, p0

    move-object v10, p0

    invoke-direct/range {v8 .. v13}, Lcom/narvii/master/home/profile/LinkCommunityFragment$TitleAdapter;-><init>(Lcom/narvii/master/home/profile/LinkCommunityFragment;Lcom/narvii/app/NVContext;IFLcom/narvii/paging/source/DataSource;)V

    invoke-virtual {v0, v1}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->addAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 120
    iget-object v1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->unlinkedAdapter:Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;

    invoke-virtual {v0, v1}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->addAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 121
    new-instance v1, Lcom/narvii/master/home/profile/LinkCommunityFragment$CreateCommuAdapter;

    invoke-direct {v1, p0, p0}, Lcom/narvii/master/home/profile/LinkCommunityFragment$CreateCommuAdapter;-><init>(Lcom/narvii/master/home/profile/LinkCommunityFragment;Lcom/narvii/app/NVContext;)V

    invoke-virtual {v0, v1, v5}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->addAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;Z)V

    return-object v0

    .line 119
    :cond_0
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 117
    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 115
    :cond_2
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 114
    :cond_3
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4
.end method

.method protected isRefreshEnable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 70
    invoke-super {p0, p1}, Lcom/narvii/paging/NVRecyclerViewFragment;->onCreate(Landroid/os/Bundle;)V

    .line 71
    new-instance p1, Lcom/narvii/master/home/profile/LinkCommunityFragment$onCreate$1;

    invoke-direct {p1, p0, p0}, Lcom/narvii/master/home/profile/LinkCommunityFragment$onCreate$1;-><init>(Lcom/narvii/master/home/profile/LinkCommunityFragment;Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->linkedDataSource:Lcom/narvii/paging/source/DataSource;

    .line 74
    new-instance p1, Lcom/narvii/master/home/profile/LinkCommunityFragment$onCreate$2;

    invoke-direct {p1, p0, p0}, Lcom/narvii/master/home/profile/LinkCommunityFragment$onCreate$2;-><init>(Lcom/narvii/master/home/profile/LinkCommunityFragment;Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->unlinkedDataSource:Lcom/narvii/paging/source/DataSource;

    const p1, 0x7f0f0aed

    .line 78
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    const-string p1, "user"

    .line 79
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/model/User;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "JacksonUtils.readAs(getS\u2026user\"), User::class.java)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/model/User;

    iput-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->user:Lcom/narvii/model/User;

    const/4 p1, 0x1

    .line 80
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setDarkTheme(Z)V

    .line 82
    new-instance p1, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/narvii/master/home/profile/LinkCommunityFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-super {p0, p1, p2}, Lcom/narvii/paging/NVRecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const-string p2, "api"

    .line 89
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "getService(\"api\")"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/narvii/util/http/ApiService;

    iput-object p2, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->api:Lcom/narvii/util/http/ApiService;

    const-string p2, "config"

    .line 90
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 91
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object p2

    invoke-interface {p2}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    move-result p2

    iput p2, p0, Lcom/narvii/app/NVFragment;->_backgroundColor:I

    .line 92
    iget p2, p0, Lcom/narvii/app/NVFragment;->_backgroundColor:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 94
    new-instance p1, Landroid/support/v7/widget/helper/ItemTouchHelper;

    new-instance p2, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkCommuTouchCallback;

    new-instance v0, Lcom/narvii/master/home/profile/LinkCommunityFragment$onViewCreated$1;

    invoke-direct {v0, p0}, Lcom/narvii/master/home/profile/LinkCommunityFragment$onViewCreated$1;-><init>(Lcom/narvii/master/home/profile/LinkCommunityFragment;)V

    invoke-direct {p2, p0, v0}, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkCommuTouchCallback;-><init>(Lcom/narvii/master/home/profile/LinkCommunityFragment;Lcom/narvii/master/home/profile/LinkCommunityFragment$ItemMoveListener;)V

    invoke-direct {p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;)V

    iput-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->itemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    .line 109
    iget-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->itemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    :cond_0
    return-void
.end method
