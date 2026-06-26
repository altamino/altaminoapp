.class Lcom/narvii/search/SearchKeywordTabFragment$1;
.super Ljava/lang/Object;
.source "SearchKeywordTabFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/search/SearchKeywordTabFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/search/SearchKeywordTabFragment;


# direct methods
.method constructor <init>(Lcom/narvii/search/SearchKeywordTabFragment;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/narvii/search/SearchKeywordTabFragment$1;->this$0:Lcom/narvii/search/SearchKeywordTabFragment;

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
    .locals 4

    .line 60
    iget-object v0, p0, Lcom/narvii/search/SearchKeywordTabFragment$1;->this$0:Lcom/narvii/search/SearchKeywordTabFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurrentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 61
    instance-of v1, v0, Lcom/narvii/search/SwitchSearchListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/narvii/search/SearchKeywordTabFragment$1;->this$0:Lcom/narvii/search/SearchKeywordTabFragment;

    invoke-static {v1}, Lcom/narvii/search/SearchKeywordTabFragment;->access$000(Lcom/narvii/search/SearchKeywordTabFragment;)Lcom/narvii/widget/SearchBar;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 62
    check-cast v0, Lcom/narvii/search/SwitchSearchListener;

    iget-object v1, p0, Lcom/narvii/search/SearchKeywordTabFragment$1;->this$0:Lcom/narvii/search/SearchKeywordTabFragment;

    invoke-static {v1}, Lcom/narvii/search/SearchKeywordTabFragment;->access$000(Lcom/narvii/search/SearchKeywordTabFragment;)Lcom/narvii/widget/SearchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/widget/SearchBar;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/narvii/search/SwitchSearchListener;->onSwitchSearch(Ljava/lang/String;)V

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/narvii/search/SearchKeywordTabFragment$1;->this$0:Lcom/narvii/search/SearchKeywordTabFragment;

    invoke-static {v0}, Lcom/narvii/search/SearchKeywordTabFragment;->access$100(Lcom/narvii/search/SearchKeywordTabFragment;)Lcom/narvii/widget/NVPagerTabLayout;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 66
    :goto_0
    iget-object v1, p0, Lcom/narvii/search/SearchKeywordTabFragment$1;->this$0:Lcom/narvii/search/SearchKeywordTabFragment;

    invoke-static {v1}, Lcom/narvii/search/SearchKeywordTabFragment;->access$200(Lcom/narvii/search/SearchKeywordTabFragment;)Lcom/narvii/widget/NVPagerTabLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/widget/NVPagerTabLayout;->getTabCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 67
    iget-object v1, p0, Lcom/narvii/search/SearchKeywordTabFragment$1;->this$0:Lcom/narvii/search/SearchKeywordTabFragment;

    invoke-static {v1}, Lcom/narvii/search/SearchKeywordTabFragment;->access$300(Lcom/narvii/search/SearchKeywordTabFragment;)Lcom/narvii/widget/NVPagerTabLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/narvii/widget/NVPagerTabLayout;->getChildTabAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    const v2, 0x7f090b41

    .line 69
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-ne v0, p1, :cond_1

    if-eqz v1, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    .line 72
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 73
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    const v2, 0x3f4ccccd    # 0.8f

    .line 78
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    const/4 v2, 0x0

    .line 79
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
