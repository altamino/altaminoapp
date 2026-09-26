.class public Lcom/narvii/master/MasterShareTabHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final RECORD_HEIGHT_MAX_ITEM_COUNT:I = 0xa

.field public static final SCROLLY_THRESHOLD:I = 0x78


# instance fields
.field private itemHeightArray:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field listFragment:Lcom/narvii/list/NVListFragment;

.field private listView:Landroid/widget/ListView;

.field private masterTabOffsetView:Landroid/view/View;

.field private masterTopBar:Lcom/narvii/master/MasterTopBar;

.field onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private preferencesHelper:Lcom/narvii/util/PreferencesHelper;

.field private tabScrollTogether:Z

.field private topOffsetHeight:I


# direct methods
.method public constructor <init>(Lcom/narvii/list/NVListFragment;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/master/MasterShareTabHelper;->itemHeightArray:Ljava/util/HashMap;

    .line 3
    new-instance v0, Lcom/narvii/master/MasterShareTabHelper$1;

    invoke-direct {v0, p0}, Lcom/narvii/master/MasterShareTabHelper$1;-><init>(Lcom/narvii/master/MasterShareTabHelper;)V

    iput-object v0, p0, Lcom/narvii/master/MasterShareTabHelper;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    iput-object p1, p0, Lcom/narvii/master/MasterShareTabHelper;->listFragment:Lcom/narvii/list/NVListFragment;

    .line 4
    new-instance v0, Lcom/narvii/util/PreferencesHelper;

    invoke-direct {v0, p1}, Lcom/narvii/util/PreferencesHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/master/MasterShareTabHelper;->preferencesHelper:Lcom/narvii/util/PreferencesHelper;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/list/NVListFragment;Z)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/master/MasterShareTabHelper;-><init>(Lcom/narvii/list/NVListFragment;)V

    iput-boolean p2, p0, Lcom/narvii/master/MasterShareTabHelper;->tabScrollTogether:Z

    return-void
.end method

