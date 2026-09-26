.class public Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;
.super Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;-><init>()V

    .line 4
    return-void
.end method

.method static bridge synthetic A(Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;->qStr:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic B(Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;)Lcom/narvii/widget/SearchBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    return-object p0
.end method

.method static bridge synthetic C(Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;->qStr:Ljava/lang/String;

    return-void
.end method

.method private synthetic lambda$onViewCreated$0()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/narvii/util/SoftKeyboard;->showSoftKeyboard(Landroid/widget/EditText;)V

    .line 10
    return-void
.end method

.method public static synthetic z(Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;->lambda$onViewCreated$0()V

    return-void
.end method


# virtual methods
.method protected createMainAdapter(Landroid/os/Bundle;)Lcom/narvii/list/NVAdapter;
    .locals 0

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment$Adapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0, p0}, Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment$Adapter;-><init>(Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->adapter:Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment$SoundAssetAdapter;

    .line 8
    return-object p1
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "music_search_result"

    return-object v0
.end method

.method protected initPopupWindow(Landroid/view/View;)Landroid/view/View;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->initPopupWindow(Landroid/view/View;)Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget v1, Lcom/narvii/lib/R$id;->sort_select_default:I

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    const/16 v2, 0x8

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    sget v1, Lcom/narvii/lib/R$id;->sort_text:I

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    check-cast p1, Landroid/widget/TextView;

    .line 24
    .line 25
    sget v1, Lcom/narvii/lib/R$string;->relevance:I

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 29
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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/app/ActionBar;->hide()V

    .line 15
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const/4 p1, 0x1

    .line 5
    .line 6
    iput p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->selectSortMode:I

    .line 7
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    sget p3, Lcom/narvii/lib/R$layout;->media_audio_online_picker_search_list:I

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseOnlineListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    sget p2, Lcom/narvii/lib/R$string;->normal_empty_list:I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVListFragment;->setEmptyText(I)V

    .line 9
    .line 10
    sget p2, Lcom/narvii/lib/R$id;->search_bar:I

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    check-cast p1, Lcom/narvii/widget/SearchBar;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    .line 19
    .line 20
    new-instance p2, Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment$1;

    .line 21
    .line 22
    .line 23
    invoke-direct {p2, p0}, Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment$1;-><init>(Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p2}, Lcom/narvii/widget/SearchBar;->setOnSearchListener(Lcom/narvii/widget/SearchBar$OnSearchListener;)V

    .line 27
    .line 28
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    .line 29
    .line 30
    new-instance p2, Lcom/narvii/media/online/audio/e;

    .line 31
    .line 32
    .line 33
    invoke-direct {p2, p0}, Lcom/narvii/media/online/audio/e;-><init>(Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p2}, Lcom/narvii/widget/SearchBar;->setClearClickListener(Lcom/narvii/widget/SearchBar$OnClearClickListener;)V

    .line 37
    .line 38
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    .line 42
    move-result p2

    .line 43
    .line 44
    .line 45
    invoke-static {p1, p2}, Lcom/narvii/util/statusbar/StatusBarUtils;->addMarginTopToContentChild(Landroid/view/View;I)V

    .line 46
    .line 47
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    .line 48
    .line 49
    sget p2, Lcom/narvii/lib/R$id;->search_cancel:I

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    check-cast p1, Landroid/widget/Button;

    .line 56
    .line 57
    new-instance p2, Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment$2;

    .line 58
    .line 59
    .line 60
    invoke-direct {p2, p0}, Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment$2;-><init>(Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    .line 65
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    .line 66
    const/4 p2, 0x1

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 70
    .line 71
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 75
    .line 76
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;->searchBar:Lcom/narvii/widget/SearchBar;

    .line 77
    .line 78
    new-instance p2, Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment$3;

    .line 79
    .line 80
    .line 81
    invoke-direct {p2, p0}, Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment$3;-><init>(Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 85
    return-void
.end method

.method protected presetSubCategoryViewData(Landroid/content/Intent;)V
    .locals 2

    .line 1
    .line 2
    const-string v0, "q"

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerListSearchFragment;->qStr:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    return-void
.end method
