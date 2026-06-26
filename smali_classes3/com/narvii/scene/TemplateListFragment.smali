.class public final Lcom/narvii/scene/TemplateListFragment;
.super Lcom/narvii/paging/NVRecyclerViewFragment;
.source "TemplateListFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/scene/TemplateListFragment$Adapter;,
        Lcom/narvii/scene/TemplateListFragment$TemplateViewHolder;,
        Lcom/narvii/scene/TemplateListFragment$HorizontalItemDecoration;,
        Lcom/narvii/scene/TemplateListFragment$OnChooseTemplateListener;,
        Lcom/narvii/scene/TemplateListFragment$TemplateDemoVideoListDelegate;,
        Lcom/narvii/scene/TemplateListFragment$TemplateVideoListController;,
        Lcom/narvii/scene/TemplateListFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTemplateListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TemplateListFragment.kt\ncom/narvii/scene/TemplateListFragment\n*L\n1#1,475:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/scene/TemplateListFragment$Companion;

.field public static final FROM_BLOG_PROMOTE:I = 0x1

.field public static final FROM_SCENE_EDITOR:I = 0x2


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final animRate:D

.field private autoPlaying:Z

.field public desc:Landroid/widget/TextView;

.field private from:I

.field private isShowing:Z

.field public linearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private onChooseTemplateListener:Lcom/narvii/scene/TemplateListFragment$OnChooseTemplateListener;

.field private final pageLoadState:Lcom/narvii/paging/state/PageLoadState;

.field private final scaleDecrease:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final scaleIncrease:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private scrollX:I

.field private selectedPosition:I

.field private final templateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/scene/model/TemplateConfig;",
            ">;"
        }
    .end annotation
.end field

.field public title:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/scene/TemplateListFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/scene/TemplateListFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/scene/TemplateListFragment;->Companion:Lcom/narvii/scene/TemplateListFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/scene/TemplateListFragment;->templateList:Ljava/util/List;

    .line 56
    new-instance v0, Lcom/narvii/paging/state/PageLoadState;

    invoke-direct {v0}, Lcom/narvii/paging/state/PageLoadState;-><init>()V

    iput-object v0, p0, Lcom/narvii/scene/TemplateListFragment;->pageLoadState:Lcom/narvii/paging/state/PageLoadState;

    const-wide v0, 0x3fbeb851eb851eb8L    # 0.12

    .line 60
    iput-wide v0, p0, Lcom/narvii/scene/TemplateListFragment;->animRate:D

    const/4 v0, -0x1

    .line 62
    iput v0, p0, Lcom/narvii/scene/TemplateListFragment;->selectedPosition:I

    const/4 v0, 0x2

    .line 65
    iput v0, p0, Lcom/narvii/scene/TemplateListFragment;->from:I

    .line 137
    new-instance v0, Lcom/narvii/scene/TemplateListFragment$scaleIncrease$1;

    invoke-direct {v0, p0}, Lcom/narvii/scene/TemplateListFragment$scaleIncrease$1;-><init>(Lcom/narvii/scene/TemplateListFragment;)V

    iput-object v0, p0, Lcom/narvii/scene/TemplateListFragment;->scaleIncrease:Lkotlin/jvm/functions/Function2;

    .line 142
    new-instance v0, Lcom/narvii/scene/TemplateListFragment$scaleDecrease$1;

    invoke-direct {v0, p0}, Lcom/narvii/scene/TemplateListFragment$scaleDecrease$1;-><init>(Lcom/narvii/scene/TemplateListFragment;)V

    iput-object v0, p0, Lcom/narvii/scene/TemplateListFragment;->scaleDecrease:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public static final synthetic access$getItemContentWidth(Lcom/narvii/scene/TemplateListFragment;)I
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/narvii/scene/TemplateListFragment;->getItemContentWidth()I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getPosition(Lcom/narvii/scene/TemplateListFragment;II)I
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/narvii/scene/TemplateListFragment;->getPosition(II)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getSnapHelper$p(Lcom/narvii/scene/TemplateListFragment;)Landroid/support/v7/widget/SnapHelper;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->snapHelper:Landroid/support/v7/widget/SnapHelper;

    return-object p0
