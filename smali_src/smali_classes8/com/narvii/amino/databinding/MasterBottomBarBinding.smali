.class public final Lcom/narvii/amino/databinding/MasterBottomBarBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tabChat:Lcom/narvii/amino/databinding/IncubatorTabItemLayoutBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tabCommunity:Lcom/narvii/amino/databinding/IncubatorTabItemLayoutBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tabDiscover:Lcom/narvii/amino/databinding/IncubatorTabItemLayoutBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tabStore:Lcom/narvii/amino/databinding/IncubatorTabItemLayoutBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/narvii/amino/databinding/IncubatorTabItemLayoutBinding;Lcom/narvii/amino/databinding/IncubatorTabItemLayoutBinding;Lcom/narvii/amino/databinding/IncubatorTabItemLayoutBinding;Lcom/narvii/amino/databinding/IncubatorTabItemLayoutBinding;)V
    .locals 0
    .param p1    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/amino/databinding/IncubatorTabItemLayoutBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/amino/databinding/IncubatorTabItemLayoutBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/narvii/amino/databinding/IncubatorTabItemLayoutBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/amino/databinding/IncubatorTabItemLayoutBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/amino/databinding/MasterBottomBarBinding;->rootView:Landroid/widget/LinearLayout;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/amino/databinding/MasterBottomBarBinding;->tabChat:Lcom/narvii/amino/databinding/IncubatorTabItemLayoutBinding;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/amino/databinding/MasterBottomBarBinding;->tabCommunity:Lcom/narvii/amino/databinding/IncubatorTabItemLayoutBinding;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/narvii/amino/databinding/MasterBottomBarBinding;->tabDiscover:Lcom/narvii/amino/databinding/IncubatorTabItemLayoutBinding;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/narvii/amino/databinding/MasterBottomBarBinding;->tabStore:Lcom/narvii/amino/databinding/IncubatorTabItemLayoutBinding;

    .line 14
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/amino/databinding/MasterBottomBarBinding;
    .locals 8
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a0e1a

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
    invoke-static {v1}, Lcom/narvii/amino/databinding/IncubatorTabItemLayoutBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/IncubatorTabItemLayoutBinding;

    .line 13
    move-result-object v4

    .line 14
    .line 15
    .line 16
    const v0, 0x7f0a0e1b

    .line 17
    .line 18
    .line 19
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-static {v1}, Lcom/narvii/amino/databinding/IncubatorTabItemLayoutBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/IncubatorTabItemLayoutBinding;

    .line 26
    move-result-object v5

    .line 27
    .line 28
    .line 29
    const v0, 0x7f0a0e1d

    .line 30
    .line 31
    .line 32
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    .line 38
    invoke-static {v1}, Lcom/narvii/amino/databinding/IncubatorTabItemLayoutBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/IncubatorTabItemLayoutBinding;

    .line 39
    move-result-object v6

    .line 40
    .line 41
    .line 42
    const v0, 0x7f0a0e26

    .line 43
    .line 44
    .line 45
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    if-eqz v1, :cond_0

    .line 49
    .line 50
    .line 51
    invoke-static {v1}, Lcom/narvii/amino/databinding/IncubatorTabItemLayoutBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/IncubatorTabItemLayoutBinding;

    .line 52
    move-result-object v7

    .line 53
    .line 54
    new-instance v0, Lcom/narvii/amino/databinding/MasterBottomBarBinding;

    .line 55
    move-object v3, p0

    .line 56
    .line 57
    check-cast v3, Landroid/widget/LinearLayout;

    .line 58
    move-object v2, v0

    .line 59
    .line 60
    .line 61
    invoke-direct/range {v2 .. v7}, Lcom/narvii/amino/databinding/MasterBottomBarBinding;-><init>(Landroid/widget/LinearLayout;Lcom/narvii/amino/databinding/IncubatorTabItemLayoutBinding;Lcom/narvii/amino/databinding/IncubatorTabItemLayoutBinding;Lcom/narvii/amino/databinding/IncubatorTabItemLayoutBinding;Lcom/narvii/amino/databinding/IncubatorTabItemLayoutBinding;)V

    .line 62
    return-object v0

    .line 63
    .line 64
    .line 65
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 66
    move-result-object p0

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 70
    move-result-object p0

    .line 71
    .line 72
    new-instance v0, Ljava/lang/NullPointerException;

    .line 73
    .line 74
    const-string v1, "Missing required view with ID: "

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    move-result-object p0

    .line 79
    .line 80
    .line 81
    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 82
    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/narvii/amino/databinding/MasterBottomBarBinding;
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
    invoke-static {p0, v0, v1}, Lcom/narvii/amino/databinding/MasterBottomBarBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/MasterBottomBarBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/MasterBottomBarBinding;
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

    const v0, 0x7f0d0524

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/amino/databinding/MasterBottomBarBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/MasterBottomBarBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/amino/databinding/MasterBottomBarBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/amino/databinding/MasterBottomBarBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
