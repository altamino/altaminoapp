.class public final Lcom/narvii/topic/CoordinateFragmentHelperKt;
.super Ljava/lang/Object;
.source "CoordinateFragmentHelper.kt"


# direct methods
.method public static final setPaddingForChildFragmentInTopic(Lcom/narvii/app/NVFragment;Lcom/narvii/paging/state/PageStatusView;)V
    .locals 5

    if-nez p0, :cond_0

    return-void

    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/nested/CoordinateTabFragment;

    if-eqz v0, :cond_7

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_7

    .line 14
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.narvii.nested.CoordinateTabFragment"

    if-eqz v0, :cond_6

    check-cast v0, Lcom/narvii/nested/CoordinateTabFragment;

    invoke-virtual {v0}, Lcom/narvii/nested/CoordinateTabFragment;->getTabLayout()Lcom/narvii/widget/NVPagerTabLayout;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getMeasuredHeight()I

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 16
    :goto_1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_5

    check-cast v3, Lcom/narvii/nested/CoordinateTabFragment;

    invoke-virtual {v3}, Lcom/narvii/nested/CoordinateTabFragment;->getAppbarLayout()Lcom/narvii/nested/NVAppBarLayout;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    .line 18
    :goto_2
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/narvii/util/Utils;->getScreenHeight(Landroid/content/Context;)I

    move-result v3

    .line 19
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const/high16 v4, 0x43960000    # 300.0f

    invoke-static {p0, v4}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result p0

    sub-int/2addr v3, p0

    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    if-lez v3, :cond_4

    int-to-float p0, v3

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    goto :goto_3

    :cond_4
    const/4 p0, 0x0

    :goto_3
    float-to-int p0, p0

    .line 20
    invoke-virtual {p1, v2, v2, v2, p0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto :goto_4

    .line 16
    :cond_5
    new-instance p0, Lkotlin/TypeCastException;

    invoke-direct {p0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 14
    :cond_6
    new-instance p0, Lkotlin/TypeCastException;

    invoke-direct {p0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_4
    if-eqz p1, :cond_8

    const-wide v0, 0xffd7d3d3L

    long-to-int p0, v0

    .line 23
    invoke-virtual {p1, p0}, Lcom/narvii/paging/state/PageStatusView;->setDarkThemeColor(I)V

    :cond_8
    return-void
.end method