.end method

.method public static final synthetic access$setAnimation(Lcom/narvii/scene/TemplateListFragment;IF)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/narvii/scene/TemplateListFragment;->setAnimation(IF)V

    return-void
.end method

.method public static final synthetic access$setSnapHelper$p(Lcom/narvii/scene/TemplateListFragment;Landroid/support/v7/widget/SnapHelper;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->snapHelper:Landroid/support/v7/widget/SnapHelper;

    return-void
.end method

.method public static final synthetic access$updateTitle(Lcom/narvii/scene/TemplateListFragment;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/narvii/scene/TemplateListFragment;->updateTitle()V

    return-void
.end method

.method private final getItemContentWidth()I
    .locals 4

    .line 391
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    int-to-double v0, v0

    const-wide v2, 0x3fe1eb851eb851ecL    # 0.56

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private final getPosition(II)I
    .locals 0

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 164
    invoke-static {p1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p1

    return p1
.end method

.method private final sendRequest()V
    .locals 4

    .line 172
    iget-object v0, p0, Lcom/narvii/scene/TemplateListFragment;->pageLoadState:Lcom/narvii/paging/state/PageLoadState;

    const/4 v1, 0x0

    iput v1, v0, Lcom/narvii/paging/state/PageLoadState;->status:I

    .line 173
    invoke-virtual {p0}, Lcom/narvii/scene/TemplateListFragment;->updateViews()V

    const-string v0, "api"

    .line 174
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 175
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->https()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v2, "/asset/story-template"

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    .line 176
    new-instance v2, Lcom/narvii/scene/TemplateListFragment$sendRequest$1;

    const-class v3, Lcom/narvii/scene/template/response/TemplateResponse;

    invoke-direct {v2, p0, v3}, Lcom/narvii/scene/TemplateListFragment$sendRequest$1;-><init>(Lcom/narvii/scene/TemplateListFragment;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private final setAnimation(IF)V
    .locals 8

    .line 148
    iget-object v0, p0, Lcom/narvii/scene/TemplateListFragment;->linearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    const-string v1, "linearLayoutManager"

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-lez p1, :cond_1

    .line 149
    iget-object v3, p0, Lcom/narvii/scene/TemplateListFragment;->linearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v3, :cond_0

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v3

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object v3, v2

    .line 150
    :goto_0
    iget-object v4, p0, Lcom/narvii/scene/TemplateListFragment;->templateList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge p1, v4, :cond_3

    iget-object v4, p0, Lcom/narvii/scene/TemplateListFragment;->linearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v4, :cond_2

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v4, p1}, Landroid/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    goto :goto_1

    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_3
    :goto_1
    float-to-double v4, p2

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpg-double p1, v4, v6

    if-gez p1, :cond_6

    if-eqz v3, :cond_4

    .line 153
    iget-object p1, p0, Lcom/narvii/scene/TemplateListFragment;->scaleIncrease:Lkotlin/jvm/functions/Function2;

    invoke-static {v3, p2, p1}, Lcom/narvii/scene/TemplateListFragmentKt;->access$animation(Landroid/view/View;FLkotlin/jvm/functions/Function2;)V

    :cond_4
    if-eqz v0, :cond_5

    .line 154
    iget-object p1, p0, Lcom/narvii/scene/TemplateListFragment;->scaleDecrease:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, p2, p1}, Lcom/narvii/scene/TemplateListFragmentKt;->access$animation(Landroid/view/View;FLkotlin/jvm/functions/Function2;)V

    :cond_5
    if-eqz v2, :cond_9

    .line 155
    iget-object p1, p0, Lcom/narvii/scene/TemplateListFragment;->scaleIncrease:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, p2, p1}, Lcom/narvii/scene/TemplateListFragmentKt;->access$animation(Landroid/view/View;FLkotlin/jvm/functions/Function2;)V

    goto :goto_2

    :cond_6
    if-eqz v3, :cond_7

    .line 157
    iget-object p1, p0, Lcom/narvii/scene/TemplateListFragment;->scaleDecrease:Lkotlin/jvm/functions/Function2;

    invoke-static {v3, p2, p1}, Lcom/narvii/scene/TemplateListFragmentKt;->access$animation(Landroid/view/View;FLkotlin/jvm/functions/Function2;)V

    :cond_7
    if-eqz v0, :cond_8

    .line 158
    iget-object p1, p0, Lcom/narvii/scene/TemplateListFragment;->scaleIncrease:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, p2, p1}, Lcom/narvii/scene/TemplateListFragmentKt;->access$animation(Landroid/view/View;FLkotlin/jvm/functions/Function2;)V

    :cond_8
    if-eqz v2, :cond_9

    .line 159
    iget-object p1, p0, Lcom/narvii/scene/TemplateListFragment;->scaleDecrease:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, p2, p1}, Lcom/narvii/scene/TemplateListFragmentKt;->access$animation(Landroid/view/View;FLkotlin/jvm/functions/Function2;)V

    :cond_9
    :goto_2
    return-void

    .line 148
    :cond_a
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method private final updateTitle()V
    .locals 7

    .line 205
    iget v0, p0, Lcom/narvii/scene/TemplateListFragment;->from:I

    const-string v1, "desc"

    const-string v2, "title"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v3, :cond_2

    .line 211
    iget-object v0, p0, Lcom/narvii/scene/TemplateListFragment;->title:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    sget v2, Lcom/narvii/mediaeditor/R$string;->choose_video_template:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 212
    iget v0, p0, Lcom/narvii/scene/TemplateListFragment;->selectedPosition:I

    if-ltz v0, :cond_3

    iget-object v2, p0, Lcom/narvii/scene/TemplateListFragment;->templateList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 213
    iget-object v0, p0, Lcom/narvii/scene/TemplateListFragment;->templateList:Ljava/util/List;

    iget v2, p0, Lcom/narvii/scene/TemplateListFragment;->selectedPosition:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/scene/model/TemplateConfig;

    .line 214
    iget-object v2, p0, Lcom/narvii/scene/TemplateListFragment;->desc:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    sget v1, Lcom/narvii/mediaeditor/R$string;->select_photos:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v0, Lcom/narvii/scene/model/TemplateConfig;->minInputCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    iget v0, v0, Lcom/narvii/scene/model/TemplateConfig;->maxInputCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v3

    invoke-virtual {p0, v1, v4}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 211
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 207
    :cond_2
    iget-object v0, p0, Lcom/narvii/scene/TemplateListFragment;->title:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    sget v2, Lcom/narvii/mediaeditor/R$string;->promote_your_post:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 208
    iget-object v0, p0, Lcom/narvii/scene/TemplateListFragment;->desc:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    sget v1, Lcom/narvii/mediaeditor/R$string;->choose_a_story_template:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    .line 207
    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/scene/TemplateListFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/narvii/scene/TemplateListFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/scene/TemplateListFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/narvii/scene/TemplateListFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/narvii/scene/TemplateListFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method protected createAdapter()Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
    .locals 1

    .line 221
    new-instance v0, Lcom/narvii/scene/TemplateListFragment$Adapter;

    invoke-direct {v0, p0, p0}, Lcom/narvii/scene/TemplateListFragment$Adapter;-><init>(Lcom/narvii/scene/TemplateListFragment;Lcom/narvii/app/NVContext;)V

    return-object v0
