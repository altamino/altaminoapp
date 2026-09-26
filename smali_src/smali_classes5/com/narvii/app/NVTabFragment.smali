.class public abstract Lcom/narvii/app/NVTabFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"


# static fields
.field private static final MAX_TABS:I = 0x8


# instance fields
.field private created:Z

.field private currentIndex:I

.field private fragment:Landroidx/fragment/app/Fragment;

.field private switchListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private tabFragments:[Landroidx/fragment/app/Fragment;

.field private tabGroup:Landroid/widget/RadioGroup;

.field protected updating:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    .line 5
    const/16 v0, 0x8

    .line 6
    .line 7
    new-array v0, v0, [Landroidx/fragment/app/Fragment;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/narvii/app/NVTabFragment;->tabFragments:[Landroidx/fragment/app/Fragment;

    .line 10
    .line 11
    new-instance v0, Lcom/narvii/app/NVTabFragment$1;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, p0}, Lcom/narvii/app/NVTabFragment$1;-><init>(Lcom/narvii/app/NVTabFragment;)V

    .line 15
    .line 16
    iput-object v0, p0, Lcom/narvii/app/NVTabFragment;->switchListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 17
    return-void
.end method


# virtual methods
.method public canScrollUp()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/NVTabFragment;->fragment:Landroidx/fragment/app/Fragment;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/app/NVFragment;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->canScrollUp()Z

    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->canScrollUp()Z

    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method protected abstract createTabFragment(I)Landroidx/fragment/app/Fragment;
.end method

.method public getCurrentFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    iget-object v0, p0, Lcom/narvii/app/NVTabFragment;->fragment:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public getTabFragment(IZ)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/NVTabFragment;->tabFragments:[Landroidx/fragment/app/Fragment;

    .line 3
    .line 4
    aget-object v0, v0, p1

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVTabFragment;->createTabFragment(I)Landroidx/fragment/app/Fragment;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iget-object p2, p0, Lcom/narvii/app/NVTabFragment;->tabFragments:[Landroidx/fragment/app/Fragment;

    .line 15
    .line 16
    aput-object v0, p2, p1

    .line 17
    :cond_0
    return-object v0
.end method

.method public getTabIndex()I
    .locals 1

    iget v0, p0, Lcom/narvii/app/NVTabFragment;->currentIndex:I

    return v0
.end method

.method protected abstract getTabLabel(I)Ljava/lang/CharSequence;
.end method

.method protected itemLayoutId()I
    .locals 1

    sget v0, Lcom/narvii/lib/R$layout;->tab_fragment_button:I

    return v0
.end method

.method public notifyTabChanged()V
    .locals 4

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/app/NVTabFragment;->created:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget v0, p0, Lcom/narvii/app/NVTabFragment;->currentIndex:I

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVTabFragment;->getTabLabel(I)Ljava/lang/CharSequence;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    if-nez v0, :cond_5

    .line 14
    .line 15
    iget v0, p0, Lcom/narvii/app/NVTabFragment;->currentIndex:I

    .line 16
    .line 17
    add-int/lit8 v0, v0, -0x1

    .line 18
    :goto_0
    const/4 v1, -0x1

    .line 19
    .line 20
    if-ltz v0, :cond_2

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVTabFragment;->getTabLabel(I)Ljava/lang/CharSequence;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    goto :goto_1

    .line 28
    .line 29
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_2
    move v0, v1

    .line 32
    .line 33
    :goto_1
    if-ne v0, v1, :cond_4

    .line 34
    .line 35
    iget v2, p0, Lcom/narvii/app/NVTabFragment;->currentIndex:I

    .line 36
    .line 37
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 38
    .line 39
    const/16 v3, 0x8

    .line 40
    .line 41
    if-ge v2, v3, :cond_4

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVTabFragment;->getTabLabel(I)Ljava/lang/CharSequence;

    .line 45
    move-result-object v3

    .line 46
    .line 47
    if-eqz v3, :cond_3

    .line 48
    move v0, v2

    .line 49
    goto :goto_3

    .line 50
    :cond_3
    goto :goto_2

    .line 51
    .line 52
    :cond_4
    :goto_3
    if-eq v0, v1, :cond_5

    .line 53
    .line 54
    iput v0, p0, Lcom/narvii/app/NVTabFragment;->currentIndex:I

    .line 55
    .line 56
    .line 57
    :cond_5
    invoke-virtual {p0}, Lcom/narvii/app/NVTabFragment;->update()V

    .line 58
    return-void
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
    invoke-virtual {p0}, Lcom/narvii/app/NVTabFragment;->update()V

    .line 7
    const/4 p1, 0x1

    .line 8
    .line 9
    iput-boolean p1, p0, Lcom/narvii/app/NVTabFragment;->created:Z

    .line 10
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    sget p3, Lcom/narvii/lib/R$layout;->tab_fragment_layout:I

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

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "tabIndex"

    .line 6
    .line 7
    iget v1, p0, Lcom/narvii/app/NVTabFragment;->currentIndex:I

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 11
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    sget v0, Lcom/narvii/lib/R$id;->tab_fragment_group:I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    check-cast p1, Landroid/widget/RadioGroup;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/narvii/app/NVTabFragment;->tabGroup:Landroid/widget/RadioGroup;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/app/NVTabFragment;->switchListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 19
    .line 20
    if-eqz p2, :cond_3

    .line 21
    .line 22
    const-string p1, "tabIndex"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 26
    move-result p1

    .line 27
    .line 28
    iput p1, p0, Lcom/narvii/app/NVTabFragment;->currentIndex:I

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 36
    move-result-object p2

    .line 37
    const/4 v0, 0x0

    .line 38
    .line 39
    :goto_0
    const/16 v1, 0x8

    .line 40
    .line 41
    if-ge v0, v1, :cond_2

    .line 42
    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    const-string v2, "fragment"

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object v1

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    if-eqz v1, :cond_1

    .line 65
    .line 66
    iget-object v2, p0, Lcom/narvii/app/NVTabFragment;->tabFragments:[Landroidx/fragment/app/Fragment;

    .line 67
    .line 68
    aput-object v1, v2, v0

    .line 69
    .line 70
    iget v2, p0, Lcom/narvii/app/NVTabFragment;->currentIndex:I

    .line 71
    .line 72
    if-ne v0, v2, :cond_0

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, v1}, Landroidx/fragment/app/FragmentTransaction;->E(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 76
    .line 77
    iput-object v1, p0, Lcom/narvii/app/NVTabFragment;->fragment:Landroidx/fragment/app/Fragment;

    .line 78
    goto :goto_1

    .line 79
    .line 80
    .line 81
    :cond_0
    invoke-virtual {p2, v1}, Landroidx/fragment/app/FragmentTransaction;->r(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 82
    .line 83
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 84
    goto :goto_0

    .line 85
    .line 86
    .line 87
    :cond_2
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 88
    :cond_3
    return-void
.end method

.method public setTabIndex(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/app/NVTabFragment;->currentIndex:I

    .line 3
    .line 4
    iget-boolean p1, p0, Lcom/narvii/app/NVTabFragment;->created:Z

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/app/NVTabFragment;->update()V

    .line 10
    :cond_0
    return-void
.end method

.method public smoothScrollToTop()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/NVTabFragment;->fragment:Landroidx/fragment/app/Fragment;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/app/NVFragment;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->smoothScrollToTop()V

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->smoothScrollToTop()V

    .line 16
    :goto_0
    return-void
.end method

.method protected update()V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/app/NVTabFragment;->updating:Z

    .line 4
    .line 5
    iget-object v1, p0, Lcom/narvii/app/NVTabFragment;->tabGroup:Landroid/widget/RadioGroup;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    if-nez v1, :cond_5

    .line 13
    const/4 v1, 0x0

    .line 14
    move-object v3, v1

    .line 15
    .line 16
    :goto_0
    iget-object v4, p0, Lcom/narvii/app/NVTabFragment;->tabGroup:Landroid/widget/RadioGroup;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    .line 20
    move-result v4

    .line 21
    .line 22
    const/16 v5, 0x8

    .line 23
    .line 24
    if-ge v4, v5, :cond_1

    .line 25
    .line 26
    if-nez v3, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    .line 30
    move-result-object v3

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVTabFragment;->itemLayoutId()I

    .line 34
    move-result v4

    .line 35
    .line 36
    iget-object v5, p0, Lcom/narvii/app/NVTabFragment;->tabGroup:Landroid/widget/RadioGroup;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3, v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 40
    move-result-object v4

    .line 41
    .line 42
    check-cast v4, Landroid/widget/RadioButton;

    .line 43
    .line 44
    iget-object v5, p0, Lcom/narvii/app/NVTabFragment;->tabGroup:Landroid/widget/RadioGroup;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    .line 48
    move-result v5

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4, v5}, Landroid/view/View;->setId(I)V

    .line 52
    .line 53
    iget-object v5, p0, Lcom/narvii/app/NVTabFragment;->tabGroup:Landroid/widget/RadioGroup;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    move v1, v2

    .line 59
    .line 60
    :goto_1
    if-ge v1, v5, :cond_4

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVTabFragment;->getTabLabel(I)Ljava/lang/CharSequence;

    .line 64
    move-result-object v3

    .line 65
    .line 66
    iget-object v4, p0, Lcom/narvii/app/NVTabFragment;->tabGroup:Landroid/widget/RadioGroup;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 70
    move-result-object v4

    .line 71
    .line 72
    check-cast v4, Landroid/widget/RadioButton;

    .line 73
    .line 74
    if-eqz v3, :cond_3

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 78
    move-result-object v6

    .line 79
    .line 80
    .line 81
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 82
    move-result-object v6

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 86
    move-result v6

    .line 87
    .line 88
    if-nez v6, :cond_2

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    .line 93
    .line 94
    :cond_2
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 95
    goto :goto_2

    .line 96
    .line 97
    .line 98
    :cond_3
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 99
    .line 100
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 101
    goto :goto_1

    .line 102
    .line 103
    :cond_4
    iget-object v1, p0, Lcom/narvii/app/NVTabFragment;->tabGroup:Landroid/widget/RadioGroup;

    .line 104
    .line 105
    iget v3, p0, Lcom/narvii/app/NVTabFragment;->currentIndex:I

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v3}, Landroid/widget/RadioGroup;->check(I)V

    .line 109
    .line 110
    :cond_5
    iget v1, p0, Lcom/narvii/app/NVTabFragment;->currentIndex:I

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, v1, v0}, Lcom/narvii/app/NVTabFragment;->getTabFragment(IZ)Landroidx/fragment/app/Fragment;

    .line 114
    move-result-object v0

    .line 115
    .line 116
    iget-object v1, p0, Lcom/narvii/app/NVTabFragment;->fragment:Landroidx/fragment/app/Fragment;

    .line 117
    .line 118
    if-eq v1, v0, :cond_9

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 122
    move-result-object v1

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 126
    move-result-object v1

    .line 127
    .line 128
    iget-object v3, p0, Lcom/narvii/app/NVTabFragment;->fragment:Landroidx/fragment/app/Fragment;

    .line 129
    .line 130
    if-eqz v3, :cond_6

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentTransaction;->r(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 134
    .line 135
    :cond_6
    iput-object v0, p0, Lcom/narvii/app/NVTabFragment;->fragment:Landroidx/fragment/app/Fragment;

    .line 136
    .line 137
    if-eqz v0, :cond_8

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 141
    move-result-object v3

    .line 142
    .line 143
    new-instance v4, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .line 148
    const-string v5, "fragment"

    .line 149
    .line 150
    .line 151
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    iget v6, p0, Lcom/narvii/app/NVTabFragment;->currentIndex:I

    .line 154
    .line 155
    .line 156
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    move-result-object v4

    .line 161
    .line 162
    .line 163
    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 164
    move-result-object v3

    .line 165
    .line 166
    if-nez v3, :cond_7

    .line 167
    .line 168
    sget v3, Lcom/narvii/lib/R$id;->tab_fragment_container:I

    .line 169
    .line 170
    new-instance v4, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    iget v5, p0, Lcom/narvii/app/NVTabFragment;->currentIndex:I

    .line 179
    .line 180
    .line 181
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    move-result-object v4

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1, v3, v0, v4}, Landroidx/fragment/app/FragmentTransaction;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 189
    goto :goto_3

    .line 190
    .line 191
    .line 192
    :cond_7
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentTransaction;->E(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 193
    .line 194
    .line 195
    :cond_8
    :goto_3
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 196
    .line 197
    :cond_9
    iput-boolean v2, p0, Lcom/narvii/app/NVTabFragment;->updating:Z

    .line 198
    return-void
.end method
