.class public final Lcom/narvii/amino/databinding/IncubatorTabLayoutBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final bottomBg:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final bottomContainer:Lcom/narvii/widget/RoundFrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final bottomLayout:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final bottomTab:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final masterBackground:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final masterBottomBar:Lcom/narvii/master/widget/MasterBottomBar;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final masterTabOffset:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final masterTopBar:Lcom/narvii/master/MasterTopBar;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Lcom/narvii/nested/NVCoordinateLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tabs:Lcom/narvii/widget/NVPagerTabLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final viewpager:Lcom/narvii/widget/NVViewPager;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/narvii/nested/NVCoordinateLayout;Landroid/view/View;Lcom/narvii/widget/RoundFrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Lcom/narvii/master/widget/MasterBottomBar;Landroid/widget/LinearLayout;Lcom/narvii/master/MasterTopBar;Lcom/narvii/widget/NVPagerTabLayout;Lcom/narvii/widget/NVViewPager;)V
    .locals 0
    .param p1    # Lcom/narvii/nested/NVCoordinateLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/widget/RoundFrameLayout;
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
    .param p6    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/narvii/master/widget/MasterBottomBar;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Lcom/narvii/master/MasterTopBar;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Lcom/narvii/widget/NVPagerTabLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Lcom/narvii/widget/NVViewPager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/amino/databinding/IncubatorTabLayoutBinding;->rootView:Lcom/narvii/nested/NVCoordinateLayout;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/amino/databinding/IncubatorTabLayoutBinding;->bottomBg:Landroid/view/View;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/amino/databinding/IncubatorTabLayoutBinding;->bottomContainer:Lcom/narvii/widget/RoundFrameLayout;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/narvii/amino/databinding/IncubatorTabLayoutBinding;->bottomLayout:Landroid/widget/FrameLayout;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/narvii/amino/databinding/IncubatorTabLayoutBinding;->bottomTab:Landroid/widget/FrameLayout;

    .line 14
    .line 15
    iput-object p6, p0, Lcom/narvii/amino/databinding/IncubatorTabLayoutBinding;->masterBackground:Landroid/widget/FrameLayout;

    .line 16
    .line 17
    iput-object p7, p0, Lcom/narvii/amino/databinding/IncubatorTabLayoutBinding;->masterBottomBar:Lcom/narvii/master/widget/MasterBottomBar;

    .line 18
    .line 19
    iput-object p8, p0, Lcom/narvii/amino/databinding/IncubatorTabLayoutBinding;->masterTabOffset:Landroid/widget/LinearLayout;

    .line 20
    .line 21
    iput-object p9, p0, Lcom/narvii/amino/databinding/IncubatorTabLayoutBinding;->masterTopBar:Lcom/narvii/master/MasterTopBar;

    .line 22
    .line 23
    iput-object p10, p0, Lcom/narvii/amino/databinding/IncubatorTabLayoutBinding;->tabs:Lcom/narvii/widget/NVPagerTabLayout;

    .line 24
    .line 25
    iput-object p11, p0, Lcom/narvii/amino/databinding/IncubatorTabLayoutBinding;->viewpager:Lcom/narvii/widget/NVViewPager;

    .line 26
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/amino/databinding/IncubatorTabLayoutBinding;
    .locals 13
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a01e7

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
    const v0, 0x7f0a01eb

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
    check-cast v4, Lcom/narvii/widget/RoundFrameLayout;

    .line 20
    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    .line 24
    const v0, 0x7f0a01f4

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
    check-cast v5, Landroid/widget/FrameLayout;

    .line 32
    .line 33
    if-eqz v5, :cond_0

    .line 34
    .line 35
    .line 36
    const v0, 0x7f0a01fd

    .line 37
    .line 38
    .line 39
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 40
    move-result-object v1

    .line 41
    move-object v6, v1

    .line 42
    .line 43
    check-cast v6, Landroid/widget/FrameLayout;

    .line 44
    .line 45
    if-eqz v6, :cond_0

    .line 46
    .line 47
    .line 48
    const v0, 0x7f0a084e

    .line 49
    .line 50
    .line 51
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 52
    move-result-object v1

    .line 53
    move-object v7, v1

    .line 54
    .line 55
    check-cast v7, Landroid/widget/FrameLayout;

    .line 56
    .line 57
    if-eqz v7, :cond_0

    .line 58
    .line 59
    .line 60
    const v0, 0x7f0a0850

    .line 61
    .line 62
    .line 63
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 64
    move-result-object v1

    .line 65
    move-object v8, v1

    .line 66
    .line 67
    check-cast v8, Lcom/narvii/master/widget/MasterBottomBar;

    .line 68
    .line 69
    if-eqz v8, :cond_0

    .line 70
    .line 71
    .line 72
    const v0, 0x7f0a0851

    .line 73
    .line 74
    .line 75
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 76
    move-result-object v1

    .line 77
    move-object v9, v1

    .line 78
    .line 79
    check-cast v9, Landroid/widget/LinearLayout;

    .line 80
    .line 81
    if-eqz v9, :cond_0

    .line 82
    .line 83
    .line 84
    const v0, 0x7f0a0852

    .line 85
    .line 86
    .line 87
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 88
    move-result-object v1

    .line 89
    move-object v10, v1

    .line 90
    .line 91
    check-cast v10, Lcom/narvii/master/MasterTopBar;

    .line 92
    .line 93
    if-eqz v10, :cond_0

    .line 94
    .line 95
    .line 96
    const v0, 0x7f0a0e28

    .line 97
    .line 98
    .line 99
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 100
    move-result-object v1

    .line 101
    move-object v11, v1

    .line 102
    .line 103
    check-cast v11, Lcom/narvii/widget/NVPagerTabLayout;

    .line 104
    .line 105
    if-eqz v11, :cond_0

    .line 106
    .line 107
    .line 108
    const v0, 0x7f0a0fd6

    .line 109
    .line 110
    .line 111
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 112
    move-result-object v1

    .line 113
    move-object v12, v1

    .line 114
    .line 115
    check-cast v12, Lcom/narvii/widget/NVViewPager;

    .line 116
    .line 117
    if-eqz v12, :cond_0

    .line 118
    .line 119
    new-instance v0, Lcom/narvii/amino/databinding/IncubatorTabLayoutBinding;

    .line 120
    move-object v2, p0

    .line 121
    .line 122
    check-cast v2, Lcom/narvii/nested/NVCoordinateLayout;

    .line 123
    move-object v1, v0

    .line 124
    .line 125
    .line 126
    invoke-direct/range {v1 .. v12}, Lcom/narvii/amino/databinding/IncubatorTabLayoutBinding;-><init>(Lcom/narvii/nested/NVCoordinateLayout;Landroid/view/View;Lcom/narvii/widget/RoundFrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Lcom/narvii/master/widget/MasterBottomBar;Landroid/widget/LinearLayout;Lcom/narvii/master/MasterTopBar;Lcom/narvii/widget/NVPagerTabLayout;Lcom/narvii/widget/NVViewPager;)V

    .line 127
    return-object v0

    .line 128
    .line 129
    .line 130
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 131
    move-result-object p0

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 135
    move-result-object p0

    .line 136
    .line 137
    new-instance v0, Ljava/lang/NullPointerException;

    .line 138
    .line 139
    const-string v1, "Missing required view with ID: "

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 143
    move-result-object p0

    .line 144
    .line 145
    .line 146
    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 147
    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/narvii/amino/databinding/IncubatorTabLayoutBinding;
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
    invoke-static {p0, v0, v1}, Lcom/narvii/amino/databinding/IncubatorTabLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/IncubatorTabLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/IncubatorTabLayoutBinding;
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

    const v0, 0x7f0d039b

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/amino/databinding/IncubatorTabLayoutBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/IncubatorTabLayoutBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/amino/databinding/IncubatorTabLayoutBinding;->getRoot()Lcom/narvii/nested/NVCoordinateLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/narvii/nested/NVCoordinateLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/amino/databinding/IncubatorTabLayoutBinding;->rootView:Lcom/narvii/nested/NVCoordinateLayout;

    return-object v0
.end method
