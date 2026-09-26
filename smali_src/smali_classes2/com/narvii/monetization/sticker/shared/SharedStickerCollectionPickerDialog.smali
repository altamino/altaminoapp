.class public Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;
.super Lcom/narvii/app/NVDialog;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/monetization/sticker/StickerService$StickerCollectionListObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$Adapter;,
        Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$OnStickerCollectionSelectListener;,
        Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$SeeAllAdapter;
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

    .line 1
    .line 2
    .line 3
    const v0, 0x7f130160

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, v0}, Lcom/narvii/app/NVDialog;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 7
    .line 8
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 9
    const/4 v1, -0x1

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->colorDrawable:Landroid/graphics/drawable/ColorDrawable;

    .line 15
    .line 16
    new-instance v0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$1;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$1;-><init>(Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;)V

    .line 20
    .line 21
    iput-object v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->selectRunnable:Ljava/lang/Runnable;

    .line 22
    .line 23
    iput-object p1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->context:Lcom/narvii/app/NVContext;

    .line 24
    .line 25
    iput-object p2, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->selectListener:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$OnStickerCollectionSelectListener;

    .line 26
    .line 27
    iput-object p3, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->list:Ljava/util/List;

    .line 28
    .line 29
    iput p4, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->count:I

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 33
    move-result-object p2

    .line 34
    .line 35
    .line 36
    invoke-static {p2}, Lcom/narvii/util/statusbar/StatusBarUtils;->addTranslucentFlags(Landroid/view/Window;)V

    .line 37
    .line 38
    const-string p2, "sticker"

    .line 39
    .line 40
    .line 41
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 42
    move-result-object p2

    .line 43
    .line 44
    check-cast p2, Lcom/narvii/monetization/sticker/StickerService;

    .line 45
    .line 46
    iput-object p2, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    .line 47
    .line 48
    .line 49
    const p2, 0x7f0d0707

    .line 50
    .line 51
    .line 52
    invoke-super {p0, p2}, Landroid/app/Dialog;->setContentView(I)V

    .line 53
    .line 54
    new-instance p2, Lcom/narvii/monetization/sticker/shared/SharedStickerPrefHelper;

    .line 55
    .line 56
    .line 57
    invoke-direct {p2, p1}, Lcom/narvii/monetization/sticker/shared/SharedStickerPrefHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 58
    .line 59
    iput-object p2, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->prefHelper:Lcom/narvii/monetization/sticker/shared/SharedStickerPrefHelper;

    .line 60
    .line 61
    .line 62
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->setupListView()V

    .line 63
    .line 64
    .line 65
    const p1, 0x7f0a062a

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 69
    move-result-object p1

    .line 70
    .line 71
    iput-object p1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->gradient:Landroid/view/View;

    .line 72
    .line 73
    .line 74
    const p1, 0x7f0a0c4c

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 78
    move-result-object p1

    .line 79
    .line 80
    new-instance p2, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$2;

    .line 81
    .line 82
    .line 83
    invoke-direct {p2, p0}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$2;-><init>(Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->saveListViewPositionAndTop()V

    return-void
.end method

.method static synthetic access$001(Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 4
    return-void
.end method

.method static synthetic access$101(Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 4
    return-void
.end method

.method private saveListViewPositionAndTop()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->listView:Lcom/narvii/widget/NVListView;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 9
    move-result v0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->listView:Lcom/narvii/widget/NVListView;

    .line 12
    const/4 v2, 0x0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    goto :goto_0

    .line 20
    .line 21
    .line 22
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 23
    move-result v2

    .line 24
    .line 25
    :goto_0
    iget-object v1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->prefHelper:Lcom/narvii/monetization/sticker/shared/SharedStickerPrefHelper;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v0, v2}, Lcom/narvii/monetization/sticker/shared/SharedStickerPrefHelper;->saveScrollPositionAndTop(II)V

    .line 29
    return-void
.end method

.method private setupListView()V
    .locals 6

    .line 1
    .line 2
    .line 3
    const v0, 0x102000a

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    check-cast v0, Lcom/narvii/widget/NVListView;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->listView:Lcom/narvii/widget/NVListView;

    .line 12
    const/4 v1, 0x0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setCacheColorHint(I)V

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->listView:Lcom/narvii/widget/NVListView;

    .line 18
    .line 19
    .line 20
    const v2, 0x106000d

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->setSelector(I)V

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->listView:Lcom/narvii/widget/NVListView;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 29
    .line 30
    iget-object v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->listView:Lcom/narvii/widget/NVListView;

    .line 31
    const/4 v2, 0x0

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 35
    .line 36
    new-instance v0, Lcom/narvii/list/MergeAdapter;

    .line 37
    .line 38
    iget-object v2, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->context:Lcom/narvii/app/NVContext;

    .line 39
    .line 40
    .line 41
    invoke-direct {v0, v2}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 42
    .line 43
    new-instance v2, Lcom/narvii/list/StaticViewAdapter;

    .line 44
    .line 45
    .line 46
    invoke-direct {v2}, Lcom/narvii/list/StaticViewAdapter;-><init>()V

    .line 47
    const/4 v3, 0x1

    .line 48
    .line 49
    new-array v3, v3, [Landroid/view/View;

    .line 50
    .line 51
    new-instance v4, Lcom/narvii/widget/StatusBarPlaceHolder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 55
    move-result-object v5

    .line 56
    .line 57
    .line 58
    invoke-direct {v4, v5}, Lcom/narvii/widget/StatusBarPlaceHolder;-><init>(Landroid/content/Context;)V

    .line 59
    .line 60
    aput-object v4, v3, v1

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v3}, Lcom/narvii/list/StaticViewAdapter;->addViews([Landroid/view/View;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v2}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 67
    .line 68
    new-instance v1, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$SeeAllAdapter;

    .line 69
    .line 70
    iget-object v2, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->context:Lcom/narvii/app/NVContext;

    .line 71
    .line 72
    .line 73
    invoke-direct {v1, p0, v2}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$SeeAllAdapter;-><init>(Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;Lcom/narvii/app/NVContext;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 77
    .line 78
    new-instance v1, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$Adapter;

    .line 79
    .line 80
    iget-object v2, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->context:Lcom/narvii/app/NVContext;

    .line 81
    .line 82
    const-class v3, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 83
    .line 84
    iget-object v4, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->list:Ljava/util/List;

    .line 85
    .line 86
    .line 87
    invoke-direct {v1, p0, v2, v3, v4}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$Adapter;-><init>(Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;Lcom/narvii/app/NVContext;Ljava/lang/Class;Ljava/util/List;)V

    .line 88
    .line 89
    iput-object v1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->adapter:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$Adapter;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 93
    .line 94
    iget-object v1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->listView:Lcom/narvii/widget/NVListView;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 98
    .line 99
    iget-object v1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->listView:Lcom/narvii/widget/NVListView;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v0}, Lcom/narvii/widget/NVListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 103
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->dismissing:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->dismissing:Z

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p0}, Lcom/narvii/monetization/sticker/StickerService;->removeSharedStickerPackObserver(Lcom/narvii/monetization/sticker/StickerService$StickerCollectionListObserver;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    const v2, 0x7f01002f

    .line 21
    .line 22
    .line 23
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 28
    .line 29
    new-instance v2, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$3;

    .line 30
    .line 31
    .line 32
    invoke-direct {v2, p0}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$3;-><init>(Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 36
    .line 37
    iget-object v2, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->listView:Lcom/narvii/widget/NVListView;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    .line 47
    const v2, 0x7f010065

    .line 48
    .line 49
    .line 50
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 55
    .line 56
    iget-object v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->gradient:Landroid/view/View;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 60
    return-void
.end method

.method public dismissWithoutAnimation()V
    .locals 0

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-static {p0}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->access$001(Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :catch_0
    return-void
.end method

.method public onListChanged()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->refreshData()V

    .line 4
    return-void
.end method

.method public onRequestFailed()V
    .locals 0

    return-void
.end method

.method public refreshData()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/StickerService;->getSharedStickerPackList()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iput-object v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->list:Ljava/util/List;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    .line 11
    .line 12
    iget v1, v1, Lcom/narvii/monetization/sticker/StickerService;->sharedStickerPackCount:I

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->getSize(Ljava/util/List;)I

    .line 16
    move-result v0

    .line 17
    .line 18
    if-ge v1, v0, :cond_0

    .line 19
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    const-string v1, "count is not right : "

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    .line 31
    .line 32
    iget v1, v1, Lcom/narvii/monetization/sticker/StickerService;->sharedStickerPackCount:I

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v1, "-"

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->list:Ljava/util/List;

    .line 43
    .line 44
    .line 45
    invoke-static {v1}, Lcom/narvii/util/CollectionUtils;->getSize(Ljava/util/List;)I

    .line 46
    move-result v1

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    .line 56
    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 57
    .line 58
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    .line 59
    .line 60
    iget v0, v0, Lcom/narvii/monetization/sticker/StickerService;->sharedStickerPackCount:I

    .line 61
    .line 62
    iget-object v1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->list:Ljava/util/List;

    .line 63
    .line 64
    .line 65
    invoke-static {v1}, Lcom/narvii/util/CollectionUtils;->getSize(Ljava/util/List;)I

    .line 66
    move-result v1

    .line 67
    .line 68
    .line 69
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 70
    move-result v0

    .line 71
    .line 72
    iput v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->count:I

    .line 73
    .line 74
    iget-object v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->adapter:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$Adapter;

    .line 75
    .line 76
    if-eqz v0, :cond_1

    .line 77
    .line 78
    iget-object v1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->list:Ljava/util/List;

    .line 79
    .line 80
    check-cast v1, Ljava/util/ArrayList;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Lcom/narvii/list/NVArrayAdapter;->setList(Ljava/util/ArrayList;)V

    .line 84
    :cond_1
    return-void
.end method

.method public setSelectedStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->selected:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->adapter:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog$Adapter;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 10
    :cond_0
    return-void
.end method

.method public show()V
    .locals 4

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-super {p0}, Lcom/narvii/app/NVDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :catch_0
    const/4 v0, 0x0

    .line 5
    .line 6
    :try_start_1
    iget-object v1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->prefHelper:Lcom/narvii/monetization/sticker/shared/SharedStickerPrefHelper;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/narvii/monetization/sticker/shared/SharedStickerPrefHelper;->getScrollPosition()I

    .line 10
    move-result v1

    .line 11
    .line 12
    iget-object v2, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->prefHelper:Lcom/narvii/monetization/sticker/shared/SharedStickerPrefHelper;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/narvii/monetization/sticker/shared/SharedStickerPrefHelper;->getScrollTop()I

    .line 16
    move-result v2

    .line 17
    const/4 v3, -0x1

    .line 18
    .line 19
    if-eq v1, v3, :cond_1

    .line 20
    .line 21
    iget-object v3, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->listView:Lcom/narvii/widget/NVListView;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 25
    move-result-object v3

    .line 26
    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    iget-object v3, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->listView:Lcom/narvii/widget/NVListView;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 33
    move-result-object v3

    .line 34
    .line 35
    .line 36
    invoke-interface {v3}, Landroid/widget/Adapter;->getCount()I

    .line 37
    move-result v3

    .line 38
    .line 39
    if-lez v3, :cond_1

    .line 40
    .line 41
    iget-object v3, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->listView:Lcom/narvii/widget/NVListView;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 45
    move-result-object v3

    .line 46
    .line 47
    .line 48
    invoke-interface {v3}, Landroid/widget/Adapter;->getCount()I

    .line 49
    move-result v3

    .line 50
    .line 51
    if-ge v1, v3, :cond_0

    .line 52
    .line 53
    iget-object v3, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->listView:Lcom/narvii/widget/NVListView;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3, v1, v2}, Landroid/widget/AbsListView;->setSelectionFromTop(II)V

    .line 57
    goto :goto_0

    .line 58
    .line 59
    :cond_0
    iget-object v1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->listView:Lcom/narvii/widget/NVListView;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 63
    move-result-object v2

    .line 64
    .line 65
    .line 66
    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    .line 67
    move-result v2

    .line 68
    .line 69
    add-int/lit8 v2, v2, -0x1

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v2, v0}, Landroid/widget/AbsListView;->setSelectionFromTop(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 73
    .line 74
    :catch_1
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, p0}, Lcom/narvii/monetization/sticker/StickerService;->addSharedStickerPackListObserver(Lcom/narvii/monetization/sticker/StickerService$StickerCollectionListObserver;)V

    .line 78
    .line 79
    iput-boolean v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->dismissing:Z

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 83
    move-result-object v0

    .line 84
    .line 85
    .line 86
    const v1, 0x7f01002e

    .line 87
    .line 88
    .line 89
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 90
    move-result-object v0

    .line 91
    .line 92
    iget-object v1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->listView:Lcom/narvii/widget/NVListView;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 96
    .line 97
    iget-object v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionPickerDialog;->gradient:Landroid/view/View;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 101
    move-result-object v1

    .line 102
    .line 103
    .line 104
    const v2, 0x7f010064

    .line 105
    .line 106
    .line 107
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 108
    move-result-object v1

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 112
    return-void
.end method
