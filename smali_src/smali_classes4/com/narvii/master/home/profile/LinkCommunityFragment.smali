.class public final Lcom/narvii/master/home/profile/LinkCommunityFragment;
.super Lcom/narvii/paging/NVRecyclerViewFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/home/profile/LinkCommunityFragment$CreateCommuAdapter;,
        Lcom/narvii/master/home/profile/LinkCommunityFragment$ItemMoveListener;,
        Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkCommuTouchCallback;,
        Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkCommunityResponse;,
        Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;,
        Lcom/narvii/master/home/profile/LinkCommunityFragment$TitleAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLinkCommunityFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LinkCommunityFragment.kt\ncom/narvii/master/home/profile/LinkCommunityFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,401:1\n1855#2,2:402\n*S KotlinDebug\n*F\n+ 1 LinkCommunityFragment.kt\ncom/narvii/master/home/profile/LinkCommunityFragment\n*L\n183#1:402,2\n*E\n"
.end annotation


# instance fields
.field private api:Lcom/narvii/util/http/ApiService;

.field private itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private linkedAdapter:Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private linkedCommu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
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
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private unlinkedCommu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->linkedCommu:Ljava/util/List;

    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->unlinkedCommu:Ljava/util/List;

    .line 18
    .line 19
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    iput-object v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->linkedCommuCopy:Ljava/util/List;

    .line 25
    .line 26
    const-string v0, "#FFD0D0E8"

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 30
    move-result v0

    .line 31
    .line 32
    iput v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->titleTextColor:I

    .line 33
    const/4 v0, -0x1

    .line 34
    .line 35
    iput v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->optionTextColor:I

    .line 36
    .line 37
    const-string v0, "#1AFFFFFF"

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 41
    move-result v0

    .line 42
    .line 43
    iput v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->optionBackgroundColor:I

    .line 44
    return-void
.end method

.method public static final synthetic access$addLinkCommunity(Lcom/narvii/master/home/profile/LinkCommunityFragment;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/master/home/profile/LinkCommunityFragment;->addLinkCommunity(I)V

    .line 4
    return-void
.end method

.method public static final synthetic access$getItemTouchHelper$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;)Landroidx/recyclerview/widget/ItemTouchHelper;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getLinkedAdapter$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;)Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->linkedAdapter:Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getLinkedCommu$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;)Ljava/util/List;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->linkedCommu:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getLinkedCommuCopy$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;)Ljava/util/List;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->linkedCommuCopy:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getLinkedDataSource$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;)Lcom/narvii/paging/source/DataSource;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->linkedDataSource:Lcom/narvii/paging/source/DataSource;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getOptionBackgroundColor$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->optionBackgroundColor:I

    .line 3
    return p0
.end method

.method public static final synthetic access$getOptionTextColor$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->optionTextColor:I

    .line 3
    return p0
.end method

.method public static final synthetic access$getProgressDialog$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;)Lcom/narvii/util/dialog/ProgressDialog;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getTitleTextColor$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->titleTextColor:I

    .line 3
    return p0
.end method

