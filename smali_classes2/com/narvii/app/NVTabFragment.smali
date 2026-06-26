.class public abstract Lcom/narvii/app/NVTabFragment;
.super Lcom/narvii/app/NVFragment;
.source "NVTabFragment.java"


# static fields
.field private static final MAX_TABS:I = 0x8


# instance fields
.field private created:Z

.field private currentIndex:I

.field private fragment:Landroid/support/v4/app/Fragment;

.field private switchListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private tabFragments:[Landroid/support/v4/app/Fragment;

.field private tabGroup:Landroid/widget/RadioGroup;

.field protected updating:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [Landroid/support/v4/app/Fragment;

    .line 20
    iput-object v0, p0, Lcom/narvii/app/NVTabFragment;->tabFragments:[Landroid/support/v4/app/Fragment;

    .line 160
    new-instance v0, Lcom/narvii/app/NVTabFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/app/NVTabFragment$1;-><init>(Lcom/narvii/app/NVTabFragment;)V

    iput-object v0, p0, Lcom/narvii/app/NVTabFragment;->switchListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    return-void
.end method


# virtual methods
.method public canScrollUp()Z
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/narvii/app/NVTabFragment;->fragment:Landroid/support/v4/app/Fragment;

    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    if-eqz v1, :cond_0

    .line 181
    check-cast v0, Lcom/narvii/app/NVFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->canScrollUp()Z

    move-result v0

    return v0

    .line 183
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->canScrollUp()Z

    move-result v0

    return v0
.end method

.method protected abstract createTabFragment(I)Landroid/support/v4/app/Fragment;
.end method

.method public getCurrentFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/narvii/app/NVTabFragment;->fragment:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public getTabFragment(IZ)Landroid/support/v4/app/Fragment;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/narvii/app/NVTabFragment;->tabFragments:[Landroid/support/v4/app/Fragment;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 83
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVTabFragment;->createTabFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 84
    iget-object p2, p0, Lcom/narvii/app/NVTabFragment;->tabFragments:[Landroid/support/v4/app/Fragment;

    aput-object v0, p2, p1

    :cond_0
    return-object v0
.end method

.method public getTabIndex()I
    .locals 1

    .line 90
    iget v0, p0, Lcom/narvii/app/NVTabFragment;->currentIndex:I

    return v0
.end method

.method protected abstract getTabLabel(I)Ljava/lang/CharSequence;
.end method

.method protected itemLayoutId()I
    .locals 1

    .line 105
    sget v0, Lcom/narvii/lib/R$layout;->tab_fragment_button:I

    return v0
.end method

.method public notifyTabChanged()V
    .locals 4

    .line 187
    iget-boolean v0, p0, Lcom/narvii/app/NVTabFragment;->created:Z

    if-nez v0, :cond_0

    return-void

    .line 190
    :cond_0
    iget v0, p0, Lcom/narvii/app/NVTabFragment;->currentIndex:I

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVTabFragment;->getTabLabel(I)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_5

    .line 192
    iget v0, p0, Lcom/narvii/app/NVTabFragment;->currentIndex:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    const/4 v1, -0x1

    if-ltz v0, :cond_2

    .line 193
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVTabFragment;->getTabLabel(I)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    :goto_1
    if-ne v0, v1, :cond_4

    .line 199
    iget v2, p0, Lcom/narvii/app/NVTabFragment;->currentIndex:I

    :goto_2
    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x8

    if-ge v2, v3, :cond_4

    .line 200
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVTabFragment;->getTabLabel(I)Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    goto :goto_2

    :cond_4
    :goto_3
    if-eq v0, v1, :cond_5

    .line 207
    iput v0, p0, Lcom/narvii/app/NVTabFragment;->currentIndex:I

    .line 210
    :cond_5
    invoke-virtual {p0}, Lcom/narvii/app/NVTabFragment;->update()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 64
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/narvii/app/NVTabFragment;->update()V

    const/4 p1, 0x1

    .line 67
    iput-boolean p1, p0, Lcom/narvii/app/NVTabFragment;->created:Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 31
    sget p3, Lcom/narvii/lib/R$layout;->tab_fragment_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 72
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 73
    iget v0, p0, Lcom/narvii/app/NVTabFragment;->currentIndex:I

    const-string v1, "tabIndex"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 36
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 38
    sget v0, Lcom/narvii/lib/R$id;->tab_fragment_group:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioGroup;

    iput-object p1, p0, Lcom/narvii/app/NVTabFragment;->tabGroup:Landroid/widget/RadioGroup;

    .line 39
    iget-object p1, p0, Lcom/narvii/app/NVTabFragment;->tabGroup:Landroid/widget/RadioGroup;

    iget-object v0, p0, Lcom/narvii/app/NVTabFragment;->switchListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    if-eqz p2, :cond_3

    const-string p1, "tabIndex"

    .line 42
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/narvii/app/NVTabFragment;->currentIndex:I

    .line 43
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    .line 44
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_2

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fragment"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 48
    iget-object v2, p0, Lcom/narvii/app/NVTabFragment;->tabFragments:[Landroid/support/v4/app/Fragment;

    aput-object v1, v2, v0

    .line 49
    iget v2, p0, Lcom/narvii/app/NVTabFragment;->currentIndex:I

    if-ne v0, v2, :cond_0

    .line 50
    invoke-virtual {p2, v1}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 51
    iput-object v1, p0, Lcom/narvii/app/NVTabFragment;->fragment:Landroid/support/v4/app/Fragment;

    goto :goto_1

    .line 53
    :cond_0
    invoke-virtual {p2, v1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_2
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_3
    return-void
.end method

.method public setTabIndex(I)V
    .locals 0

    .line 94
    iput p1, p0, Lcom/narvii/app/NVTabFragment;->currentIndex:I

    .line 95
    iget-boolean p1, p0, Lcom/narvii/app/NVTabFragment;->created:Z

    if-eqz p1, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/narvii/app/NVTabFragment;->update()V

    :cond_0
    return-void
.end method

.method public smoothScrollToTop()V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/narvii/app/NVTabFragment;->fragment:Landroid/support/v4/app/Fragment;

    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    if-eqz v1, :cond_0

    .line 172
    check-cast v0, Lcom/narvii/app/NVFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->smoothScrollToTop()V

    goto :goto_0

    .line 174
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->smoothScrollToTop()V

    :goto_0
    return-void
.end method

.method protected update()V
    .locals 7

    const/4 v0, 0x1

    .line 109
    iput-boolean v0, p0, Lcom/narvii/app/NVTabFragment;->updating:Z

    .line 110
    iget-object v1, p0, Lcom/narvii/app/NVTabFragment;->tabGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_5

    const/4 v1, 0x0

    move-object v3, v1

    .line 113
    :goto_0
    iget-object v4, p0, Lcom/narvii/app/NVTabFragment;->tabGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v4}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v4

    const/16 v5, 0x8

    if-ge v4, v5, :cond_1

    if-nez v3, :cond_0

    .line 115
    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVTabFragment;->itemLayoutId()I

    move-result v4

    iget-object v5, p0, Lcom/narvii/app/NVTabFragment;->tabGroup:Landroid/widget/RadioGroup;

    .line 117
    invoke-virtual {v3, v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    .line 119
    iget-object v5, p0, Lcom/narvii/app/NVTabFragment;->tabGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v5}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setId(I)V

    .line 120
    iget-object v5, p0, Lcom/narvii/app/NVTabFragment;->tabGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v5, v4}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v5, :cond_4

    .line 123
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVTabFragment;->getTabLabel(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 124
    iget-object v4, p0, Lcom/narvii/app/NVTabFragment;->tabGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v4, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    if-eqz v3, :cond_3

    .line 126
    invoke-virtual {v4}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 127
    invoke-virtual {v4, v3}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 129
    :cond_2
    invoke-virtual {v4, v2}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto :goto_2

    .line 131
    :cond_3
    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setVisibility(I)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 135
    :cond_4
    iget-object v1, p0, Lcom/narvii/app/NVTabFragment;->tabGroup:Landroid/widget/RadioGroup;

    iget v3, p0, Lcom/narvii/app/NVTabFragment;->currentIndex:I

    invoke-virtual {v1, v3}, Landroid/widget/RadioGroup;->check(I)V

    .line 138
    :cond_5
    iget v1, p0, Lcom/narvii/app/NVTabFragment;->currentIndex:I

    invoke-virtual {p0, v1, v0}, Lcom/narvii/app/NVTabFragment;->getTabFragment(IZ)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 139
    iget-object v1, p0, Lcom/narvii/app/NVTabFragment;->fragment:Landroid/support/v4/app/Fragment;

    if-eq v1, v0, :cond_9

    .line 140
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 141
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 142
    iget-object v3, p0, Lcom/narvii/app/NVTabFragment;->fragment:Landroid/support/v4/app/Fragment;

    if-eqz v3, :cond_6

    .line 143
    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 145
    :cond_6
    iput-object v0, p0, Lcom/narvii/app/NVTabFragment;->fragment:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_8

    .line 147
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fragment"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/narvii/app/NVTabFragment;->currentIndex:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    if-nez v3, :cond_7

    .line 149
    sget v3, Lcom/narvii/lib/R$id;->tab_fragment_container:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/narvii/app/NVTabFragment;->currentIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v0, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_3

    .line 152
    :cond_7
    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 155
    :cond_8
    :goto_3
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 157
    :cond_9
    iput-boolean v2, p0, Lcom/narvii/app/NVTabFragment;->updating:Z

    return-void
.end method