.end method

.method public createLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 3

    .line 346
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/narvii/scene/TemplateListFragment;->linearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 347
    iget-object v0, p0, Lcom/narvii/scene/TemplateListFragment;->linearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "linearLayoutManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method protected createSnapHelper()Landroid/support/v7/widget/SnapHelper;
    .locals 1

    .line 168
    new-instance v0, Landroid/support/v7/widget/PagerSnapHelper;

    invoke-direct {v0}, Landroid/support/v7/widget/PagerSnapHelper;-><init>()V

    return-object v0
.end method

.method public final getAnimRate()D
    .locals 2

    .line 60
    iget-wide v0, p0, Lcom/narvii/scene/TemplateListFragment;->animRate:D

    return-wide v0
.end method

.method public final getAutoPlaying()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lcom/narvii/scene/TemplateListFragment;->autoPlaying:Z

    return v0
.end method

.method public final getDesc()Landroid/widget/TextView;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/narvii/scene/TemplateListFragment;->desc:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "desc"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getFrom()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/narvii/scene/TemplateListFragment;->from:I

    return v0
.end method

.method public final getIntParam(Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 467
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public final getLinearLayoutManager()Landroid/support/v7/widget/LinearLayoutManager;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/narvii/scene/TemplateListFragment;->linearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "linearLayoutManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getOnChooseTemplateListener()Lcom/narvii/scene/TemplateListFragment$OnChooseTemplateListener;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/narvii/scene/TemplateListFragment;->onChooseTemplateListener:Lcom/narvii/scene/TemplateListFragment$OnChooseTemplateListener;

    return-object v0
.end method

.method public final getPageLoadState()Lcom/narvii/paging/state/PageLoadState;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/narvii/scene/TemplateListFragment;->pageLoadState:Lcom/narvii/paging/state/PageLoadState;

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "VideoTemplatePicker"

    return-object v0
.end method

.method public final getScrollX()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/narvii/scene/TemplateListFragment;->scrollX:I

    return v0
.end method

.method public final getSelectedPosition()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/narvii/scene/TemplateListFragment;->selectedPosition:I

    return v0
.end method

.method public final getTemplateList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/scene/model/TemplateConfig;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/narvii/scene/TemplateListFragment;->templateList:Ljava/util/List;

    return-object v0
.end method

.method public final getTitle()Landroid/widget/TextView;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/narvii/scene/TemplateListFragment;->title:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "title"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final hide()V
    .locals 1

    const/4 v0, 0x0

    .line 300
    invoke-virtual {p0, v0}, Lcom/narvii/scene/TemplateListFragment;->onActiveChanged(Z)V

    .line 301
    iput-boolean v0, p0, Lcom/narvii/scene/TemplateListFragment;->isShowing:Z

    .line 302
    iput-boolean v0, p0, Lcom/narvii/scene/TemplateListFragment;->autoPlaying:Z

    return-void
.end method

.method protected initVideoListDelegate()Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;
    .locals 2

    .line 323
    new-instance v0, Lcom/narvii/scene/TemplateListFragment$TemplateDemoVideoListDelegate;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, p0, v1}, Lcom/narvii/scene/TemplateListFragment$TemplateDemoVideoListDelegate;-><init>(Lcom/narvii/scene/TemplateListFragment;Lcom/narvii/app/NVContext;Landroid/app/Activity;)V

    return-object v0