.method private IsBeyondScrollY(Landroid/widget/AbsListView;)Z
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    move v1, v0

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 16
    move-result v1

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 20
    move-result v2

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 24
    move-result v3

    .line 25
    .line 26
    if-eqz v3, :cond_7

    .line 27
    move v4, v0

    .line 28
    .line 29
    :goto_1
    const/16 v5, 0xa

    .line 30
    .line 31
    if-ge v4, v3, :cond_3

    .line 32
    .line 33
    add-int v6, v2, v4

    .line 34
    .line 35
    if-ge v6, v5, :cond_3

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 39
    move-result-object v5

    .line 40
    .line 41
    if-eqz v5, :cond_2

    .line 42
    .line 43
    iget-object v7, p0, Lcom/narvii/master/MasterShareTabHelper;->itemHeightArray:Ljava/util/HashMap;

    .line 44
    .line 45
    .line 46
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    move-result-object v6

    .line 48
    .line 49
    .line 50
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 51
    move-result v5

    .line 52
    .line 53
    .line 54
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    move-result-object v5

    .line 56
    .line 57
    .line 58
    invoke-virtual {v7, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 61
    goto :goto_1

    .line 62
    .line 63
    .line 64
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    const/high16 v3, 0x42f00000    # 120.0f

    .line 68
    .line 69
    .line 70
    invoke-static {p1, v3}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 71
    move-result p1

    .line 72
    move v3, v0

    .line 73
    move v4, v3

    .line 74
    .line 75
    .line 76
    :goto_2
    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    .line 77
    move-result v6

    .line 78
    const/4 v7, 0x1

    .line 79
    .line 80
    if-ge v3, v6, :cond_6

    .line 81
    .line 82
    iget-object v6, p0, Lcom/narvii/master/MasterShareTabHelper;->itemHeightArray:Ljava/util/HashMap;

    .line 83
    .line 84
    .line 85
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    move-result-object v8

    .line 87
    .line 88
    .line 89
    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    move-result-object v6

    .line 91
    .line 92
    check-cast v6, Ljava/lang/Integer;

    .line 93
    .line 94
    if-nez v6, :cond_4

    .line 95
    move v6, v0

    .line 96
    goto :goto_3

    .line 97
    .line 98
    .line 99
    :cond_4
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 100
    move-result v6

    .line 101
    :goto_3
    add-int/2addr v4, v6

    .line 102
    .line 103
    if-le v4, p1, :cond_5

    .line 104
    move v0, v7

    .line 105
    goto :goto_4

    .line 106
    .line 107
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 108
    goto :goto_2

    .line 109
    :cond_6
    :goto_4
    sub-int/2addr v4, v1

    .line 110
    .line 111
    if-le v4, p1, :cond_8

    .line 112
    move v0, v7

    .line 113
    goto :goto_5

    .line 114
    .line 115
    .line 116
    :cond_7
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    .line 117
    move-result-object v1

    .line 118
    .line 119
    if-eqz v1, :cond_8

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    .line 123
    move-result-object p1

    .line 124
    .line 125
    check-cast p1, Landroid/widget/ListAdapter;

    .line 126
    .line 127
    .line 128
    invoke-interface {p1}, Landroid/widget/Adapter;->getCount()I

    .line 129
    move-result p1

    .line 130
    .line 131
    if-nez p1, :cond_8

    .line 132
    .line 133
    iget-object p1, p0, Lcom/narvii/master/MasterShareTabHelper;->itemHeightArray:Ljava/util/HashMap;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 137
    :cond_8
    :goto_5
    return v0
.end method

.method static bridge synthetic a(Lcom/narvii/master/MasterShareTabHelper;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/master/MasterShareTabHelper;->masterTabOffsetView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/narvii/master/MasterShareTabHelper;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/master/MasterShareTabHelper;->tabScrollTogether:Z

    return p0
.end method

.method static bridge synthetic c(Lcom/narvii/master/MasterShareTabHelper;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/master/MasterShareTabHelper;->topOffsetHeight:I

    return p0
.end method

.method private changeTopBarBaseOnScrollY()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/MasterShareTabHelper;->listView:Landroid/widget/ListView;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v1, p0, Lcom/narvii/master/MasterShareTabHelper;->masterTopBar:Lcom/narvii/master/MasterTopBar;

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    return-void

    .line 11
    .line 12
    .line 13
    :cond_1
    invoke-direct {p0, v0}, Lcom/narvii/master/MasterShareTabHelper;->IsBeyondScrollY(Landroid/widget/AbsListView;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/master/MasterShareTabHelper;->masterTopBar:Lcom/narvii/master/MasterTopBar;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/narvii/master/MasterTopBar;->expand()V

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_2
    iget-object v0, p0, Lcom/narvii/master/MasterShareTabHelper;->masterTopBar:Lcom/narvii/master/MasterTopBar;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/narvii/master/MasterTopBar;->collapse()V

    .line 28
    :goto_0
    return-void
.end method

.method static bridge synthetic d(Lcom/narvii/master/MasterShareTabHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/master/MasterShareTabHelper;->changeTopBarBaseOnScrollY()V

    return-void
.end method


# virtual methods
.method public attachToList(Lcom/narvii/widget/NVListView;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/MasterShareTabHelper;->listFragment:Lcom/narvii/list/NVListFragment;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/narvii/master/MasterTopOffsetAdapter;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/master/MasterTopOffsetAdapter;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Lcom/narvii/master/MasterTopOffsetAdapter;->topOffsetHeight()I

    .line 12
    move-result v0

    .line 13
    .line 14
    iput v0, p0, Lcom/narvii/master/MasterShareTabHelper;->topOffsetHeight:I

    .line 15
    .line 16
    :cond_0
    iput-object p1, p0, Lcom/narvii/master/MasterShareTabHelper;->listView:Landroid/widget/ListView;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/master/MasterShareTabHelper;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVListView;->addOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 22
    .line 23
    iget-object p1, p0, Lcom/narvii/master/MasterShareTabHelper;->listFragment:Lcom/narvii/list/NVListFragment;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    instance-of v0, p1, Lcom/narvii/master/MasterTabFragment;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    check-cast p1, Lcom/narvii/master/MasterTabFragment;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/narvii/master/MasterTabFragment;->getMasterTabTopOffset()Landroid/view/View;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    iput-object p1, p0, Lcom/narvii/master/MasterShareTabHelper;->masterTabOffsetView:Landroid/view/View;

    .line 40
    goto :goto_0

    .line 41
    .line 42
    :cond_1
    if-eqz p1, :cond_2

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    instance-of v0, v0, Lcom/narvii/master/MasterTabFragment;

    .line 49
    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    check-cast p1, Lcom/narvii/master/MasterTabFragment;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/narvii/master/MasterTabFragment;->getMasterTabTopOffset()Landroid/view/View;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    iput-object p1, p0, Lcom/narvii/master/MasterShareTabHelper;->masterTabOffsetView:Landroid/view/View;

    .line 63
    .line 64
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/narvii/master/MasterShareTabHelper;->masterTabOffsetView:Landroid/view/View;

    .line 65
    .line 66
    if-eqz p1, :cond_3

    .line 67
    .line 68
    .line 69
    const v0, 0x7f0a0852

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 73
    move-result-object p1

    .line 74
    .line 75
    check-cast p1, Lcom/narvii/master/MasterTopBar;

    .line 76
    .line 77
    iput-object p1, p0, Lcom/narvii/master/MasterShareTabHelper;->masterTopBar:Lcom/narvii/master/MasterTopBar;

    .line 78
    .line 79
    .line 80
    :cond_3
    invoke-direct {p0}, Lcom/narvii/master/MasterShareTabHelper;->changeTopBarBaseOnScrollY()V

    .line 81
    return-void
.end method

.method public getItemHeightArray()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/MasterShareTabHelper;->itemHeightArray:Ljava/util/HashMap;

    return-object v0
.end method

.method public resetOffsetViewTranslation()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/MasterShareTabHelper;->masterTabOffsetView:Landroid/view/View;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/master/MasterShareTabHelper;->masterTabOffsetView:Landroid/view/View;

    .line 13
    const/4 v1, 0x0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 17
    .line 18
    iget-boolean v0, p0, Lcom/narvii/master/MasterShareTabHelper;->tabScrollTogether:Z

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lcom/narvii/master/MasterShareTabHelper;->changeTopBarBaseOnScrollY()V

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_1
    iget-object v0, p0, Lcom/narvii/master/MasterShareTabHelper;->masterTopBar:Lcom/narvii/master/MasterTopBar;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/narvii/master/MasterTopBar;->collapse()V

    .line 30
    :goto_0
    return-void
.end method

.method public setItemHeightArray(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/narvii/master/MasterShareTabHelper;->itemHeightArray:Ljava/util/HashMap;

    return-void
.end method
