.class public Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;
.super Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;
.source "OnlineAudioPickerListSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment$Adapter;
    }
.end annotation


# instance fields
.field private qStr:Ljava/lang/String;

.field private searchBar:Lcom/narvii/widget/SearchBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;)Ljava/lang/String;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;->qStr:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;->qStr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;)Lcom/narvii/widget/SearchBar;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    return-object p0
.end method


# virtual methods
.method protected createMainAdapter(Landroid/os/Bundle;)Lcom/narvii/list/NVAdapter;
    .locals 0

    .line 128
    new-instance p1, Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment$Adapter;

    invoke-direct {p1, p0, p0}, Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment$Adapter;-><init>(Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->adapter:Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment$SoundAssetAdapter;

    return-object p1
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "MusicSearchResult"

    return-object v0
.end method

.method protected initPopupWindow(Landroid/view/View;)Landroid/view/View;
    .locals 3

    .line 102
    invoke-super {p0, p1}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->initPopupWindow(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 103
    sget v1, Lcom/narvii/lib/R$id;->sort_select_default:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 104
    sget v1, Lcom/narvii/lib/R$id;->sort_text:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 105
    sget v1, Lcom/narvii/lib/R$string;->relevance:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    return-object v0
.end method

.method public synthetic lambda$onViewCreated$0$OnlineAudioPickerListSearchFragment()V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    invoke-virtual {v0}, Lcom/narvii/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/SoftKeyboard;->showSoftKeyboard(Landroid/widget/EditText;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 36
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActionBar;->hide()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 30
    invoke-super {p0, p1}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 31
    iput p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->selectSortMode:I

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 43
    sget p3, Lcom/narvii/lib/R$layout;->media_audio_online_picker_search_list:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 48
    invoke-super {p0, p1, p2}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 50
    sget p2, Lcom/narvii/lib/R$string;->normal_empty_list:I

    invoke-virtual {p0, p2}, Lcom/narvii/list/NVListFragment;->setEmptyText(I)V

    .line 52
    sget p2, Lcom/narvii/lib/R$id;->search_bar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/SearchBar;

    iput-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    .line 53
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    new-instance p2, Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment$1;

    invoke-direct {p2, p0}, Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment$1;-><init>(Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;)V

    invoke-virtual {p1, p2}, Lcom/narvii/widget/SearchBar;->setOnSearchListener(Lcom/narvii/widget/SearchBar$OnSearchListener;)V

    .line 68
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    new-instance p2, Lcom/narvii/media/online/audio/-$$Lambda$OnlineAudioPickerListSearchFragment$xkIKTQ-NVOzM9pCX7nlwvveCaxg;

    invoke-direct {p2, p0}, Lcom/narvii/media/online/audio/-$$Lambda$OnlineAudioPickerListSearchFragment$xkIKTQ-NVOzM9pCX7nlwvveCaxg;-><init>(Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;)V

    invoke-virtual {p1, p2}, Lcom/narvii/widget/SearchBar;->setClearClickListener(Lcom/narvii/widget/SearchBar$OnClearClickListener;)V

    .line 69
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    move-result p2

    invoke-static {p1, p2}, Lcom/narvii/util/statusbar/StatusBarUtils;->addMarginTopToContentChild(Landroid/view/View;I)V

    .line 71
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    sget p2, Lcom/narvii/lib/R$id;->search_cancel:I

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 72
    new-instance p2, Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment$2;

    invoke-direct {p2, p0}, Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment$2;-><init>(Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setFocusableInTouchMode(Z)V

    .line 80
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->clearFocus()V

    .line 82
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    new-instance p2, Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment$3;

    invoke-direct {p2, p0}, Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment$3;-><init>(Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected presetSubCategoryViewData(Landroid/content/Intent;)V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;->qStr:Ljava/lang/String;

    const-string v1, "q"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method
