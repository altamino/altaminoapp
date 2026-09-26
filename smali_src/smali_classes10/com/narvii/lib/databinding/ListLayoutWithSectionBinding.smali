.class public final Lcom/narvii/lib/databinding/ListLayoutWithSectionBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final empty:Lcom/narvii/lib/databinding/ModerationHistoryEmptyViewBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final listFrame:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final progress:Lcom/narvii/widget/SpinningView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final sectionHeaderOverlay:Lcom/narvii/lib/databinding/ItemSectionLayoutBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final topContainer:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final topContainerParent:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Lcom/narvii/lib/databinding/ModerationHistoryEmptyViewBinding;Landroid/widget/FrameLayout;Lcom/narvii/widget/SpinningView;Lcom/narvii/lib/databinding/ItemSectionLayoutBinding;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V
    .locals 0
    .param p1    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/lib/databinding/ModerationHistoryEmptyViewBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/narvii/widget/SpinningView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/lib/databinding/ItemSectionLayoutBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/lib/databinding/ListLayoutWithSectionBinding;->rootView:Landroid/widget/FrameLayout;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/lib/databinding/ListLayoutWithSectionBinding;->empty:Lcom/narvii/lib/databinding/ModerationHistoryEmptyViewBinding;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/lib/databinding/ListLayoutWithSectionBinding;->listFrame:Landroid/widget/FrameLayout;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/narvii/lib/databinding/ListLayoutWithSectionBinding;->progress:Lcom/narvii/widget/SpinningView;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/narvii/lib/databinding/ListLayoutWithSectionBinding;->sectionHeaderOverlay:Lcom/narvii/lib/databinding/ItemSectionLayoutBinding;

    .line 14
    .line 15
    iput-object p6, p0, Lcom/narvii/lib/databinding/ListLayoutWithSectionBinding;->topContainer:Landroid/widget/FrameLayout;

    .line 16
    .line 17
    iput-object p7, p0, Lcom/narvii/lib/databinding/ListLayoutWithSectionBinding;->topContainerParent:Landroid/widget/FrameLayout;

    .line 18
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/lib/databinding/ListLayoutWithSectionBinding;
    .locals 10
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    const v0, 0x1020004

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 7
    move-result-object v1

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-static {v1}, Lcom/narvii/lib/databinding/ModerationHistoryEmptyViewBinding;->bind(Landroid/view/View;)Lcom/narvii/lib/databinding/ModerationHistoryEmptyViewBinding;

    .line 13
    move-result-object v4

    .line 14
    move-object v5, p0

    .line 15
    .line 16
    check-cast v5, Landroid/widget/FrameLayout;

    .line 17
    .line 18
    .line 19
    const v0, 0x102000d

    .line 20
    .line 21
    .line 22
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 23
    move-result-object v1

    .line 24
    move-object v6, v1

    .line 25
    .line 26
    check-cast v6, Lcom/narvii/widget/SpinningView;

    .line 27
    .line 28
    if-eqz v6, :cond_0

    .line 29
    .line 30
    sget v0, Lcom/narvii/lib/R$id;->section_header_overlay:I

    .line 31
    .line 32
    .line 33
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    .line 39
    invoke-static {v1}, Lcom/narvii/lib/databinding/ItemSectionLayoutBinding;->bind(Landroid/view/View;)Lcom/narvii/lib/databinding/ItemSectionLayoutBinding;

    .line 40
    move-result-object v7

    .line 41
    .line 42
    sget v0, Lcom/narvii/lib/R$id;->top_container:I

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
    check-cast v8, Landroid/widget/FrameLayout;

    .line 50
    .line 51
    if-eqz v8, :cond_0

    .line 52
    .line 53
    sget v0, Lcom/narvii/lib/R$id;->top_container_parent:I

    .line 54
    .line 55
    .line 56
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 57
    move-result-object v1

    .line 58
    move-object v9, v1

    .line 59
    .line 60
    check-cast v9, Landroid/widget/FrameLayout;

    .line 61
    .line 62
    if-eqz v9, :cond_0

    .line 63
    .line 64
    new-instance p0, Lcom/narvii/lib/databinding/ListLayoutWithSectionBinding;

    .line 65
    move-object v2, p0

    .line 66
    move-object v3, v5

    .line 67
    .line 68
    .line 69
    invoke-direct/range {v2 .. v9}, Lcom/narvii/lib/databinding/ListLayoutWithSectionBinding;-><init>(Landroid/widget/FrameLayout;Lcom/narvii/lib/databinding/ModerationHistoryEmptyViewBinding;Landroid/widget/FrameLayout;Lcom/narvii/widget/SpinningView;Lcom/narvii/lib/databinding/ItemSectionLayoutBinding;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V

    .line 70
    return-object p0

    .line 71
    .line 72
    .line 73
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 74
    move-result-object p0

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 78
    move-result-object p0

    .line 79
    .line 80
    new-instance v0, Ljava/lang/NullPointerException;

    .line 81
    .line 82
    const-string v1, "Missing required view with ID: "

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 86
    move-result-object p0

    .line 87
    .line 88
    .line 89
    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 90
    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/narvii/lib/databinding/ListLayoutWithSectionBinding;
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
    invoke-static {p0, v0, v1}, Lcom/narvii/lib/databinding/ListLayoutWithSectionBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/lib/databinding/ListLayoutWithSectionBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/lib/databinding/ListLayoutWithSectionBinding;
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

    sget v0, Lcom/narvii/lib/R$layout;->list_layout_with_section:I

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/lib/databinding/ListLayoutWithSectionBinding;->bind(Landroid/view/View;)Lcom/narvii/lib/databinding/ListLayoutWithSectionBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/lib/databinding/ListLayoutWithSectionBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/lib/databinding/ListLayoutWithSectionBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