.end method

.method public isFinalPage()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected isRefreshEnable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isShowing()Z
    .locals 1

    .line 63
    iget-boolean v0, p0, Lcom/narvii/scene/TemplateListFragment;->isShowing:Z

    return v0
.end method

.method public onActiveChanged(Z)V
    .locals 1

    .line 312
    iget-boolean v0, p0, Lcom/narvii/scene/TemplateListFragment;->isShowing:Z

    if-eqz v0, :cond_0

    .line 313
    invoke-super {p0, p1}, Lcom/narvii/paging/NVRecyclerViewFragment;->onActiveChanged(Z)V

    if-nez p1, :cond_0

    .line 314
    invoke-virtual {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->getVideoListDelegate()Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 315
    invoke-virtual {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->getVideoListDelegate()Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;->resetVideoView()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 331
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 332
    :goto_0
    sget v0, Lcom/narvii/mediaeditor/R$id;->choose:I

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 333
    iget p1, p0, Lcom/narvii/scene/TemplateListFragment;->selectedPosition:I

    if-ltz p1, :cond_4

    iget-object v0, p0, Lcom/narvii/scene/TemplateListFragment;->templateList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_4

    .line 334
    sget-object p1, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "Choose"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/scene/TemplateListFragment;->templateList:Ljava/util/List;

    iget v1, p0, Lcom/narvii/scene/TemplateListFragment;->selectedPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/scene/model/TemplateConfig;

    iget-object v0, v0, Lcom/narvii/scene/model/TemplateConfig;->templateId:Ljava/lang/String;

    const-string v1, "templateId"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 335
    iget-object p1, p0, Lcom/narvii/scene/TemplateListFragment;->onChooseTemplateListener:Lcom/narvii/scene/TemplateListFragment$OnChooseTemplateListener;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/narvii/scene/TemplateListFragment;->templateList:Ljava/util/List;

    iget v1, p0, Lcom/narvii/scene/TemplateListFragment;->selectedPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/scene/model/TemplateConfig;

    invoke-interface {p1, v0}, Lcom/narvii/scene/TemplateListFragment$OnChooseTemplateListener;->onChoose(Lcom/narvii/scene/model/TemplateConfig;)V

    goto :goto_2

    .line 338
    :cond_2
    :goto_1
    sget v0, Lcom/narvii/mediaeditor/R$id;->cancel:I

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_4

    .line 339
    sget-object p1, Lcom/narvii/logging/ActSemantic;->cancel:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "Cancel"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 340
    iget-object p1, p0, Lcom/narvii/scene/TemplateListFragment;->onChooseTemplateListener:Lcom/narvii/scene/TemplateListFragment$OnChooseTemplateListener;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/narvii/scene/TemplateListFragment$OnChooseTemplateListener;->onDismiss()V

    :cond_4
    :goto_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 74
    invoke-super {p0, p1}, Lcom/narvii/paging/NVRecyclerViewFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "from"

    .line 75
    invoke-virtual {p0, v0, p1}, Lcom/narvii/scene/TemplateListFragment;->getIntParam(Ljava/lang/String;Landroid/os/Bundle;)I

    move-result p1

    iput p1, p0, Lcom/narvii/scene/TemplateListFragment;->from:I

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    sget p3, Lcom/narvii/mediaeditor/R$layout;->fragment_scene_template:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/narvii/scene/TemplateListFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-super {p0, p1, p2}, Lcom/narvii/paging/NVRecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 89
    sget p2, Lcom/narvii/mediaeditor/R$id;->promote_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "view.findViewById(R.id.promote_title)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/narvii/scene/TemplateListFragment;->title:Landroid/widget/TextView;

    .line 90
    sget p2, Lcom/narvii/mediaeditor/R$id;->promote_desc:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "view.findViewById(R.id.promote_desc)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/narvii/scene/TemplateListFragment;->desc:Landroid/widget/TextView;

    .line 92
    sget p2, Lcom/narvii/mediaeditor/R$id;->cancel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/narvii/scene/TemplateListFragment$onViewCreated$1;

    invoke-direct {v0, p0, p0}, Lcom/narvii/scene/TemplateListFragment$onViewCreated$1;-><init>(Lcom/narvii/scene/TemplateListFragment;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    sget p2, Lcom/narvii/mediaeditor/R$id;->choose:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/narvii/scene/TemplateListFragment$onViewCreated$2;

    invoke-direct {p2, p0, p0}, Lcom/narvii/scene/TemplateListFragment$onViewCreated$2;-><init>(Lcom/narvii/scene/TemplateListFragment;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    new-instance p2, Lcom/narvii/scene/TemplateListFragment$HorizontalItemDecoration;

    invoke-direct {p2, p0}, Lcom/narvii/scene/TemplateListFragment$HorizontalItemDecoration;-><init>(Lcom/narvii/scene/TemplateListFragment;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 96
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    new-instance p2, Lcom/narvii/scene/TemplateListFragment$onViewCreated$3;

    invoke-direct {p2, p0}, Lcom/narvii/scene/TemplateListFragment$onViewCreated$3;-><init>(Lcom/narvii/scene/TemplateListFragment;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 123
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p2, "context!!"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string p2, "templateConfigList.json"

    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 124
    sget-object p2, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v0, Lcom/narvii/videotemplate/TemplatesWrapper;

    invoke-virtual {p2, p1, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/videotemplate/TemplatesWrapper;

    .line 125
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 126
    iget-object p1, p0, Lcom/narvii/scene/TemplateListFragment;->templateList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 127
    iget-object p1, p0, Lcom/narvii/scene/TemplateListFragment;->templateList:Ljava/util/List;

    iget-object p2, p2, Lcom/narvii/videotemplate/TemplatesWrapper;->templateConfigList:Ljava/util/List;

    const-string v0, "templatesWrapper.templateConfigList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 128
    iget-object p1, p0, Lcom/narvii/scene/TemplateListFragment;->pageLoadState:Lcom/narvii/paging/state/PageLoadState;

    const/4 p2, 0x1

    iput p2, p1, Lcom/narvii/paging/state/PageLoadState;->status:I

    .line 129
    iget-object p1, p0, Lcom/narvii/scene/TemplateListFragment;->templateList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    .line 130
    iput p1, p0, Lcom/narvii/scene/TemplateListFragment;->selectedPosition:I

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/scene/TemplateListFragment;->updateViews()V

    .line 133
    invoke-direct {p0}, Lcom/narvii/scene/TemplateListFragment;->updateTitle()V

    return-void

    .line 123
    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final setAutoPlaying(Z)V
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/narvii/scene/TemplateListFragment;->autoPlaying:Z

    return-void
.end method

.method public final setDesc(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iput-object p1, p0, Lcom/narvii/scene/TemplateListFragment;->desc:Landroid/widget/TextView;

    return-void
.end method

.method public final setFrom(I)V
    .locals 0

    .line 65
    iput p1, p0, Lcom/narvii/scene/TemplateListFragment;->from:I

    return-void
.end method

.method public final setLinearLayoutManager(Landroid/support/v7/widget/LinearLayoutManager;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iput-object p1, p0, Lcom/narvii/scene/TemplateListFragment;->linearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    return-void
.end method

.method public final setOnChooseTemplateListener(Lcom/narvii/scene/TemplateListFragment$OnChooseTemplateListener;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/narvii/scene/TemplateListFragment;->onChooseTemplateListener:Lcom/narvii/scene/TemplateListFragment$OnChooseTemplateListener;

    return-void
.end method

.method public final setScrollX(I)V
    .locals 0

    .line 58
    iput p1, p0, Lcom/narvii/scene/TemplateListFragment;->scrollX:I

    return-void
.end method

.method public final setSelectedPosition(I)V
    .locals 0

    .line 62
    iput p1, p0, Lcom/narvii/scene/TemplateListFragment;->selectedPosition:I

    return-void
.end method

.method public final setShowing(Z)V
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/narvii/scene/TemplateListFragment;->isShowing:Z

    return-void
.end method

.method public final setTitle(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iput-object p1, p0, Lcom/narvii/scene/TemplateListFragment;->title:Landroid/widget/TextView;

    return-void
.end method

.method public final show()V
    .locals 3

    const/4 v0, 0x1

    .line 306
    iput-boolean v0, p0, Lcom/narvii/scene/TemplateListFragment;->isShowing:Z

    .line 307
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/nvplayer/NVPlayerManager;->getNVPlayer(Landroid/content/Context;)Lcom/narvii/nvplayer/INVPlayer;

    move-result-object v1

    if-eqz v1, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v1, v2}, Lcom/narvii/nvplayer/INVPlayer;->setVolume(F)V

    .line 308
    :cond_0
    invoke-virtual {p0, v0}, Lcom/narvii/scene/TemplateListFragment;->onActiveChanged(Z)V

    return-void
.end method

.method protected updateVideoAutoPlay()V
    .locals 1

    const/4 v0, 0x1

    .line 351
    iput-boolean v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->videoAutoPlay:Z

    return-void
.end method

.method public updateViews()V
    .locals 1

    .line 200
    invoke-super {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->updateViews()V

    .line 201
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public videoAutoPlayChange(I)V
    .locals 0

    return-void
.end method
