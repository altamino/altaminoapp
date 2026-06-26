.class public Lcom/narvii/master/MasterShareTabHelper;
.super Ljava/lang/Object;
.source "MasterShareTabHelper.java"


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

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/master/MasterShareTabHelper;->itemHeightArray:Ljava/util/HashMap;

    .line 75
    new-instance v0, Lcom/narvii/master/MasterShareTabHelper$1;

    invoke-direct {v0, p0}, Lcom/narvii/master/MasterShareTabHelper$1;-><init>(Lcom/narvii/master/MasterShareTabHelper;)V

    iput-object v0, p0, Lcom/narvii/master/MasterShareTabHelper;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 37
    iput-object p1, p0, Lcom/narvii/master/MasterShareTabHelper;->listFragment:Lcom/narvii/list/NVListFragment;

    .line 38
    new-instance v0, Lcom/narvii/util/PreferencesHelper;

    invoke-direct {v0, p1}, Lcom/narvii/util/PreferencesHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/master/MasterShareTabHelper;->preferencesHelper:Lcom/narvii/util/PreferencesHelper;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/list/NVListFragment;Z)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/narvii/master/MasterShareTabHelper;-><init>(Lcom/narvii/list/NVListFragment;)V

    .line 43
    iput-boolean p2, p0, Lcom/narvii/master/MasterShareTabHelper;->tabScrollTogether:Z

    return-void
.end method

