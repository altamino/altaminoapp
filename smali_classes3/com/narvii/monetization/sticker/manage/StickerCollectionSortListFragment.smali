.class public Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment;
.super Lcom/narvii/list/DragSortListFragment;
.source "StickerCollectionSortListFragment.java"


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

    .line 45
    invoke-direct {p0}, Lcom/narvii/list/DragSortListFragment;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment;->fixedPositionCount:I

    .line 52
    new-instance v0, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment$1;-><init>(Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment;)V

    iput-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment;->saveChanges()V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment;)Lcom/narvii/monetization/sticker/StickerService;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    return-object p0
.end method

.method private isPositionFixed(Lcom/narvii/monetization/sticker/model/StickerCollection;)Z
    .locals 1

    .line 156
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isLocalMood()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isPersonal()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private saveChanges()V
    .locals 5

    .line 103
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment;->adapter:Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment$StickerListAdapter;

    if-nez v0, :cond_0

    return-void

    .line 108
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 109
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment;->stickerCollectionList:Ljava/util/List;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 111
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    return-void

    .line 115
    :cond_1
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 116
    new-instance v2, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment$3;

    invoke-direct {v2, p0}, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment$3;-><init>(Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment;)V

    iput-object v2, v0, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 132
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v2

    .line 133
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 134
    invoke-direct {p0, v3}, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment;->isPositionFixed(Lcom/narvii/monetization/sticker/model/StickerCollection;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 135
    invoke-virtual {v3}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    goto :goto_0

    .line 139
    :cond_3
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->size()I

    move-result v1

    if-nez v1, :cond_4

    .line 140
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    return-void

    .line 144
    :cond_4
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v3, "sticker-collection/reorder"

    invoke-virtual {v1, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v3, "collectionIdList"

    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    const-string v2, "api"

    .line 145
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/util/http/ApiService;

    .line 146
    iget-object v3, v0, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v2, v1, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 147
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment;->createAdapter(Landroid/os/Bundle;)Lcom/narvii/list/NVArrayAdapter;

    move-result-object p1

    return-object p1
.end method

.method protected createAdapter(Landroid/os/Bundle;)Lcom/narvii/list/NVArrayAdapter;
    .locals 2

    .line 161
    new-instance p1, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment$StickerListAdapter;

    const-class v0, Lcom/narvii/monetization/sticker/model/StickerCollection;

    iget-object v1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment;->stickerCollectionList:Ljava/util/List;

    invoke-direct {p1, p0, p0, v0, v1}, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment$StickerListAdapter;-><init>(Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment;Lcom/narvii/app/NVContext;Ljava/lang/Class;Ljava/util/List;)V

    iput-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment;->adapter:Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment$StickerListAdapter;

    .line 162
    iget-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment;->adapter:Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment$StickerListAdapter;

    return-object p1
.end method

.method public drop(II)V
    .locals 1

    .line 180
    iget v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment;->fixedPositionCount:I

    if-ge p2, v0, :cond_0

    return-void

    .line 183
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/narvii/list/DragSortListFragment;->drop(II)V

    return-void
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 66
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0f0bf5

    .line 67
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    const-string p1, "Sticker (Bar)"

    .line 68
    invoke-static {p0, p1}, Lcom/narvii/monetization/MemberShipExpireWarningFragment;->attachTo(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    const-string p1, "sticker"

    .line 69
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/monetization/sticker/StickerService;

    iput-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    .line 70
    iget-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/StickerService;->getStickerCollectionList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment;->stickerCollectionList:Ljava/util/List;

    .line 71
    iget-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment;->stickerCollectionList:Ljava/util/List;

    if-nez p1, :cond_0

    .line 72
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment;->stickerCollectionList:Ljava/util/List;

    .line 74
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment;->stickerCollectionList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 75
    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isPersonal()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isLocalMood()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    :cond_2
    iget v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment;->fixedPositionCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment;->fixedPositionCount:I

    goto :goto_0

    .line 79
    :cond_3
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/app/NVActivity;

    if-eqz p1, :cond_4

    .line 80
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/narvii/app/NVActivity;

    const v0, 0x7f0f03aa

    .line 81
    new-instance v1, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment$2;

    invoke-direct {v1, p0}, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment$2;-><init>(Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment;)V

    invoke-virtual {p1, v0, v1}, Lcom/narvii/app/NVActivity;->setActionBarRightView(ILandroid/view/View$OnClickListener;)V

    .line 88
    :cond_4
    iget-object p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.narvii.action.MEMBERSHIP_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b02eb

    const/4 v0, 0x0

    .line 99
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionSortListFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 94
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 3

    .line 167
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 169
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v0, 0x0

    const v1, 0x7f0b065a

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v1, 0x7f090b9a

    .line 170
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0f03b5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 171
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    const/4 p2, 0x0

    .line 173
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 174
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 175
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f06018e

    invoke-static {p2, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setBackgroundColor(I)V

    return-void
.end method
