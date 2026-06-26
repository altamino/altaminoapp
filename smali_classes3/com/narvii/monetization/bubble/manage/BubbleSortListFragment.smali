.class public Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;
.super Lcom/narvii/list/DragSortPageFragment;
.source "BubbleSortListFragment.java"


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

    .line 47
    invoke-direct {p0}, Lcom/narvii/list/DragSortPageFragment;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;->oList:Ljava/util/List;

    .line 54
    new-instance v0, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment$1;-><init>(Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;)V

    iput-object v0, p0, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;)Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment$Adapter;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;->adapter:Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment$Adapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;->updateRightButton()V

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;->saveChanges()V

    return-void
.end method

.method static synthetic access$300(Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;)Ljava/util/List;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;->oList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$302(Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;->oList:Ljava/util/List;

    return-object p1
.end method

.method private saveChanges()V
    .locals 4

    .line 124
    iget-object v0, p0, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;->adapter:Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment$Adapter;

    if-nez v0, :cond_0

    return-void

    .line 128
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 129
    iget-object v0, p0, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;->oList:Ljava/util/List;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 131
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    return-void

    .line 134
    :cond_1
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 135
    new-instance v2, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment$3;

    invoke-direct {v2, p0}, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment$3;-><init>(Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;)V

    iput-object v2, v0, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 143
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v2

    .line 144
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/ChatBubble;

    .line 145
    invoke-virtual {v3}, Lcom/narvii/model/ChatBubble;->id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    goto :goto_0

    .line 147
    :cond_2
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v3, "chat/chat-bubble/reorder"

    invoke-virtual {v1, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v3, "bubbleIdList"

    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    const-string v2, "api"

    .line 148
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/util/http/ApiService;

    .line 149
    iget-object v3, v0, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v2, v1, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 150
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    return-void
.end method

.method private updateRightButton()V
    .locals 3

    .line 105
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/app/NVActivity;

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 107
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080264

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVActivity;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f0f03aa

    .line 108
    new-instance v2, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment$2;

    invoke-direct {v2, p0}, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment$2;-><init>(Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/narvii/app/NVActivity;->setActionBarRightView(ILandroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected createMainAdapter()Lcom/narvii/list/NVPagedAdapter;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;->adapter:Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment$Adapter;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 100
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 101
    invoke-direct {p0}, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;->updateRightButton()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 68
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 69
    new-instance v0, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment$Adapter;

    invoke-direct {v0, p0, p0}, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment$Adapter;-><init>(Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;->adapter:Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment$Adapter;

    const v0, 0x7f0f0be5

    .line 70
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    if-eqz p1, :cond_0

    const-string v0, "olist"

    .line 72
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 73
    const-class v0, Lcom/narvii/model/ChatBubble;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;->oList:Ljava/util/List;

    :cond_0
    const-string p1, "membership"

    .line 75
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/wallet/MembershipService;

    iput-object p1, p0, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;->membershipService:Lcom/narvii/wallet/MembershipService;

    const-string p1, "Chat Bubble (Bar)"

    .line 76
    invoke-static {p0, p1}, Lcom/narvii/monetization/MemberShipExpireWarningFragment;->attachTo(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    .line 77
    iget-object p1, p0, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.narvii.action.MEMBERSHIP_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b02e7

    const/4 v0, 0x0

    .line 90
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 85
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 3

    .line 155
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 156
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v0, 0x0

    const v1, 0x7f0b0659

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;->headerView:Landroid/view/View;

    .line 157
    iget-object p2, p0, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;->headerView:Landroid/view/View;

    const v1, 0x7f090b9a

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const v1, 0x7f0f03b5

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 159
    iget-object p2, p0, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;->headerView:Landroid/view/View;

    const v1, 0x7f090181

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/NVImageView;

    .line 160
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080322

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 161
    invoke-virtual {p2, v0}, Lcom/narvii/widget/NVImageView;->setShowPressedMask(Z)V

    .line 162
    new-instance p2, Lcom/narvii/model/ChatBubble;

    invoke-direct {p2}, Lcom/narvii/model/ChatBubble;-><init>()V

    const/4 v1, -0x1

    .line 163
    iput v1, p2, Lcom/narvii/model/ChatBubble;->type:I

    const v1, 0x7f0f0344

    .line 164
    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/narvii/model/ChatBubble;->name:Ljava/lang/String;

    .line 165
    iget-object v1, p0, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;->headerView:Landroid/view/View;

    const v2, 0x7f0905ea

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/monetization/utils/StoreItemNameView;

    .line 166
    invoke-virtual {v1, p2}, Lcom/narvii/monetization/utils/StoreItemNameView;->setStoreItem(Lcom/narvii/model/IStoreItem;)V

    .line 167
    iget-object p2, p0, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;->headerView:Landroid/view/View;

    const v1, 0x7f09031c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 169
    iget-object p2, p0, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;->headerView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 171
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setDividerHeight(I)V

    const/4 p2, 0x0

    .line 172
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 173
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f06018e

    invoke-static {p2, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setBackgroundColor(I)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 119
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 120
    iget-object v0, p0, Lcom/narvii/monetization/bubble/manage/BubbleSortListFragment;->oList:Ljava/util/List;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "olist"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
