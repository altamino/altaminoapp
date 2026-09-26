.class Lcom/narvii/search/SearchKeywordTabFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/search/SearchKeywordTabFragment$1;->this$0:Lcom/narvii/search/SearchKeywordTabFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/search/SearchKeywordTabFragment$1;->this$0:Lcom/narvii/search/SearchKeywordTabFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/app/NVBaseScrollableTabFragment;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    instance-of v1, v0, Lcom/narvii/search/SwitchSearchListener;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/search/SearchKeywordTabFragment$1;->this$0:Lcom/narvii/search/SearchKeywordTabFragment;

    .line 13
    .line 14
    .line 15
    invoke-static {v1}, Lcom/narvii/search/SearchKeywordTabFragment;->n(Lcom/narvii/search/SearchKeywordTabFragment;)Lcom/narvii/widget/SearchBar;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    check-cast v0, Lcom/narvii/search/SwitchSearchListener;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/narvii/search/SearchKeywordTabFragment$1;->this$0:Lcom/narvii/search/SearchKeywordTabFragment;

    .line 23
    .line 24
    .line 25
    invoke-static {v1}, Lcom/narvii/search/SearchKeywordTabFragment;->n(Lcom/narvii/search/SearchKeywordTabFragment;)Lcom/narvii/widget/SearchBar;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/narvii/widget/SearchBar;->getText()Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    .line 33
    invoke-interface {v0, v1}, Lcom/narvii/search/SwitchSearchListener;->onSwitchSearch(Ljava/lang/String;)V

    .line 34
    .line 35
    :cond_0
    iget-object v0, p0, Lcom/narvii/search/SearchKeywordTabFragment$1;->this$0:Lcom/narvii/search/SearchKeywordTabFragment;

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Lcom/narvii/search/SearchKeywordTabFragment;->access$000(Lcom/narvii/search/SearchKeywordTabFragment;)Lcom/narvii/widget/NVPagerTabLayout;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    if-eqz v0, :cond_3

    .line 42
    const/4 v0, 0x0

    .line 43
    .line 44
    :goto_0
    iget-object v1, p0, Lcom/narvii/search/SearchKeywordTabFragment$1;->this$0:Lcom/narvii/search/SearchKeywordTabFragment;

    .line 45
    .line 46
    .line 47
    invoke-static {v1}, Lcom/narvii/search/SearchKeywordTabFragment;->access$100(Lcom/narvii/search/SearchKeywordTabFragment;)Lcom/narvii/widget/NVPagerTabLayout;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/narvii/widget/NVPagerTabLayout;->getTabCount()I

    .line 52
    move-result v1

    .line 53
    .line 54
    if-ge v0, v1, :cond_3

    .line 55
    .line 56
    iget-object v1, p0, Lcom/narvii/search/SearchKeywordTabFragment$1;->this$0:Lcom/narvii/search/SearchKeywordTabFragment;

    .line 57
    .line 58
    .line 59
    invoke-static {v1}, Lcom/narvii/search/SearchKeywordTabFragment;->access$200(Lcom/narvii/search/SearchKeywordTabFragment;)Lcom/narvii/widget/NVPagerTabLayout;

    .line 60
    move-result-object v1

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v0}, Lcom/narvii/widget/NVPagerTabLayout;->getChildTabAt(I)Landroid/view/View;

    .line 64
    move-result-object v1

    .line 65
    .line 66
    if-eqz v1, :cond_2

    .line 67
    .line 68
    .line 69
    const v2, 0x7f0a0e27

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 73
    move-result-object v1

    .line 74
    .line 75
    check-cast v1, Landroid/widget/TextView;

    .line 76
    .line 77
    if-ne v0, p1, :cond_1

    .line 78
    .line 79
    if-eqz v1, :cond_2

    .line 80
    .line 81
    const/high16 v2, 0x3f800000    # 1.0f

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 85
    .line 86
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 87
    const/4 v3, 0x1

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 91
    goto :goto_1

    .line 92
    .line 93
    :cond_1
    if-eqz v1, :cond_2

    .line 94
    .line 95
    .line 96
    const v2, 0x3f4ccccd    # 0.8f

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 100
    const/4 v2, 0x0

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 104
    .line 105
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 106
    goto :goto_0

    .line 107
    :cond_3
    return-void
.end method
