.class public Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "CustomizedStickerListFragment.java"

# interfaces
.implements Lcom/narvii/app/FragmentOnBackListener;
.implements Lcom/narvii/media/MediaPickerFragment$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$Adapter;,
        Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$AddAdapter;
    }
.end annotation


# instance fields
.field adapter:Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$Adapter;

.field collectionId:Ljava/lang/String;

.field deleteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/model/Sticker;",
            ">;"
        }
    .end annotation
.end field

.field editing:Z

.field mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

.field private membershipService:Lcom/narvii/wallet/MembershipService;

.field receiver:Landroid/content/BroadcastReceiver;

.field private stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

.field stickerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/model/Sticker;",
            ">;"
        }
    .end annotation
.end field

.field stickerService:Lcom/narvii/monetization/sticker/StickerService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->deleteList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->editing:Z

    .line 67
    new-instance v0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$1;-><init>(Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;)V

    iput-object v0, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->sendBatchDeleteRequest()V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->updateRightView()V

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;)Lcom/narvii/monetization/sticker/StickerHelper;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    return-object p0
.end method

.method private sendBatchDeleteRequest()V
    .locals 6

    .line 200
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->stickerList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->adapter:Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$Adapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    move-result-object v0

    .line 206
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v1

    .line 208
    iget-object v2, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->deleteList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/Sticker;

    .line 209
    invoke-virtual {v3}, Lcom/narvii/model/Sticker;->id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    goto :goto_0

    .line 212
    :cond_1
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->size()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 213
    invoke-virtual {p0, v3}, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->setEditing(Z)V

    return-void

    .line 217
    :cond_2
    new-instance v2, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 218
    invoke-virtual {v2}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 219
    new-instance v4, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$4;

    invoke-direct {v4, p0, v0}, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$4;-><init>(Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;Ljava/util/List;)V

    iput-object v4, v2, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 229
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->collectionId:Ljava/lang/String;

    aput-object v5, v4, v3

    const-string v3, "sticker-collection/%s/stickers/batch-delete"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v3, "stickerIdList"

    invoke-virtual {v0, v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    const-string v1, "api"

    .line 230
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 231
    iget-object v2, v2, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private updateRightView()V
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->adapter:Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$Adapter;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->editing:Z

    if-nez v1, :cond_1

    .line 190
    invoke-virtual {v0}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 191
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/narvii/app/NVActivity;

    if-nez v1, :cond_0

    return-void

    :cond_0
    xor-int/lit8 v0, v0, 0x1

    .line 195
    invoke-virtual {v1, v0}, Lcom/narvii/app/NVActivity;->setRightViewEnabled(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 6

    .line 123
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p1

    float-to-int v5, p1

    .line 124
    new-instance p1, Lcom/narvii/list/DivideColumnAdapter;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    move-object v1, p0

    move v4, v5

    invoke-direct/range {v0 .. v5}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;IIII)V

    .line 125
    new-instance v0, Lcom/narvii/list/MergeAdapter;

    invoke-direct {v0, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 126
    new-instance v1, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$AddAdapter;

    invoke-direct {v1, p0, p0}, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$AddAdapter;-><init>(Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;Lcom/narvii/app/NVContext;)V

    invoke-virtual {v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 127
    new-instance v1, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$Adapter;

    const-class v2, Lcom/narvii/model/Sticker;

    invoke-direct {v1, p0, p0, v2}, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$Adapter;-><init>(Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;Lcom/narvii/app/NVContext;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->adapter:Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$Adapter;

    .line 128
    iget-object v1, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->adapter:Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$Adapter;

    invoke-virtual {v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    const/4 v1, 0x3

    .line 129
    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    return-object p1
.end method

.method public getListSelector()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 135
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 1

    .line 236
    iget-boolean p1, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->editing:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 237
    invoke-virtual {p0, v0}, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->setEditing(Z)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 80
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 81
    new-instance p1, Lcom/narvii/monetization/sticker/StickerHelper;

    invoke-direct {p1, p0}, Lcom/narvii/monetization/sticker/StickerHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    const-string p1, "membership"

    .line 83
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/wallet/MembershipService;

    iput-object p1, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    const-string p1, "sticker"

    .line 84
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/monetization/sticker/StickerService;

    iput-object p1, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    const-string p1, "stickerCollection"

    .line 86
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/monetization/sticker/model/StickerCollection;

    if-eqz p1, :cond_2

    .line 87
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->collectionId:Ljava/lang/String;

    .line 93
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string v0, "mediaPicker"

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/narvii/media/MediaPickerFragment;

    iput-object p1, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 94
    iget-object p1, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    if-nez p1, :cond_1

    .line 95
    new-instance p1, Lcom/narvii/media/MediaPickerFragment;

    invoke-direct {p1}, Lcom/narvii/media/MediaPickerFragment;-><init>()V

    iput-object p1, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 96
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    iget-object v1, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    invoke-virtual {p1, v1, v0}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 98
    :cond_1
    iget-object p1, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    invoke-virtual {p1, p0}, Lcom/narvii/media/MediaPickerFragment;->addOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V

    const p1, 0x7f0f069e

    .line 100
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 101
    iget-object p1, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.narvii.action.MEMBERSHIP_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void

    .line 88
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 107
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    .line 108
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0, p0}, Lcom/narvii/media/MediaPickerFragment;->removeOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V

    :cond_0
    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 115
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    const/4 p2, 0x0

    .line 116
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    const/4 p2, 0x0

    .line 117
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onPickMediaResult(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 245
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    iget-object v1, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->collectionId:Ljava/lang/String;

    new-instance v2, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$5;

    invoke-direct {v2, p0}, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$5;-><init>(Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;)V

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/narvii/monetization/sticker/StickerHelper;->onPickMediaResult(Ljava/util/List;Landroid/os/Bundle;Ljava/lang/String;Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 140
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 141
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->setEditing(Z)V

    return-void
.end method

.method public setEditing(Z)V
    .locals 4

    .line 145
    iput-boolean p1, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->editing:Z

    .line 146
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->deleteList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 148
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/NVActivity;

    if-nez v0, :cond_0

    return-void

    .line 152
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->removeRightView()V

    .line 153
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090048

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const v2, 0x7f0802ae

    .line 155
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const v1, 0x7f0f03aa

    .line 156
    new-instance v2, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$2;

    invoke-direct {v2, p0}, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$2;-><init>(Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/narvii/app/NVActivity;->setActionBarRightView(ILandroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    const v2, 0x7f0802b1

    .line 163
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const v1, 0x7f0f03cd

    .line 164
    new-instance v2, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$3;

    invoke-direct {v2, p0}, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$3;-><init>(Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/narvii/app/NVActivity;->setActionBarRightView(ILandroid/view/View$OnClickListener;)V

    .line 172
    :goto_0
    iget-object v1, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->adapter:Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$Adapter;

    if-eqz v1, :cond_3

    if-nez p1, :cond_2

    .line 173
    iget-object v2, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->stickerList:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 174
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v3}, Lcom/narvii/list/NVArrayAdapter;->setList(Ljava/util/ArrayList;)V

    .line 176
    :cond_2
    iget-object v1, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->adapter:Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$Adapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    if-nez p1, :cond_3

    .line 178
    iget-object v1, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->adapter:Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$Adapter;

    invoke-virtual {v1}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 179
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVActivity;->setRightViewEnabled(Z)V

    .line 183
    :cond_3
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->emptyView:Landroid/view/View;

    if-eqz v0, :cond_4

    const v1, 0x7f0903ea

    xor-int/lit8 p1, p1, 0x1

    .line 184
    invoke-static {v0, v1, p1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;IZ)V

    :cond_4
    return-void
.end method
