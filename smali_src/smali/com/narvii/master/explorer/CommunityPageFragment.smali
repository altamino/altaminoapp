.class public Lcom/narvii/master/explorer/CommunityPageFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/explorer/CommunityPageFragment$MyAdapter;,
        Lcom/narvii/master/explorer/CommunityPageFragment$FitTopAdapter;
    }
.end annotation


# instance fields
.field private acBack:Lcom/narvii/widget/TintButton;

.field private acDivider:Landroid/view/View;

.field private acTitle:Landroid/widget/TextView;

.field actionbar:Landroid/view/View;

.field protected actionbarBg:Landroid/graphics/drawable/Drawable;

.field private actionbarDividerBg:Landroid/graphics/drawable/Drawable;

.field private actionbarTextBg:Landroid/graphics/drawable/Drawable;

.field alpha:I

.field private communityPageAdapter:Lcom/narvii/master/explorer/CommunityPageAdapter;

.field private pageBackColor:I

.field private pageFrontColor:I


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

.method static bridge synthetic t(Lcom/narvii/master/explorer/CommunityPageFragment;)Lcom/narvii/master/explorer/CommunityPageAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->communityPageAdapter:Lcom/narvii/master/explorer/CommunityPageAdapter;

    return-object p0
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 2

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    new-instance v0, Lcom/narvii/master/explorer/CommunityPageFragment$MyAdapter;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/narvii/master/explorer/CommunityPageFragment$MyAdapter;-><init>(Lcom/narvii/master/explorer/CommunityPageFragment;)V

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->communityPageAdapter:Lcom/narvii/master/explorer/CommunityPageAdapter;

    .line 13
    .line 14
    new-instance v0, Lcom/narvii/master/explorer/CommunityPageFragment$FitTopAdapter;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/narvii/master/explorer/CommunityPageFragment$FitTopAdapter;-><init>(Lcom/narvii/master/explorer/CommunityPageFragment;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->communityPageAdapter:Lcom/narvii/master/explorer/CommunityPageAdapter;

    .line 23
    const/4 v1, 0x1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 27
    return-object p1
.end method

.method public isGlobal()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/app/ActionBar;->hide()V

    .line 25
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d0385

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    const/4 p2, -0x1

    .line 10
    .line 11
    :try_start_0
    const-string p3, "pageBackground"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p3}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object p3

    .line 16
    .line 17
    .line 18
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 19
    move-result p3

    .line 20
    .line 21
    iput p3, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->pageBackColor:I

    .line 22
    .line 23
    const-string p3, "frontColor"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p3}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object p3

    .line 28
    .line 29
    .line 30
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 31
    move-result p3

    .line 32
    .line 33
    iput p3, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->pageFrontColor:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    goto :goto_0

    .line 35
    .line 36
    .line 37
    :catch_0
    const p3, -0xfbdece

    .line 38
    .line 39
    iput p3, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->pageBackColor:I

    .line 40
    .line 41
    iput p2, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->pageFrontColor:I

    .line 42
    .line 43
    .line 44
    :goto_0
    const p3, 0x7f0a07fe

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    if-eqz v0, :cond_0

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    move-result-object p3

    .line 55
    .line 56
    iget v0, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->pageBackColor:I

    .line 57
    .line 58
    .line 59
    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 60
    .line 61
    .line 62
    :cond_0
    const p3, 0x102000d

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    if-eqz v0, :cond_1

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    move-result-object p3

    .line 73
    .line 74
    check-cast p3, Lcom/narvii/widget/SpinningView;

    .line 75
    .line 76
    iget v0, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->pageFrontColor:I

    .line 77
    .line 78
    .line 79
    invoke-virtual {p3, v0}, Lcom/narvii/widget/SpinningView;->setSpinColor(I)V

    .line 80
    .line 81
    :cond_1
    new-instance p3, Landroid/graphics/drawable/ColorDrawable;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 85
    move-result-object v0

    .line 86
    .line 87
    .line 88
    const v1, 0x7f06009f

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 92
    move-result v0

    .line 93
    .line 94
    .line 95
    invoke-direct {p3, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 96
    .line 97
    iput-object p3, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->actionbarBg:Landroid/graphics/drawable/Drawable;

    .line 98
    .line 99
    new-instance p3, Landroid/graphics/drawable/ColorDrawable;

    .line 100
    .line 101
    .line 102
    const v0, -0x777778

    .line 103
    .line 104
    .line 105
    invoke-direct {p3, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 106
    .line 107
    iput-object p3, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->actionbarDividerBg:Landroid/graphics/drawable/Drawable;

    .line 108
    .line 109
    new-instance p3, Landroid/graphics/drawable/ColorDrawable;

    .line 110
    .line 111
    .line 112
    invoke-direct {p3, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 113
    .line 114
    iput-object p3, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->actionbarTextBg:Landroid/graphics/drawable/Drawable;

    .line 115
    .line 116
    .line 117
    const p2, 0x7f0a037f

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 121
    move-result-object p2

    .line 122
    .line 123
    iput-object p2, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->actionbar:Landroid/view/View;

    .line 124
    .line 125
    .line 126
    const p2, 0x7f0a007b

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 130
    move-result-object p2

    .line 131
    .line 132
    iput-object p2, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->acDivider:Landroid/view/View;

    .line 133
    .line 134
    .line 135
    const p2, 0x7f0a0e9e

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 139
    move-result-object p2

    .line 140
    .line 141
    check-cast p2, Landroid/widget/TextView;

    .line 142
    .line 143
    iput-object p2, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->acTitle:Landroid/widget/TextView;

    .line 144
    .line 145
    .line 146
    const p2, 0x7f0a0079

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 150
    move-result-object p2

    .line 151
    .line 152
    check-cast p2, Lcom/narvii/widget/TintButton;

    .line 153
    .line 154
    iput-object p2, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->acBack:Lcom/narvii/widget/TintButton;

    .line 155
    .line 156
    if-eqz p2, :cond_2

    .line 157
    .line 158
    new-instance p3, Lcom/narvii/master/explorer/CommunityPageFragment$1;

    .line 159
    .line 160
    .line 161
    invoke-direct {p3, p0}, Lcom/narvii/master/explorer/CommunityPageFragment$1;-><init>(Lcom/narvii/master/explorer/CommunityPageFragment;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    .line 166
    :cond_2
    iget-object p2, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->acTitle:Landroid/widget/TextView;

    .line 167
    .line 168
    if-eqz p2, :cond_3

    .line 169
    .line 170
    const-string/jumbo p3, "title"

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0, p3}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 174
    move-result-object p3

    .line 175
    .line 176
    .line 177
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    .line 179
    .line 180
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    .line 181
    move-result p2

    .line 182
    .line 183
    iget-object p3, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->actionbar:Landroid/view/View;

    .line 184
    .line 185
    .line 186
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 187
    move-result-object p3

    .line 188
    .line 189
    check-cast p3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    .line 193
    move-result v0

    .line 194
    add-int/2addr v0, p2

    .line 195
    .line 196
    iput v0, p3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 197
    .line 198
    iget-object v0, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->actionbar:Landroid/view/View;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    .line 203
    iget-object p3, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->actionbar:Landroid/view/View;

    .line 204
    .line 205
    .line 206
    invoke-virtual {p3}, Landroid/view/View;->getPaddingLeft()I

    .line 207
    move-result v0

    .line 208
    .line 209
    iget-object v1, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->actionbar:Landroid/view/View;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    .line 213
    move-result v1

    .line 214
    add-int/2addr v1, p2

    .line 215
    .line 216
    iget-object p2, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->actionbar:Landroid/view/View;

    .line 217
    .line 218
    .line 219
    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    .line 220
    move-result p2

    .line 221
    .line 222
    iget-object v2, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->actionbar:Landroid/view/View;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    .line 226
    move-result v2

    .line 227
    .line 228
    .line 229
    invoke-virtual {p3, v0, v1, p2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 230
    return-object p1
.end method

.method protected onListScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .line 1
    const/4 p2, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 5
    move-result-object p1

    .line 6
    .line 7
    if-eqz p1, :cond_3

    .line 8
    .line 9
    iget-object p2, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->communityPageAdapter:Lcom/narvii/master/explorer/CommunityPageAdapter;

    .line 10
    .line 11
    const/16 p3, 0xff

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    iget-boolean p2, p2, Lcom/narvii/master/explorer/CommunityPageAdapter;->startWithFeature:Z

    .line 16
    .line 17
    if-nez p2, :cond_0

    .line 18
    .line 19
    iput p3, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->alpha:I

    .line 20
    .line 21
    iget-object p1, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->actionbarBg:Landroid/graphics/drawable/Drawable;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 25
    .line 26
    iget-object p1, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->actionbar:Landroid/view/View;

    .line 27
    .line 28
    if-eqz p1, :cond_3

    .line 29
    .line 30
    iget-object p2, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->actionbarBg:Landroid/graphics/drawable/Drawable;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 34
    goto :goto_1

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 38
    move-result-object p2

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 42
    move-result p2

    .line 43
    .line 44
    if-nez p2, :cond_1

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 48
    move-result p2

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 52
    move-result p3

    .line 53
    add-int/2addr p2, p3

    .line 54
    int-to-float p2, p2

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 58
    move-result p1

    .line 59
    int-to-float p1, p1

    .line 60
    div-float/2addr p2, p1

    .line 61
    .line 62
    const/high16 p1, 0x3f800000    # 1.0f

    .line 63
    sub-float/2addr p1, p2

    .line 64
    float-to-double p1, p1

    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    const-wide p3, 0x406fe00000000000L    # 255.0

    .line 70
    mul-double/2addr p1, p3

    .line 71
    double-to-int p1, p1

    .line 72
    .line 73
    iput p1, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->alpha:I

    .line 74
    goto :goto_0

    .line 75
    .line 76
    :cond_1
    iput p3, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->alpha:I

    .line 77
    .line 78
    :goto_0
    iget-object p1, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->actionbarBg:Landroid/graphics/drawable/Drawable;

    .line 79
    .line 80
    iget p2, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->alpha:I

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 84
    .line 85
    iget-object p1, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->actionbar:Landroid/view/View;

    .line 86
    .line 87
    if-eqz p1, :cond_2

    .line 88
    .line 89
    iget-object p2, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->actionbarBg:Landroid/graphics/drawable/Drawable;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 93
    .line 94
    :cond_2
    iget-object p1, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->acDivider:Landroid/view/View;

    .line 95
    .line 96
    if-eqz p1, :cond_3

    .line 97
    .line 98
    iget-object p1, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->actionbarDividerBg:Landroid/graphics/drawable/Drawable;

    .line 99
    .line 100
    iget p2, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->alpha:I

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 104
    .line 105
    iget-object p1, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->acDivider:Landroid/view/View;

    .line 106
    .line 107
    iget-object p2, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->actionbarDividerBg:Landroid/graphics/drawable/Drawable;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 111
    :cond_3
    :goto_1
    return-void
.end method

.method protected onListScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->actionbar:Landroid/view/View;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->actionbarBg:Landroid/graphics/drawable/Drawable;

    .line 7
    .line 8
    iget p2, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->alpha:I

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 12
    .line 13
    iget-object p1, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->actionbar:Landroid/view/View;

    .line 14
    .line 15
    iget-object p2, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->actionbarBg:Landroid/graphics/drawable/Drawable;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 19
    .line 20
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->acDivider:Landroid/view/View;

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    iget-object p1, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->actionbarDividerBg:Landroid/graphics/drawable/Drawable;

    .line 25
    .line 26
    iget p2, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->alpha:I

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 30
    .line 31
    iget-object p1, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->acDivider:Landroid/view/View;

    .line 32
    .line 33
    iget-object p2, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->actionbarDividerBg:Landroid/graphics/drawable/Drawable;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 37
    :cond_1
    return-void
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
    .line 13
    new-instance p2, Lcom/narvii/master/explorer/CommunityPageFragment$2;

    .line 14
    .line 15
    .line 16
    invoke-direct {p2, p0}, Lcom/narvii/master/explorer/CommunityPageFragment$2;-><init>(Lcom/narvii/master/explorer/CommunityPageFragment;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p2}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 20
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    return-void
.end method

.method public setActionbarBg(I)V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 6
    .line 7
    iput-object v0, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->actionbarBg:Landroid/graphics/drawable/Drawable;

    .line 8
    return-void
.end method

.method public setActionbarTextColor(I)V
    .locals 5

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    .line 6
    move-result v1

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    .line 10
    move-result v2

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    .line 14
    move-result v3

    .line 15
    .line 16
    const/16 v4, 0x78

    .line 17
    .line 18
    .line 19
    invoke-static {v4, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    .line 20
    move-result v1

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->actionbarDividerBg:Landroid/graphics/drawable/Drawable;

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->acBack:Lcom/narvii/widget/TintButton;

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p1}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    .line 33
    .line 34
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/explorer/CommunityPageFragment;->acTitle:Landroid/widget/TextView;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 40
    :cond_1
    return-void
.end method
