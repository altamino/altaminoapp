.class public Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;
.super Lcom/narvii/list/DragSortPageFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment$Adapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/DragSortPageFragment<",
        "Lcom/narvii/model/ChatBubble;",
        ">;"
    }
.end annotation


# instance fields
.field private adapter:Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment$Adapter;

.field private headerView:Landroid/view/View;

.field private membershipService:Lcom/narvii/wallet/MembershipService;

.field private oList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/ChatBubble;",
            ">;"
        }
    .end annotation
.end field

.field receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/DragSortPageFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;->oList:Ljava/util/List;

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment$1;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment$1;-><init>(Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;)V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 18
    return-void
.end method

.method private saveChanges()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;->adapter:Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment$Adapter;

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
    iget-object v1, p0, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;->adapter:Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment$Adapter;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;->oList:Ljava/util/List;

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
    new-instance v2, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment$3;

    .line 42
    .line 43
    .line 44
    invoke-direct {v2, p0}, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment$3;-><init>(Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;)V

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
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    move-result v3

    .line 59
    .line 60
    if-eqz v3, :cond_2

    .line 61
    .line 62
    .line 63
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    move-result-object v3

    .line 65
    .line 66
    check-cast v3, Lcom/narvii/model/ChatBubble;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3}, Lcom/narvii/model/ChatBubble;->id()Ljava/lang/String;

    .line 70
    move-result-object v3

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 74
    goto :goto_0

    .line 75
    .line 76
    .line 77
    :cond_2
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 78
    move-result-object v0

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 82
    move-result-object v0

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 86
    move-result-object v0

    .line 87
    .line 88
    const-string v3, "chat/chat-bubble/reorder"

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 92
    move-result-object v0

    .line 93
    .line 94
    const-string v3, "bubbleIdList"

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 98
    move-result-object v0

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 102
    move-result-object v0

    .line 103
    .line 104
    const-string v2, "api"

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 108
    move-result-object v2

    .line 109
    .line 110
    check-cast v2, Lcom/narvii/util/http/ApiService;

    .line 111
    .line 112
    iget-object v3, v1, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2, v0, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 119
    return-void
.end method

.method static bridge synthetic u(Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;)Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment$Adapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;->adapter:Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment$Adapter;

    return-object p0
.end method

.method private updateRightButton()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v0, v0, Lcom/narvii/app/NVActivity;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    const v2, 0x7f080369

    .line 22
    .line 23
    .line 24
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVActivity;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 29
    .line 30
    new-instance v1, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment$2;

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, p0}, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment$2;-><init>(Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;)V

    .line 34
    .line 35
    .line 36
    const v2, 0x7f120402

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v2, v1}, Lcom/narvii/app/NVActivity;->setActionBarRightView(ILandroid/view/View$OnClickListener;)V

    .line 40
    :cond_0
    return-void
.end method

.method static bridge synthetic v(Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;->oList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic w(Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;->oList:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic x(Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;->saveChanges()V

    return-void
.end method

.method static bridge synthetic y(Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;->updateRightButton()V

    return-void
.end method


# virtual methods
.method protected createMainAdapter()Lcom/narvii/list/NVPagedAdapter;
    .locals 1

    iget-object v0, p0, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;->adapter:Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment$Adapter;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;->updateRightButton()V

    .line 7
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment$Adapter;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0, p0}, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment$Adapter;-><init>(Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;Lcom/narvii/app/NVContext;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;->adapter:Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment$Adapter;

    .line 11
    .line 12
    .line 13
    const v0, 0x7f120d10

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    const-string v0, "olist"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    const-class v0, Lcom/narvii/model/ChatBubble;

    .line 27
    .line 28
    .line 29
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    iput-object p1, p0, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;->oList:Ljava/util/List;

    .line 33
    .line 34
    :cond_0
    const-string p1, "membership"

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    check-cast p1, Lcom/narvii/wallet/MembershipService;

    .line 41
    .line 42
    iput-object p1, p0, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 43
    .line 44
    const-string p1, "Chat Bubble (Bar)"

    .line 45
    .line 46
    .line 47
    invoke-static {p0, p1}, Lcom/narvii/monetization/MemberShipExpireWarningFragment;->attachTo(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 48
    .line 49
    iget-object p1, p0, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 50
    .line 51
    new-instance v0, Landroid/content/IntentFilter;

    .line 52
    .line 53
    const-string v1, "com.narvii.action.MEMBERSHIP_CHANGED"

    .line 54
    .line 55
    .line 56
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 60
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d031c

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
    iget-object v0, p0, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;->receiver:Landroid/content/BroadcastReceiver;

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
    const v0, 0x7f0d0710

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
    iput-object p2, p0, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;->headerView:Landroid/view/View;

    .line 22
    .line 23
    .line 24
    const v0, 0x7f0a0e9e

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    move-result-object p2

    .line 29
    .line 30
    check-cast p2, Landroid/widget/TextView;

    .line 31
    .line 32
    .line 33
    const v0, 0x7f12040d

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 37
    .line 38
    iget-object p2, p0, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;->headerView:Landroid/view/View;

    .line 39
    .line 40
    .line 41
    const v0, 0x7f0a022b

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    move-result-object p2

    .line 46
    .line 47
    check-cast p2, Lcom/narvii/widget/NVImageView;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    .line 54
    const v2, 0x7f08042d

    .line 55
    .line 56
    .line 57
    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2, v0}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, v1}, Lcom/narvii/widget/NVImageView;->setShowPressedMask(Z)V

    .line 65
    .line 66
    new-instance p2, Lcom/narvii/model/ChatBubble;

    .line 67
    .line 68
    .line 69
    invoke-direct {p2}, Lcom/narvii/model/ChatBubble;-><init>()V

    .line 70
    const/4 v0, -0x1

    .line 71
    .line 72
    iput v0, p2, Lcom/narvii/model/ChatBubble;->type:I

    .line 73
    .line 74
    .line 75
    const v0, 0x7f120399

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 79
    move-result-object v0

    .line 80
    .line 81
    iput-object v0, p2, Lcom/narvii/model/ChatBubble;->name:Ljava/lang/String;

    .line 82
    .line 83
    iget-object v0, p0, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;->headerView:Landroid/view/View;

    .line 84
    .line 85
    .line 86
    const v2, 0x7f0a076a

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 90
    move-result-object v0

    .line 91
    .line 92
    check-cast v0, Lcom/narvii/monetization/utils/StoreItemNameView;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, p2}, Lcom/narvii/monetization/utils/StoreItemNameView;->setStoreItem(Lcom/narvii/model/IStoreItem;)V

    .line 96
    .line 97
    iget-object p2, p0, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;->headerView:Landroid/view/View;

    .line 98
    .line 99
    .line 100
    const v0, 0x7f0a03f5

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 104
    move-result-object p2

    .line 105
    .line 106
    const/16 v0, 0x8

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 110
    .line 111
    iget-object p2, p0, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;->headerView:Landroid/view/View;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 118
    const/4 p2, 0x0

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 125
    move-result-object p2

    .line 126
    .line 127
    .line 128
    const v0, 0x7f0603f8

    .line 129
    .line 130
    .line 131
    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 132
    move-result p2

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 136
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
    iget-object v0, p0, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;->oList:Ljava/util/List;

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
    return-void
.end method