.method private IsBeyondScrollY(Landroid/widget/AbsListView;)Z
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 133
    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 134
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 135
    :goto_0
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v2

    .line 138
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_7

    const/4 v4, 0x0

    :goto_1
    const/16 v5, 0xa

    if-ge v4, v3, :cond_3

    add-int v6, v2, v4

    if-ge v6, v5, :cond_3

    .line 141
    invoke-virtual {p1, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 143
    iget-object v7, p0, Lcom/narvii/master/MasterShareTabHelper;->itemHeightArray:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 147
    :cond_3
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v3, 0x42f00000    # 120.0f

    invoke-static {p1, v3}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 149
    :goto_2
    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/4 v7, 0x1

    if-ge v3, v6, :cond_6

    .line 150
    iget-object v6, p0, Lcom/narvii/master/MasterShareTabHelper;->itemHeightArray:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-nez v6, :cond_4

    const/4 v6, 0x0

    goto :goto_3

    .line 151
    :cond_4
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :goto_3
    add-int/2addr v4, v6

    if-le v4, p1, :cond_5

    const/4 v0, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    :goto_4
    sub-int/2addr v4, v1

    if-le v4, p1, :cond_8

    const/4 v0, 0x1

    goto :goto_5

    .line 163
    :cond_7
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result p1

    if-nez p1, :cond_8

    .line 164
    iget-object p1, p0, Lcom/narvii/master/MasterShareTabHelper;->itemHeightArray:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    :cond_8
    :goto_5
    return v0
.end method

.method static synthetic access$000(Lcom/narvii/master/MasterShareTabHelper;)Landroid/view/View;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/narvii/master/MasterShareTabHelper;->masterTabOffsetView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/master/MasterShareTabHelper;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lcom/narvii/master/MasterShareTabHelper;->tabScrollTogether:Z

    return p0
.end method

.method static synthetic access$200(Lcom/narvii/master/MasterShareTabHelper;)I
    .locals 0

    .line 20
    iget p0, p0, Lcom/narvii/master/MasterShareTabHelper;->topOffsetHeight:I

    return p0
.end method

.method static synthetic access$300(Lcom/narvii/master/MasterShareTabHelper;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/narvii/master/MasterShareTabHelper;->changeTopBarBaseOnScrollY()V

    return-void
.end method

.method private changeTopBarBaseOnScrollY()V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/narvii/master/MasterShareTabHelper;->listView:Landroid/widget/ListView;

    if-nez v0, :cond_0

    return-void

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/narvii/master/MasterShareTabHelper;->masterTopBar:Lcom/narvii/master/MasterTopBar;

    if-nez v1, :cond_1

    return-void

    .line 121
    :cond_1
    invoke-direct {p0, v0}, Lcom/narvii/master/MasterShareTabHelper;->IsBeyondScrollY(Landroid/widget/AbsListView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    iget-object v0, p0, Lcom/narvii/master/MasterShareTabHelper;->masterTopBar:Lcom/narvii/master/MasterTopBar;

    invoke-virtual {v0}, Lcom/narvii/master/MasterTopBar;->expand()V

    goto :goto_0

    .line 125
    :cond_2
    iget-object v0, p0, Lcom/narvii/master/MasterShareTabHelper;->masterTopBar:Lcom/narvii/master/MasterTopBar;

    invoke-virtual {v0}, Lcom/narvii/master/MasterTopBar;->collapse()V

    :goto_0
    return-void
.end method


# virtual methods
.method public attachToList(Lcom/narvii/widget/NVListView;)V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/narvii/master/MasterShareTabHelper;->listFragment:Lcom/narvii/list/NVListFragment;

    instance-of v1, v0, Lcom/narvii/master/MasterTopOffsetAdapter;

    if-eqz v1, :cond_0

    .line 49
    check-cast v0, Lcom/narvii/master/MasterTopOffsetAdapter;

    invoke-interface {v0}, Lcom/narvii/master/MasterTopOffsetAdapter;->topOffsetHeight()I

    move-result v0

    iput v0, p0, Lcom/narvii/master/MasterShareTabHelper;->topOffsetHeight:I

    .line 51
    :cond_0
    iput-object p1, p0, Lcom/narvii/master/MasterShareTabHelper;->listView:Landroid/widget/ListView;

    .line 52
    iget-object v0, p0, Lcom/narvii/master/MasterShareTabHelper;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVListView;->addOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 53
    iget-object p1, p0, Lcom/narvii/master/MasterShareTabHelper;->listFragment:Lcom/narvii/list/NVListFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    .line 54
    instance-of v0, p1, Lcom/narvii/master/MasterTabFragment;

    if-eqz v0, :cond_1

    .line 55
    check-cast p1, Lcom/narvii/master/MasterTabFragment;

    invoke-virtual {p1}, Lcom/narvii/master/MasterTabFragment;->getMasterTabTopOffset()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/master/MasterShareTabHelper;->masterTabOffsetView:Landroid/view/View;

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 56
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/master/MasterTabFragment;

    if-eqz v0, :cond_2

    .line 57
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/narvii/master/MasterTabFragment;

    invoke-virtual {p1}, Lcom/narvii/master/MasterTabFragment;->getMasterTabTopOffset()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/master/MasterShareTabHelper;->masterTabOffsetView:Landroid/view/View;

    .line 60
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/narvii/master/MasterShareTabHelper;->masterTabOffsetView:Landroid/view/View;

    if-eqz p1, :cond_3

    const v0, 0x7f0906c4

    .line 61
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/master/MasterTopBar;

    iput-object p1, p0, Lcom/narvii/master/MasterShareTabHelper;->masterTopBar:Lcom/narvii/master/MasterTopBar;

    .line 64
    :cond_3
    invoke-direct {p0}, Lcom/narvii/master/MasterShareTabHelper;->changeTopBarBaseOnScrollY()V

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

    .line 68
    iget-object v0, p0, Lcom/narvii/master/MasterShareTabHelper;->itemHeightArray:Ljava/util/HashMap;

    return-object v0
.end method

.method public resetOffsetViewTranslation()V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/narvii/master/MasterShareTabHelper;->masterTabOffsetView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 175
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 176
    iget-object v0, p0, Lcom/narvii/master/MasterShareTabHelper;->masterTabOffsetView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 177
    iget-boolean v0, p0, Lcom/narvii/master/MasterShareTabHelper;->tabScrollTogether:Z

    if-nez v0, :cond_1

    .line 178
    invoke-direct {p0}, Lcom/narvii/master/MasterShareTabHelper;->changeTopBarBaseOnScrollY()V

    goto :goto_0

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/narvii/master/MasterShareTabHelper;->masterTopBar:Lcom/narvii/master/MasterTopBar;

    invoke-virtual {v0}, Lcom/narvii/master/MasterTopBar;->collapse()V

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

    .line 72
    iput-object p1, p0, Lcom/narvii/master/MasterShareTabHelper;->itemHeightArray:Ljava/util/HashMap;

    return-void
.end method
