.class public final Lcom/narvii/amino/databinding/SrLiveUserContainerBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final gapView:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final gapView2:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final hostView:Lcom/narvii/amino/databinding/SrRecyclerPresenterItemBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final liveUserContainerRoot:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final liveUserCount:Lcom/narvii/widget/AutoSizingTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final liveUserCountContainer:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final liveUserRecycler:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final liveUserRecyclerContainer:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/view/View;Landroid/view/View;Lcom/narvii/amino/databinding/SrRecyclerPresenterItemBinding;Landroid/widget/LinearLayout;Lcom/narvii/widget/AutoSizingTextView;Landroid/widget/LinearLayout;Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/narvii/amino/databinding/SrRecyclerPresenterItemBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/narvii/widget/AutoSizingTextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/amino/databinding/SrLiveUserContainerBinding;->rootView:Landroid/widget/LinearLayout;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/amino/databinding/SrLiveUserContainerBinding;->gapView:Landroid/view/View;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/amino/databinding/SrLiveUserContainerBinding;->gapView2:Landroid/view/View;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/narvii/amino/databinding/SrLiveUserContainerBinding;->hostView:Lcom/narvii/amino/databinding/SrRecyclerPresenterItemBinding;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/narvii/amino/databinding/SrLiveUserContainerBinding;->liveUserContainerRoot:Landroid/widget/LinearLayout;

    .line 14
    .line 15
    iput-object p6, p0, Lcom/narvii/amino/databinding/SrLiveUserContainerBinding;->liveUserCount:Lcom/narvii/widget/AutoSizingTextView;

    .line 16
    .line 17
    iput-object p7, p0, Lcom/narvii/amino/databinding/SrLiveUserContainerBinding;->liveUserCountContainer:Landroid/widget/LinearLayout;

    .line 18
    .line 19
    iput-object p8, p0, Lcom/narvii/amino/databinding/SrLiveUserContainerBinding;->liveUserRecycler:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    .line 20
    .line 21
    iput-object p9, p0, Lcom/narvii/amino/databinding/SrLiveUserContainerBinding;->liveUserRecyclerContainer:Landroid/widget/LinearLayout;

    .line 22
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/amino/databinding/SrLiveUserContainerBinding;
    .locals 11
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a060c

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 7
    move-result-object v3

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    .line 12
    const v0, 0x7f0a060d

    .line 13
    .line 14
    .line 15
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 16
    move-result-object v4

    .line 17
    .line 18
    if-eqz v4, :cond_0

    .line 19
    .line 20
    .line 21
    const v0, 0x7f0a0682

    .line 22
    .line 23
    .line 24
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    .line 30
    invoke-static {v1}, Lcom/narvii/amino/databinding/SrRecyclerPresenterItemBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/SrRecyclerPresenterItemBinding;

    .line 31
    move-result-object v5

    .line 32
    move-object v6, p0

    .line 33
    .line 34
    check-cast v6, Landroid/widget/LinearLayout;

    .line 35
    .line 36
    .line 37
    const v0, 0x7f0a0816

    .line 38
    .line 39
    .line 40
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 41
    move-result-object v1

    .line 42
    move-object v7, v1

    .line 43
    .line 44
    check-cast v7, Lcom/narvii/widget/AutoSizingTextView;

    .line 45
    .line 46
    if-eqz v7, :cond_0

    .line 47
    .line 48
    .line 49
    const v0, 0x7f0a0817

    .line 50
    .line 51
    .line 52
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 53
    move-result-object v1

    .line 54
    move-object v8, v1

    .line 55
    .line 56
    check-cast v8, Landroid/widget/LinearLayout;

    .line 57
    .line 58
    if-eqz v8, :cond_0

    .line 59
    .line 60
    .line 61
    const v0, 0x7f0a0819

    .line 62
    .line 63
    .line 64
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 65
    move-result-object v1

    .line 66
    move-object v9, v1

    .line 67
    .line 68
    check-cast v9, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    .line 69
    .line 70
    if-eqz v9, :cond_0

    .line 71
    .line 72
    .line 73
    const v0, 0x7f0a081a

    .line 74
    .line 75
    .line 76
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 77
    move-result-object v1

    .line 78
    move-object v10, v1

    .line 79
    .line 80
    check-cast v10, Landroid/widget/LinearLayout;

    .line 81
    .line 82
    if-eqz v10, :cond_0

    .line 83
    .line 84
    new-instance p0, Lcom/narvii/amino/databinding/SrLiveUserContainerBinding;

    .line 85
    move-object v1, p0

    .line 86
    move-object v2, v6

    .line 87
    .line 88
    .line 89
    invoke-direct/range {v1 .. v10}, Lcom/narvii/amino/databinding/SrLiveUserContainerBinding;-><init>(Landroid/widget/LinearLayout;Landroid/view/View;Landroid/view/View;Lcom/narvii/amino/databinding/SrRecyclerPresenterItemBinding;Landroid/widget/LinearLayout;Lcom/narvii/widget/AutoSizingTextView;Landroid/widget/LinearLayout;Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;Landroid/widget/LinearLayout;)V

    .line 90
    return-object p0

    .line 91
    .line 92
    .line 93
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 94
    move-result-object p0

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 98
    move-result-object p0

    .line 99
    .line 100
    new-instance v0, Ljava/lang/NullPointerException;

    .line 101
    .line 102
    const-string v1, "Missing required view with ID: "

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 106
    move-result-object p0

    .line 107
    .line 108
    .line 109
    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 110
    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/narvii/amino/databinding/SrLiveUserContainerBinding;
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
    invoke-static {p0, v0, v1}, Lcom/narvii/amino/databinding/SrLiveUserContainerBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/SrLiveUserContainerBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/SrLiveUserContainerBinding;
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

    const v0, 0x7f0d06ef

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/amino/databinding/SrLiveUserContainerBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/SrLiveUserContainerBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/amino/databinding/SrLiveUserContainerBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/amino/databinding/SrLiveUserContainerBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
