.class public final Lcom/narvii/amino/databinding/FragmentDiscoverTabBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final appbarLayout:Lcom/narvii/nested/NVAppBarLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final bodyContent:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final bottomOffset:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final coordinateTopContent:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final gradientTopContent:Lcom/narvii/master/widget/MasterTabTransparentPlaceHolder;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final masterBackground:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final masterTopPlaceholder:Lcom/narvii/master/widget/MasterTabPlaceHolder;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final picker:Lcom/narvii/widget/TintButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final storyListFrame:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;
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
.method private constructor <init>(Landroid/widget/FrameLayout;Lcom/narvii/nested/NVAppBarLayout;Landroid/widget/LinearLayout;Landroid/view/View;Landroid/widget/LinearLayout;Lcom/narvii/master/widget/MasterTabTransparentPlaceHolder;Landroid/widget/FrameLayout;Lcom/narvii/master/widget/MasterTabPlaceHolder;Lcom/narvii/widget/TintButton;Landroid/widget/FrameLayout;Lcom/narvii/list/refresh/SwipeRefreshLayout;Lcom/narvii/widget/NVPagerTabLayout;Lcom/narvii/widget/NVViewPager;)V
    .locals 0
    .param p1    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/nested/NVAppBarLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/narvii/master/widget/MasterTabTransparentPlaceHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Lcom/narvii/master/widget/MasterTabPlaceHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Lcom/narvii/widget/TintButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Lcom/narvii/list/refresh/SwipeRefreshLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p12    # Lcom/narvii/widget/NVPagerTabLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p13    # Lcom/narvii/widget/NVViewPager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/amino/databinding/FragmentDiscoverTabBinding;->rootView:Landroid/widget/FrameLayout;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/amino/databinding/FragmentDiscoverTabBinding;->appbarLayout:Lcom/narvii/nested/NVAppBarLayout;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/amino/databinding/FragmentDiscoverTabBinding;->bodyContent:Landroid/widget/LinearLayout;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/narvii/amino/databinding/FragmentDiscoverTabBinding;->bottomOffset:Landroid/view/View;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/narvii/amino/databinding/FragmentDiscoverTabBinding;->coordinateTopContent:Landroid/widget/LinearLayout;

    .line 14
    .line 15
    iput-object p6, p0, Lcom/narvii/amino/databinding/FragmentDiscoverTabBinding;->gradientTopContent:Lcom/narvii/master/widget/MasterTabTransparentPlaceHolder;

    .line 16
    .line 17
    iput-object p7, p0, Lcom/narvii/amino/databinding/FragmentDiscoverTabBinding;->masterBackground:Landroid/widget/FrameLayout;

    .line 18
    .line 19
    iput-object p8, p0, Lcom/narvii/amino/databinding/FragmentDiscoverTabBinding;->masterTopPlaceholder:Lcom/narvii/master/widget/MasterTabPlaceHolder;

    .line 20
    .line 21
    iput-object p9, p0, Lcom/narvii/amino/databinding/FragmentDiscoverTabBinding;->picker:Lcom/narvii/widget/TintButton;

    .line 22
    .line 23
    iput-object p10, p0, Lcom/narvii/amino/databinding/FragmentDiscoverTabBinding;->storyListFrame:Landroid/widget/FrameLayout;

    .line 24
    .line 25
    iput-object p11, p0, Lcom/narvii/amino/databinding/FragmentDiscoverTabBinding;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 26
    .line 27
    iput-object p12, p0, Lcom/narvii/amino/databinding/FragmentDiscoverTabBinding;->tabs:Lcom/narvii/widget/NVPagerTabLayout;

    .line 28
    .line 29
    iput-object p13, p0, Lcom/narvii/amino/databinding/FragmentDiscoverTabBinding;->viewpager:Lcom/narvii/widget/NVViewPager;

    .line 30
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/amino/databinding/FragmentDiscoverTabBinding;
    .locals 17
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    .line 5
    const v1, 0x7f0a0126

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 9
    move-result-object v2

    .line 10
    move-object v5, v2

    .line 11
    .line 12
    check-cast v5, Lcom/narvii/nested/NVAppBarLayout;

    .line 13
    .line 14
    if-eqz v5, :cond_0

    .line 15
    .line 16
    .line 17
    const v1, 0x7f0a01dc

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 21
    move-result-object v2

    .line 22
    move-object v6, v2

    .line 23
    .line 24
    check-cast v6, Landroid/widget/LinearLayout;

    .line 25
    .line 26
    if-eqz v6, :cond_0

    .line 27
    .line 28
    .line 29
    const v1, 0x7f0a01f7

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 33
    move-result-object v7

    .line 34
    .line 35
    if-eqz v7, :cond_0

    .line 36
    .line 37
    .line 38
    const v1, 0x7f0a03b6

    .line 39
    .line 40
    .line 41
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 42
    move-result-object v2

    .line 43
    move-object v8, v2

    .line 44
    .line 45
    check-cast v8, Landroid/widget/LinearLayout;

    .line 46
    .line 47
    if-eqz v8, :cond_0

    .line 48
    .line 49
    .line 50
    const v1, 0x7f0a062c

    .line 51
    .line 52
    .line 53
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 54
    move-result-object v2

    .line 55
    move-object v9, v2

    .line 56
    .line 57
    check-cast v9, Lcom/narvii/master/widget/MasterTabTransparentPlaceHolder;

    .line 58
    .line 59
    if-eqz v9, :cond_0

    .line 60
    .line 61
    .line 62
    const v1, 0x7f0a084e

    .line 63
    .line 64
    .line 65
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 66
    move-result-object v2

    .line 67
    move-object v10, v2

    .line 68
    .line 69
    check-cast v10, Landroid/widget/FrameLayout;

    .line 70
    .line 71
    if-eqz v10, :cond_0

    .line 72
    .line 73
    .line 74
    const v1, 0x7f0a0853

    .line 75
    .line 76
    .line 77
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 78
    move-result-object v2

    .line 79
    move-object v11, v2

    .line 80
    .line 81
    check-cast v11, Lcom/narvii/master/widget/MasterTabPlaceHolder;

    .line 82
    .line 83
    if-eqz v11, :cond_0

    .line 84
    .line 85
    .line 86
    const v1, 0x7f0a0aec

    .line 87
    .line 88
    .line 89
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 90
    move-result-object v2

    .line 91
    move-object v12, v2

    .line 92
    .line 93
    check-cast v12, Lcom/narvii/widget/TintButton;

    .line 94
    .line 95
    if-eqz v12, :cond_0

    .line 96
    .line 97
    .line 98
    const v1, 0x7f0a0dd1

    .line 99
    .line 100
    .line 101
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 102
    move-result-object v2

    .line 103
    move-object v13, v2

    .line 104
    .line 105
    check-cast v13, Landroid/widget/FrameLayout;

    .line 106
    .line 107
    if-eqz v13, :cond_0

    .line 108
    .line 109
    .line 110
    const v1, 0x7f0a0e13

    .line 111
    .line 112
    .line 113
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 114
    move-result-object v2

    .line 115
    move-object v14, v2

    .line 116
    .line 117
    check-cast v14, Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 118
    .line 119
    if-eqz v14, :cond_0

    .line 120
    .line 121
    .line 122
    const v1, 0x7f0a0e28

    .line 123
    .line 124
    .line 125
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 126
    move-result-object v2

    .line 127
    move-object v15, v2

    .line 128
    .line 129
    check-cast v15, Lcom/narvii/widget/NVPagerTabLayout;

    .line 130
    .line 131
    if-eqz v15, :cond_0

    .line 132
    .line 133
    .line 134
    const v1, 0x7f0a0fd6

    .line 135
    .line 136
    .line 137
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 138
    move-result-object v2

    .line 139
    .line 140
    move-object/from16 v16, v2

    .line 141
    .line 142
    check-cast v16, Lcom/narvii/widget/NVViewPager;

    .line 143
    .line 144
    if-eqz v16, :cond_0

    .line 145
    .line 146
    new-instance v1, Lcom/narvii/amino/databinding/FragmentDiscoverTabBinding;

    .line 147
    move-object v4, v0

    .line 148
    .line 149
    check-cast v4, Landroid/widget/FrameLayout;

    .line 150
    move-object v3, v1

    .line 151
    .line 152
    .line 153
    invoke-direct/range {v3 .. v16}, Lcom/narvii/amino/databinding/FragmentDiscoverTabBinding;-><init>(Landroid/widget/FrameLayout;Lcom/narvii/nested/NVAppBarLayout;Landroid/widget/LinearLayout;Landroid/view/View;Landroid/widget/LinearLayout;Lcom/narvii/master/widget/MasterTabTransparentPlaceHolder;Landroid/widget/FrameLayout;Lcom/narvii/master/widget/MasterTabPlaceHolder;Lcom/narvii/widget/TintButton;Landroid/widget/FrameLayout;Lcom/narvii/list/refresh/SwipeRefreshLayout;Lcom/narvii/widget/NVPagerTabLayout;Lcom/narvii/widget/NVViewPager;)V

    .line 154
    return-object v1

    .line 155
    .line 156
    .line 157
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 158
    move-result-object v0

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 162
    move-result-object v0

    .line 163
    .line 164
    new-instance v1, Ljava/lang/NullPointerException;

    .line 165
    .line 166
    const-string v2, "Missing required view with ID: "

    .line 167
    .line 168
    .line 169
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 170
    move-result-object v0

    .line 171
    .line 172
    .line 173
    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 174
    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/narvii/amino/databinding/FragmentDiscoverTabBinding;
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
    invoke-static {p0, v0, v1}, Lcom/narvii/amino/databinding/FragmentDiscoverTabBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/FragmentDiscoverTabBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/FragmentDiscoverTabBinding;
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

    const v0, 0x7f0d02c5

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/amino/databinding/FragmentDiscoverTabBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/FragmentDiscoverTabBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/amino/databinding/FragmentDiscoverTabBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/amino/databinding/FragmentDiscoverTabBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
