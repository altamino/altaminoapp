.class Lcom/narvii/master/search/GlobalSearchTabFragment$1;
.super Ljava/lang/Object;
.source "GlobalSearchTabFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/search/GlobalSearchTabFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/search/GlobalSearchTabFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/search/GlobalSearchTabFragment;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchTabFragment$1;->this$0:Lcom/narvii/master/search/GlobalSearchTabFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 5

    .line 69
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchTabFragment$1;->this$0:Lcom/narvii/master/search/GlobalSearchTabFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurrentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 70
    instance-of v1, v0, Lcom/narvii/search/SwitchSearchListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/narvii/master/search/GlobalSearchTabFragment$1;->this$0:Lcom/narvii/master/search/GlobalSearchTabFragment;

    invoke-static {v1}, Lcom/narvii/master/search/GlobalSearchTabFragment;->access$000(Lcom/narvii/master/search/GlobalSearchTabFragment;)Lcom/narvii/widget/SearchBar;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 71
    check-cast v0, Lcom/narvii/search/SwitchSearchListener;

    iget-object v1, p0, Lcom/narvii/master/search/GlobalSearchTabFragment$1;->this$0:Lcom/narvii/master/search/GlobalSearchTabFragment;

    invoke-static {v1}, Lcom/narvii/master/search/GlobalSearchTabFragment;->access$000(Lcom/narvii/master/search/GlobalSearchTabFragment;)Lcom/narvii/widget/SearchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/widget/SearchBar;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/narvii/search/SwitchSearchListener;->onSwitchSearch(Ljava/lang/String;)V

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchTabFragment$1;->this$0:Lcom/narvii/master/search/GlobalSearchTabFragment;

    invoke-static {v0}, Lcom/narvii/master/search/GlobalSearchTabFragment;->access$100(Lcom/narvii/master/search/GlobalSearchTabFragment;)Lcom/narvii/app/NVScrollablePagerAdapter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 75
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchTabFragment$1;->this$0:Lcom/narvii/master/search/GlobalSearchTabFragment;

    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/narvii/master/search/GlobalSearchTabFragment$1;->this$0:Lcom/narvii/master/search/GlobalSearchTabFragment;

    invoke-static {v3}, Lcom/narvii/master/search/GlobalSearchTabFragment;->access$200(Lcom/narvii/master/search/GlobalSearchTabFragment;)Lcom/narvii/app/NVScrollablePagerAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/narvii/app/NVScrollablePagerAdapter;->getCount()I

    move-result v3

    sub-int/2addr v3, p1

    sub-int/2addr v3, v2

    goto :goto_0

    :cond_1
    move v3, p1

    :goto_0
    invoke-virtual {v0, v3}, Lcom/narvii/master/search/GlobalSearchTabFragment;->getHintStingId(I)I

    move-result v0

    .line 76
    iget-object v3, p0, Lcom/narvii/master/search/GlobalSearchTabFragment$1;->this$0:Lcom/narvii/master/search/GlobalSearchTabFragment;

    invoke-static {v3}, Lcom/narvii/master/search/GlobalSearchTabFragment;->access$000(Lcom/narvii/master/search/GlobalSearchTabFragment;)Lcom/narvii/widget/SearchBar;

    move-result-object v3

    if-eqz v3, :cond_3

    if-nez v0, :cond_2

    .line 78
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchTabFragment$1;->this$0:Lcom/narvii/master/search/GlobalSearchTabFragment;

    invoke-static {v0}, Lcom/narvii/master/search/GlobalSearchTabFragment;->access$000(Lcom/narvii/master/search/GlobalSearchTabFragment;)Lcom/narvii/widget/SearchBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 80
    :cond_2
    iget-object v3, p0, Lcom/narvii/master/search/GlobalSearchTabFragment$1;->this$0:Lcom/narvii/master/search/GlobalSearchTabFragment;

    invoke-static {v3}, Lcom/narvii/master/search/GlobalSearchTabFragment;->access$000(Lcom/narvii/master/search/GlobalSearchTabFragment;)Lcom/narvii/widget/SearchBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/narvii/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setHint(I)V

    .line 85
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchTabFragment$1;->this$0:Lcom/narvii/master/search/GlobalSearchTabFragment;

    invoke-static {v0}, Lcom/narvii/master/search/GlobalSearchTabFragment;->access$300(Lcom/narvii/master/search/GlobalSearchTabFragment;)Lcom/narvii/widget/NVPagerTabLayout;

    move-result-object v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    .line 86
    :goto_2
    iget-object v3, p0, Lcom/narvii/master/search/GlobalSearchTabFragment$1;->this$0:Lcom/narvii/master/search/GlobalSearchTabFragment;

    invoke-static {v3}, Lcom/narvii/master/search/GlobalSearchTabFragment;->access$400(Lcom/narvii/master/search/GlobalSearchTabFragment;)Lcom/narvii/widget/NVPagerTabLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/narvii/widget/NVPagerTabLayout;->getTabCount()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 87
    iget-object v3, p0, Lcom/narvii/master/search/GlobalSearchTabFragment$1;->this$0:Lcom/narvii/master/search/GlobalSearchTabFragment;

    invoke-static {v3}, Lcom/narvii/master/search/GlobalSearchTabFragment;->access$500(Lcom/narvii/master/search/GlobalSearchTabFragment;)Lcom/narvii/widget/NVPagerTabLayout;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/narvii/widget/NVPagerTabLayout;->getChildTabAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_5

    const v4, 0x7f090b41

    .line 89
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-ne v0, p1, :cond_4

    if-eqz v3, :cond_5

    const/high16 v4, 0x3f800000    # 1.0f

    .line 92
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 93
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_3

    :cond_4
    if-eqz v3, :cond_5

    const v4, 0x3f4ccccd    # 0.8f

    .line 98
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 99
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method
