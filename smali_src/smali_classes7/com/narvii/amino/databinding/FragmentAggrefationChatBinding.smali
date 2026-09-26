.class public final Lcom/narvii/amino/databinding/FragmentAggrefationChatBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final bottomPlaceHolder:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final chatContentFrame:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final communityList:Lcom/narvii/widget/NVListView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final globalLayout:Lcom/narvii/amino/databinding/ItemGlobalAggregationBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final masterTopPlaceholder:Lcom/narvii/master/widget/MasterTabPlaceHolder;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final recentLayout:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final selectedIndicator:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/view/View;Landroid/widget/FrameLayout;Lcom/narvii/widget/NVListView;Lcom/narvii/amino/databinding/ItemGlobalAggregationBinding;Lcom/narvii/master/widget/MasterTabPlaceHolder;Landroid/widget/FrameLayout;Landroid/widget/ImageView;)V
    .locals 0
    .param p1    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/narvii/widget/NVListView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/amino/databinding/ItemGlobalAggregationBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/narvii/master/widget/MasterTabPlaceHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/amino/databinding/FragmentAggrefationChatBinding;->rootView:Landroid/widget/LinearLayout;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/amino/databinding/FragmentAggrefationChatBinding;->bottomPlaceHolder:Landroid/view/View;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/amino/databinding/FragmentAggrefationChatBinding;->chatContentFrame:Landroid/widget/FrameLayout;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/narvii/amino/databinding/FragmentAggrefationChatBinding;->communityList:Lcom/narvii/widget/NVListView;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/narvii/amino/databinding/FragmentAggrefationChatBinding;->globalLayout:Lcom/narvii/amino/databinding/ItemGlobalAggregationBinding;

    .line 14
    .line 15
    iput-object p6, p0, Lcom/narvii/amino/databinding/FragmentAggrefationChatBinding;->masterTopPlaceholder:Lcom/narvii/master/widget/MasterTabPlaceHolder;

    .line 16
    .line 17
    iput-object p7, p0, Lcom/narvii/amino/databinding/FragmentAggrefationChatBinding;->recentLayout:Landroid/widget/FrameLayout;

    .line 18
    .line 19
    iput-object p8, p0, Lcom/narvii/amino/databinding/FragmentAggrefationChatBinding;->selectedIndicator:Landroid/widget/ImageView;

    .line 20
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/amino/databinding/FragmentAggrefationChatBinding;
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
    const v0, 0x7f0a01f8

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
    const v0, 0x7f0a0295

    .line 13
    .line 14
    .line 15
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 16
    move-result-object v1

    .line 17
    move-object v4, v1

    .line 18
    .line 19
    check-cast v4, Landroid/widget/FrameLayout;

    .line 20
    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    .line 24
    const v0, 0x7f0a0379

    .line 25
    .line 26
    .line 27
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 28
    move-result-object v1

    .line 29
    move-object v5, v1

    .line 30
    .line 31
    check-cast v5, Lcom/narvii/widget/NVListView;

    .line 32
    .line 33
    if-eqz v5, :cond_0

    .line 34
    .line 35
    .line 36
    const v0, 0x7f0a061f

    .line 37
    .line 38
    .line 39
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    if-eqz v1, :cond_0

    .line 43
    .line 44
    .line 45
    invoke-static {v1}, Lcom/narvii/amino/databinding/ItemGlobalAggregationBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/ItemGlobalAggregationBinding;

    .line 46
    move-result-object v6

    .line 47
    .line 48
    .line 49
    const v0, 0x7f0a0853

    .line 50
    .line 51
    .line 52
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 53
    move-result-object v1

    .line 54
    move-object v7, v1

    .line 55
    .line 56
    check-cast v7, Lcom/narvii/master/widget/MasterTabPlaceHolder;

    .line 57
    .line 58
    if-eqz v7, :cond_0

    .line 59
    .line 60
    .line 61
    const v0, 0x7f0a0be7

    .line 62
    .line 63
    .line 64
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 65
    move-result-object v1

    .line 66
    move-object v8, v1

    .line 67
    .line 68
    check-cast v8, Landroid/widget/FrameLayout;

    .line 69
    .line 70
    if-eqz v8, :cond_0

    .line 71
    .line 72
    .line 73
    const v0, 0x7f0a0cd5

    .line 74
    .line 75
    .line 76
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 77
    move-result-object v1

    .line 78
    move-object v9, v1

    .line 79
    .line 80
    check-cast v9, Landroid/widget/ImageView;

    .line 81
    .line 82
    if-eqz v9, :cond_0

    .line 83
    .line 84
    new-instance v0, Lcom/narvii/amino/databinding/FragmentAggrefationChatBinding;

    .line 85
    move-object v2, p0

    .line 86
    .line 87
    check-cast v2, Landroid/widget/LinearLayout;

    .line 88
    move-object v1, v0

    .line 89
    .line 90
    .line 91
    invoke-direct/range {v1 .. v9}, Lcom/narvii/amino/databinding/FragmentAggrefationChatBinding;-><init>(Landroid/widget/LinearLayout;Landroid/view/View;Landroid/widget/FrameLayout;Lcom/narvii/widget/NVListView;Lcom/narvii/amino/databinding/ItemGlobalAggregationBinding;Lcom/narvii/master/widget/MasterTabPlaceHolder;Landroid/widget/FrameLayout;Landroid/widget/ImageView;)V

    .line 92
    return-object v0

    .line 93
    .line 94
    .line 95
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 96
    move-result-object p0

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 100
    move-result-object p0

    .line 101
    .line 102
    new-instance v0, Ljava/lang/NullPointerException;

    .line 103
    .line 104
    const-string v1, "Missing required view with ID: "

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    move-result-object p0

    .line 109
    .line 110
    .line 111
    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 112
    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/narvii/amino/databinding/FragmentAggrefationChatBinding;
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
    invoke-static {p0, v0, v1}, Lcom/narvii/amino/databinding/FragmentAggrefationChatBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/FragmentAggrefationChatBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/FragmentAggrefationChatBinding;
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

    const v0, 0x7f0d02a4

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/amino/databinding/FragmentAggrefationChatBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/FragmentAggrefationChatBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/amino/databinding/FragmentAggrefationChatBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/amino/databinding/FragmentAggrefationChatBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