.method public static final synthetic access$getUnlinkedCommu$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;)Ljava/util/List;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->unlinkedCommu:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getUnlinkedDataSource$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;)Lcom/narvii/paging/source/DataSource;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->unlinkedDataSource:Lcom/narvii/paging/source/DataSource;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getUser$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;)Lcom/narvii/model/User;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->user:Lcom/narvii/model/User;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$get_backgroundColor$p$s1755975775(Lcom/narvii/master/home/profile/LinkCommunityFragment;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/narvii/app/NVFragment;->_backgroundColor:I

    .line 3
    return p0
.end method

.method public static final synthetic access$reloadData(Lcom/narvii/master/home/profile/LinkCommunityFragment;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/master/home/profile/LinkCommunityFragment;->reloadData()V

    .line 4
    return-void
.end method

.method public static final synthetic access$removeLinkCommunity(Lcom/narvii/master/home/profile/LinkCommunityFragment;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/master/home/profile/LinkCommunityFragment;->removeLinkCommunity(I)V

    .line 4
    return-void
.end method

.method public static final synthetic access$reorderCommunity(Lcom/narvii/master/home/profile/LinkCommunityFragment;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/master/home/profile/LinkCommunityFragment;->reorderCommunity()V

    .line 4
    return-void
.end method

.method public static final synthetic access$sendUserChangedNotification(Lcom/narvii/master/home/profile/LinkCommunityFragment;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/master/home/profile/LinkCommunityFragment;->sendUserChangedNotification()V

    .line 4
    return-void
.end method

.method private final addLinkCommunity(I)V
    .locals 6

    .line 1
    .line 2
    if-ltz p1, :cond_3

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->unlinkedCommu:Ljava/util/List;

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-ge p1, v0, :cond_3

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 13
    const/4 v1, 0x0

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const-string v0, "progressDialog"

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 21
    move-object v0, v1

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->unlinkedCommu:Ljava/util/List;

    .line 27
    .line 28
    .line 29
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    check-cast v0, Lcom/narvii/model/Community;

    .line 33
    .line 34
    new-instance v2, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 35
    .line 36
    .line 37
    invoke-direct {v2}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 38
    .line 39
    iget-object v3, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->user:Lcom/narvii/model/User;

    .line 40
    .line 41
    if-nez v3, :cond_1

    .line 42
    .line 43
    const-string v3, "user"

    .line 44
    .line 45
    .line 46
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 47
    move-object v3, v1

    .line 48
    .line 49
    :cond_1
    iget-object v3, v3, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/narvii/model/Community;->id()Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    new-instance v4, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    const-string v5, "user-profile/"

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v3, "/linked-community/"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object v0

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 82
    move-result-object v0

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 86
    move-result-object v0

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 90
    move-result-object v0

    .line 91
    .line 92
    iget-object v2, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->api:Lcom/narvii/util/http/ApiService;

    .line 93
    .line 94
    if-nez v2, :cond_2

    .line 95
    .line 96
    const-string v2, "api"

    .line 97
    .line 98
    .line 99
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 100
    goto :goto_0

    .line 101
    :cond_2
    move-object v1, v2

    .line 102
    .line 103
    :goto_0
    new-instance v2, Lcom/narvii/master/home/profile/LinkCommunityFragment$addLinkCommunity$1;

    .line 104
    .line 105
    const-class v3, Lcom/narvii/model/api/ApiResponse;

    .line 106
    .line 107
    .line 108
    invoke-direct {v2, p0, p1, v3}, Lcom/narvii/master/home/profile/LinkCommunityFragment$addLinkCommunity$1;-><init>(Lcom/narvii/master/home/profile/LinkCommunityFragment;ILjava/lang/Class;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 112
    :cond_3
    return-void
.end method

.method private final reloadData()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->linkedDataSource:Lcom/narvii/paging/source/DataSource;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "linkedDataSource"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    move-object v0, v1

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/paging/source/DataSource;->loadInitData()V

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->unlinkedDataSource:Lcom/narvii/paging/source/DataSource;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    const-string v0, "unlinkedDataSource"

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move-object v1, v0

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-virtual {v1}, Lcom/narvii/paging/source/DataSource;->loadInitData()V

    .line 29
    return-void
.end method

.method private final removeLinkCommunity(I)V
    .locals 6

    .line 1
    .line 2
    if-ltz p1, :cond_3

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->linkedCommu:Ljava/util/List;

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-ge p1, v0, :cond_3

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 13
    const/4 v1, 0x0

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const-string v0, "progressDialog"

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 21
    move-object v0, v1

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->linkedCommu:Ljava/util/List;

    .line 27
    .line 28
    .line 29
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    check-cast v0, Lcom/narvii/model/Community;

    .line 33
    .line 34
    new-instance v2, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 35
    .line 36
    .line 37
    invoke-direct {v2}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 38
    .line 39
    iget-object v3, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->user:Lcom/narvii/model/User;

    .line 40
    .line 41
    if-nez v3, :cond_1

    .line 42
    .line 43
    const-string v3, "user"

    .line 44
    .line 45
    .line 46
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 47
    move-object v3, v1

    .line 48
    .line 49
    :cond_1
    iget-object v3, v3, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/narvii/model/Community;->id()Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    new-instance v4, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    const-string v5, "user-profile/"

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v3, "/linked-community/"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object v0

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 82
    move-result-object v0

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->delete()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 86
    move-result-object v0

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 90
    move-result-object v0

    .line 91
    .line 92
    iget-object v2, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->api:Lcom/narvii/util/http/ApiService;

    .line 93
    .line 94
    if-nez v2, :cond_2

    .line 95
    .line 96
    const-string v2, "api"

    .line 97
    .line 98
    .line 99
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 100
    goto :goto_0

    .line 101
    :cond_2
    move-object v1, v2

    .line 102
    .line 103
    :goto_0
    new-instance v2, Lcom/narvii/master/home/profile/LinkCommunityFragment$removeLinkCommunity$1;

    .line 104
    .line 105
    const-class v3, Lcom/narvii/model/api/ApiResponse;

    .line 106
    .line 107
    .line 108
    invoke-direct {v2, p0, p1, v3}, Lcom/narvii/master/home/profile/LinkCommunityFragment$removeLinkCommunity$1;-><init>(Lcom/narvii/master/home/profile/LinkCommunityFragment;ILjava/lang/Class;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 112
    :cond_3
    return-void
.end method

.method private final reorderCommunity()V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->linkedCommu:Ljava/util/List;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->linkedCommuCopy:Ljava/util/List;

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isListEquals(Ljava/util/List;Ljava/util/List;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    return-void

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 14
    const/4 v1, 0x0

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    const-string v0, "progressDialog"

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 22
    move-object v0, v1

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    iget-object v2, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->linkedCommu:Ljava/util/List;

    .line 32
    .line 33
    check-cast v2, Ljava/lang/Iterable;

    .line 34
    .line 35
    .line 36
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    .line 40
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    move-result v3

    .line 42
    .line 43
    if-eqz v3, :cond_2

    .line 44
    .line 45
    .line 46
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    move-result-object v3

    .line 48
    .line 49
    check-cast v3, Lcom/narvii/model/Community;

    .line 50
    .line 51
    iget v3, v3, Lcom/narvii/model/Community;->id:I

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(I)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 55
    goto :goto_0

    .line 56
    .line 57
    :cond_2
    new-instance v2, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 58
    .line 59
    .line 60
    invoke-direct {v2}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 61
    .line 62
    iget-object v3, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->user:Lcom/narvii/model/User;

    .line 63
    .line 64
    if-nez v3, :cond_3

    .line 65
    .line 66
    const-string v3, "user"

    .line 67
    .line 68
    .line 69
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 70
    move-object v3, v1

    .line 71
    .line 72
    :cond_3
    iget-object v3, v3, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 73
    .line 74
    new-instance v4, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    const-string v5, "user-profile/"

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string v3, "/linked-community/reorder"

    .line 88
    .line 89
    .line 90
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    move-result-object v3

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 98
    move-result-object v2

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 102
    move-result-object v2

    .line 103
    .line 104
    const-string v3, "ndcIds"

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2, v3, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 108
    move-result-object v0

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 112
    move-result-object v0

    .line 113
    .line 114
    iget-object v2, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->api:Lcom/narvii/util/http/ApiService;

    .line 115
    .line 116
    if-nez v2, :cond_4

    .line 117
    .line 118
    const-string v2, "api"

    .line 119
    .line 120
    .line 121
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 122
    goto :goto_1

    .line 123
    :cond_4
    move-object v1, v2

    .line 124
    .line 125
    :goto_1
    new-instance v2, Lcom/narvii/master/home/profile/LinkCommunityFragment$reorderCommunity$2;

    .line 126
    .line 127
    const-class v3, Lcom/narvii/model/api/ApiResponse;

    .line 128
    .line 129
    .line 130
    invoke-direct {v2, p0, v3}, Lcom/narvii/master/home/profile/LinkCommunityFragment$reorderCommunity$2;-><init>(Lcom/narvii/master/home/profile/LinkCommunityFragment;Ljava/lang/Class;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 134
    return-void
.end method

.method private final sendUserChangedNotification()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->user:Lcom/narvii/model/User;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    const-string v2, "user"

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    move-object v0, v1

    .line 12
    .line 13
    :cond_0
    iget-object v3, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->linkedCommu:Ljava/util/List;

    .line 14
    .line 15
    iput-object v3, v0, Lcom/narvii/model/User;->linkedCommunityList:Ljava/util/List;

    .line 16
    .line 17
    new-instance v0, Lcom/narvii/notification/Notification;

    .line 18
    .line 19
    iget-object v3, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->user:Lcom/narvii/model/User;

    .line 20
    .line 21
    if-nez v3, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move-object v1, v3

    .line 27
    .line 28
    :goto_0
    const-string v2, "update"

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, v2, v1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 35
    return-void
.end method


# virtual methods
.method protected createAdapter()Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
    .locals 14
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    new-instance v1, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->linkedDataSource:Lcom/narvii/paging/source/DataSource;

    .line 10
    .line 11
    const-string v3, "linkedDataSource"

    .line 12
    const/4 v4, 0x0

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 18
    move-object v2, v4

    .line 19
    :cond_0
    const/4 v5, 0x1

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, p0, p0, v5, v2}, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;-><init>(Lcom/narvii/master/home/profile/LinkCommunityFragment;Lcom/narvii/app/NVContext;ZLcom/narvii/paging/source/DataSource;)V

    .line 23
    .line 24
    iput-object v1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->linkedAdapter:Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;

    .line 25
    .line 26
    new-instance v1, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->unlinkedDataSource:Lcom/narvii/paging/source/DataSource;

    .line 29
    .line 30
    const-string v6, "unlinkedDataSource"

    .line 31
    .line 32
    if-nez v2, :cond_1

    .line 33
    .line 34
    .line 35
    invoke-static {v6}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 36
    move-object v2, v4

    .line 37
    :cond_1
    const/4 v7, 0x0

    .line 38
    .line 39
    .line 40
    invoke-direct {v1, p0, p0, v7, v2}, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;-><init>(Lcom/narvii/master/home/profile/LinkCommunityFragment;Lcom/narvii/app/NVContext;ZLcom/narvii/paging/source/DataSource;)V

    .line 41
    .line 42
    iput-object v1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->unlinkedAdapter:Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;

    .line 43
    .line 44
    new-instance v1, Lcom/narvii/master/home/profile/LinkCommunityFragment$TitleAdapter;

    .line 45
    .line 46
    .line 47
    const v11, 0x7f120b97

    .line 48
    .line 49
    const/high16 v12, 0x41e00000    # 28.0f

    .line 50
    .line 51
    iget-object v2, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->linkedDataSource:Lcom/narvii/paging/source/DataSource;

    .line 52
    .line 53
    if-nez v2, :cond_2

    .line 54
    .line 55
    .line 56
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 57
    move-object v13, v4

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    move-object v13, v2

    .line 60
    :goto_0
    move-object v8, v1

    .line 61
    move-object v9, p0

    .line 62
    move-object v10, p0

    .line 63
    .line 64
    .line 65
    invoke-direct/range {v8 .. v13}, Lcom/narvii/master/home/profile/LinkCommunityFragment$TitleAdapter;-><init>(Lcom/narvii/master/home/profile/LinkCommunityFragment;Lcom/narvii/app/NVContext;IFLcom/narvii/paging/source/DataSource;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->addAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 69
    .line 70
    iget-object v1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->linkedAdapter:Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->addAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 74
    .line 75
    new-instance v1, Lcom/narvii/master/home/profile/LinkCommunityFragment$TitleAdapter;

    .line 76
    .line 77
    .line 78
    const v10, 0x7f12120f

    .line 79
    .line 80
    const/high16 v11, 0x42300000    # 44.0f

    .line 81
    .line 82
    iget-object v2, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->unlinkedDataSource:Lcom/narvii/paging/source/DataSource;

    .line 83
    .line 84
    if-nez v2, :cond_3

    .line 85
    .line 86
    .line 87
    invoke-static {v6}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 88
    move-object v12, v4

    .line 89
    goto :goto_1

    .line 90
    :cond_3
    move-object v12, v2

    .line 91
    :goto_1
    move-object v7, v1

    .line 92
    move-object v8, p0

    .line 93
    move-object v9, p0

    .line 94
    .line 95
    .line 96
    invoke-direct/range {v7 .. v12}, Lcom/narvii/master/home/profile/LinkCommunityFragment$TitleAdapter;-><init>(Lcom/narvii/master/home/profile/LinkCommunityFragment;Lcom/narvii/app/NVContext;IFLcom/narvii/paging/source/DataSource;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v1}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->addAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 100
    .line 101
    iget-object v1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->unlinkedAdapter:Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkedAdapter;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v1}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->addAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 105
    .line 106
    new-instance v1, Lcom/narvii/master/home/profile/LinkCommunityFragment$CreateCommuAdapter;

    .line 107
    .line 108
    .line 109
    invoke-direct {v1, p0, p0}, Lcom/narvii/master/home/profile/LinkCommunityFragment$CreateCommuAdapter;-><init>(Lcom/narvii/master/home/profile/LinkCommunityFragment;Lcom/narvii/app/NVContext;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v1, v5}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->addAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;Z)V

    .line 113
    return-object v0
.end method

.method protected isRefreshEnable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/paging/NVRecyclerViewFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    new-instance p1, Lcom/narvii/master/home/profile/LinkCommunityFragment$onCreate$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/narvii/master/home/profile/LinkCommunityFragment$onCreate$1;-><init>(Lcom/narvii/master/home/profile/LinkCommunityFragment;)V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->linkedDataSource:Lcom/narvii/paging/source/DataSource;

    .line 11
    .line 12
    new-instance p1, Lcom/narvii/master/home/profile/LinkCommunityFragment$onCreate$2;

    .line 13
    .line 14
    .line 15
    invoke-direct {p1, p0}, Lcom/narvii/master/home/profile/LinkCommunityFragment$onCreate$2;-><init>(Lcom/narvii/master/home/profile/LinkCommunityFragment;)V

    .line 16
    .line 17
    iput-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->unlinkedDataSource:Lcom/narvii/paging/source/DataSource;

    .line 18
    .line 19
    .line 20
    const p1, 0x7f120b98

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 24
    .line 25
    const-string p1, "user"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    const-class v0, Lcom/narvii/model/User;

    .line 32
    .line 33
    .line 34
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    const-string v0, "readAs(...)"

    .line 38
    .line 39
    .line 40
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    check-cast p1, Lcom/narvii/model/User;

    .line 43
    .line 44
    iput-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->user:Lcom/narvii/model/User;

    .line 45
    const/4 p1, 0x1

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setDarkTheme(Z)V

    .line 49
    .line 50
    new-instance p1, Lcom/narvii/util/dialog/ProgressDialog;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    .line 57
    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 58
    .line 59
    iput-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 60
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "view"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1, p2}, Lcom/narvii/paging/NVRecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 9
    .line 10
    const-string p2, "api"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    const-string v0, "getService(...)"

    .line 17
    .line 18
    .line 19
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    check-cast p2, Lcom/narvii/util/http/ApiService;

    .line 22
    .line 23
    iput-object p2, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->api:Lcom/narvii/util/http/ApiService;

    .line 24
    .line 25
    const-string p2, "config"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    move-result-object p2

    .line 30
    .line 31
    check-cast p2, Lcom/narvii/config/ConfigService;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    .line 35
    move-result-object p2

    .line 36
    .line 37
    .line 38
    invoke-interface {p2}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    .line 39
    move-result p2

    .line 40
    .line 41
    iput p2, p0, Lcom/narvii/app/NVFragment;->_backgroundColor:I

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 45
    .line 46
    new-instance p1, Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 47
    .line 48
    new-instance p2, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkCommuTouchCallback;

    .line 49
    .line 50
    new-instance v0, Lcom/narvii/master/home/profile/LinkCommunityFragment$onViewCreated$1;

    .line 51
    .line 52
    .line 53
    invoke-direct {v0, p0}, Lcom/narvii/master/home/profile/LinkCommunityFragment$onViewCreated$1;-><init>(Lcom/narvii/master/home/profile/LinkCommunityFragment;)V

    .line 54
    .line 55
    .line 56
    invoke-direct {p2, p0, v0}, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkCommuTouchCallback;-><init>(Lcom/narvii/master/home/profile/LinkCommunityFragment;Lcom/narvii/master/home/profile/LinkCommunityFragment$ItemMoveListener;)V

    .line 57
    .line 58
    .line 59
    invoke-direct {p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    .line 60
    .line 61
    iput-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 62
    .line 63
    iget-object p2, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper;->e(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 67
    return-void
.end method
