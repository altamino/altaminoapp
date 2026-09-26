.class public final Lcom/narvii/scene/TemplateListFragment;
.super Lcom/narvii/paging/NVRecyclerViewFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/scene/TemplateListFragment$Adapter;,
        Lcom/narvii/scene/TemplateListFragment$Companion;,
        Lcom/narvii/scene/TemplateListFragment$HorizontalItemDecoration;,
        Lcom/narvii/scene/TemplateListFragment$OnChooseTemplateListener;,
        Lcom/narvii/scene/TemplateListFragment$TemplateDemoVideoListDelegate;,
        Lcom/narvii/scene/TemplateListFragment$TemplateVideoListController;,
        Lcom/narvii/scene/TemplateListFragment$TemplateViewHolder;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/scene/TemplateListFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final FROM_BLOG_PROMOTE:I = 0x1

.field public static final FROM_SCENE_EDITOR:I = 0x2


# instance fields
.field private final animRate:D

.field private autoPlaying:Z

.field public desc:Landroid/widget/TextView;

.field private from:I

.field private isShowing:Z

.field public linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private onChooseTemplateListener:Lcom/narvii/scene/TemplateListFragment$OnChooseTemplateListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final pageLoadState:Lcom/narvii/paging/state/PageLoadState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final scaleDecrease:Le8/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/p<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final scaleIncrease:Le8/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/p<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public title:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/scene/TemplateListFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/scene/TemplateListFragment$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/scene/TemplateListFragment;->Companion:Lcom/narvii/scene/TemplateListFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/scene/TemplateListFragment;->templateList:Ljava/util/List;

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/paging/state/PageLoadState;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Lcom/narvii/paging/state/PageLoadState;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/scene/TemplateListFragment;->pageLoadState:Lcom/narvii/paging/state/PageLoadState;

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    const-wide v0, 0x3fbeb851eb851eb8L    # 0.12

    .line 23
    .line 24
    iput-wide v0, p0, Lcom/narvii/scene/TemplateListFragment;->animRate:D

    .line 25
    const/4 v0, -0x1

    .line 26
    .line 27
    iput v0, p0, Lcom/narvii/scene/TemplateListFragment;->selectedPosition:I

    .line 28
    const/4 v0, 0x2

    .line 29
    .line 30
    iput v0, p0, Lcom/narvii/scene/TemplateListFragment;->from:I

    .line 31
    .line 32
    new-instance v0, Lcom/narvii/scene/TemplateListFragment$scaleIncrease$1;

    .line 33
    .line 34
    .line 35
    invoke-direct {v0, p0}, Lcom/narvii/scene/TemplateListFragment$scaleIncrease$1;-><init>(Lcom/narvii/scene/TemplateListFragment;)V

    .line 36
    .line 37
    iput-object v0, p0, Lcom/narvii/scene/TemplateListFragment;->scaleIncrease:Le8/p;

    .line 38
    .line 39
    new-instance v0, Lcom/narvii/scene/TemplateListFragment$scaleDecrease$1;

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, p0}, Lcom/narvii/scene/TemplateListFragment$scaleDecrease$1;-><init>(Lcom/narvii/scene/TemplateListFragment;)V

    .line 43
    .line 44
    iput-object v0, p0, Lcom/narvii/scene/TemplateListFragment;->scaleDecrease:Le8/p;

    .line 45
    return-void
.end method

.method public static final synthetic access$getItemContentWidth(Lcom/narvii/scene/TemplateListFragment;)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/scene/TemplateListFragment;->getItemContentWidth()I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$getPosition(Lcom/narvii/scene/TemplateListFragment;II)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/scene/TemplateListFragment;->getPosition(II)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$getSnapHelper$p$s-1314462008(Lcom/narvii/scene/TemplateListFragment;)Landroidx/recyclerview/widget/SnapHelper;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->snapHelper:Landroidx/recyclerview/widget/SnapHelper;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$setAnimation(Lcom/narvii/scene/TemplateListFragment;IF)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/scene/TemplateListFragment;->setAnimation(IF)V

    .line 4
    return-void
