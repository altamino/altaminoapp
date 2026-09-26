.class public final Lcom/narvii/lib/databinding/ListLayoutBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
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

.field public final videoOverlay:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/narvii/app/theme/view/NVThemeFrameLayout;Lcom/narvii/app/theme/view/NVThemeFrameLayout;Lcom/narvii/widget/SpinningView;Landroid/widget/FrameLayout;)V
    .locals 0
    .param p1    # Lcom/narvii/app/theme/view/NVThemeFrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/app/theme/view/NVThemeFrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/widget/SpinningView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/lib/databinding/ListLayoutBinding;->rootView:Lcom/narvii/app/theme/view/NVThemeFrameLayout;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/lib/databinding/ListLayoutBinding;->listFrame:Lcom/narvii/app/theme/view/NVThemeFrameLayout;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/lib/databinding/ListLayoutBinding;->progress:Lcom/narvii/widget/SpinningView;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/narvii/lib/databinding/ListLayoutBinding;->videoOverlay:Landroid/widget/FrameLayout;

    .line 12
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/lib/databinding/ListLayoutBinding;
    .locals 4
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    .line 3
    check-cast v0, Lcom/narvii/app/theme/view/NVThemeFrameLayout;

    .line 4
    .line 5
    .line 6
    const v1, 0x102000d

    .line 7
    .line 8
    .line 9
    invoke-static {p0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 10
    move-result-object v2

    .line 11
    .line 12
    check-cast v2, Lcom/narvii/widget/SpinningView;

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    sget v1, Lcom/narvii/lib/R$id;->video_overlay:I

    .line 17
    .line 18
    .line 19
    invoke-static {p0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 20
    move-result-object v3

    .line 21
    .line 22
    check-cast v3, Landroid/widget/FrameLayout;

    .line 23
    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    new-instance p0, Lcom/narvii/lib/databinding/ListLayoutBinding;

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, v0, v0, v2, v3}, Lcom/narvii/lib/databinding/ListLayoutBinding;-><init>(Lcom/narvii/app/theme/view/NVThemeFrameLayout;Lcom/narvii/app/theme/view/NVThemeFrameLayout;Lcom/narvii/widget/SpinningView;Landroid/widget/FrameLayout;)V

    .line 30
    return-object p0

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 34
    move-result-object p0

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 38
    move-result-object p0

    .line 39
    .line 40
    new-instance v0, Ljava/lang/NullPointerException;

    .line 41
    .line 42
    const-string v1, "Missing required view with ID: "

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    move-result-object p0

    .line 47
    .line 48
    .line 49
    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 50
    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/narvii/lib/databinding/ListLayoutBinding;
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
    invoke-static {p0, v0, v1}, Lcom/narvii/lib/databinding/ListLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/lib/databinding/ListLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/lib/databinding/ListLayoutBinding;
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

    sget v0, Lcom/narvii/lib/R$layout;->list_layout:I

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/lib/databinding/ListLayoutBinding;->bind(Landroid/view/View;)Lcom/narvii/lib/databinding/ListLayoutBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/lib/databinding/ListLayoutBinding;->getRoot()Lcom/narvii/app/theme/view/NVThemeFrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/narvii/app/theme/view/NVThemeFrameLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/lib/databinding/ListLayoutBinding;->rootView:Lcom/narvii/app/theme/view/NVThemeFrameLayout;

    return-object v0
.end method
