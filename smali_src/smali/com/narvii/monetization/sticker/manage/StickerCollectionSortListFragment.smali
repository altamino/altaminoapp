.class public Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment;
.super Lcom/narvii/list/DragSortListFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment$StickerListAdapter;
    }
.end annotation


# instance fields
.field public adapter:Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment$StickerListAdapter;

.field fixedPositionCount:I

.field receiver:Landroid/content/BroadcastReceiver;

.field stickerCollectionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/monetization/sticker/model/StickerCollection;",
            ">;"
        }
    .end annotation
.end field

.field private stickerService:Lcom/narvii/monetization/sticker/StickerService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/DragSortListFragment;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment;->fixedPositionCount:I

    .line 7
    .line 8
    new-instance v0, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment$1;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p0}, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment$1;-><init>(Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment;)V

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 14
    return-void
.end method

.method private isPositionFixed(Lcom/narvii/monetization/sticker/model/StickerCollection;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isLocalMood()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isPersonal()Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 17
    :goto_1
    return p1
.end method

.method private saveChanges()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment;->adapter:Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment$StickerListAdapter;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment;->adapter:Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment$StickerListAdapter;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment;->stickerCollectionList:Ljava/util/List;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result v1

    .line 23
    .line 24
    xor-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 30
    return-void

    .line 31
    .line 32
    :cond_1
    new-instance v1, Lcom/narvii/util/dialog/ProgressDialog;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    .line 39
    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 40
    .line 41
    new-instance v2, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment$3;

    .line 42
    .line 43
    .line 44
    invoke-direct {v2, p0}, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment$3;-><init>(Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment;)V

    .line 45
    .line 46
    iput-object v2, v1, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 47
    .line 48
    .line 49
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 50
    move-result-object v2

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    .line 57
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    move-result v3

    .line 59
    .line 60
    if-eqz v3, :cond_3

    .line 61
    .line 62
    .line 63
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    move-result-object v3

    .line 65
    .line 66
    check-cast v3, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 67
    .line 68
    .line 69
    invoke-direct {p0, v3}, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment;->isPositionFixed(Lcom/narvii/monetization/sticker/model/StickerCollection;)Z

    .line 70
    move-result v4

    .line 71
    .line 72
    if-nez v4, :cond_2

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    .line 76
    move-result-object v3

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 80
    goto :goto_0

    .line 81
    .line 82
    .line 83
    :cond_3
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->size()I

    .line 84
    move-result v0

    .line 85
    .line 86
    if-nez v0, :cond_4

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 90
    return-void

    .line 91
    .line 92
    .line 93
    :cond_4
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 94
    move-result-object v0

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 98
    move-result-object v0

    .line 99
    .line 100
    const-string/jumbo v3, "sticker-collection/reorder"

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 104
    move-result-object v0

    .line 105
    .line 106
    const-string v3, "collectionIdList"

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 110
    move-result-object v0

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 114
    move-result-object v0

    .line 115
    .line 116
    const-string v2, "api"

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 120
    move-result-object v2

    .line 121
    .line 122
    check-cast v2, Lcom/narvii/util/http/ApiService;

    .line 123
    .line 124
    iget-object v3, v1, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2, v0, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 131
    return-void
.end method

.method static bridge synthetic u(Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment;)Lcom/narvii/monetization/sticker/StickerService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    return-object p0
.end method

.method static bridge synthetic v(Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment;->saveChanges()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment;->createAdapter(Landroid/os/Bundle;)Lcom/narvii/list/NVArrayAdapter;

    move-result-object p1

    return-object p1
.end method

.method protected createAdapter(Landroid/os/Bundle;)Lcom/narvii/list/NVArrayAdapter;
    .locals 2

    .line 2
    new-instance p1, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment$StickerListAdapter;

    const-class v0, Lcom/narvii/monetization/sticker/model/StickerCollection;

    iget-object v1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment;->stickerCollectionList:Ljava/util/List;

    invoke-direct {p1, p0, p0, v0, v1}, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment$StickerListAdapter;-><init>(Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment;Lcom/narvii/app/NVContext;Ljava/lang/Class;Ljava/util/List;)V

    iput-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment;->adapter:Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment$StickerListAdapter;

    return-object p1
.end method

.method public drop(II)V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment;->fixedPositionCount:I

    .line 3
    .line 4
    if-ge p2, v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/narvii/list/DragSortListFragment;->drop(II)V

    .line 9
    return-void
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
    .line 5
    .line 6
    const p1, 0x7f120d20

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 10
    .line 11
    const-string p1, "Sticker (Bar)"

    .line 12
    .line 13
    .line 14
    invoke-static {p0, p1}, Lcom/narvii/monetization/MemberShipExpireWarningFragment;->attachTo(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 15
    .line 16
    const-string/jumbo p1, "sticker"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    check-cast p1, Lcom/narvii/monetization/sticker/StickerService;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/StickerService;->getStickerCollectionList()Ljava/util/List;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    iput-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment;->stickerCollectionList:Ljava/util/List;

    .line 31
    .line 32
    if-nez p1, :cond_0

    .line 33
    .line 34
    new-instance p1, Ljava/util/ArrayList;

    .line 35
    .line 36
    .line 37
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    iput-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment;->stickerCollectionList:Ljava/util/List;

    .line 40
    .line 41
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment;->stickerCollectionList:Ljava/util/List;

    .line 42
    .line 43
    .line 44
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    .line 48
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    move-result v0

    .line 50
    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    .line 54
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    check-cast v0, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isPersonal()Z

    .line 61
    move-result v1

    .line 62
    .line 63
    if-nez v1, :cond_2

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isLocalMood()Z

    .line 67
    move-result v0

    .line 68
    .line 69
    if-eqz v0, :cond_1

    .line 70
    .line 71
    :cond_2
    iget v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment;->fixedPositionCount:I

    .line 72
    .line 73
    add-int/lit8 v0, v0, 0x1

    .line 74
    .line 75
    iput v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment;->fixedPositionCount:I

    .line 76
    goto :goto_0

    .line 77
    .line 78
    .line 79
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 80
    move-result-object p1

    .line 81
    .line 82
    instance-of p1, p1, Lcom/narvii/app/NVActivity;

    .line 83
    .line 84
    if-eqz p1, :cond_4

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 88
    move-result-object p1

    .line 89
    .line 90
    check-cast p1, Lcom/narvii/app/NVActivity;

    .line 91
    .line 92
    new-instance v0, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment$2;

    .line 93
    .line 94
    .line 95
    invoke-direct {v0, p0}, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment$2;-><init>(Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment;)V

    .line 96
    .line 97
    .line 98
    const v1, 0x7f120402

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v1, v0}, Lcom/narvii/app/NVActivity;->setActionBarRightView(ILandroid/view/View$OnClickListener;)V

    .line 102
    .line 103
    :cond_4
    iget-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 104
    .line 105
    new-instance v0, Landroid/content/IntentFilter;

    .line 106
    .line 107
    const-string v1, "com.narvii.action.MEMBERSHIP_CHANGED"

    .line 108
    .line 109
    .line 110
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 114
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d0320

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

.method public onDestroy()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    .line 9
    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 7
    move-result-object p2

    .line 8
    .line 9
    .line 10
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 11
    move-result-object p2

    .line 12
    .line 13
    .line 14
    const v0, 0x7f0d0711

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 19
    move-result-object p2

    .line 20
    .line 21
    .line 22
    const v0, 0x7f0a0e9e

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    check-cast v0, Landroid/widget/TextView;

    .line 29
    .line 30
    .line 31
    const v2, 0x7f12040d

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 38
    const/4 p2, 0x0

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 48
    move-result-object p2

    .line 49
    .line 50
    .line 51
    const v0, 0x7f0603f8

    .line 52
    .line 53
    .line 54
    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 55
    move-result p2

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 59
    return-void
.end method
