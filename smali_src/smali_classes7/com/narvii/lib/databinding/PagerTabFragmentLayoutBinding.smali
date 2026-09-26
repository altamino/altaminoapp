.class public final Lcom/narvii/lib/databinding/PagerTabFragmentLayoutBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final pager:Landroidx/viewpager/widget/ViewPager;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/widget/TabHost;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tabcontent:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tabhost:Landroid/widget/TabHost;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tabs:Landroid/widget/TabWidget;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/TabHost;Landroidx/viewpager/widget/ViewPager;Landroid/widget/FrameLayout;Landroid/widget/TabHost;Landroid/widget/TabWidget;)V
    .locals 0
    .param p1    # Landroid/widget/TabHost;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/viewpager/widget/ViewPager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/widget/TabHost;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/widget/TabWidget;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/lib/databinding/PagerTabFragmentLayoutBinding;->rootView:Landroid/widget/TabHost;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/lib/databinding/PagerTabFragmentLayoutBinding;->pager:Landroidx/viewpager/widget/ViewPager;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/lib/databinding/PagerTabFragmentLayoutBinding;->tabcontent:Landroid/widget/FrameLayout;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/narvii/lib/databinding/PagerTabFragmentLayoutBinding;->tabhost:Landroid/widget/TabHost;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/narvii/lib/databinding/PagerTabFragmentLayoutBinding;->tabs:Landroid/widget/TabWidget;

    .line 14
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/lib/databinding/PagerTabFragmentLayoutBinding;
    .locals 8
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    sget v0, Lcom/narvii/lib/R$id;->pager:I

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 6
    move-result-object v1

    .line 7
    move-object v4, v1

    .line 8
    .line 9
    check-cast v4, Landroidx/viewpager/widget/ViewPager;

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    .line 14
    const v0, 0x1020011

    .line 15
    .line 16
    .line 17
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 18
    move-result-object v1

    .line 19
    move-object v5, v1

    .line 20
    .line 21
    check-cast v5, Landroid/widget/FrameLayout;

    .line 22
    .line 23
    if-eqz v5, :cond_0

    .line 24
    move-object v6, p0

    .line 25
    .line 26
    check-cast v6, Landroid/widget/TabHost;

    .line 27
    .line 28
    .line 29
    const v0, 0x1020013

    .line 30
    .line 31
    .line 32
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 33
    move-result-object v1

    .line 34
    move-object v7, v1

    .line 35
    .line 36
    check-cast v7, Landroid/widget/TabWidget;

    .line 37
    .line 38
    if-eqz v7, :cond_0

    .line 39
    .line 40
    new-instance p0, Lcom/narvii/lib/databinding/PagerTabFragmentLayoutBinding;

    .line 41
    move-object v2, p0

    .line 42
    move-object v3, v6

    .line 43
    .line 44
    .line 45
    invoke-direct/range {v2 .. v7}, Lcom/narvii/lib/databinding/PagerTabFragmentLayoutBinding;-><init>(Landroid/widget/TabHost;Landroidx/viewpager/widget/ViewPager;Landroid/widget/FrameLayout;Landroid/widget/TabHost;Landroid/widget/TabWidget;)V

    .line 46
    return-object p0

    .line 47
    .line 48
    .line 49
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 50
    move-result-object p0

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 54
    move-result-object p0

    .line 55
    .line 56
    new-instance v0, Ljava/lang/NullPointerException;

    .line 57
    .line 58
    const-string v1, "Missing required view with ID: "

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    move-result-object p0

    .line 63
    .line 64
    .line 65
    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 66
    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/narvii/lib/databinding/PagerTabFragmentLayoutBinding;
    .locals 2
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcom/narvii/lib/databinding/PagerTabFragmentLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/lib/databinding/PagerTabFragmentLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/lib/databinding/PagerTabFragmentLayoutBinding;
    .locals 2
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget v0, Lcom/narvii/lib/R$layout;->pager_tab_fragment_layout:I

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/lib/databinding/PagerTabFragmentLayoutBinding;->bind(Landroid/view/View;)Lcom/narvii/lib/databinding/PagerTabFragmentLayoutBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/lib/databinding/PagerTabFragmentLayoutBinding;->getRoot()Landroid/widget/TabHost;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/TabHost;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/lib/databinding/PagerTabFragmentLayoutBinding;->rootView:Landroid/widget/TabHost;

    return-object v0
.end method
