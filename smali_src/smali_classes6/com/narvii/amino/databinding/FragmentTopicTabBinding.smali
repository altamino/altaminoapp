.class public final Lcom/narvii/amino/databinding/FragmentTopicTabBinding;
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

.field public final coordinateTopContent:Lcom/github/mmin18/widget/FlexLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final dynamicHeader:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final onlineMemberContainer:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final onlineMemberCount:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final pageStatus:Lcom/narvii/paging/state/PageStatusView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final postEntryView:Lcom/narvii/lib/databinding/PostEntryBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final recycleLayout:Lcom/narvii/widget/recycleview/NVRecyclerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Lcom/narvii/list/refresh/SwipeRefreshLayout;
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

.field public final topicBackground:Lcom/narvii/widget/NVImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final topicBookmark:Lcom/narvii/topic/widgets/TopicSubscribeView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final topicTitle:Lcom/narvii/widget/AutoSizingTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final topicTitleTop:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final viewpager:Lcom/narvii/widget/NVViewPager;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/narvii/list/refresh/SwipeRefreshLayout;Lcom/narvii/nested/NVAppBarLayout;Landroid/widget/LinearLayout;Lcom/github/mmin18/widget/FlexLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/narvii/paging/state/PageStatusView;Lcom/narvii/lib/databinding/PostEntryBinding;Lcom/narvii/widget/recycleview/NVRecyclerView;Lcom/narvii/list/refresh/SwipeRefreshLayout;Lcom/narvii/widget/NVPagerTabLayout;Lcom/narvii/widget/NVImageView;Lcom/narvii/topic/widgets/TopicSubscribeView;Lcom/narvii/widget/AutoSizingTextView;Landroid/widget/TextView;Lcom/narvii/widget/NVViewPager;)V
    .locals 2
    .param p1    # Lcom/narvii/list/refresh/SwipeRefreshLayout;
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
    .param p4    # Lcom/github/mmin18/widget/FlexLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Lcom/narvii/paging/state/PageStatusView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Lcom/narvii/lib/databinding/PostEntryBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Lcom/narvii/widget/recycleview/NVRecyclerView;
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
    .param p13    # Lcom/narvii/widget/NVImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p14    # Lcom/narvii/topic/widgets/TopicSubscribeView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p15    # Lcom/narvii/widget/AutoSizingTextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p16    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p17    # Lcom/narvii/widget/NVViewPager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    move-object v0, p0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    move-object v1, p1

    .line 6
    .line 7
    iput-object v1, v0, Lcom/narvii/amino/databinding/FragmentTopicTabBinding;->rootView:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 8
    move-object v1, p2

    .line 9
    .line 10
    iput-object v1, v0, Lcom/narvii/amino/databinding/FragmentTopicTabBinding;->appbarLayout:Lcom/narvii/nested/NVAppBarLayout;

    .line 11
    move-object v1, p3

    .line 12
    .line 13
    iput-object v1, v0, Lcom/narvii/amino/databinding/FragmentTopicTabBinding;->bodyContent:Landroid/widget/LinearLayout;

    .line 14
    move-object v1, p4

    .line 15
    .line 16
    iput-object v1, v0, Lcom/narvii/amino/databinding/FragmentTopicTabBinding;->coordinateTopContent:Lcom/github/mmin18/widget/FlexLayout;

    .line 17
    move-object v1, p5

    .line 18
    .line 19
    iput-object v1, v0, Lcom/narvii/amino/databinding/FragmentTopicTabBinding;->dynamicHeader:Landroid/widget/LinearLayout;

    .line 20
    move-object v1, p6

    .line 21
    .line 22
    iput-object v1, v0, Lcom/narvii/amino/databinding/FragmentTopicTabBinding;->onlineMemberContainer:Landroid/widget/LinearLayout;

    .line 23
    move-object v1, p7

    .line 24
    .line 25
    iput-object v1, v0, Lcom/narvii/amino/databinding/FragmentTopicTabBinding;->onlineMemberCount:Landroid/widget/TextView;

    .line 26
    move-object v1, p8

    .line 27
    .line 28
    iput-object v1, v0, Lcom/narvii/amino/databinding/FragmentTopicTabBinding;->pageStatus:Lcom/narvii/paging/state/PageStatusView;

    .line 29
    move-object v1, p9

    .line 30
    .line 31
    iput-object v1, v0, Lcom/narvii/amino/databinding/FragmentTopicTabBinding;->postEntryView:Lcom/narvii/lib/databinding/PostEntryBinding;

    .line 32
    move-object v1, p10

    .line 33
    .line 34
    iput-object v1, v0, Lcom/narvii/amino/databinding/FragmentTopicTabBinding;->recycleLayout:Lcom/narvii/widget/recycleview/NVRecyclerView;

    .line 35
    move-object v1, p11

    .line 36
    .line 37
    iput-object v1, v0, Lcom/narvii/amino/databinding/FragmentTopicTabBinding;->swipeRefreshLayout:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 38
    move-object v1, p12

    .line 39
    .line 40
    iput-object v1, v0, Lcom/narvii/amino/databinding/FragmentTopicTabBinding;->tabs:Lcom/narvii/widget/NVPagerTabLayout;

    .line 41
    move-object v1, p13

    .line 42
    .line 43
    iput-object v1, v0, Lcom/narvii/amino/databinding/FragmentTopicTabBinding;->topicBackground:Lcom/narvii/widget/NVImageView;

    .line 44
    .line 45
    move-object/from16 v1, p14

    .line 46
    .line 47
    iput-object v1, v0, Lcom/narvii/amino/databinding/FragmentTopicTabBinding;->topicBookmark:Lcom/narvii/topic/widgets/TopicSubscribeView;

    .line 48
    .line 49
    move-object/from16 v1, p15

    .line 50
    .line 51
    iput-object v1, v0, Lcom/narvii/amino/databinding/FragmentTopicTabBinding;->topicTitle:Lcom/narvii/widget/AutoSizingTextView;

    .line 52
    .line 53
    move-object/from16 v1, p16

    .line 54
    .line 55
    iput-object v1, v0, Lcom/narvii/amino/databinding/FragmentTopicTabBinding;->topicTitleTop:Landroid/widget/TextView;

    .line 56
    .line 57
    move-object/from16 v1, p17

    .line 58
    .line 59
    iput-object v1, v0, Lcom/narvii/amino/databinding/FragmentTopicTabBinding;->viewpager:Lcom/narvii/widget/NVViewPager;

    .line 60
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/amino/databinding/FragmentTopicTabBinding;
    .locals 21
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
    const v1, 0x7f0a03b6

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 33
    move-result-object v2

    .line 34
    move-object v7, v2

    .line 35
    .line 36
    check-cast v7, Lcom/github/mmin18/widget/FlexLayout;

    .line 37
    .line 38
    if-eqz v7, :cond_0

    .line 39
    .line 40
    .line 41
    const v1, 0x7f0a04a9

    .line 42
    .line 43
    .line 44
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 45
    move-result-object v2

    .line 46
    move-object v8, v2

    .line 47
    .line 48
    check-cast v8, Landroid/widget/LinearLayout;

    .line 49
    .line 50
    if-eqz v8, :cond_0

    .line 51
    .line 52
    .line 53
    const v1, 0x7f0a0a59

    .line 54
    .line 55
    .line 56
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 57
    move-result-object v2

    .line 58
    move-object v9, v2

    .line 59
    .line 60
    check-cast v9, Landroid/widget/LinearLayout;

    .line 61
    .line 62
    if-eqz v9, :cond_0

    .line 63
    .line 64
    .line 65
    const v1, 0x7f0a0a5a

    .line 66
    .line 67
    .line 68
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 69
    move-result-object v2

    .line 70
    move-object v10, v2

    .line 71
    .line 72
    check-cast v10, Landroid/widget/TextView;

    .line 73
    .line 74
    if-eqz v10, :cond_0

    .line 75
    .line 76
    .line 77
    const v1, 0x7f0a0ac0

    .line 78
    .line 79
    .line 80
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 81
    move-result-object v2

    .line 82
    move-object v11, v2

    .line 83
    .line 84
    check-cast v11, Lcom/narvii/paging/state/PageStatusView;

    .line 85
    .line 86
    if-eqz v11, :cond_0

    .line 87
    .line 88
    .line 89
    const v1, 0x7f0a0b45

    .line 90
    .line 91
    .line 92
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 93
    move-result-object v2

    .line 94
    .line 95
    if-eqz v2, :cond_0

    .line 96
    .line 97
    .line 98
    invoke-static {v2}, Lcom/narvii/lib/databinding/PostEntryBinding;->bind(Landroid/view/View;)Lcom/narvii/lib/databinding/PostEntryBinding;

    .line 99
    move-result-object v12

    .line 100
    .line 101
    .line 102
    const v1, 0x7f0a0bf9

    .line 103
    .line 104
    .line 105
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 106
    move-result-object v2

    .line 107
    move-object v13, v2

    .line 108
    .line 109
    check-cast v13, Lcom/narvii/widget/recycleview/NVRecyclerView;

    .line 110
    .line 111
    if-eqz v13, :cond_0

    .line 112
    move-object v14, v0

    .line 113
    .line 114
    check-cast v14, Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 115
    .line 116
    .line 117
    const v1, 0x7f0a0e28

    .line 118
    .line 119
    .line 120
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 121
    move-result-object v2

    .line 122
    move-object v15, v2

    .line 123
    .line 124
    check-cast v15, Lcom/narvii/widget/NVPagerTabLayout;

    .line 125
    .line 126
    if-eqz v15, :cond_0

    .line 127
    .line 128
    .line 129
    const v1, 0x7f0a0ee2

    .line 130
    .line 131
    .line 132
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 133
    move-result-object v2

    .line 134
    .line 135
    move-object/from16 v16, v2

    .line 136
    .line 137
    check-cast v16, Lcom/narvii/widget/NVImageView;

    .line 138
    .line 139
    if-eqz v16, :cond_0

    .line 140
    .line 141
    .line 142
    const v1, 0x7f0a0ee3

    .line 143
    .line 144
    .line 145
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 146
    move-result-object v2

    .line 147
    .line 148
    move-object/from16 v17, v2

    .line 149
    .line 150
    check-cast v17, Lcom/narvii/topic/widgets/TopicSubscribeView;

    .line 151
    .line 152
    if-eqz v17, :cond_0

    .line 153
    .line 154
    .line 155
    const v1, 0x7f0a0eea

    .line 156
    .line 157
    .line 158
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 159
    move-result-object v2

    .line 160
    .line 161
    move-object/from16 v18, v2

    .line 162
    .line 163
    check-cast v18, Lcom/narvii/widget/AutoSizingTextView;

    .line 164
    .line 165
    if-eqz v18, :cond_0

    .line 166
    .line 167
    .line 168
    const v1, 0x7f0a0eeb

    .line 169
    .line 170
    .line 171
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 172
    move-result-object v2

    .line 173
    .line 174
    move-object/from16 v19, v2

    .line 175
    .line 176
    check-cast v19, Landroid/widget/TextView;

    .line 177
    .line 178
    if-eqz v19, :cond_0

    .line 179
    .line 180
    .line 181
    const v1, 0x7f0a0fd6

    .line 182
    .line 183
    .line 184
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 185
    move-result-object v2

    .line 186
    .line 187
    move-object/from16 v20, v2

    .line 188
    .line 189
    check-cast v20, Lcom/narvii/widget/NVViewPager;

    .line 190
    .line 191
    if-eqz v20, :cond_0

    .line 192
    .line 193
    new-instance v0, Lcom/narvii/amino/databinding/FragmentTopicTabBinding;

    .line 194
    move-object v3, v0

    .line 195
    move-object v4, v14

    .line 196
    .line 197
    .line 198
    invoke-direct/range {v3 .. v20}, Lcom/narvii/amino/databinding/FragmentTopicTabBinding;-><init>(Lcom/narvii/list/refresh/SwipeRefreshLayout;Lcom/narvii/nested/NVAppBarLayout;Landroid/widget/LinearLayout;Lcom/github/mmin18/widget/FlexLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/narvii/paging/state/PageStatusView;Lcom/narvii/lib/databinding/PostEntryBinding;Lcom/narvii/widget/recycleview/NVRecyclerView;Lcom/narvii/list/refresh/SwipeRefreshLayout;Lcom/narvii/widget/NVPagerTabLayout;Lcom/narvii/widget/NVImageView;Lcom/narvii/topic/widgets/TopicSubscribeView;Lcom/narvii/widget/AutoSizingTextView;Landroid/widget/TextView;Lcom/narvii/widget/NVViewPager;)V

    .line 199
    return-object v0

    .line 200
    .line 201
    .line 202
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 203
    move-result-object v0

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 207
    move-result-object v0

    .line 208
    .line 209
    new-instance v1, Ljava/lang/NullPointerException;

    .line 210
    .line 211
    const-string v2, "Missing required view with ID: "

    .line 212
    .line 213
    .line 214
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 215
    move-result-object v0

    .line 216
    .line 217
    .line 218
    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 219
    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/narvii/amino/databinding/FragmentTopicTabBinding;
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
    invoke-static {p0, v0, v1}, Lcom/narvii/amino/databinding/FragmentTopicTabBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/FragmentTopicTabBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/FragmentTopicTabBinding;
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

    const v0, 0x7f0d0335

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/amino/databinding/FragmentTopicTabBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/FragmentTopicTabBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/amino/databinding/FragmentTopicTabBinding;->getRoot()Lcom/narvii/list/refresh/SwipeRefreshLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/narvii/list/refresh/SwipeRefreshLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/amino/databinding/FragmentTopicTabBinding;->rootView:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    return-object v0
.end method
