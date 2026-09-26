.class public final Lcom/narvii/amino/databinding/FragmentQuizzesResultLayoutBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final list:Lcom/narvii/widget/NVListView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final listContainer:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final listFrame:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final nextQuizzesContainer:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final progress:Lcom/narvii/widget/SpinningView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final quizzesBackground:Lcom/narvii/widget/FullscreenBackgroundView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final titleHover:Lcom/narvii/amino/databinding/QuizzesResultListTitleBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final topBackground:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Lcom/narvii/widget/NVListView;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Lcom/narvii/widget/SpinningView;Lcom/narvii/widget/FullscreenBackgroundView;Lcom/narvii/amino/databinding/QuizzesResultListTitleBinding;Landroid/widget/ImageView;)V
    .locals 0
    .param p1    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/widget/NVListView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/narvii/widget/SpinningView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/narvii/widget/FullscreenBackgroundView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Lcom/narvii/amino/databinding/QuizzesResultListTitleBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/amino/databinding/FragmentQuizzesResultLayoutBinding;->rootView:Landroid/widget/FrameLayout;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/amino/databinding/FragmentQuizzesResultLayoutBinding;->list:Lcom/narvii/widget/NVListView;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/amino/databinding/FragmentQuizzesResultLayoutBinding;->listContainer:Landroid/widget/FrameLayout;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/narvii/amino/databinding/FragmentQuizzesResultLayoutBinding;->listFrame:Landroid/widget/FrameLayout;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/narvii/amino/databinding/FragmentQuizzesResultLayoutBinding;->nextQuizzesContainer:Landroid/widget/FrameLayout;

    .line 14
    .line 15
    iput-object p6, p0, Lcom/narvii/amino/databinding/FragmentQuizzesResultLayoutBinding;->progress:Lcom/narvii/widget/SpinningView;

    .line 16
    .line 17
    iput-object p7, p0, Lcom/narvii/amino/databinding/FragmentQuizzesResultLayoutBinding;->quizzesBackground:Lcom/narvii/widget/FullscreenBackgroundView;

    .line 18
    .line 19
    iput-object p8, p0, Lcom/narvii/amino/databinding/FragmentQuizzesResultLayoutBinding;->titleHover:Lcom/narvii/amino/databinding/QuizzesResultListTitleBinding;

    .line 20
    .line 21
    iput-object p9, p0, Lcom/narvii/amino/databinding/FragmentQuizzesResultLayoutBinding;->topBackground:Landroid/widget/ImageView;

    .line 22
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/amino/databinding/FragmentQuizzesResultLayoutBinding;
    .locals 12
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
    move-object v4, v1

    .line 9
    .line 10
    check-cast v4, Lcom/narvii/widget/NVListView;

    .line 11
    .line 12
    if-eqz v4, :cond_0

    .line 13
    .line 14
    .line 15
    const v0, 0x7f0a07fc

    .line 16
    .line 17
    .line 18
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 19
    move-result-object v1

    .line 20
    move-object v5, v1

    .line 21
    .line 22
    check-cast v5, Landroid/widget/FrameLayout;

    .line 23
    .line 24
    if-eqz v5, :cond_0

    .line 25
    move-object v6, p0

    .line 26
    .line 27
    check-cast v6, Landroid/widget/FrameLayout;

    .line 28
    .line 29
    .line 30
    const v0, 0x7f0a09f7

    .line 31
    .line 32
    .line 33
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 34
    move-result-object v1

    .line 35
    move-object v7, v1

    .line 36
    .line 37
    check-cast v7, Landroid/widget/FrameLayout;

    .line 38
    .line 39
    if-eqz v7, :cond_0

    .line 40
    .line 41
    .line 42
    const v0, 0x102000d

    .line 43
    .line 44
    .line 45
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 46
    move-result-object v1

    .line 47
    move-object v8, v1

    .line 48
    .line 49
    check-cast v8, Lcom/narvii/widget/SpinningView;

    .line 50
    .line 51
    if-eqz v8, :cond_0

    .line 52
    .line 53
    .line 54
    const v0, 0x7f0a0bbf

    .line 55
    .line 56
    .line 57
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 58
    move-result-object v1

    .line 59
    move-object v9, v1

    .line 60
    .line 61
    check-cast v9, Lcom/narvii/widget/FullscreenBackgroundView;

    .line 62
    .line 63
    if-eqz v9, :cond_0

    .line 64
    .line 65
    .line 66
    const v0, 0x7f0a0eae

    .line 67
    .line 68
    .line 69
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 70
    move-result-object v1

    .line 71
    .line 72
    if-eqz v1, :cond_0

    .line 73
    .line 74
    .line 75
    invoke-static {v1}, Lcom/narvii/amino/databinding/QuizzesResultListTitleBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/QuizzesResultListTitleBinding;

    .line 76
    move-result-object v10

    .line 77
    .line 78
    .line 79
    const v0, 0x7f0a0ed0

    .line 80
    .line 81
    .line 82
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 83
    move-result-object v1

    .line 84
    move-object v11, v1

    .line 85
    .line 86
    check-cast v11, Landroid/widget/ImageView;

    .line 87
    .line 88
    if-eqz v11, :cond_0

    .line 89
    .line 90
    new-instance p0, Lcom/narvii/amino/databinding/FragmentQuizzesResultLayoutBinding;

    .line 91
    move-object v2, p0

    .line 92
    move-object v3, v6

    .line 93
    .line 94
    .line 95
    invoke-direct/range {v2 .. v11}, Lcom/narvii/amino/databinding/FragmentQuizzesResultLayoutBinding;-><init>(Landroid/widget/FrameLayout;Lcom/narvii/widget/NVListView;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Lcom/narvii/widget/SpinningView;Lcom/narvii/widget/FullscreenBackgroundView;Lcom/narvii/amino/databinding/QuizzesResultListTitleBinding;Landroid/widget/ImageView;)V

    .line 96
    return-object p0

    .line 97
    .line 98
    .line 99
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 100
    move-result-object p0

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 104
    move-result-object p0

    .line 105
    .line 106
    new-instance v0, Ljava/lang/NullPointerException;

    .line 107
    .line 108
    const-string v1, "Missing required view with ID: "

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 112
    move-result-object p0

    .line 113
    .line 114
    .line 115
    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 116
    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/narvii/amino/databinding/FragmentQuizzesResultLayoutBinding;
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
    invoke-static {p0, v0, v1}, Lcom/narvii/amino/databinding/FragmentQuizzesResultLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/FragmentQuizzesResultLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/FragmentQuizzesResultLayoutBinding;
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

    const v0, 0x7f0d0304

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/amino/databinding/FragmentQuizzesResultLayoutBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/FragmentQuizzesResultLayoutBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/amino/databinding/FragmentQuizzesResultLayoutBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/amino/databinding/FragmentQuizzesResultLayoutBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
