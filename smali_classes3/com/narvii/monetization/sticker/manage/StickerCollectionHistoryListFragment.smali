.class public Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "StickerCollectionHistoryListFragment.java"


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

    .line 54
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 56
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "MM/dd/yyyy"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    .line 63
    new-instance v0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$1;-><init>(Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;)V

    iput-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$002(Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;->containEditable:Z

    return p1
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 2

    .line 122
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 124
    new-instance v0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$3;

    const v1, 0x7f0f1029

    invoke-direct {v0, p0, p0, v1}, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$3;-><init>(Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;Lcom/narvii/app/NVContext;I)V

    .line 133
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 136
    new-instance v0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter;

    invoke-direct {v0, p0, p0}, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter;-><init>(Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;->adapter:Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter;

    .line 137
    new-instance v0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$4;

    invoke-direct {v0, p0, p0}, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$4;-><init>(Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;Lcom/narvii/app/NVContext;)V

    .line 143
    iget-object v1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;->adapter:Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$Adapter;

    invoke-virtual {v0, v1}, Lcom/narvii/list/DividerAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v1, 0x1

    .line 144
    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    return-object p1
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 116
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 117
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06018e

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 77
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0f00f0

    .line 78
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    const-string v0, "Sticker (Bar)"

    .line 79
    invoke-static {p0, v0}, Lcom/narvii/monetization/MemberShipExpireWarningFragment;->attachTo(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    const-string v0, "sticker"

    .line 80
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/monetization/sticker/StickerService;

    iput-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    .line 81
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.narvii.action.MEMBERSHIP_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const-string v1, "containEditable"

    .line 83
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;->containEditable:Z

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b02e9

    const/4 v0, 0x0

    .line 95
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 173
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onDestroy()V

    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 151
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    const/4 p2, 0x0

    .line 152
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x0

    .line 153
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 158
    iget-boolean v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;->added:Z

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;->stickerService:Lcom/narvii/monetization/sticker/StickerService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/narvii/monetization/sticker/StickerService;->refreshStickerCollectionInfo(Z)V

    const/4 v0, 0x0

    .line 160
    iput-boolean v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;->added:Z

    .line 162
    :cond_0
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onPause()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 89
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 90
    iget-boolean v0, p0, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;->containEditable:Z

    const-string v1, "containEditable"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 100
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p1, 0x7f0b0648

    .line 101
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setEmptyView(I)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090224

    .line 102
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 103
    new-instance p2, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$2;

    invoke-direct {p2, p0}, Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment$2;-><init>(Lcom/narvii/monetization/sticker/manage/StickerCollectionHistoryListFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
