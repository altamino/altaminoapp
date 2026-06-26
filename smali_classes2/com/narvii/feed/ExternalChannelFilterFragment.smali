.class public Lcom/narvii/feed/ExternalChannelFilterFragment;
.super Lcom/narvii/list/NVListFragment;
.source "ExternalChannelFilterFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/feed/ExternalChannelFilterFragment$ExternalChannelListAdapter;,
        Lcom/narvii/feed/ExternalChannelFilterFragment$MyDividerAdapter;,
        Lcom/narvii/feed/ExternalChannelFilterFragment$FilterChangeListener;
    }
.end annotation


# instance fields
.field externalChannelListAdapter:Lcom/narvii/feed/ExternalChannelFilterFragment$ExternalChannelListAdapter;

.field filterChangeListener:Lcom/narvii/feed/ExternalChannelFilterFragment$FilterChangeListener;

.field popupBubble:Lcom/narvii/widget/PopupBubble;

.field private selectedFilterChannelId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/feed/ExternalChannelFilterFragment;)Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/narvii/feed/ExternalChannelFilterFragment;->selectedFilterChannelId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/narvii/feed/ExternalChannelFilterFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/narvii/feed/ExternalChannelFilterFragment;->selectedFilterChannelId:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 1

    .line 110
    new-instance p1, Lcom/narvii/feed/ExternalChannelFilterFragment$MyDividerAdapter;

    invoke-direct {p1, p0, p0}, Lcom/narvii/feed/ExternalChannelFilterFragment$MyDividerAdapter;-><init>(Lcom/narvii/feed/ExternalChannelFilterFragment;Lcom/narvii/app/NVContext;)V

    .line 111
    new-instance v0, Lcom/narvii/feed/ExternalChannelFilterFragment$ExternalChannelListAdapter;

    invoke-direct {v0, p0, p0}, Lcom/narvii/feed/ExternalChannelFilterFragment$ExternalChannelListAdapter;-><init>(Lcom/narvii/feed/ExternalChannelFilterFragment;Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/feed/ExternalChannelFilterFragment;->externalChannelListAdapter:Lcom/narvii/feed/ExternalChannelFilterFragment$ExternalChannelListAdapter;

    .line 112
    iget-object v0, p0, Lcom/narvii/feed/ExternalChannelFilterFragment;->externalChannelListAdapter:Lcom/narvii/feed/ExternalChannelFilterFragment$ExternalChannelListAdapter;

    invoke-virtual {p1, v0}, Lcom/narvii/list/DividerAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    return-object p1
.end method

.method protected errorViewLayoutId()I
    .locals 1

    const v0, 0x7f0b0257

    return v0
.end method

.method public getListSelector()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 132
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 133
    sget-object v1, Lcom/narvii/list/NVListFragment;->STATE_PRESSED:[I

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const v3, -0x9a9a9b

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 134
    sget-object v1, Lcom/narvii/list/NVListFragment;->STATE_FOCUSED:[I

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 135
    sget-object v1, Lcom/narvii/list/NVListFragment;->STATE_NORMAL:[I

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public getMenuController()Lcom/narvii/app/NVFragment$MenuController;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isNestedScrollingChild()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 61
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "selectedFilterChannelId"

    .line 63
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/feed/ExternalChannelFilterFragment;->selectedFilterChannelId:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b029e

    const/4 v0, 0x0

    .line 74
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 92
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    const/4 p2, 0x0

    .line 93
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x0

    .line 94
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    const/4 p1, 0x1

    .line 95
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setDarkTheme(Z)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 100
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 101
    iget-object v0, p0, Lcom/narvii/feed/ExternalChannelFilterFragment;->selectedFilterChannelId:Ljava/lang/String;

    const-string v1, "selectedFilterChannelId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 79
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f090869

    .line 80
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/PopupBubble;

    iput-object p1, p0, Lcom/narvii/feed/ExternalChannelFilterFragment;->popupBubble:Lcom/narvii/widget/PopupBubble;

    .line 81
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->getScreenSize(Landroid/app/Activity;)Landroid/graphics/Point;

    move-result-object p1

    .line 82
    iget-object p2, p0, Lcom/narvii/feed/ExternalChannelFilterFragment;->popupBubble:Lcom/narvii/widget/PopupBubble;

    iget p1, p1, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3f333333    # 0.7f

    goto :goto_0

    :cond_0
    const v0, 0x3f4ccccd    # 0.8f

    :goto_0
    mul-float p1, p1, v0

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    move-result v1

    if-eqz v1, :cond_1

    const/high16 v1, 0x41400000    # 12.0f

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    float-to-int p1, p1

    const/4 v0, 0x1

    invoke-virtual {p2, v0, p1}, Lcom/narvii/widget/PopupBubble;->setIndicator(ZI)V

    return-void
.end method

.method public setFilterChangeListener(Lcom/narvii/feed/ExternalChannelFilterFragment$FilterChangeListener;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/narvii/feed/ExternalChannelFilterFragment;->filterChangeListener:Lcom/narvii/feed/ExternalChannelFilterFragment$FilterChangeListener;

    return-void
.end method
