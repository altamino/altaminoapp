.class public final Lcom/narvii/topic/CoordinateFragmentHelperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final setPaddingForChildFragmentInTopic(Lcom/narvii/app/NVFragment;Lcom/narvii/paging/state/PageStatusView;)V
    .locals 5
    .param p0    # Lcom/narvii/app/NVFragment;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/narvii/paging/state/PageStatusView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    instance-of v0, v0, Lcom/narvii/nested/CoordinateTabFragment;

    .line 10
    .line 11
    if-eqz v0, :cond_5

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 17
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 v0, 0x0

    .line 20
    .line 21
    :goto_0
    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 22
    .line 23
    if-eqz v0, :cond_5

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    const-string v1, "null cannot be cast to non-null type com.narvii.nested.CoordinateTabFragment"

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    check-cast v0, Lcom/narvii/nested/CoordinateTabFragment;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/narvii/nested/CoordinateTabFragment;->getTabLayout()Lcom/narvii/widget/NVPagerTabLayout;

    .line 38
    move-result-object v0

    .line 39
    const/4 v2, 0x0

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 45
    move-result v0

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    move v0, v2

    .line 48
    .line 49
    .line 50
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 51
    move-result-object v3

    .line 52
    .line 53
    .line 54
    invoke-static {v3, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    check-cast v3, Lcom/narvii/nested/CoordinateTabFragment;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3}, Lcom/narvii/nested/CoordinateTabFragment;->getAppbarLayout()Lcom/narvii/nested/NVAppBarLayout;

    .line 60
    move-result-object v1

    .line 61
    .line 62
    if-eqz v1, :cond_3

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 66
    move-result v1

    .line 67
    goto :goto_2

    .line 68
    :cond_3
    move v1, v2

    .line 69
    .line 70
    .line 71
    :goto_2
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 72
    move-result-object v3

    .line 73
    .line 74
    .line 75
    invoke-static {v3}, Lcom/narvii/util/Utils;->getScreenHeight(Landroid/content/Context;)I

    .line 76
    move-result v3

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 80
    move-result-object p0

    .line 81
    .line 82
    const/high16 v4, 0x43960000    # 300.0f

    .line 83
    .line 84
    .line 85
    invoke-static {p0, v4}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 86
    move-result p0

    .line 87
    sub-int/2addr v3, p0

    .line 88
    sub-int/2addr v3, v0

    .line 89
    sub-int/2addr v3, v1

    .line 90
    .line 91
    if-lez v3, :cond_4

    .line 92
    int-to-float p0, v3

    .line 93
    .line 94
    const/high16 v0, 0x40000000    # 2.0f

    .line 95
    div-float/2addr p0, v0

    .line 96
    goto :goto_3

    .line 97
    :cond_4
    const/4 p0, 0x0

    .line 98
    :goto_3
    float-to-int p0, p0

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v2, v2, v2, p0}, Landroid/view/View;->setPadding(IIII)V

    .line 102
    .line 103
    :cond_5
    if-eqz p1, :cond_6

    .line 104
    .line 105
    .line 106
    const p0, -0x282c2d

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, p0}, Lcom/narvii/paging/state/PageStatusView;->setDarkThemeColor(I)V

    .line 110
    :cond_6
    return-void
.end method
