.class public Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/app/FragmentOnBackListener;
.implements Lcom/narvii/media/MediaPickerFragment$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$AddAdapter;,
        Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$Adapter;
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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->deleteList:Ljava/util/ArrayList;

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->editing:Z

    .line 14
    .line 15
    new-instance v0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$1;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$1;-><init>(Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;)V

    .line 19
    .line 20
    iput-object v0, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 21
    return-void
.end method

.method private sendBatchDeleteRequest()V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->stickerList:Ljava/util/ArrayList;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->adapter:Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$Adapter;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    iget-object v2, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->deleteList:Ljava/util/ArrayList;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result v3

    .line 26
    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v3

    .line 32
    .line 33
    check-cast v3, Lcom/narvii/model/Sticker;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Lcom/narvii/model/Sticker;->id()Ljava/lang/String;

    .line 37
    move-result-object v3

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 41
    goto :goto_0

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->size()I

    .line 45
    move-result v2

    .line 46
    const/4 v3, 0x0

    .line 47
    .line 48
    if-nez v2, :cond_2

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v3}, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->setEditing(Z)V

    .line 52
    return-void

    .line 53
    .line 54
    :cond_2
    new-instance v2, Lcom/narvii/util/dialog/ProgressDialog;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 58
    move-result-object v4

    .line 59
    .line 60
    .line 61
    invoke-direct {v2, v4}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 65
    .line 66
    new-instance v4, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$4;

    .line 67
    .line 68
    .line 69
    invoke-direct {v4, p0, v0}, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$4;-><init>(Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;Ljava/util/List;)V

    .line 70
    .line 71
    iput-object v4, v2, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 72
    .line 73
    .line 74
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 75
    move-result-object v0

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 79
    move-result-object v0

    .line 80
    const/4 v4, 0x1

    .line 81
    .line 82
    new-array v4, v4, [Ljava/lang/Object;

    .line 83
    .line 84
    iget-object v5, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->collectionId:Ljava/lang/String;

    .line 85
    .line 86
    aput-object v5, v4, v3

    .line 87
    .line 88
    const-string v3, "sticker-collection/%s/stickers/batch-delete"

    .line 89
    .line 90
    .line 91
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 92
    move-result-object v3

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 96
    move-result-object v0

    .line 97
    .line 98
    const-string v3, "stickerIdList"

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 102
    move-result-object v0

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 106
    move-result-object v0

    .line 107
    .line 108
    const-string v1, "api"

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 112
    move-result-object v1

    .line 113
    .line 114
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 115
    .line 116
    iget-object v2, v2, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 120
    return-void
.end method

.method static bridge synthetic t(Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;)Lcom/narvii/monetization/sticker/StickerHelper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    return-object p0
.end method

.method static bridge synthetic u(Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->sendBatchDeleteRequest()V

    return-void
.end method

.method private updateRightView()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->adapter:Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$Adapter;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-boolean v1, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->editing:Z

    .line 7
    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 16
    move-result v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    check-cast v1, Lcom/narvii/app/NVActivity;

    .line 23
    .line 24
    if-nez v1, :cond_0

    .line 25
    return-void

    .line 26
    .line 27
    :cond_0
    xor-int/lit8 v0, v0, 0x1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v0}, Lcom/narvii/app/NVActivity;->setRightViewEnabled(Z)V

    .line 31
    :cond_1
    return-void
.end method

.method static bridge synthetic v(Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->updateRightView()V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    const/high16 v0, 0x40a00000    # 5.0f

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 10
    move-result p1

    .line 11
    float-to-int v5, p1

    .line 12
    .line 13
    new-instance p1, Lcom/narvii/list/DivideColumnAdapter;

    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x0

    .line 16
    move-object v0, p1

    .line 17
    move-object v1, p0

    .line 18
    move v4, v5

    .line 19
    .line 20
    .line 21
    invoke-direct/range {v0 .. v5}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;IIII)V

    .line 22
    .line 23
    new-instance v0, Lcom/narvii/list/MergeAdapter;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 27
    .line 28
    new-instance v1, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$AddAdapter;

    .line 29
    .line 30
    .line 31
    invoke-direct {v1, p0, p0}, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$AddAdapter;-><init>(Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;Lcom/narvii/app/NVContext;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 35
    .line 36
    new-instance v1, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$Adapter;

    .line 37
    .line 38
    const-class v2, Lcom/narvii/model/Sticker;

    .line 39
    .line 40
    .line 41
    invoke-direct {v1, p0, p0, v2}, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$Adapter;-><init>(Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;Lcom/narvii/app/NVContext;Ljava/lang/Class;)V

    .line 42
    .line 43
    iput-object v1, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->adapter:Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$Adapter;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 47
    const/4 v1, 0x3

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 51
    return-object p1
.end method

.method public getListSelector()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 7
    return-object v0
.end method

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 1

    .line 1
    .line 2
    iget-boolean p1, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->editing:Z

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->setEditing(Z)V

    .line 9
    const/4 p1, 0x1

    .line 10
    return p1

    .line 11
    :cond_0
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
    new-instance p1, Lcom/narvii/monetization/sticker/StickerHelper;

    .line 6
    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/narvii/monetization/sticker/StickerHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    .line 11
    .line 12
    const-string p1, "membership"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    check-cast p1, Lcom/narvii/wallet/MembershipService;

    .line 19
    .line 20
    iput-object p1, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 21
    .line 22
    const-string p1, "sticker"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    check-cast p1, Lcom/narvii/monetization/sticker/StickerService;

    .line 29
    .line 30
    iput-object p1, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    .line 31
    .line 32
    const-string p1, "stickerCollection"

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    const-class v0, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 39
    .line 40
    .line 41
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    check-cast p1, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 45
    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    if-nez v0, :cond_0

    .line 53
    goto :goto_0

    .line 54
    .line 55
    .line 56
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    iput-object p1, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->collectionId:Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    const-string v0, "mediaPicker"

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 69
    move-result-object p1

    .line 70
    .line 71
    check-cast p1, Lcom/narvii/media/MediaPickerFragment;

    .line 72
    .line 73
    iput-object p1, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 74
    .line 75
    if-nez p1, :cond_1

    .line 76
    .line 77
    new-instance p1, Lcom/narvii/media/MediaPickerFragment;

    .line 78
    .line 79
    .line 80
    invoke-direct {p1}, Lcom/narvii/media/MediaPickerFragment;-><init>()V

    .line 81
    .line 82
    iput-object p1, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 86
    move-result-object p1

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 90
    move-result-object p1

    .line 91
    .line 92
    iget-object v1, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 96
    move-result-object p1

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 100
    .line 101
    :cond_1
    iget-object p1, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, p0}, Lcom/narvii/media/MediaPickerFragment;->addOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V

    .line 105
    .line 106
    .line 107
    const p1, 0x7f120749

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 111
    .line 112
    iget-object p1, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 113
    .line 114
    new-instance v0, Landroid/content/IntentFilter;

    .line 115
    .line 116
    const-string v1, "com.narvii.action.MEMBERSHIP_CHANGED"

    .line 117
    .line 118
    .line 119
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 123
    return-void

    .line 124
    .line 125
    .line 126
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 127
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p0}, Lcom/narvii/media/MediaPickerFragment;->removeOnResultListener(Lcom/narvii/media/MediaPickerFragment$OnResultListener;)V

    .line 16
    :cond_0
    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 4
    const/4 p2, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 8
    const/4 p2, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 12
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->collectionId:Ljava/lang/String;

    .line 5
    .line 6
    new-instance v2, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$5;

    .line 7
    .line 8
    .line 9
    invoke-direct {v2, p0}, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$5;-><init>(Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/narvii/monetization/sticker/StickerHelper;->onPickMediaResult(Ljava/util/List;Landroid/os/Bundle;Ljava/lang/String;Lcom/narvii/util/Callback;)V

    .line 13
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    const/4 p1, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->setEditing(Z)V

    .line 8
    return-void
.end method

.method public setEditing(Z)V
    .locals 4

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->editing:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->deleteList:Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    return-void

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->removeRightView()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    .line 30
    const v2, 0x7f0a0079

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    check-cast v1, Landroid/widget/ImageView;

    .line 37
    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    .line 41
    const v2, 0x7f0803b5

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 45
    .line 46
    new-instance v1, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$2;

    .line 47
    .line 48
    .line 49
    invoke-direct {v1, p0}, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$2;-><init>(Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;)V

    .line 50
    .line 51
    .line 52
    const v2, 0x7f120402

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v2, v1}, Lcom/narvii/app/NVActivity;->setActionBarRightView(ILandroid/view/View$OnClickListener;)V

    .line 56
    goto :goto_0

    .line 57
    .line 58
    .line 59
    :cond_1
    const v2, 0x7f0803b8

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 63
    .line 64
    new-instance v1, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$3;

    .line 65
    .line 66
    .line 67
    invoke-direct {v1, p0}, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$3;-><init>(Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;)V

    .line 68
    .line 69
    .line 70
    const v2, 0x7f120438

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v2, v1}, Lcom/narvii/app/NVActivity;->setActionBarRightView(ILandroid/view/View$OnClickListener;)V

    .line 74
    .line 75
    :goto_0
    iget-object v1, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->adapter:Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$Adapter;

    .line 76
    .line 77
    if-eqz v1, :cond_3

    .line 78
    .line 79
    if-nez p1, :cond_2

    .line 80
    .line 81
    iget-object v2, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->stickerList:Ljava/util/ArrayList;

    .line 82
    .line 83
    if-eqz v2, :cond_2

    .line 84
    .line 85
    new-instance v2, Ljava/util/ArrayList;

    .line 86
    .line 87
    iget-object v3, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->stickerList:Ljava/util/ArrayList;

    .line 88
    .line 89
    .line 90
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v2}, Lcom/narvii/list/NVArrayAdapter;->setList(Ljava/util/ArrayList;)V

    .line 94
    .line 95
    :cond_2
    iget-object v1, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->adapter:Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$Adapter;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 99
    .line 100
    if-nez p1, :cond_3

    .line 101
    .line 102
    iget-object v1, p0, Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment;->adapter:Lcom/narvii/monetization/sticker/manage/CustomizedStickerListFragment$Adapter;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    .line 106
    move-result-object v1

    .line 107
    .line 108
    .line 109
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 110
    move-result v1

    .line 111
    .line 112
    xor-int/lit8 v1, v1, 0x1

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVActivity;->setRightViewEnabled(Z)V

    .line 116
    .line 117
    :cond_3
    iget-object v0, p0, Lcom/narvii/list/NVListFragment;->emptyView:Landroid/view/View;

    .line 118
    .line 119
    if-eqz v0, :cond_4

    .line 120
    .line 121
    xor-int/lit8 p1, p1, 0x1

    .line 122
    .line 123
    .line 124
    const v1, 0x7f0a04e9

    .line 125
    .line 126
    .line 127
    invoke-static {v0, v1, p1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;IZ)V

    .line 128
    :cond_4
    return-void
.end method
