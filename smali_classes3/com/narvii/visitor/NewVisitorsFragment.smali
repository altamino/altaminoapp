.class public final Lcom/narvii/visitor/NewVisitorsFragment;
.super Lcom/narvii/paging/NVRecyclerViewFragment;
.source "NewVisitorsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/visitor/NewVisitorsFragment$Adapter;,
        Lcom/narvii/visitor/NewVisitorsFragment$InnerViewHolder;,
        Lcom/narvii/visitor/NewVisitorsFragment$DataSource;,
        Lcom/narvii/visitor/NewVisitorsFragment$CommunityWrapperListResponse;,
        Lcom/narvii/visitor/NewVisitorsFragment$CommunityWrapper;
    }
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private innerDataSource:Lcom/narvii/visitor/NewVisitorsFragment$DataSource;

.field private stopTime:Ljava/lang/String;

.field private visitorSum:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;-><init>()V

    const-string v0, ""

    .line 32
    iput-object v0, p0, Lcom/narvii/visitor/NewVisitorsFragment;->stopTime:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getInnerDataSource$p(Lcom/narvii/visitor/NewVisitorsFragment;)Lcom/narvii/visitor/NewVisitorsFragment$DataSource;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/narvii/visitor/NewVisitorsFragment;->innerDataSource:Lcom/narvii/visitor/NewVisitorsFragment$DataSource;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "innerDataSource"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getStopTime$p(Lcom/narvii/visitor/NewVisitorsFragment;)Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/narvii/visitor/NewVisitorsFragment;->stopTime:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getVisitorSum$p(Lcom/narvii/visitor/NewVisitorsFragment;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/narvii/visitor/NewVisitorsFragment;->visitorSum:I

    return p0
.end method

.method public static final synthetic access$getVisitorsCountText(Lcom/narvii/visitor/NewVisitorsFragment;I)Ljava/lang/String;
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/narvii/visitor/NewVisitorsFragment;->getVisitorsCountText(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setInnerDataSource$p(Lcom/narvii/visitor/NewVisitorsFragment;Lcom/narvii/visitor/NewVisitorsFragment$DataSource;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/narvii/visitor/NewVisitorsFragment;->innerDataSource:Lcom/narvii/visitor/NewVisitorsFragment$DataSource;

    return-void
.end method

.method public static final synthetic access$setStopTime$p(Lcom/narvii/visitor/NewVisitorsFragment;Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/narvii/visitor/NewVisitorsFragment;->stopTime:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setVisitorSum$p(Lcom/narvii/visitor/NewVisitorsFragment;I)V
    .locals 0

    .line 30
    iput p1, p0, Lcom/narvii/visitor/NewVisitorsFragment;->visitorSum:I

    return-void
.end method

.method public static final synthetic access$updateTitle(Lcom/narvii/visitor/NewVisitorsFragment;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/narvii/visitor/NewVisitorsFragment;->updateTitle()V

    return-void
.end method

.method private final getVisitorsCountText(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    const v1, 0x7f0f0750

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 159
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(R.string.have_new_visitors_hint, count)"

    goto :goto_0

    :cond_0
    const p1, 0x7f0f074f

    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(R.string.have_new_visitor_hint)"

    :goto_0
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final updateTitle()V
    .locals 2

    .line 155
    iget v0, p0, Lcom/narvii/visitor/NewVisitorsFragment;->visitorSum:I

    if-lez v0, :cond_0

    invoke-direct {p0, v0}, Lcom/narvii/visitor/NewVisitorsFragment;->getVisitorsCountText(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const v0, 0x7f0f0c23

    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.new_visitor)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/visitor/NewVisitorsFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/visitor/NewVisitorsFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/visitor/NewVisitorsFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/visitor/NewVisitorsFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/visitor/NewVisitorsFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method protected createAdapter()Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
    .locals 1

    .line 45
    new-instance v0, Lcom/narvii/visitor/NewVisitorsFragment$Adapter;

    invoke-direct {v0, p0, p0}, Lcom/narvii/visitor/NewVisitorsFragment$Adapter;-><init>(Lcom/narvii/visitor/NewVisitorsFragment;Lcom/narvii/app/NVContext;)V

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "NewVisitors"

    return-object v0
.end method

.method public initNVTheme()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public isGlobal()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected isRefreshEnable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 37
    invoke-super {p0, p1}, Lcom/narvii/paging/NVRecyclerViewFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "stoptime"

    .line 38
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/visitor/NewVisitorsFragment;->stopTime:Ljava/lang/String;

    .line 39
    invoke-direct {p0}, Lcom/narvii/visitor/NewVisitorsFragment;->updateTitle()V

    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/narvii/visitor/NewVisitorsFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method
