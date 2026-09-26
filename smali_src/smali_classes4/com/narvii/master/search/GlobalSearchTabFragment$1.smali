.class Lcom/narvii/master/search/GlobalSearchTabFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchTabFragment$1;->this$0:Lcom/narvii/master/search/GlobalSearchTabFragment;

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
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchTabFragment$1;->this$0:Lcom/narvii/master/search/GlobalSearchTabFragment;

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
    iget-object v1, p0, Lcom/narvii/master/search/GlobalSearchTabFragment$1;->this$0:Lcom/narvii/master/search/GlobalSearchTabFragment;

    .line 13
    .line 14
    .line 15
    invoke-static {v1}, Lcom/narvii/master/search/GlobalSearchTabFragment;->o(Lcom/narvii/master/search/GlobalSearchTabFragment;)Lcom/narvii/widget/SearchBar;

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
    iget-object v1, p0, Lcom/narvii/master/search/GlobalSearchTabFragment$1;->this$0:Lcom/narvii/master/search/GlobalSearchTabFragment;

    .line 23
    .line 24
    .line 25
    invoke-static {v1}, Lcom/narvii/master/search/GlobalSearchTabFragment;->o(Lcom/narvii/master/search/GlobalSearchTabFragment;)Lcom/narvii/widget/SearchBar;

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
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchTabFragment$1;->this$0:Lcom/narvii/master/search/GlobalSearchTabFragment;

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Lcom/narvii/master/search/GlobalSearchTabFragment;->access$000(Lcom/narvii/master/search/GlobalSearchTabFragment;)Lcom/narvii/app/NVScrollablePagerAdapter;

    .line 39
    move-result-object v0

    .line 40
    const/4 v1, 0x0

    .line 41
    const/4 v2, 0x1

    .line 42
    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchTabFragment$1;->this$0:Lcom/narvii/master/search/GlobalSearchTabFragment;

    .line 46
    .line 47
    .line 48
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 49
    move-result v3

    .line 50
    .line 51
    if-eqz v3, :cond_1

    .line 52
    .line 53
    iget-object v3, p0, Lcom/narvii/master/search/GlobalSearchTabFragment$1;->this$0:Lcom/narvii/master/search/GlobalSearchTabFragment;

    .line 54
    .line 55
    .line 56
    invoke-static {v3}, Lcom/narvii/master/search/GlobalSearchTabFragment;->access$100(Lcom/narvii/master/search/GlobalSearchTabFragment;)Lcom/narvii/app/NVScrollablePagerAdapter;

    .line 57
    move-result-object v3

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3}, Lcom/narvii/app/NVScrollablePagerAdapter;->getCount()I

    .line 61
    move-result v3

    .line 62
    sub-int/2addr v3, p1

    .line 63
    sub-int/2addr v3, v2

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    move v3, p1

    .line 66
    .line 67
    .line 68
    :goto_0
    invoke-virtual {v0, v3}, Lcom/narvii/master/search/GlobalSearchTabFragment;->getHintStingId(I)I

    .line 69
    move-result v0

    .line 70
    .line 71
    iget-object v3, p0, Lcom/narvii/master/search/GlobalSearchTabFragment$1;->this$0:Lcom/narvii/master/search/GlobalSearchTabFragment;

    .line 72
    .line 73
    .line 74
    invoke-static {v3}, Lcom/narvii/master/search/GlobalSearchTabFragment;->o(Lcom/narvii/master/search/GlobalSearchTabFragment;)Lcom/narvii/widget/SearchBar;

    .line 75
    move-result-object v3

    .line 76
    .line 77
    if-eqz v3, :cond_3

    .line 78
    .line 79
    if-nez v0, :cond_2

    .line 80
    .line 81
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchTabFragment$1;->this$0:Lcom/narvii/master/search/GlobalSearchTabFragment;

    .line 82
    .line 83
    .line 84
    invoke-static {v0}, Lcom/narvii/master/search/GlobalSearchTabFragment;->o(Lcom/narvii/master/search/GlobalSearchTabFragment;)Lcom/narvii/widget/SearchBar;

    .line 85
    move-result-object v0

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/narvii/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    .line 89
    move-result-object v0

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 93
    goto :goto_1

    .line 94
    .line 95
    :cond_2
    iget-object v3, p0, Lcom/narvii/master/search/GlobalSearchTabFragment$1;->this$0:Lcom/narvii/master/search/GlobalSearchTabFragment;

    .line 96
    .line 97
    .line 98
    invoke-static {v3}, Lcom/narvii/master/search/GlobalSearchTabFragment;->o(Lcom/narvii/master/search/GlobalSearchTabFragment;)Lcom/narvii/widget/SearchBar;

    .line 99
    move-result-object v3

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3}, Lcom/narvii/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    .line 103
    move-result-object v3

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setHint(I)V

    .line 107
    .line 108
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchTabFragment$1;->this$0:Lcom/narvii/master/search/GlobalSearchTabFragment;

    .line 109
    .line 110
    .line 111
    invoke-static {v0}, Lcom/narvii/master/search/GlobalSearchTabFragment;->access$200(Lcom/narvii/master/search/GlobalSearchTabFragment;)Lcom/narvii/widget/NVPagerTabLayout;

    .line 112
    move-result-object v0

    .line 113
    .line 114
    if-eqz v0, :cond_6

    .line 115
    const/4 v0, 0x0

    .line 116
    .line 117
    :goto_2
    iget-object v3, p0, Lcom/narvii/master/search/GlobalSearchTabFragment$1;->this$0:Lcom/narvii/master/search/GlobalSearchTabFragment;

    .line 118
    .line 119
    .line 120
    invoke-static {v3}, Lcom/narvii/master/search/GlobalSearchTabFragment;->access$300(Lcom/narvii/master/search/GlobalSearchTabFragment;)Lcom/narvii/widget/NVPagerTabLayout;

    .line 121
    move-result-object v3

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3}, Lcom/narvii/widget/NVPagerTabLayout;->getTabCount()I

    .line 125
    move-result v3

    .line 126
    .line 127
    if-ge v0, v3, :cond_6

    .line 128
    .line 129
    iget-object v3, p0, Lcom/narvii/master/search/GlobalSearchTabFragment$1;->this$0:Lcom/narvii/master/search/GlobalSearchTabFragment;

    .line 130
    .line 131
    .line 132
    invoke-static {v3}, Lcom/narvii/master/search/GlobalSearchTabFragment;->access$400(Lcom/narvii/master/search/GlobalSearchTabFragment;)Lcom/narvii/widget/NVPagerTabLayout;

    .line 133
    move-result-object v3

    .line 134
    .line 135
    .line 136
    invoke-virtual {v3, v0}, Lcom/narvii/widget/NVPagerTabLayout;->getChildTabAt(I)Landroid/view/View;

    .line 137
    move-result-object v3

    .line 138
    .line 139
    if-eqz v3, :cond_5

    .line 140
    .line 141
    .line 142
    const v4, 0x7f0a0e27

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 146
    move-result-object v3

    .line 147
    .line 148
    check-cast v3, Landroid/widget/TextView;

    .line 149
    .line 150
    if-ne v0, p1, :cond_4

    .line 151
    .line 152
    if-eqz v3, :cond_5

    .line 153
    .line 154
    const/high16 v4, 0x3f800000    # 1.0f

    .line 155
    .line 156
    .line 157
    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 158
    .line 159
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v3, v4, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 163
    goto :goto_3

    .line 164
    .line 165
    :cond_4
    if-eqz v3, :cond_5

    .line 166
    .line 167
    .line 168
    const v4, 0x3f4ccccd    # 0.8f

    .line 169
    .line 170
    .line 171
    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 175
    .line 176
    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 177
    goto :goto_2

    .line 178
    :cond_6
    return-void
.end method
