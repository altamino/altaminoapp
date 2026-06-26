.class public Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;
.super Lcom/narvii/app/NVDialog;
.source "SharedStickerCollectionPickerDialog.java"

# interfaces
.implements Lcom/narvii/monetization/sticker/StickerService$StickerCollectionListObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$Adapter;,
        Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$SeeAllAdapter;,
        Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$OnStickerCollectionSelectListener;
    }
.end annotation


# instance fields
.field private adapter:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$Adapter;

.field colorDrawable:Landroid/graphics/drawable/ColorDrawable;

.field context:Lcom/narvii/app/NVContext;

.field count:I

.field dismissing:Z

.field private gradient:Landroid/view/View;

.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/monetization/sticker/model/StickerCollection;",
            ">;"
        }
    .end annotation
.end field

.field protected listView:Lcom/narvii/widget/NVListView;

.field prefHelper:Lcom/narvii/monetization/sticker/shared/SharedStickerPrefHelper;

.field selectListener:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$OnStickerCollectionSelectListener;

.field selectRunnable:Ljava/lang/Runnable;

.field selected:Lcom/narvii/monetization/sticker/model/StickerCollection;

.field stickerService:Lcom/narvii/monetization/sticker/StickerService;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$OnStickerCollectionSelectListener;Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$OnStickerCollectionSelectListener;",
            "Ljava/util/List<",
            "Lcom/narvii/monetization/sticker/model/StickerCollection;",
            ">;I)V"
        }
    .end annotation

    const v0, 0x7f1000d1

    .line 88
    invoke-direct {p0, p1, v0}, Lcom/narvii/app/NVDialog;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 45
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->colorDrawable:Landroid/graphics/drawable/ColorDrawable;

    .line 50
    new-instance v0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$1;

    invoke-direct {v0, p0}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$1;-><init>(Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;)V

    iput-object v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->selectRunnable:Ljava/lang/Runnable;

    .line 89
    iput-object p1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->context:Lcom/narvii/app/NVContext;

    .line 90
    iput-object p2, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->selectListener:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$OnStickerCollectionSelectListener;

    .line 91
    iput-object p3, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->list:Ljava/util/List;

    .line 92
    iput p4, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->count:I

    .line 93
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-static {p2}, Lcom/narvii/util/statusbar/StatusBarUtils;->addTranslucentFlags(Landroid/view/Window;)V

    const-string p2, "sticker"

    .line 94
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/monetization/sticker/StickerService;

    iput-object p2, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    const p2, 0x7f0b0650

    .line 95
    invoke-super {p0, p2}, Landroid/app/Dialog;->setContentView(I)V

    .line 97
    new-instance p2, Lcom/narvii/monetization/sticker/shared/SharedStickerPrefHelper;

    invoke-direct {p2, p1}, Lcom/narvii/monetization/sticker/shared/SharedStickerPrefHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p2, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->prefHelper:Lcom/narvii/monetization/sticker/shared/SharedStickerPrefHelper;

    .line 99
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->setupListView()V

    const p1, 0x7f0904dd

    .line 101
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->gradient:Landroid/view/View;

    const p1, 0x7f09098b

    .line 103
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$2;

    invoke-direct {p2, p0}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$2;-><init>(Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$001(Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;)V
    .locals 0

    .line 36
    invoke-super {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->saveListViewPositionAndTop()V

    return-void
.end method

.method static synthetic access$201(Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;)V
    .locals 0

    .line 36
    invoke-super {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    return-void
.end method

.method private saveListViewPositionAndTop()V
    .locals 3

    .line 170
    iget-object v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->listView:Lcom/narvii/widget/NVListView;

    if-nez v0, :cond_0

    return-void

    .line 173
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 174
    iget-object v1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->listView:Lcom/narvii/widget/NVListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 175
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 176
    :goto_0
    iget-object v1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->prefHelper:Lcom/narvii/monetization/sticker/shared/SharedStickerPrefHelper;

    invoke-virtual {v1, v0, v2}, Lcom/narvii/monetization/sticker/shared/SharedStickerPrefHelper;->saveScrollPositionAndTop(II)V

    return-void
.end method

.method private setupListView()V
    .locals 6

    const v0, 0x102000a

    .line 112
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVListView;

    iput-object v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->listView:Lcom/narvii/widget/NVListView;

    .line 113
    iget-object v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->listView:Lcom/narvii/widget/NVListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 114
    iget-object v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->listView:Lcom/narvii/widget/NVListView;

    const v2, 0x106000d

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelector(I)V

    .line 115
    iget-object v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->listView:Lcom/narvii/widget/NVListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 116
    iget-object v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->listView:Lcom/narvii/widget/NVListView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 117
    new-instance v0, Lcom/narvii/list/MergeAdapter;

    iget-object v2, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->context:Lcom/narvii/app/NVContext;

    invoke-direct {v0, v2}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 119
    new-instance v2, Lcom/narvii/list/StaticViewAdapter;

    invoke-direct {v2}, Lcom/narvii/list/StaticViewAdapter;-><init>()V

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/view/View;

    .line 120
    new-instance v4, Lcom/narvii/widget/StatusBarPlaceHolder;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/narvii/widget/StatusBarPlaceHolder;-><init>(Landroid/content/Context;)V

    aput-object v4, v3, v1

    invoke-virtual {v2, v3}, Lcom/narvii/list/StaticViewAdapter;->addViews([Landroid/view/View;)V

    .line 121
    invoke-virtual {v0, v2}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 123
    new-instance v1, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$SeeAllAdapter;

    iget-object v2, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->context:Lcom/narvii/app/NVContext;

    invoke-direct {v1, p0, v2}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$SeeAllAdapter;-><init>(Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;Lcom/narvii/app/NVContext;)V

    invoke-virtual {v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 125
    new-instance v1, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$Adapter;

    iget-object v2, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->context:Lcom/narvii/app/NVContext;

    const-class v3, Lcom/narvii/monetization/sticker/model/StickerCollection;

    iget-object v4, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->list:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$Adapter;-><init>(Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;Lcom/narvii/app/NVContext;Ljava/lang/Class;Ljava/util/List;)V

    iput-object v1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->adapter:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$Adapter;

    .line 126
    iget-object v1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->adapter:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$Adapter;

    invoke-virtual {v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 128
    iget-object v1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->listView:Lcom/narvii/widget/NVListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 129
    iget-object v1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->listView:Lcom/narvii/widget/NVListView;

    invoke-virtual {v1, v0}, Lcom/narvii/widget/NVListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .line 190
    iget-boolean v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->dismissing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 193
    iput-boolean v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->dismissing:Z

    .line 194
    iget-object v1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    invoke-virtual {v1, p0}, Lcom/narvii/monetization/sticker/StickerService;->removeSharedStickerPackObserver(Lcom/narvii/monetization/sticker/StickerService$StickerCollectionListObserver;)V

    .line 195
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f010021

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 196
    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 197
    new-instance v2, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$3;

    invoke-direct {v2, p0}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$3;-><init>(Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 223
    iget-object v2, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->listView:Lcom/narvii/widget/NVListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 225
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f010047

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 226
    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 227
    iget-object v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->gradient:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public dismissWithoutAnimation()V
    .locals 0

    .line 181
    :try_start_0
    invoke-static {p0}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->access$001(Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onListChanged()V
    .locals 0

    .line 64
    invoke-virtual {p0}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->refreshData()V

    return-void
.end method

.method public onRequestFailed()V
    .locals 0

    return-void
.end method

.method public refreshData()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/StickerService;->getSharedStickerPackList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->list:Ljava/util/List;

    .line 69
    iget-object v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    iget v0, v0, Lcom/narvii/monetization/sticker/StickerService;->sharedStickerPackCount:I

    iget-object v1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->list:Ljava/util/List;

    invoke-static {v1}, Lcom/narvii/util/CollectionUtils;->getSize(Ljava/util/List;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "count is not right : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    iget v1, v1, Lcom/narvii/monetization/sticker/StickerService;->sharedStickerPackCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->list:Ljava/util/List;

    invoke-static {v1}, Lcom/narvii/util/CollectionUtils;->getSize(Ljava/util/List;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    iget v0, v0, Lcom/narvii/monetization/sticker/StickerService;->sharedStickerPackCount:I

    iget-object v1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->list:Ljava/util/List;

    invoke-static {v1}, Lcom/narvii/util/CollectionUtils;->getSize(Ljava/util/List;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->count:I

    .line 73
    iget-object v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->adapter:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$Adapter;

    if-eqz v0, :cond_1

    .line 74
    iget-object v1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->list:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/narvii/list/NVArrayAdapter;->setList(Ljava/util/ArrayList;)V

    :cond_1
    return-void
.end method

.method public setSelectedStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->selected:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 134
    iget-object p1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->adapter:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$Adapter;

    if-eqz p1, :cond_0

    .line 135
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 4

    .line 142
    :try_start_0
    invoke-super {p0}, Lcom/narvii/app/NVDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 147
    :try_start_1
    iget-object v1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->prefHelper:Lcom/narvii/monetization/sticker/shared/SharedStickerPrefHelper;

    invoke-virtual {v1}, Lcom/narvii/monetization/sticker/shared/SharedStickerPrefHelper;->getScrollPosition()I

    move-result v1

    .line 148
    iget-object v2, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->prefHelper:Lcom/narvii/monetization/sticker/shared/SharedStickerPrefHelper;

    invoke-virtual {v2}, Lcom/narvii/monetization/sticker/shared/SharedStickerPrefHelper;->getScrollTop()I

    move-result v2

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 149
    iget-object v3, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->listView:Lcom/narvii/widget/NVListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->listView:Lcom/narvii/widget/NVListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 150
    iget-object v3, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->listView:Lcom/narvii/widget/NVListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 151
    iget-object v3, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->listView:Lcom/narvii/widget/NVListView;

    invoke-virtual {v3, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_0

    .line 153
    :cond_0
    iget-object v1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->listView:Lcom/narvii/widget/NVListView;

    iget-object v2, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->listView:Lcom/narvii/widget/NVListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/widget/ListView;->setSelectionFromTop(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 160
    :catch_1
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    invoke-virtual {v1, p0}, Lcom/narvii/monetization/sticker/StickerService;->addSharedStickerPackListObserver(Lcom/narvii/monetization/sticker/StickerService$StickerCollectionListObserver;)V

    .line 162
    iput-boolean v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->dismissing:Z

    .line 163
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010020

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 164
    iget-object v1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->listView:Lcom/narvii/widget/NVListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 166
    iget-object v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->gradient:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f010046

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
