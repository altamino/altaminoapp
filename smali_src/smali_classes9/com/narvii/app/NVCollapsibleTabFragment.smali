.class public abstract Lcom/narvii/app/NVCollapsibleTabFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/widget/headercollapse/OnHeaderStatusChangedListener;
.implements Lcom/narvii/list/refresh/SwipeRefreshLayout$OnRefreshListener;


# static fields
.field private static final MAX_TABS:I = 0x8


# instance fields
.field private final bodyRefreshCallback:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected collapsibleLayout:Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

.field protected currentShowingFragment:Lcom/narvii/app/NVFragment;

.field private final headerRefreshCallback:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final observer:Landroid/database/DataSetObserver;

.field onPageChangeListener:Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;

.field protected pagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

.field private positionToIndexMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private realPositions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private refreshingCount:I

.field protected scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

.field protected swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

.field protected viewPager:Lcom/narvii/widget/NVViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Landroid/util/SparseArray;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->realPositions:Landroid/util/SparseArray;

    .line 11
    .line 12
    new-instance v0, Landroid/util/SparseArray;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->positionToIndexMap:Landroid/util/SparseArray;

    .line 18
    .line 19
    new-instance v0, Lcom/narvii/app/NVCollapsibleTabFragment$1;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/narvii/app/NVCollapsibleTabFragment$1;-><init>(Lcom/narvii/app/NVCollapsibleTabFragment;)V

    .line 23
    .line 24
    iput-object v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->onPageChangeListener:Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;

    .line 25
    const/4 v0, 0x0

    .line 26
    .line 27
    iput v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->refreshingCount:I

    .line 28
    .line 29
    new-instance v0, Lcom/narvii/app/NVCollapsibleTabFragment$2;

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, p0}, Lcom/narvii/app/NVCollapsibleTabFragment$2;-><init>(Lcom/narvii/app/NVCollapsibleTabFragment;)V

    .line 33
    .line 34
    iput-object v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->headerRefreshCallback:Lcom/narvii/util/Callback;

    .line 35
    .line 36
    new-instance v0, Lcom/narvii/app/NVCollapsibleTabFragment$3;

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, p0}, Lcom/narvii/app/NVCollapsibleTabFragment$3;-><init>(Lcom/narvii/app/NVCollapsibleTabFragment;)V

    .line 40
    .line 41
    iput-object v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->bodyRefreshCallback:Lcom/narvii/util/Callback;

    .line 42
    .line 43
    new-instance v0, Lcom/narvii/app/NVCollapsibleTabFragment$5;

    .line 44
    .line 45
    .line 46
    invoke-direct {v0, p0}, Lcom/narvii/app/NVCollapsibleTabFragment$5;-><init>(Lcom/narvii/app/NVCollapsibleTabFragment;)V

    .line 47
    .line 48
    iput-object v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->observer:Landroid/database/DataSetObserver;

    .line 49
    return-void
.end method

.method static bridge synthetic n(Lcom/narvii/app/NVCollapsibleTabFragment;)Lcom/narvii/util/Callback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->bodyRefreshCallback:Lcom/narvii/util/Callback;

    return-object p0
.end method

.method static bridge synthetic o(Lcom/narvii/app/NVCollapsibleTabFragment;)Lcom/narvii/util/Callback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->headerRefreshCallback:Lcom/narvii/util/Callback;

    return-object p0
.end method