.end method

.method public static final synthetic access$updateTitle(Lcom/narvii/scene/TemplateListFragment;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/scene/TemplateListFragment;->updateTitle()V

    .line 4
    return-void
.end method

.method private final getItemContentWidth()I
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    int-to-double v0, v0

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    const-wide v2, 0x3fe1eb851eb851ecL    # 0.56

    .line 17
    mul-double/2addr v0, v2

    .line 18
    double-to-int v0, v0

    .line 19
    return v0
.end method

.method private final getPosition(II)I
    .locals 0

    .line 1
    int-to-float p1, p1

    .line 2
    int-to-float p2, p2

    .line 3
    div-float/2addr p1, p2

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lg8/a;->c(F)I

    .line 7
    move-result p1

    .line 8
    return p1
.end method

.method private final sendRequest()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/TemplateListFragment;->pageLoadState:Lcom/narvii/paging/state/PageLoadState;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    iput v1, v0, Lcom/narvii/paging/state/PageLoadState;->status:I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/scene/TemplateListFragment;->updateViews()V

    .line 9
    .line 10
    const-string v0, "api"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->https()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    const-string v2, "/asset/story-template"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    new-instance v2, Lcom/narvii/scene/TemplateListFragment$sendRequest$1;

    .line 41
    .line 42
    const-class v3, Lcom/narvii/scene/template/response/TemplateResponse;

    .line 43
    .line 44
    .line 45
    invoke-direct {v2, p0, v3}, Lcom/narvii/scene/TemplateListFragment$sendRequest$1;-><init>(Lcom/narvii/scene/TemplateListFragment;Ljava/lang/Class;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 49
    return-void
.end method

.method private final setAnimation(IF)V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/scene/TemplateListFragment;->getLinearLayoutManager()Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    if-lez p1, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/scene/TemplateListFragment;->getLinearLayoutManager()Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 15
    move-result-object v2

    .line 16
    .line 17
    add-int/lit8 v3, p1, -0x1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 21
    move-result-object v2

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object v2, v1

    .line 24
    .line 25
    :goto_0
    iget-object v3, p0, Lcom/narvii/scene/TemplateListFragment;->templateList:Ljava/util/List;

    .line 26
    .line 27
    .line 28
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 29
    move-result v3

    .line 30
    .line 31
    add-int/lit8 v3, v3, -0x1

    .line 32
    .line 33
    if-ge p1, v3, :cond_1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/narvii/scene/TemplateListFragment;->getLinearLayoutManager()Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    add-int/lit8 p1, p1, 0x1

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 43
    move-result-object v1

    .line 44
    :cond_1
    float-to-double v3, p2

    .line 45
    .line 46
    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    .line 47
    .line 48
    cmpg-double p1, v3, v5

    .line 49
    .line 50
    if-gez p1, :cond_4

    .line 51
    .line 52
    if-eqz v2, :cond_2

    .line 53
    .line 54
    iget-object p1, p0, Lcom/narvii/scene/TemplateListFragment;->scaleIncrease:Le8/p;

    .line 55
    .line 56
    .line 57
    invoke-static {v2, p2, p1}, Lcom/narvii/scene/TemplateListFragmentKt;->access$animation(Landroid/view/View;FLe8/p;)V

    .line 58
    .line 59
    :cond_2
    if-eqz v0, :cond_3

    .line 60
    .line 61
    iget-object p1, p0, Lcom/narvii/scene/TemplateListFragment;->scaleDecrease:Le8/p;

    .line 62
    .line 63
    .line 64
    invoke-static {v0, p2, p1}, Lcom/narvii/scene/TemplateListFragmentKt;->access$animation(Landroid/view/View;FLe8/p;)V

    .line 65
    .line 66
    :cond_3
    if-eqz v1, :cond_7

    .line 67
    .line 68
    iget-object p1, p0, Lcom/narvii/scene/TemplateListFragment;->scaleIncrease:Le8/p;

    .line 69
    .line 70
    .line 71
    invoke-static {v1, p2, p1}, Lcom/narvii/scene/TemplateListFragmentKt;->access$animation(Landroid/view/View;FLe8/p;)V

    .line 72
    goto :goto_1

    .line 73
    .line 74
    :cond_4
    if-eqz v2, :cond_5

    .line 75
    .line 76
    iget-object p1, p0, Lcom/narvii/scene/TemplateListFragment;->scaleDecrease:Le8/p;

    .line 77
    .line 78
    .line 79
    invoke-static {v2, p2, p1}, Lcom/narvii/scene/TemplateListFragmentKt;->access$animation(Landroid/view/View;FLe8/p;)V

    .line 80
    .line 81
    :cond_5
    if-eqz v0, :cond_6

    .line 82
    .line 83
    iget-object p1, p0, Lcom/narvii/scene/TemplateListFragment;->scaleIncrease:Le8/p;

    .line 84
    .line 85
    .line 86
    invoke-static {v0, p2, p1}, Lcom/narvii/scene/TemplateListFragmentKt;->access$animation(Landroid/view/View;FLe8/p;)V

    .line 87
    .line 88
    :cond_6
    if-eqz v1, :cond_7

    .line 89
    .line 90
    iget-object p1, p0, Lcom/narvii/scene/TemplateListFragment;->scaleDecrease:Le8/p;

    .line 91
    .line 92
    .line 93
    invoke-static {v1, p2, p1}, Lcom/narvii/scene/TemplateListFragmentKt;->access$animation(Landroid/view/View;FLe8/p;)V

    .line 94
    :cond_7
    :goto_1
    return-void
.end method

.method private final updateTitle()V
    .locals 7

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/scene/TemplateListFragment;->from:I

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/scene/TemplateListFragment;->getTitle()Landroid/widget/TextView;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    sget v1, Lcom/narvii/mediaeditor/R$string;->promote_your_post:I

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/scene/TemplateListFragment;->getDesc()Landroid/widget/TextView;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    sget v1, Lcom/narvii/mediaeditor/R$string;->choose_a_story_template:I

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 24
    goto :goto_0

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/scene/TemplateListFragment;->getTitle()Landroid/widget/TextView;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    sget v2, Lcom/narvii/mediaeditor/R$string;->choose_video_template:I

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 34
    .line 35
    iget v0, p0, Lcom/narvii/scene/TemplateListFragment;->selectedPosition:I

    .line 36
    .line 37
    if-ltz v0, :cond_1

    .line 38
    .line 39
    iget-object v2, p0, Lcom/narvii/scene/TemplateListFragment;->templateList:Ljava/util/List;

    .line 40
    .line 41
    .line 42
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 43
    move-result v2

    .line 44
    .line 45
    if-ge v0, v2, :cond_1

    .line 46
    .line 47
    iget-object v0, p0, Lcom/narvii/scene/TemplateListFragment;->templateList:Ljava/util/List;

    .line 48
    .line 49
    iget v2, p0, Lcom/narvii/scene/TemplateListFragment;->selectedPosition:I

    .line 50
    .line 51
    .line 52
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    check-cast v0, Lcom/narvii/scene/model/TemplateConfig;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/narvii/scene/TemplateListFragment;->getDesc()Landroid/widget/TextView;

    .line 59
    move-result-object v2

    .line 60
    .line 61
    sget v3, Lcom/narvii/mediaeditor/R$string;->select_photos:I

    .line 62
    const/4 v4, 0x2

    .line 63
    .line 64
    new-array v4, v4, [Ljava/lang/Object;

    .line 65
    .line 66
    iget v5, v0, Lcom/narvii/scene/model/TemplateConfig;->minInputCount:I

    .line 67
    .line 68
    .line 69
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    move-result-object v5

    .line 71
    const/4 v6, 0x0

    .line 72
    .line 73
    aput-object v5, v4, v6

    .line 74
    .line 75
    iget v0, v0, Lcom/narvii/scene/model/TemplateConfig;->maxInputCount:I

    .line 76
    .line 77
    .line 78
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    move-result-object v0

    .line 80
    .line 81
    aput-object v0, v4, v1

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v3, v4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 85
    move-result-object v0

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected createAdapter()Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/scene/TemplateListFragment$Adapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p0}, Lcom/narvii/scene/TemplateListFragment$Adapter;-><init>(Lcom/narvii/scene/TemplateListFragment;Lcom/narvii/app/NVContext;)V

    .line 6
    return-object v0
.end method

.method public createLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/narvii/scene/TemplateListFragment;->setLinearLayoutManager(Landroidx/recyclerview/widget/LinearLayoutManager;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/scene/TemplateListFragment;->getLinearLayoutManager()Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method protected createSnapHelper()Landroidx/recyclerview/widget/SnapHelper;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/recyclerview/widget/PagerSnapHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/recyclerview/widget/PagerSnapHelper;-><init>()V

    .line 6
    return-object v0
.end method

.method public final getAnimRate()D
    .locals 2

    iget-wide v0, p0, Lcom/narvii/scene/TemplateListFragment;->animRate:D

    return-wide v0
.end method

.method public final getAutoPlaying()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/scene/TemplateListFragment;->autoPlaying:Z

    return v0
.end method

.method public final getDesc()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/TemplateListFragment;->desc:Landroid/widget/TextView;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    const-string v0, "desc"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getFrom()I
    .locals 1

    iget v0, p0, Lcom/narvii/scene/TemplateListFragment;->from:I

    return v0
.end method

.method public final getIntParam(Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "key"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 11
    move-result p1

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 16
    move-result p1

    .line 17
    :goto_0
    return p1
.end method

.method public final getLinearLayoutManager()Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/TemplateListFragment;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    const-string v0, "linearLayoutManager"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getOnChooseTemplateListener()Lcom/narvii/scene/TemplateListFragment$OnChooseTemplateListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/scene/TemplateListFragment;->onChooseTemplateListener:Lcom/narvii/scene/TemplateListFragment$OnChooseTemplateListener;

    return-object v0
.end method

.method public final getPageLoadState()Lcom/narvii/paging/state/PageLoadState;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/scene/TemplateListFragment;->pageLoadState:Lcom/narvii/paging/state/PageLoadState;

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string/jumbo v0, "video_template_picker"

    return-object v0
.end method

.method public final getScrollX()I
    .locals 1

    iget v0, p0, Lcom/narvii/scene/TemplateListFragment;->scrollX:I

    return v0
.end method

.method public final getSelectedPosition()I
    .locals 1

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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/scene/TemplateListFragment;->templateList:Ljava/util/List;

    return-object v0
.end method

.method public final getTitle()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/scene/TemplateListFragment;->title:Landroid/widget/TextView;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    .line 8
    :cond_0
    const-string/jumbo v0, "title"

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 12
    const/4 v0, 0x0

    .line 13
    return-object v0
.end method

.method public final hide()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/narvii/scene/TemplateListFragment;->onActiveChanged(Z)V

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/narvii/scene/TemplateListFragment;->isShowing:Z

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/narvii/scene/TemplateListFragment;->autoPlaying:Z

    .line 9
    return-void
.end method

.method protected initVideoListDelegate()Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/scene/TemplateListFragment$TemplateDemoVideoListDelegate;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p0, p0, v1}, Lcom/narvii/scene/TemplateListFragment$TemplateDemoVideoListDelegate;-><init>(Lcom/narvii/scene/TemplateListFragment;Lcom/narvii/app/NVContext;Landroid/app/Activity;)V

    .line 10
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

    iget-boolean v0, p0, Lcom/narvii/scene/TemplateListFragment;->isShowing:Z

    return v0
.end method

.method public onActiveChanged(Z)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/scene/TemplateListFragment;->isShowing:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-super {p0, p1}, Lcom/narvii/paging/NVRecyclerViewFragment;->onActiveChanged(Z)V

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->getVideoListDelegate()Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->getVideoListDelegate()Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-interface {p1}, Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;->resetVideoView()V

    .line 25
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 6
    move-result p1

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    .line 14
    :goto_0
    sget v0, Lcom/narvii/mediaeditor/R$id;->choose:I

    .line 15
    .line 16
    if-nez p1, :cond_1

    .line 17
    goto :goto_1

    .line 18
    .line 19
    .line 20
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 21
    move-result v1

    .line 22
    .line 23
    if-ne v1, v0, :cond_2

    .line 24
    .line 25
    iget p1, p0, Lcom/narvii/scene/TemplateListFragment;->selectedPosition:I

    .line 26
    .line 27
    if-ltz p1, :cond_4

    .line 28
    .line 29
    iget-object v0, p0, Lcom/narvii/scene/TemplateListFragment;->templateList:Ljava/util/List;

    .line 30
    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 33
    move-result v0

    .line 34
    .line 35
    if-ge p1, v0, :cond_4

    .line 36
    .line 37
    sget-object p1, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    .line 38
    .line 39
    .line 40
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    const-string v0, "Choose"

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    iget-object v0, p0, Lcom/narvii/scene/TemplateListFragment;->templateList:Ljava/util/List;

    .line 50
    .line 51
    iget v1, p0, Lcom/narvii/scene/TemplateListFragment;->selectedPosition:I

    .line 52
    .line 53
    .line 54
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    check-cast v0, Lcom/narvii/scene/model/TemplateConfig;

    .line 58
    .line 59
    iget-object v0, v0, Lcom/narvii/scene/model/TemplateConfig;->templateId:Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    const-string/jumbo v1, "templateId"

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v1, v0}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 66
    move-result-object p1

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 70
    .line 71
    iget-object p1, p0, Lcom/narvii/scene/TemplateListFragment;->onChooseTemplateListener:Lcom/narvii/scene/TemplateListFragment$OnChooseTemplateListener;

    .line 72
    .line 73
    if-eqz p1, :cond_4

    .line 74
    .line 75
    iget-object v0, p0, Lcom/narvii/scene/TemplateListFragment;->templateList:Ljava/util/List;

    .line 76
    .line 77
    iget v1, p0, Lcom/narvii/scene/TemplateListFragment;->selectedPosition:I

    .line 78
    .line 79
    .line 80
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 81
    move-result-object v0

    .line 82
    .line 83
    check-cast v0, Lcom/narvii/scene/model/TemplateConfig;

    .line 84
    .line 85
    .line 86
    invoke-interface {p1, v0}, Lcom/narvii/scene/TemplateListFragment$OnChooseTemplateListener;->onChoose(Lcom/narvii/scene/model/TemplateConfig;)V

    .line 87
    goto :goto_2

    .line 88
    .line 89
    :cond_2
    :goto_1
    sget v0, Lcom/narvii/mediaeditor/R$id;->cancel:I

    .line 90
    .line 91
    if-nez p1, :cond_3

    .line 92
    goto :goto_2

    .line 93
    .line 94
    .line 95
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 96
    move-result p1

    .line 97
    .line 98
    if-ne p1, v0, :cond_4

    .line 99
    .line 100
    sget-object p1, Lcom/narvii/logging/ActSemantic;->cancel:Lcom/narvii/logging/ActSemantic;

    .line 101
    .line 102
    .line 103
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 104
    move-result-object p1

    .line 105
    .line 106
    const-string v0, "Cancel"

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 110
    move-result-object p1

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 114
    .line 115
    iget-object p1, p0, Lcom/narvii/scene/TemplateListFragment;->onChooseTemplateListener:Lcom/narvii/scene/TemplateListFragment$OnChooseTemplateListener;

    .line 116
    .line 117
    if-eqz p1, :cond_4

    .line 118
    .line 119
    .line 120
    invoke-interface {p1}, Lcom/narvii/scene/TemplateListFragment$OnChooseTemplateListener;->onDismiss()V

    .line 121
    :cond_4
    :goto_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/paging/NVRecyclerViewFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "from"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0, p1}, Lcom/narvii/scene/TemplateListFragment;->getIntParam(Ljava/lang/String;Landroid/os/Bundle;)I

    .line 9
    move-result p1

    .line 10
    .line 11
    iput p1, p0, Lcom/narvii/scene/TemplateListFragment;->from:I

    .line 12
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string p3, "inflater"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget p3, Lcom/narvii/mediaeditor/R$layout;->fragment_scene_template:I

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "view"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-super {p0, p1, p2}, Lcom/narvii/paging/NVRecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 10
    .line 11
    sget p2, Lcom/narvii/mediaeditor/R$id;->promote_title:I

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 15
    move-result-object p2

    .line 16
    .line 17
    const-string v0, "findViewById(...)"

    .line 18
    .line 19
    .line 20
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    check-cast p2, Landroid/widget/TextView;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p2}, Lcom/narvii/scene/TemplateListFragment;->setTitle(Landroid/widget/TextView;)V

    .line 26
    .line 27
    sget p2, Lcom/narvii/mediaeditor/R$id;->promote_desc:I

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    move-result-object p2

    .line 32
    .line 33
    .line 34
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    check-cast p2, Landroid/widget/TextView;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p2}, Lcom/narvii/scene/TemplateListFragment;->setDesc(Landroid/widget/TextView;)V

    .line 40
    .line 41
    sget p2, Lcom/narvii/mediaeditor/R$id;->cancel:I

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    move-result-object p2

    .line 46
    .line 47
    new-instance v0, Lcom/narvii/scene/TemplateListFragment$onViewCreated$1;

    .line 48
    .line 49
    .line 50
    invoke-direct {v0, p0}, Lcom/narvii/scene/TemplateListFragment$onViewCreated$1;-><init>(Lcom/narvii/scene/TemplateListFragment;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    .line 55
    sget p2, Lcom/narvii/mediaeditor/R$id;->choose:I

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    new-instance p2, Lcom/narvii/scene/TemplateListFragment$onViewCreated$2;

    .line 62
    .line 63
    .line 64
    invoke-direct {p2, p0}, Lcom/narvii/scene/TemplateListFragment$onViewCreated$2;-><init>(Lcom/narvii/scene/TemplateListFragment;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    .line 69
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    .line 70
    .line 71
    new-instance p2, Lcom/narvii/scene/TemplateListFragment$HorizontalItemDecoration;

    .line 72
    .line 73
    .line 74
    invoke-direct {p2, p0}, Lcom/narvii/scene/TemplateListFragment$HorizontalItemDecoration;-><init>(Lcom/narvii/scene/TemplateListFragment;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 78
    .line 79
    iget-object p1, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->recyclerView:Lcom/narvii/widget/recycleview/NVRecyclerView;

    .line 80
    .line 81
    new-instance p2, Lcom/narvii/scene/TemplateListFragment$onViewCreated$3;

    .line 82
    .line 83
    .line 84
    invoke-direct {p2, p0}, Lcom/narvii/scene/TemplateListFragment$onViewCreated$3;-><init>(Lcom/narvii/scene/TemplateListFragment;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 91
    move-result-object p1

    .line 92
    .line 93
    .line 94
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 98
    move-result-object p1

    .line 99
    .line 100
    .line 101
    const-string/jumbo p2, "templateConfigList.json"

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 105
    move-result-object p1

    .line 106
    .line 107
    const-string p2, "open(...)"

    .line 108
    .line 109
    .line 110
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    .line 112
    sget-object p2, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 113
    .line 114
    const-class v0, Lcom/narvii/videotemplate/TemplatesWrapper;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p2, p1, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;

    .line 118
    move-result-object p2

    .line 119
    .line 120
    check-cast p2, Lcom/narvii/videotemplate/TemplatesWrapper;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 124
    .line 125
    iget-object p1, p0, Lcom/narvii/scene/TemplateListFragment;->templateList:Ljava/util/List;

    .line 126
    .line 127
    .line 128
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 129
    .line 130
    iget-object p1, p0, Lcom/narvii/scene/TemplateListFragment;->templateList:Ljava/util/List;

    .line 131
    .line 132
    iget-object p2, p2, Lcom/narvii/videotemplate/TemplatesWrapper;->templateConfigList:Ljava/util/List;

    .line 133
    .line 134
    .line 135
    const-string/jumbo v0, "templateConfigList"

    .line 136
    .line 137
    .line 138
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    .line 140
    check-cast p2, Ljava/util/Collection;

    .line 141
    .line 142
    .line 143
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 144
    .line 145
    iget-object p1, p0, Lcom/narvii/scene/TemplateListFragment;->pageLoadState:Lcom/narvii/paging/state/PageLoadState;

    .line 146
    const/4 p2, 0x1

    .line 147
    .line 148
    iput p2, p1, Lcom/narvii/paging/state/PageLoadState;->status:I

    .line 149
    .line 150
    iget-object p1, p0, Lcom/narvii/scene/TemplateListFragment;->templateList:Ljava/util/List;

    .line 151
    .line 152
    .line 153
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 154
    move-result p1

    .line 155
    .line 156
    if-lez p1, :cond_0

    .line 157
    const/4 p1, 0x0

    .line 158
    .line 159
    iput p1, p0, Lcom/narvii/scene/TemplateListFragment;->selectedPosition:I

    .line 160
    .line 161
    .line 162
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/scene/TemplateListFragment;->updateViews()V

    .line 163
    .line 164
    .line 165
    invoke-direct {p0}, Lcom/narvii/scene/TemplateListFragment;->updateTitle()V

    .line 166
    return-void
.end method

.method public final setAutoPlaying(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/scene/TemplateListFragment;->autoPlaying:Z

    return-void
.end method

.method public final setDesc(Landroid/widget/TextView;)V
    .locals 1
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/scene/TemplateListFragment;->desc:Landroid/widget/TextView;

    return-void
.end method

.method public final setFrom(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/scene/TemplateListFragment;->from:I

    return-void
.end method

.method public final setLinearLayoutManager(Landroidx/recyclerview/widget/LinearLayoutManager;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/LinearLayoutManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/scene/TemplateListFragment;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-void
.end method

.method public final setOnChooseTemplateListener(Lcom/narvii/scene/TemplateListFragment$OnChooseTemplateListener;)V
    .locals 0
    .param p1    # Lcom/narvii/scene/TemplateListFragment$OnChooseTemplateListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/scene/TemplateListFragment;->onChooseTemplateListener:Lcom/narvii/scene/TemplateListFragment$OnChooseTemplateListener;

    return-void
.end method

.method public final setScrollX(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/scene/TemplateListFragment;->scrollX:I

    return-void
.end method

.method public final setSelectedPosition(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/scene/TemplateListFragment;->selectedPosition:I

    return-void
.end method

.method public final setShowing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/scene/TemplateListFragment;->isShowing:Z

    return-void
.end method

.method public final setTitle(Landroid/widget/TextView;)V
    .locals 1
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/scene/TemplateListFragment;->title:Landroid/widget/TextView;

    return-void
.end method

.method public final show()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/scene/TemplateListFragment;->isShowing:Z

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 7
    move-result-object v1

    .line 8
    .line 9
    .line 10
    invoke-static {v1}, Lcom/narvii/nvplayer/NVPlayerManager;->getNVPlayer(Landroid/content/Context;)Lcom/narvii/nvplayer/INVPlayer;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const/high16 v2, 0x3f800000    # 1.0f

    .line 16
    .line 17
    .line 18
    invoke-interface {v1, v2}, Lcom/narvii/nvplayer/INVPlayer;->setVolume(F)V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0, v0}, Lcom/narvii/scene/TemplateListFragment;->onActiveChanged(Z)V

    .line 22
    return-void
.end method

.method protected updateVideoAutoPlay()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->videoAutoPlay:Z

    return-void
.end method

.method public updateViews()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/paging/NVRecyclerViewFragment;->updateViews()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/paging/NVRecyclerViewFragment;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 9
    return-void
.end method

.method public videoAutoPlayChange(I)V
    .locals 0

    return-void
.end method
