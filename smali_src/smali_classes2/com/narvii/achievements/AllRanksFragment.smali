.class public Lcom/narvii/achievements/AllRanksFragment;
.super Lcom/narvii/achievements/ProfileDarkFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/achievements/AllRanksFragment$Adapter;
    }
.end annotation


# instance fields
.field private numberFormat:Ljava/text/NumberFormat;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/achievements/ProfileDarkFragment;-><init>()V

    .line 4
    return-void
.end method

.method static bridge synthetic t(Lcom/narvii/achievements/AllRanksFragment;)Ljava/text/NumberFormat;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/achievements/AllRanksFragment;->numberFormat:Ljava/text/NumberFormat;

    return-object p0
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 5

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/list/MergeAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    new-instance v0, Lcom/narvii/list/StaticViewAdapter;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0}, Lcom/narvii/list/StaticViewAdapter;-><init>()V

    .line 11
    const/4 v1, 0x1

    .line 12
    .line 13
    new-array v2, v1, [Landroid/view/View;

    .line 14
    .line 15
    new-instance v3, Lcom/narvii/list/overlay/OverlayListPlaceholder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 19
    move-result-object v4

    .line 20
    .line 21
    .line 22
    invoke-direct {v3, v4}, Lcom/narvii/list/overlay/OverlayListPlaceholder;-><init>(Landroid/content/Context;)V

    .line 23
    const/4 v4, 0x0

    .line 24
    .line 25
    aput-object v3, v2, v4

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v2}, Lcom/narvii/list/StaticViewAdapter;->addViews([Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 32
    .line 33
    new-instance v0, Lcom/narvii/achievements/AllRanksFragment$Adapter;

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, p0, p0}, Lcom/narvii/achievements/AllRanksFragment$Adapter;-><init>(Lcom/narvii/achievements/AllRanksFragment;Lcom/narvii/app/NVContext;)V

    .line 37
    .line 38
    new-instance v2, Lcom/narvii/achievements/AllRanksFragment$1;

    .line 39
    .line 40
    .line 41
    invoke-direct {v2, p0, p0}, Lcom/narvii/achievements/AllRanksFragment$1;-><init>(Lcom/narvii/achievements/AllRanksFragment;Lcom/narvii/app/NVContext;)V

    .line 42
    const/4 v3, 0x2

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v0, v3}, Lcom/narvii/list/DividerAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v2, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 49
    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f12012d

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 10
    const/4 v0, 0x1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 14
    .line 15
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    iput-object v0, p0, Lcom/narvii/achievements/AllRanksFragment;->numberFormat:Ljava/text/NumberFormat;

    .line 22
    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    const-string p1, "statistics"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 32
    .line 33
    const-string v0, "See All Ranks Page Opened"

    .line 34
    .line 35
    .line 36
    invoke-interface {p1, v0}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    const-string v0, "Source"

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    const-string v0, "See All Ranks Page Opened Total"

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 53
    :cond_0
    return-void
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
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d04ba

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string p2, "config"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object p2

    .line 10
    .line 11
    check-cast p2, Lcom/narvii/config/ConfigService;

    .line 12
    .line 13
    const-string v0, "themePack"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    check-cast v0, Lcom/narvii/theme/ThemePackService;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 23
    move-result p2

    .line 24
    .line 25
    sget-object v1, Lcom/narvii/theme/ThemePackService$ThemeObject;->BACKGROUND:Lcom/narvii/theme/ThemePackService$ThemeObject;

    .line 26
    const/4 v2, 0x0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p2, v1, v2, v2}, Lcom/narvii/theme/ThemePackService;->getDrawable(ILcom/narvii/theme/ThemePackService$ThemeObject;II)Landroid/graphics/drawable/Drawable;

    .line 30
    move-result-object p2

    .line 31
    .line 32
    .line 33
    const v0, 0x7f0a0196

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    check-cast v0, Landroid/widget/ImageView;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 43
    .line 44
    .line 45
    const v0, 0x7f0a01c8

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    if-nez p2, :cond_0

    .line 52
    goto :goto_0

    .line 53
    .line 54
    :cond_0
    const/16 v2, 0x8

    .line 55
    .line 56
    .line 57
    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 58
    return-void
.end method
