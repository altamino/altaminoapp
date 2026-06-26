.class Lcom/narvii/amino/HomeFragment$11;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/amino/HomeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private curSelectedPos:I

.field final synthetic this$0:Lcom/narvii/amino/HomeFragment;


# direct methods
.method constructor <init>(Lcom/narvii/amino/HomeFragment;)V
    .locals 0

    .line 722
    iput-object p1, p0, Lcom/narvii/amino/HomeFragment$11;->this$0:Lcom/narvii/amino/HomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 3

    .line 908
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$11;->this$0:Lcom/narvii/amino/HomeFragment;

    iput p1, v0, Lcom/narvii/amino/HomeFragment;->pageScrollState:I

    if-nez p1, :cond_3

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 910
    :goto_0
    iget-object v1, p0, Lcom/narvii/amino/HomeFragment$11;->this$0:Lcom/narvii/amino/HomeFragment;

    invoke-static {v1}, Lcom/narvii/amino/HomeFragment;->access$1200(Lcom/narvii/amino/HomeFragment;)Lcom/narvii/widget/NVViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 911
    iget-object v1, p0, Lcom/narvii/amino/HomeFragment$11;->this$0:Lcom/narvii/amino/HomeFragment;

    invoke-virtual {v1, v0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getFragmentAtIndex(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 912
    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_2

    .line 915
    :cond_0
    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/narvii/amino/HomeFragment$11;->curSelectedPos:I

    if-ne v0, v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 9

    .line 727
    iget-object p3, p0, Lcom/narvii/amino/HomeFragment$11;->this$0:Lcom/narvii/amino/HomeFragment;

    invoke-virtual {p3, p1}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getFragmentAtIndex(I)Landroid/support/v4/app/Fragment;

    move-result-object p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    cmpl-float v3, p2, v0

    if-eqz v3, :cond_1

    .line 728
    iget-object v3, p0, Lcom/narvii/amino/HomeFragment$11;->this$0:Lcom/narvii/amino/HomeFragment;

    iget-object v3, v3, Lcom/narvii/amino/HomeFragment;->tabs:Ljava/util/List;

    if-eqz v3, :cond_1

    add-int/2addr p1, v2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt p1, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/narvii/amino/HomeFragment$11;->this$0:Lcom/narvii/amino/HomeFragment;

    invoke-virtual {v3, p1}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getFragmentAtIndex(I)Landroid/support/v4/app/Fragment;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    move-object p1, v1

    :goto_1
    const/4 v3, 0x0

    if-eqz p3, :cond_2

    if-eqz p1, :cond_2

    .line 730
    invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 731
    invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 732
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 736
    :cond_2
    iget-object v4, p0, Lcom/narvii/amino/HomeFragment$11;->this$0:Lcom/narvii/amino/HomeFragment;

    invoke-virtual {v4}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    instance-of v4, v4, Lcom/narvii/app/DrawerActivity;

    const/16 v5, 0x8

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v4, :cond_8

    .line 737
    instance-of v4, p3, Lcom/narvii/app/NVFragment;

    if-eqz v4, :cond_4

    move-object v4, p3

    check-cast v4, Lcom/narvii/app/NVFragment;

    invoke-virtual {v4}, Lcom/narvii/app/NVFragment;->hasPostEntry()Ljava/lang/Boolean;

    move-result-object v4

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v4, v7, :cond_3

    const/4 v4, 0x0

    goto :goto_2

    :cond_3
    const/4 v4, 0x1

    :goto_2
    int-to-float v4, v4

    goto :goto_3

    :cond_4
    const/high16 v4, 0x3f800000    # 1.0f

    .line 738
    :goto_3
    instance-of v7, p1, Lcom/narvii/app/NVFragment;

    if-eqz v7, :cond_6

    move-object v7, p1

    check-cast v7, Lcom/narvii/app/NVFragment;

    invoke-virtual {v7}, Lcom/narvii/app/NVFragment;->hasPostEntry()Ljava/lang/Boolean;

    move-result-object v7

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v7, v8, :cond_5

    const/4 v7, 0x0

    goto :goto_4

    :cond_5
    const/4 v7, 0x1

    :goto_4
    int-to-float v7, v7

    goto :goto_5

    :cond_6
    move v7, v4

    :goto_5
    sub-float v8, v6, p2

    mul-float v4, v4, v8

    mul-float v7, v7, p2

    add-float/2addr v4, v7

    .line 740
    iget-object v7, p0, Lcom/narvii/amino/HomeFragment$11;->this$0:Lcom/narvii/amino/HomeFragment;

    invoke-virtual {v7}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    check-cast v7, Lcom/narvii/app/DrawerActivity;

    invoke-virtual {v7}, Lcom/narvii/app/DrawerActivity;->getPostEntryView()Lcom/narvii/post/entry/PostEntryView;

    move-result-object v7

    if-eqz v7, :cond_8

    const v8, 0x7f090887

    .line 742
    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 743
    invoke-virtual {v7, v4}, Landroid/view/View;->setAlpha(F)V

    cmpl-float v4, v4, v0

    if-nez v4, :cond_7

    .line 745
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v5, :cond_8

    .line 746
    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .line 749
    :cond_7
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_8

    .line 750
    invoke-virtual {v7, v3}, Landroid/view/View;->setVisibility(I)V

    .line 757
    :cond_8
    :goto_6
    iget-object v4, p0, Lcom/narvii/amino/HomeFragment$11;->this$0:Lcom/narvii/amino/HomeFragment;

    invoke-virtual {v4}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    instance-of v4, v4, Lcom/narvii/app/DrawerActivity;

    if-eqz v4, :cond_e

    .line 758
    instance-of v4, p3, Lcom/narvii/app/NVFragment;

    if-eqz v4, :cond_a

    move-object v4, p3

    check-cast v4, Lcom/narvii/app/NVFragment;

    invoke-virtual {v4}, Lcom/narvii/app/NVFragment;->hasOnlineBar()Ljava/lang/Boolean;

    move-result-object v4

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v4, v7, :cond_9

    const/4 v4, 0x0

    goto :goto_7

    :cond_9
    const/4 v4, 0x1

    :goto_7
    int-to-float v4, v4

    goto :goto_8

    :cond_a
    const/high16 v4, 0x3f800000    # 1.0f

    .line 759
    :goto_8
    instance-of v7, p1, Lcom/narvii/app/NVFragment;

    if-eqz v7, :cond_c

    move-object v7, p1

    check-cast v7, Lcom/narvii/app/NVFragment;

    invoke-virtual {v7}, Lcom/narvii/app/NVFragment;->hasOnlineBar()Ljava/lang/Boolean;

    move-result-object v7

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v7, v8, :cond_b

    const/4 v7, 0x0

    goto :goto_9

    :cond_b
    const/4 v7, 0x1

    :goto_9
    int-to-float v7, v7

    goto :goto_a

    :cond_c
    move v7, v4

    :goto_a
    sub-float v8, v6, p2

    mul-float v4, v4, v8

    mul-float v7, v7, p2

    add-float/2addr v4, v7

    .line 762
    iget-object v7, p0, Lcom/narvii/amino/HomeFragment$11;->this$0:Lcom/narvii/amino/HomeFragment;

    invoke-virtual {v7}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    check-cast v7, Lcom/narvii/app/DrawerActivity;

    invoke-virtual {v7}, Lcom/narvii/app/DrawerActivity;->getLiveLayerView()Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_e

    .line 764
    invoke-virtual {v7, v4}, Landroid/view/View;->setAlpha(F)V

    cmpl-float v4, v4, v0

    if-nez v4, :cond_d

    .line 766
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v5, :cond_e

    .line 767
    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_b

    .line 770
    :cond_d
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_e

    .line 771
    invoke-virtual {v7, v3}, Landroid/view/View;->setVisibility(I)V

    .line 778
    :cond_e
    :goto_b
    iget-object v4, p0, Lcom/narvii/amino/HomeFragment$11;->this$0:Lcom/narvii/amino/HomeFragment;

    invoke-virtual {v4}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    instance-of v4, v4, Lcom/narvii/app/DrawerActivity;

    if-eqz v4, :cond_12

    .line 779
    instance-of v4, p3, Lcom/narvii/app/NVFragment;

    if-eqz v4, :cond_f

    move-object v4, p3

    check-cast v4, Lcom/narvii/app/NVFragment;

    invoke-virtual {v4}, Lcom/narvii/app/NVFragment;->hideCBBInHomeFragment()Z

    move-result v4

    xor-int/2addr v4, v2

    int-to-float v4, v4

    goto :goto_c

    :cond_f
    const/high16 v4, 0x3f800000    # 1.0f

    .line 780
    :goto_c
    instance-of v5, p1, Lcom/narvii/app/NVFragment;

    if-eqz v5, :cond_10

    move-object v5, p1

    check-cast v5, Lcom/narvii/app/NVFragment;

    invoke-virtual {v5}, Lcom/narvii/app/NVFragment;->hideCBBInHomeFragment()Z

    move-result v5

    xor-int/2addr v5, v2

    int-to-float v5, v5

    goto :goto_d

    :cond_10
    move v5, v4

    :goto_d
    sub-float v7, v6, p2

    mul-float v4, v4, v7

    mul-float v5, v5, p2

    add-float/2addr v4, v5

    .line 783
    iget-object v5, p0, Lcom/narvii/amino/HomeFragment$11;->this$0:Lcom/narvii/amino/HomeFragment;

    invoke-virtual {v5}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    check-cast v5, Lcom/narvii/app/DrawerActivity;

    invoke-virtual {v5}, Lcom/narvii/app/DrawerActivity;->getCBBView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_12

    .line 785
    invoke-virtual {v5, v4}, Landroid/view/View;->setAlpha(F)V

    cmpl-float v0, v4, v0

    if-nez v0, :cond_11

    .line 787
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$11;->this$0:Lcom/narvii/amino/HomeFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/DrawerActivity;

    invoke-virtual {v0, v2}, Lcom/narvii/app/DrawerActivity;->setDisableCBB(Z)V

    goto :goto_e

    .line 789
    :cond_11
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$11;->this$0:Lcom/narvii/amino/HomeFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/DrawerActivity;

    invoke-virtual {v0, v3}, Lcom/narvii/app/DrawerActivity;->setDisableCBB(Z)V

    .line 796
    :cond_12
    :goto_e
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$11;->this$0:Lcom/narvii/amino/HomeFragment;

    iget-object v0, v0, Lcom/narvii/amino/HomeFragment;->tabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_13

    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$11;->this$0:Lcom/narvii/amino/HomeFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f070180

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 797
    :cond_13
    instance-of v0, p3, Lcom/narvii/amino/HomeFragment$HasExtraHeight;

    if-eqz v0, :cond_14

    .line 798
    move-object v4, p3

    check-cast v4, Lcom/narvii/amino/HomeFragment$HasExtraHeight;

    invoke-interface {v4, v3}, Lcom/narvii/amino/HomeFragment$HasExtraHeight;->setExtraHeight(I)V

    .line 800
    :cond_14
    instance-of v4, p1, Lcom/narvii/amino/HomeFragment$HasExtraHeight;

    if-eqz v4, :cond_15

    .line 801
    move-object v5, p1

    check-cast v5, Lcom/narvii/amino/HomeFragment$HasExtraHeight;

    invoke-interface {v5, v3}, Lcom/narvii/amino/HomeFragment$HasExtraHeight;->setExtraHeight(I)V

    :cond_15
    if-eqz v0, :cond_16

    .line 803
    move-object v0, p3

    check-cast v0, Lcom/narvii/amino/HomeFragment$HasExtraHeight;

    invoke-interface {v0}, Lcom/narvii/amino/HomeFragment$HasExtraHeight;->getTabAlpha()F

    move-result v0

    goto :goto_f

    :cond_16
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_f
    if-eqz v4, :cond_17

    .line 804
    move-object v3, p1

    check-cast v3, Lcom/narvii/amino/HomeFragment$HasExtraHeight;

    invoke-interface {v3}, Lcom/narvii/amino/HomeFragment$HasExtraHeight;->getTabAlpha()F

    move-result v3

    goto :goto_10

    :cond_17
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_10
    sub-float v4, v6, p2

    mul-float v0, v0, v4

    mul-float v3, v3, p2

    add-float/2addr v0, v3

    .line 806
    iget-object v3, p0, Lcom/narvii/amino/HomeFragment$11;->this$0:Lcom/narvii/amino/HomeFragment;

    iget-object v3, v3, Lcom/narvii/amino/HomeFragment;->configService:Lcom/narvii/config/ConfigService;

    invoke-virtual {v3}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object v3

    invoke-interface {v3}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    move-result v3

    const/high16 v5, 0x437f0000    # 255.0f

    cmpl-float v7, v0, v6

    if-lez v7, :cond_18

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_18
    mul-float v0, v0, v5

    float-to-int v0, v0

    .line 807
    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v5

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v6

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v0, v5, v6, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 809
    iget-object v3, p0, Lcom/narvii/amino/HomeFragment$11;->this$0:Lcom/narvii/amino/HomeFragment;

    invoke-virtual {v3}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getTabLayout()Lcom/narvii/widget/NVPagerTabLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/HorizontalScrollView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    instance-of v3, v3, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v3, :cond_19

    .line 810
    iget-object v3, p0, Lcom/narvii/amino/HomeFragment$11;->this$0:Lcom/narvii/amino/HomeFragment;

    invoke-virtual {v3}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getTabLayout()Lcom/narvii/widget/NVPagerTabLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/HorizontalScrollView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/ColorDrawable;

    .line 811
    invoke-virtual {v3}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v3

    goto :goto_11

    :cond_19
    const/4 v3, -0x1

    :goto_11
    if-eq v0, v3, :cond_1a

    .line 814
    iget-object v3, p0, Lcom/narvii/amino/HomeFragment$11;->this$0:Lcom/narvii/amino/HomeFragment;

    invoke-virtual {v3}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getTabLayout()Lcom/narvii/widget/NVPagerTabLayout;

    move-result-object v3

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v5}, Landroid/widget/HorizontalScrollView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 820
    :cond_1a
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$11;->this$0:Lcom/narvii/amino/HomeFragment;

    iget-object v0, v0, Lcom/narvii/amino/HomeFragment;->menuControllers:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/narvii/amino/HomeFragment$HomeMenuController;

    if-nez p3, :cond_1b

    move-object p3, v1

    goto :goto_12

    .line 821
    :cond_1b
    invoke-virtual {p3}, Lcom/narvii/amino/HomeFragment$HomeMenuController;->getView()Landroid/view/View;

    move-result-object p3

    .line 823
    :goto_12
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$11;->this$0:Lcom/narvii/amino/HomeFragment;

    iget-object v0, v0, Lcom/narvii/amino/HomeFragment;->menuControllers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/amino/HomeFragment$HomeMenuController;

    if-nez p1, :cond_1c

    move-object p1, v1

    goto :goto_13

    .line 824
    :cond_1c
    invoke-virtual {p1}, Lcom/narvii/amino/HomeFragment$HomeMenuController;->getView()Landroid/view/View;

    move-result-object p1

    :goto_13
    if-eqz p3, :cond_1d

    .line 826
    invoke-virtual {p3, v4}, Landroid/view/View;->setAlpha(F)V

    :cond_1d
    if-eqz p1, :cond_1e

    .line 829
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 832
    :cond_1e
    iget-object p2, p0, Lcom/narvii/amino/HomeFragment$11;->this$0:Lcom/narvii/amino/HomeFragment;

    iget-object p2, p2, Lcom/narvii/amino/HomeFragment;->menuFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p2

    sub-int/2addr p2, v2

    :goto_14
    if-ltz p2, :cond_21

    .line 833
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$11;->this$0:Lcom/narvii/amino/HomeFragment;

    iget-object v0, v0, Lcom/narvii/amino/HomeFragment;->menuFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v0, p3, :cond_1f

    move-object p3, v1

    goto :goto_15

    :cond_1f
    if-ne v0, p1, :cond_20

    move-object p1, v1

    goto :goto_15

    .line 839
    :cond_20
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$11;->this$0:Lcom/narvii/amino/HomeFragment;

    iget-object v0, v0, Lcom/narvii/amino/HomeFragment;->menuFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    :goto_15
    add-int/lit8 p2, p2, -0x1

    goto :goto_14

    :cond_21
    if-eqz p3, :cond_22

    .line 844
    iget-object p2, p0, Lcom/narvii/amino/HomeFragment$11;->this$0:Lcom/narvii/amino/HomeFragment;

    iget-object p2, p2, Lcom/narvii/amino/HomeFragment;->menuFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_22
    if-eqz p1, :cond_23

    .line 847
    iget-object p2, p0, Lcom/narvii/amino/HomeFragment$11;->this$0:Lcom/narvii/amino/HomeFragment;

    iget-object p2, p2, Lcom/narvii/amino/HomeFragment;->menuFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_23
    return-void
.end method

.method public onPageSelected(I)V
    .locals 6

    .line 855
    iput p1, p0, Lcom/narvii/amino/HomeFragment$11;->curSelectedPos:I

    .line 856
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$11;->this$0:Lcom/narvii/amino/HomeFragment;

    invoke-virtual {v0, p1}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getFragmentAtIndex(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 857
    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    if-eqz v1, :cond_0

    .line 858
    iget-object v2, p0, Lcom/narvii/amino/HomeFragment$11;->this$0:Lcom/narvii/amino/HomeFragment;

    move-object v3, v0

    check-cast v3, Lcom/narvii/app/NVFragment;

    iput-object v3, v2, Lcom/narvii/amino/HomeFragment;->currentShowingFragment:Lcom/narvii/app/NVFragment;

    .line 862
    :cond_0
    iget-object v2, p0, Lcom/narvii/amino/HomeFragment$11;->this$0:Lcom/narvii/amino/HomeFragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    instance-of v2, v2, Lcom/narvii/app/DrawerActivity;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 863
    iget-object v2, p0, Lcom/narvii/amino/HomeFragment$11;->this$0:Lcom/narvii/amino/HomeFragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/narvii/app/DrawerActivity;

    invoke-virtual {v2}, Lcom/narvii/app/DrawerActivity;->getPostEntryView()Lcom/narvii/post/entry/PostEntryView;

    move-result-object v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_1

    .line 865
    move-object v4, v0

    check-cast v4, Lcom/narvii/app/NVFragment;

    invoke-virtual {v4}, Lcom/narvii/app/NVFragment;->getPostEntryLift()I

    move-result v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lcom/narvii/amino/HomeFragment$11;->this$0:Lcom/narvii/amino/HomeFragment;

    iget-boolean v5, v5, Lcom/narvii/amino/HomeFragment;->pageCreateComplete:Z

    invoke-virtual {v2, v4, v5}, Lcom/narvii/post/entry/PostEntryView;->setLift1(IZ)V

    .line 870
    :cond_2
    iget-object v2, p0, Lcom/narvii/amino/HomeFragment$11;->this$0:Lcom/narvii/amino/HomeFragment;

    const-string v4, "liveLayerHost"

    invoke-virtual {v2, v4}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/livelayer/LiveLayerHost;

    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    .line 871
    iget-object v2, v2, Lcom/narvii/livelayer/LiveLayerHost;->onlineBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    if-eqz v2, :cond_3

    nop

    .line 876
    :cond_3
    iget-object v2, p0, Lcom/narvii/amino/HomeFragment$11;->this$0:Lcom/narvii/amino/HomeFragment;

    const-string v4, "cbbHost"

    invoke-virtual {v2, v4}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/community/CBBHost;

    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    nop

    .line 881
    :cond_4
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$11;->this$0:Lcom/narvii/amino/HomeFragment;

    iget-object v0, v0, Lcom/narvii/amino/HomeFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    if-eqz v0, :cond_7

    .line 882
    :goto_1
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$11;->this$0:Lcom/narvii/amino/HomeFragment;

    iget-object v0, v0, Lcom/narvii/amino/HomeFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    invoke-virtual {v0}, Lcom/narvii/widget/NVPagerTabLayout;->getTabCount()I

    move-result v0

    if-ge v3, v0, :cond_7

    .line 883
    iget-object v0, p0, Lcom/narvii/amino/HomeFragment$11;->this$0:Lcom/narvii/amino/HomeFragment;

    iget-object v0, v0, Lcom/narvii/amino/HomeFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    invoke-virtual {v0, v3}, Lcom/narvii/widget/NVPagerTabLayout;->getChildTabAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    const v1, 0x7f090b41

    .line 885
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x1

    if-ne v3, p1, :cond_5

    if-eqz v0, :cond_6

    const/high16 v2, 0x3f800000    # 1.0f

    .line 888
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    const/high16 v2, 0x41880000    # 17.0f

    .line 889
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_2

    :cond_5
    if-eqz v0, :cond_6

    const v2, 0x3f19999a    # 0.6f

    .line 894
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    const/high16 v2, 0x41700000    # 15.0f

    .line 895
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_6
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 903
    :cond_7
    iget-object p1, p0, Lcom/narvii/amino/HomeFragment$11;->this$0:Lcom/narvii/amino/HomeFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/content/Context;)V

    return-void
.end method