.method static bridge synthetic p(Lcom/narvii/app/NVCollapsibleTabFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->refreshingCount:I

    return p0
.end method

.method static bridge synthetic q(Lcom/narvii/app/NVCollapsibleTabFragment;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->refreshingCount:I

    return-void
.end method

.method private setupSwipeRefreshLayout()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    new-instance v1, Lcom/narvii/app/NVCollapsibleTabFragment$4;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, p0}, Lcom/narvii/app/NVCollapsibleTabFragment$4;-><init>(Lcom/narvii/app/NVCollapsibleTabFragment;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setOnRefreshListener(Lcom/narvii/list/refresh/SwipeRefreshLayout$OnRefreshListener;)V

    .line 14
    .line 15
    const-string v0, "config"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-interface {v0}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    .line 31
    move-result v0

    .line 32
    .line 33
    .line 34
    filled-new-array {v0}, [I

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setColorSchemeColors([I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/narvii/app/NVCollapsibleTabFragment;->swipeTopOffset()I

    .line 42
    move-result v0

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    sget v2, Lcom/narvii/lib/R$dimen;->swipe_refresh_start:I

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 52
    move-result v1

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 56
    move-result-object v2

    .line 57
    .line 58
    sget v3, Lcom/narvii/lib/R$dimen;->swipe_refresh_end:I

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 62
    move-result v2

    .line 63
    .line 64
    iget-object v3, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 65
    add-int/2addr v1, v0

    .line 66
    add-int/2addr v0, v2

    .line 67
    const/4 v2, 0x0

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3, v2, v1, v0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->setProgressViewOffset(ZII)V

    .line 71
    return-void
.end method


# virtual methods
.method protected abstract bodyLayoutId()I
.end method

.method public createAdapter()Lcom/narvii/app/NVScrollablePagerAdapter;
    .locals 11

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->realPositions:Landroid/util/SparseArray;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->positionToIndexMap:Landroid/util/SparseArray;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 19
    move-result v1

    .line 20
    .line 21
    const-string v2, "_"

    .line 22
    const/4 v3, 0x0

    .line 23
    .line 24
    if-eqz v1, :cond_2

    .line 25
    const/4 v1, 0x7

    .line 26
    .line 27
    :goto_0
    if-ltz v1, :cond_5

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVCollapsibleTabFragment;->getTabLabel(I)Ljava/lang/String;

    .line 31
    move-result-object v6

    .line 32
    .line 33
    if-eqz v6, :cond_1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVCollapsibleTabFragment;->getFragment(I)Ljava/lang/Class;

    .line 37
    move-result-object v8

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVCollapsibleTabFragment;->getBundles(I)Landroid/os/Bundle;

    .line 41
    move-result-object v9

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVCollapsibleTabFragment;->getIconDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 45
    move-result-object v4

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v6, v4}, Lcom/narvii/app/NVCollapsibleTabFragment;->getTabView(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/view/View;

    .line 49
    move-result-object v4

    .line 50
    .line 51
    if-nez v4, :cond_0

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVCollapsibleTabFragment;->getIconDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 55
    move-result-object v4

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v1, v6, v4}, Lcom/narvii/app/NVCollapsibleTabFragment;->getTabView(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/view/View;

    .line 59
    move-result-object v4

    .line 60
    :cond_0
    move-object v7, v4

    .line 61
    .line 62
    new-instance v4, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 75
    move-result-object v5

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object v5

    .line 83
    .line 84
    new-instance v10, Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;

    .line 85
    move-object v4, v10

    .line 86
    .line 87
    .line 88
    invoke-direct/range {v4 .. v9}, Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    iget-object v4, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->realPositions:Landroid/util/SparseArray;

    .line 94
    .line 95
    .line 96
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    move-result-object v5

    .line 98
    .line 99
    .line 100
    invoke-virtual {v4, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 101
    .line 102
    iget-object v4, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->positionToIndexMap:Landroid/util/SparseArray;

    .line 103
    .line 104
    .line 105
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    move-result-object v5

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 110
    .line 111
    add-int/lit8 v3, v3, 0x1

    .line 112
    .line 113
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 114
    goto :goto_0

    .line 115
    :cond_2
    move v1, v3

    .line 116
    .line 117
    :goto_1
    const/16 v4, 0x8

    .line 118
    .line 119
    if-ge v3, v4, :cond_5

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVCollapsibleTabFragment;->getTabLabel(I)Ljava/lang/String;

    .line 123
    move-result-object v7

    .line 124
    .line 125
    if-eqz v7, :cond_4

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVCollapsibleTabFragment;->getFragment(I)Ljava/lang/Class;

    .line 129
    move-result-object v9

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVCollapsibleTabFragment;->getBundles(I)Landroid/os/Bundle;

    .line 133
    move-result-object v10

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVCollapsibleTabFragment;->getIconDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 137
    move-result-object v4

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0, v7, v4}, Lcom/narvii/app/NVCollapsibleTabFragment;->getTabView(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/view/View;

    .line 141
    move-result-object v4

    .line 142
    .line 143
    if-nez v4, :cond_3

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVCollapsibleTabFragment;->getIconDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 147
    move-result-object v4

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0, v3, v7, v4}, Lcom/narvii/app/NVCollapsibleTabFragment;->getTabView(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/view/View;

    .line 151
    move-result-object v4

    .line 152
    :cond_3
    move-object v8, v4

    .line 153
    .line 154
    new-instance v4, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 167
    move-result-object v5

    .line 168
    .line 169
    .line 170
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    move-result-object v6

    .line 175
    .line 176
    new-instance v4, Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;

    .line 177
    move-object v5, v4

    .line 178
    .line 179
    .line 180
    invoke-direct/range {v5 .. v10}, Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    .line 185
    iget-object v4, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->realPositions:Landroid/util/SparseArray;

    .line 186
    .line 187
    .line 188
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 189
    move-result-object v5

    .line 190
    .line 191
    .line 192
    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 193
    .line 194
    iget-object v4, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->positionToIndexMap:Landroid/util/SparseArray;

    .line 195
    .line 196
    .line 197
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 198
    move-result-object v5

    .line 199
    .line 200
    .line 201
    invoke-virtual {v4, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 202
    .line 203
    add-int/lit8 v1, v1, 0x1

    .line 204
    .line 205
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 206
    goto :goto_1

    .line 207
    .line 208
    :cond_5
    new-instance v1, Lcom/narvii/app/NVCollapsibleTabFragment$6;

    .line 209
    .line 210
    .line 211
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 212
    move-result-object v2

    .line 213
    .line 214
    .line 215
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 216
    move-result-object v3

    .line 217
    .line 218
    .line 219
    invoke-direct {v1, p0, v2, v3}, Lcom/narvii/app/NVCollapsibleTabFragment$6;-><init>(Lcom/narvii/app/NVCollapsibleTabFragment;Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v1, v0}, Lcom/narvii/app/NVScrollablePagerAdapter;->setTabs(Ljava/util/List;)V

    .line 223
    return-object v1
.end method

.method protected defaultTabIndex()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getBodyView()Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->collapsibleLayout:Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->getBottomView()Landroid/view/ViewGroup;

    .line 10
    move-result-object v0

    .line 11
    :goto_0
    return-object v0
.end method

.method protected getBundles(I)Landroid/os/Bundle;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getCurIndex()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->viewPager:Lcom/narvii/widget/NVViewPager;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public getCurrentFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVCollapsibleTabFragment;->getCurIndex()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVCollapsibleTabFragment;->getFragmentAtIndex(I)Landroidx/fragment/app/Fragment;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method protected abstract getFragment(I)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/app/NVFragment;",
            ">;"
        }
    .end annotation
.end method

.method public getFragmentAtIndex(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->pagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/app/NVScrollablePagerAdapter;->getFragmentAt(I)Landroidx/fragment/app/Fragment;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method protected getIconDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getIndexOfRealPosition(I)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->positionToIndexMap:Landroid/util/SparseArray;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Ljava/lang/Integer;

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    const/4 p1, -0x1

    .line 12
    return p1

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method protected getPagerAdapter()Lcom/narvii/app/NVScrollablePagerAdapter;
    .locals 1

    iget-object v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->pagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    return-object v0
.end method

.method public getRealPositionOfIndex(I)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->realPositions:Landroid/util/SparseArray;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Ljava/lang/Integer;

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    const/4 p1, -0x1

    .line 12
    return p1

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public getScrollableTabLayout()Lcom/narvii/widget/NVPagerTabLayout;
    .locals 1

    iget-object v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    return-object v0
.end method

.method protected abstract getTabLabel(I)Ljava/lang/String;
.end method

.method protected getTabView(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/view/View;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getTabView(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/view/View;
    .locals 0

    .line 2
    const/4 p1, 0x0

    return-object p1
.end method

.method protected abstract headerLayoutId()I
.end method

.method protected isScrollable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
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
    sget p3, Lcom/narvii/lib/R$layout;->fragment_collapsible_tab_layout:I

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

.method public onDestroyView()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroyView()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->pagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->observer:Landroid/database/DataSetObserver;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 11
    return-void
.end method

.method public onHeaderCollapsed()V
    .locals 0

    return-void
.end method

.method public onHeaderExpanded()V
    .locals 0

    return-void
.end method

.method public onHeaderOffsetChanged(IIFZ)V
    .locals 0

    return-void
.end method

.method public onHeaderStartCollapsing()V
    .locals 0

    return-void
.end method

.method public onHeaderStartExpanding()V
    .locals 0

    return-void
.end method

.method public onRefresh()V
    .locals 0

    return-void
.end method

.method protected onSubFragmentCreated(Landroidx/fragment/app/Fragment;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVCollapsibleTabFragment;->useUniformSwipeRefresh()Z

    .line 4
    move-result p2

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    instance-of p2, p1, Lcom/narvii/list/NVListFragment;

    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    check-cast p1, Lcom/narvii/list/NVListFragment;

    .line 13
    const/4 p2, 0x2

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2}, Lcom/narvii/list/NVListFragment;->setOverScrollMode(I)V

    .line 17
    const/4 p2, 0x0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2}, Lcom/narvii/list/NVListFragment;->setSwipeRefreshEnabled(Z)V

    .line 21
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
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
    sget p2, Lcom/narvii/lib/R$id;->collapsible_layout:I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object p2

    .line 10
    .line 11
    check-cast p2, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->collapsibleLayout:Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/app/NVCollapsibleTabFragment;->headerLayoutId()I

    .line 17
    move-result v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, v0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->setTopLayout(I)V

    .line 21
    .line 22
    iget-object p2, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->collapsibleLayout:Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/narvii/app/NVCollapsibleTabFragment;->bodyLayoutId()I

    .line 26
    move-result v0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, v0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->setBottomLayout(I)V

    .line 30
    .line 31
    iget-object p2, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->collapsibleLayout:Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, p0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->addOnHeaderStatusChangedListener(Lcom/narvii/widget/headercollapse/OnHeaderStatusChangedListener;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/narvii/app/NVCollapsibleTabFragment;->createAdapter()Lcom/narvii/app/NVScrollablePagerAdapter;

    .line 38
    move-result-object p2

    .line 39
    .line 40
    iput-object p2, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->pagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getUserVisibleHint()Z

    .line 44
    move-result v0

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, v0}, Lcom/narvii/util/NoDetachFragmentPagerAdapter;->setUserVisibleHint(Z)V

    .line 48
    .line 49
    iget-object p2, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->pagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    .line 50
    .line 51
    iget-object v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->observer:Landroid/database/DataSetObserver;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, v0}, Landroidx/viewpager/widget/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 55
    .line 56
    sget p2, Lcom/narvii/lib/R$id;->viewpager:I

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 60
    move-result-object p2

    .line 61
    .line 62
    check-cast p2, Lcom/narvii/widget/NVViewPager;

    .line 63
    .line 64
    iput-object p2, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->viewPager:Lcom/narvii/widget/NVViewPager;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/narvii/app/NVCollapsibleTabFragment;->isScrollable()Z

    .line 68
    move-result v0

    .line 69
    .line 70
    xor-int/lit8 v0, v0, 0x1

    .line 71
    .line 72
    iput-boolean v0, p2, Lcom/narvii/widget/NVViewPager;->disableScroll:Z

    .line 73
    .line 74
    iget-object p2, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->viewPager:Lcom/narvii/widget/NVViewPager;

    .line 75
    .line 76
    iget-object v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->pagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 80
    .line 81
    iget-object p2, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->viewPager:Lcom/narvii/widget/NVViewPager;

    .line 82
    .line 83
    iget-object v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->onPageChangeListener:Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 87
    .line 88
    iget-object p2, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->viewPager:Lcom/narvii/widget/NVViewPager;

    .line 89
    .line 90
    iget-object v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->pagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2, v0}, Lcom/narvii/widget/NVViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 94
    .line 95
    sget p2, Lcom/narvii/lib/R$id;->tabs:I

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 99
    move-result-object p2

    .line 100
    .line 101
    check-cast p2, Lcom/narvii/widget/NVPagerTabLayout;

    .line 102
    .line 103
    iput-object p2, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    .line 104
    .line 105
    iget-object v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->viewPager:Lcom/narvii/widget/NVViewPager;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2, v0}, Lcom/narvii/widget/NVPagerTabLayout;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 109
    .line 110
    iget-object p2, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->viewPager:Lcom/narvii/widget/NVViewPager;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Lcom/narvii/app/NVCollapsibleTabFragment;->defaultTabIndex()I

    .line 114
    move-result v0

    .line 115
    .line 116
    .line 117
    invoke-virtual {p2, v0}, Lcom/narvii/widget/NVViewPager;->setCurrentItem(I)V

    .line 118
    .line 119
    iget-object p2, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->viewPager:Lcom/narvii/widget/NVViewPager;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p2}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 123
    move-result p2

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVCollapsibleTabFragment;->updateTabView(I)V

    .line 127
    .line 128
    sget p2, Lcom/narvii/lib/R$id;->swipe_refresh_layout:I

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 132
    move-result-object p1

    .line 133
    .line 134
    check-cast p1, Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 135
    .line 136
    iput-object p1, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 137
    .line 138
    .line 139
    invoke-direct {p0}, Lcom/narvii/app/NVCollapsibleTabFragment;->setupSwipeRefreshLayout()V

    .line 140
    return-void
.end method

.method public resetAdapter()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/narvii/app/NVCollapsibleTabFragment;->defaultTabIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVCollapsibleTabFragment;->resetAdapter(I)V

    return-void
.end method

.method public resetAdapter(I)V
    .locals 2

    iget-object v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->pagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->observer:Landroid/database/DataSetObserver;

    .line 2
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->viewPager:Lcom/narvii/widget/NVViewPager;

    iget-object v1, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->pagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    .line 3
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVCollapsibleTabFragment;->createAdapter()Lcom/narvii/app/NVScrollablePagerAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->pagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    iget-object v1, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->viewPager:Lcom/narvii/widget/NVViewPager;

    .line 5
    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    iget-object v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->viewPager:Lcom/narvii/widget/NVViewPager;

    iget-object v1, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->pagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    .line 6
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iget-object v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->scrollableTabLayout:Lcom/narvii/widget/NVPagerTabLayout;

    .line 7
    invoke-virtual {v0}, Lcom/narvii/widget/NVPagerTabLayout;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->pagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    iget-object v1, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->observer:Landroid/database/DataSetObserver;

    .line 8
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :try_start_1
    iget-object v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->viewPager:Lcom/narvii/widget/NVViewPager;

    .line 9
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVViewPager;->setCurrentItem(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

.method protected sendHeaderRequest(Lcom/narvii/util/Callback;)V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->refreshingCount:I

    .line 3
    .line 4
    add-int/lit8 v0, v0, 0x1

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->refreshingCount:I

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    .line 12
    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 13
    :cond_0
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->setUserVisibleHint(Z)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->pagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/narvii/util/NoDetachFragmentPagerAdapter;->setUserVisibleHint(Z)V

    .line 11
    :cond_0
    return-void
.end method

.method protected stickyFooterLayoutId()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected swipeTopOffset()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-lez v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    .line 10
    move-result v1

    .line 11
    add-int/2addr v0, v1

    .line 12
    :cond_0
    return v0
.end method

.method protected updateChildrenVisibleHint(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/NVCollapsibleTabFragment;->pagerAdapter:Lcom/narvii/app/NVScrollablePagerAdapter;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/narvii/util/NoDetachFragmentPagerAdapter;->setUserVisibleHint(Z)V

    .line 8
    :cond_0
    return-void
.end method

.method protected updateTabView(I)V
    .locals 0

    return-void
.end method

.method protected useUniformSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
