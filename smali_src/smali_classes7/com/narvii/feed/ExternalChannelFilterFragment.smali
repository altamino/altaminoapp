.class public Lcom/narvii/feed/ExternalChannelFilterFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/feed/ExternalChannelFilterFragment$FilterChangeListener;,
        Lcom/narvii/feed/ExternalChannelFilterFragment$MyDividerAdapter;,
        Lcom/narvii/feed/ExternalChannelFilterFragment$ExternalChannelListAdapter;
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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    return-void
.end method

.method static bridge synthetic t(Lcom/narvii/feed/ExternalChannelFilterFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/feed/ExternalChannelFilterFragment;->selectedFilterChannelId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic u(Lcom/narvii/feed/ExternalChannelFilterFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/feed/ExternalChannelFilterFragment;->selectedFilterChannelId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 1

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/feed/ExternalChannelFilterFragment$MyDividerAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0, p0}, Lcom/narvii/feed/ExternalChannelFilterFragment$MyDividerAdapter;-><init>(Lcom/narvii/feed/ExternalChannelFilterFragment;Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    new-instance v0, Lcom/narvii/feed/ExternalChannelFilterFragment$ExternalChannelListAdapter;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0, p0}, Lcom/narvii/feed/ExternalChannelFilterFragment$ExternalChannelListAdapter;-><init>(Lcom/narvii/feed/ExternalChannelFilterFragment;Lcom/narvii/app/NVContext;)V

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/feed/ExternalChannelFilterFragment;->externalChannelListAdapter:Lcom/narvii/feed/ExternalChannelFilterFragment$ExternalChannelListAdapter;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/narvii/list/DividerAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 16
    return-object p1
.end method

.method protected errorViewLayoutId()I
    .locals 1

    const v0, 0x7f0d0281

    return v0
.end method

.method public getListSelector()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 6
    .line 7
    sget-object v1, Lcom/narvii/list/NVListFragment;->STATE_PRESSED:[I

    .line 8
    .line 9
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 10
    .line 11
    .line 12
    const v3, -0x9a9a9b

    .line 13
    .line 14
    .line 15
    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 19
    .line 20
    sget-object v1, Lcom/narvii/list/NVListFragment;->STATE_FOCUSED:[I

    .line 21
    .line 22
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 23
    .line 24
    .line 25
    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 29
    .line 30
    sget-object v1, Lcom/narvii/list/NVListFragment;->STATE_NORMAL:[I

    .line 31
    .line 32
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 33
    const/4 v3, 0x0

    .line 34
    .line 35
    .line 36
    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 40
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

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const-string v0, "selectedFilterChannelId"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    iput-object p1, p0, Lcom/narvii/feed/ExternalChannelFilterFragment;->selectedFilterChannelId:Ljava/lang/String;

    .line 14
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d02ce

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
    const/4 p1, 0x1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setDarkTheme(Z)V

    .line 16
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
    const-string v0, "selectedFilterChannelId"

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/feed/ExternalChannelFilterFragment;->selectedFilterChannelId:Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p2, 0x7f0a0b23

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    check-cast p1, Lcom/narvii/widget/PopupBubble;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/narvii/feed/ExternalChannelFilterFragment;->popupBubble:Lcom/narvii/widget/PopupBubble;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Lcom/narvii/util/Utils;->getScreenSize(Landroid/app/Activity;)Landroid/graphics/Point;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    iget-object p2, p0, Lcom/narvii/feed/ExternalChannelFilterFragment;->popupBubble:Lcom/narvii/widget/PopupBubble;

    .line 25
    .line 26
    iget p1, p1, Landroid/graphics/Point;->x:I

    .line 27
    int-to-float p1, p1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    .line 31
    move-result v0

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    .line 36
    const v0, 0x3f333333    # 0.7f

    .line 37
    goto :goto_0

    .line 38
    .line 39
    .line 40
    :cond_0
    const v0, 0x3f4ccccd    # 0.8f

    .line 41
    :goto_0
    mul-float/2addr p1, v0

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->isEmbedFragment()Z

    .line 49
    move-result v1

    .line 50
    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    const/high16 v1, 0x41400000    # 12.0f

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    const/4 v1, 0x0

    .line 56
    .line 57
    .line 58
    :goto_1
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 59
    move-result v0

    .line 60
    float-to-int v0, v0

    .line 61
    int-to-float v0, v0

    .line 62
    sub-float/2addr p1, v0

    .line 63
    float-to-int p1, p1

    .line 64
    const/4 v0, 0x1

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2, v0, p1}, Lcom/narvii/widget/PopupBubble;->setIndicator(ZI)V

    .line 68
    return-void
.end method

.method public setFilterChangeListener(Lcom/narvii/feed/ExternalChannelFilterFragment$FilterChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/feed/ExternalChannelFilterFragment;->filterChangeListener:Lcom/narvii/feed/ExternalChannelFilterFragment$FilterChangeListener;

    return-void
.end method
