.class public final Lcom/narvii/lib/databinding/DragSortPagerListLayoutBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final list:Lcom/mobeta/android/dslv/DragSortListView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final listFrame:Lcom/narvii/app/theme/view/NVThemeFrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final progress:Lcom/narvii/widget/SpinningView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Lcom/narvii/app/theme/view/NVThemeFrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/narvii/app/theme/view/NVThemeFrameLayout;Lcom/mobeta/android/dslv/DragSortListView;Lcom/narvii/app/theme/view/NVThemeFrameLayout;Lcom/narvii/widget/SpinningView;)V
    .locals 0
    .param p1    # Lcom/narvii/app/theme/view/NVThemeFrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/mobeta/android/dslv/DragSortListView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/app/theme/view/NVThemeFrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/narvii/widget/SpinningView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/lib/databinding/DragSortPagerListLayoutBinding;->rootView:Lcom/narvii/app/theme/view/NVThemeFrameLayout;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/lib/databinding/DragSortPagerListLayoutBinding;->list:Lcom/mobeta/android/dslv/DragSortListView;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/lib/databinding/DragSortPagerListLayoutBinding;->listFrame:Lcom/narvii/app/theme/view/NVThemeFrameLayout;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/narvii/lib/databinding/DragSortPagerListLayoutBinding;->progress:Lcom/narvii/widget/SpinningView;

    .line 12
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/lib/databinding/DragSortPagerListLayoutBinding;
    .locals 4
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    const v0, 0x102000a

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 7
    move-result-object v1

    .line 8
    .line 9
    check-cast v1, Lcom/mobeta/android/dslv/DragSortListView;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    move-object v0, p0

    .line 13
    .line 14
    check-cast v0, Lcom/narvii/app/theme/view/NVThemeFrameLayout;

    .line 15
    .line 16
    .line 17
    const v2, 0x102000d

    .line 18
    .line 19
    .line 20
    invoke-static {p0, v2}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 21
    move-result-object v3

    .line 22
    .line 23
    check-cast v3, Lcom/narvii/widget/SpinningView;

    .line 24
    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    new-instance p0, Lcom/narvii/lib/databinding/DragSortPagerListLayoutBinding;

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, v0, v1, v0, v3}, Lcom/narvii/lib/databinding/DragSortPagerListLayoutBinding;-><init>(Lcom/narvii/app/theme/view/NVThemeFrameLayout;Lcom/mobeta/android/dslv/DragSortListView;Lcom/narvii/app/theme/view/NVThemeFrameLayout;Lcom/narvii/widget/SpinningView;)V

    .line 31
    return-object p0

    .line 32
    :cond_0
    move v0, v2

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 36
    move-result-object p0

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 40
    move-result-object p0

    .line 41
    .line 42
    new-instance v0, Ljava/lang/NullPointerException;

    .line 43
    .line 44
    const-string v1, "Missing required view with ID: "

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    move-result-object p0

    .line 49
    .line 50
    .line 51
    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 52
    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/narvii/lib/databinding/DragSortPagerListLayoutBinding;
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
    invoke-static {p0, v0, v1}, Lcom/narvii/lib/databinding/DragSortPagerListLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/lib/databinding/DragSortPagerListLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/lib/databinding/DragSortPagerListLayoutBinding;
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

    sget v0, Lcom/narvii/lib/R$layout;->drag_sort_pager_list_layout:I

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/lib/databinding/DragSortPagerListLayoutBinding;->bind(Landroid/view/View;)Lcom/narvii/lib/databinding/DragSortPagerListLayoutBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/lib/databinding/DragSortPagerListLayoutBinding;->getRoot()Lcom/narvii/app/theme/view/NVThemeFrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/narvii/app/theme/view/NVThemeFrameLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/lib/databinding/DragSortPagerListLayoutBinding;->rootView:Lcom/narvii/app/theme/view/NVThemeFrameLayout;

    return-object v0
.end method
