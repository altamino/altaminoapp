.class public Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter;,
        Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$TitleAdapter;
    }
.end annotation


# instance fields
.field public adapter:Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter;

.field added:Z

.field private containEditable:Z

.field receiver:Landroid/content/BroadcastReceiver;

.field simpleDateFormat:Ljava/text/SimpleDateFormat;

.field stickerService:Lcom/narvii/monetization/sticker/StickerService;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 6
    .line 7
    const-string v1, "MM/dd/yyyy"

    .line 8
    .line 9
    .line 10
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 11
    move-result-object v2

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 15
    .line 16
    iput-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    .line 17
    .line 18
    new-instance v0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$1;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, p0}, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$1;-><init>(Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;)V

    .line 22
    .line 23
    iput-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 24
    return-void
.end method

.method static bridge synthetic t(Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;->containEditable:Z

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 2

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    new-instance v0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$3;

    .line 8
    .line 9
    .line 10
    const v1, 0x7f12113f

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, p0, p0, v1}, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$3;-><init>(Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;Lcom/narvii/app/NVContext;I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 17
    .line 18
    new-instance v0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, p0, p0}, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter;-><init>(Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;Lcom/narvii/app/NVContext;)V

    .line 22
    .line 23
    iput-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;->adapter:Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter;

    .line 24
    .line 25
    new-instance v0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$4;

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, p0, p0}, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$4;-><init>(Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;Lcom/narvii/app/NVContext;)V

    .line 29
    .line 30
    iget-object v1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;->adapter:Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/narvii/list/DividerAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 34
    const/4 v1, 0x1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 38
    return-object p1
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    const v2, 0x7f0603f8

    .line 21
    .line 22
    .line 23
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 24
    move-result v1

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 31
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f12012e

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 10
    .line 11
    const-string v0, "Sticker (Bar)"

    .line 12
    .line 13
    .line 14
    invoke-static {p0, v0}, Lcom/narvii/monetization/MemberShipExpireWarningFragment;->attachTo(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 15
    .line 16
    const-string v0, "sticker"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    check-cast v0, Lcom/narvii/monetization/sticker/StickerService;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 27
    .line 28
    new-instance v1, Landroid/content/IntentFilter;

    .line 29
    .line 30
    const-string v2, "com.narvii.action.MEMBERSHIP_CHANGED"

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 37
    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    const-string v0, "containEditable"

    .line 41
    const/4 v1, 0x0

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 45
    move-result p1

    .line 46
    .line 47
    iput-boolean p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;->containEditable:Z

    .line 48
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d031e

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
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;->receiver:Landroid/content/BroadcastReceiver;

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
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 8
    const/4 p2, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 12
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;->added:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/narvii/monetization/sticker/StickerService;->refreshStickerCollectionInfo(Z)V

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;->added:Z

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onPause()V

    .line 17
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
    const-string v0, "containEditable"

    .line 6
    .line 7
    iget-boolean v1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;->containEditable:Z

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f0d06ff

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setEmptyView(I)Landroid/view/View;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    const p2, 0x7f0a02de

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    new-instance p2, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$2;

    .line 20
    .line 21
    .line 22
    invoke-direct {p2, p0}, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$2;-><init>(Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    return-void
.end method
