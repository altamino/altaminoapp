.class public final Lcom/narvii/lib/databinding/ActionbarLayoutBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final actionbar:Lcom/narvii/util/actionbar/ActionBarLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final actionbarBack:Lcom/narvii/widget/TintButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final actionbarLeft:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final actionbarTitle:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Lcom/narvii/util/actionbar/ActionBarLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/narvii/util/actionbar/ActionBarLayout;Lcom/narvii/util/actionbar/ActionBarLayout;Lcom/narvii/widget/TintButton;Landroid/widget/FrameLayout;Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Lcom/narvii/util/actionbar/ActionBarLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/util/actionbar/ActionBarLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/widget/TintButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/lib/databinding/ActionbarLayoutBinding;->rootView:Lcom/narvii/util/actionbar/ActionBarLayout;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/lib/databinding/ActionbarLayoutBinding;->actionbar:Lcom/narvii/util/actionbar/ActionBarLayout;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/lib/databinding/ActionbarLayoutBinding;->actionbarBack:Lcom/narvii/widget/TintButton;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/narvii/lib/databinding/ActionbarLayoutBinding;->actionbarLeft:Landroid/widget/FrameLayout;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/narvii/lib/databinding/ActionbarLayoutBinding;->actionbarTitle:Landroid/widget/TextView;

    .line 14
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/lib/databinding/ActionbarLayoutBinding;
    .locals 6
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    move-object v2, p0

    .line 2
    .line 3
    check-cast v2, Lcom/narvii/util/actionbar/ActionBarLayout;

    .line 4
    .line 5
    sget v0, Lcom/narvii/lib/R$id;->actionbar_back:I

    .line 6
    .line 7
    .line 8
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 9
    move-result-object v1

    .line 10
    move-object v3, v1

    .line 11
    .line 12
    check-cast v3, Lcom/narvii/widget/TintButton;

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sget v0, Lcom/narvii/lib/R$id;->actionbar_left:I

    .line 17
    .line 18
    .line 19
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 20
    move-result-object v1

    .line 21
    move-object v4, v1

    .line 22
    .line 23
    check-cast v4, Landroid/widget/FrameLayout;

    .line 24
    .line 25
    if-eqz v4, :cond_0

    .line 26
    .line 27
    sget v0, Lcom/narvii/lib/R$id;->actionbar_title:I

    .line 28
    .line 29
    .line 30
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 31
    move-result-object v1

    .line 32
    move-object v5, v1

    .line 33
    .line 34
    check-cast v5, Landroid/widget/TextView;

    .line 35
    .line 36
    if-eqz v5, :cond_0

    .line 37
    .line 38
    new-instance p0, Lcom/narvii/lib/databinding/ActionbarLayoutBinding;

    .line 39
    move-object v0, p0

    .line 40
    move-object v1, v2

    .line 41
    .line 42
    .line 43
    invoke-direct/range {v0 .. v5}, Lcom/narvii/lib/databinding/ActionbarLayoutBinding;-><init>(Lcom/narvii/util/actionbar/ActionBarLayout;Lcom/narvii/util/actionbar/ActionBarLayout;Lcom/narvii/widget/TintButton;Landroid/widget/FrameLayout;Landroid/widget/TextView;)V

    .line 44
    return-object p0

    .line 45
    .line 46
    .line 47
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 48
    move-result-object p0

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 52
    move-result-object p0

    .line 53
    .line 54
    new-instance v0, Ljava/lang/NullPointerException;

    .line 55
    .line 56
    const-string v1, "Missing required view with ID: "

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    move-result-object p0

    .line 61
    .line 62
    .line 63
    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 64
    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/narvii/lib/databinding/ActionbarLayoutBinding;
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
    invoke-static {p0, v0, v1}, Lcom/narvii/lib/databinding/ActionbarLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/lib/databinding/ActionbarLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/lib/databinding/ActionbarLayoutBinding;
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

    sget v0, Lcom/narvii/lib/R$layout;->actionbar_layout:I

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/lib/databinding/ActionbarLayoutBinding;->bind(Landroid/view/View;)Lcom/narvii/lib/databinding/ActionbarLayoutBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/lib/databinding/ActionbarLayoutBinding;->getRoot()Lcom/narvii/util/actionbar/ActionBarLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/narvii/util/actionbar/ActionBarLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/lib/databinding/ActionbarLayoutBinding;->rootView:Lcom/narvii/util/actionbar/ActionBarLayout;

    return-object v0
.end method
