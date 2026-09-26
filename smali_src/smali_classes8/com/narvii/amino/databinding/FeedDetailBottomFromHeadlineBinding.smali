.class public final Lcom/narvii/amino/databinding/FeedDetailBottomFromHeadlineBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final headlineCommentCount:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final headlineCommentIcon:Lcom/narvii/widget/TintButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final headlineFeedDetailBottomContainer:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final headlineMore:Lcom/narvii/widget/TintButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final headlineShare:Lcom/narvii/widget/TintButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final headlineVoteCount:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final headlineVoteIcon:Lcom/narvii/widget/BottomVoteIcon;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final headlineVoteProgress:Lcom/narvii/widget/SpinningView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final healineBottomCommentContainer:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final healineBottomMoreContainer:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final healineBottomShareContainer:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final healineBottomVoteContainer:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/narvii/widget/TintButton;Landroid/widget/LinearLayout;Lcom/narvii/widget/TintButton;Lcom/narvii/widget/TintButton;Landroid/widget/TextView;Lcom/narvii/widget/BottomVoteIcon;Lcom/narvii/widget/SpinningView;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V
    .locals 0
    .param p1    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/widget/TintButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/widget/TintButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/narvii/widget/TintButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Lcom/narvii/widget/BottomVoteIcon;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Lcom/narvii/widget/SpinningView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p12    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p13    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/amino/databinding/FeedDetailBottomFromHeadlineBinding;->rootView:Landroid/widget/LinearLayout;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/amino/databinding/FeedDetailBottomFromHeadlineBinding;->headlineCommentCount:Landroid/widget/TextView;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/amino/databinding/FeedDetailBottomFromHeadlineBinding;->headlineCommentIcon:Lcom/narvii/widget/TintButton;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/narvii/amino/databinding/FeedDetailBottomFromHeadlineBinding;->headlineFeedDetailBottomContainer:Landroid/widget/LinearLayout;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/narvii/amino/databinding/FeedDetailBottomFromHeadlineBinding;->headlineMore:Lcom/narvii/widget/TintButton;

    .line 14
    .line 15
    iput-object p6, p0, Lcom/narvii/amino/databinding/FeedDetailBottomFromHeadlineBinding;->headlineShare:Lcom/narvii/widget/TintButton;

    .line 16
    .line 17
    iput-object p7, p0, Lcom/narvii/amino/databinding/FeedDetailBottomFromHeadlineBinding;->headlineVoteCount:Landroid/widget/TextView;

    .line 18
    .line 19
    iput-object p8, p0, Lcom/narvii/amino/databinding/FeedDetailBottomFromHeadlineBinding;->headlineVoteIcon:Lcom/narvii/widget/BottomVoteIcon;

    .line 20
    .line 21
    iput-object p9, p0, Lcom/narvii/amino/databinding/FeedDetailBottomFromHeadlineBinding;->headlineVoteProgress:Lcom/narvii/widget/SpinningView;

    .line 22
    .line 23
    iput-object p10, p0, Lcom/narvii/amino/databinding/FeedDetailBottomFromHeadlineBinding;->healineBottomCommentContainer:Landroid/widget/FrameLayout;

    .line 24
    .line 25
    iput-object p11, p0, Lcom/narvii/amino/databinding/FeedDetailBottomFromHeadlineBinding;->healineBottomMoreContainer:Landroid/widget/FrameLayout;

    .line 26
    .line 27
    iput-object p12, p0, Lcom/narvii/amino/databinding/FeedDetailBottomFromHeadlineBinding;->healineBottomShareContainer:Landroid/widget/FrameLayout;

    .line 28
    .line 29
    iput-object p13, p0, Lcom/narvii/amino/databinding/FeedDetailBottomFromHeadlineBinding;->healineBottomVoteContainer:Landroid/widget/FrameLayout;

    .line 30
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/amino/databinding/FeedDetailBottomFromHeadlineBinding;
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
    const v1, 0x7f0a064e

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
    check-cast v5, Landroid/widget/TextView;

    .line 13
    .line 14
    if-eqz v5, :cond_0

    .line 15
    .line 16
    .line 17
    const v1, 0x7f0a064f

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
    check-cast v6, Lcom/narvii/widget/TintButton;

    .line 25
    .line 26
    if-eqz v6, :cond_0

    .line 27
    move-object v7, v0

    .line 28
    .line 29
    check-cast v7, Landroid/widget/LinearLayout;

    .line 30
    .line 31
    .line 32
    const v1, 0x7f0a0655

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 36
    move-result-object v2

    .line 37
    move-object v8, v2

    .line 38
    .line 39
    check-cast v8, Lcom/narvii/widget/TintButton;

    .line 40
    .line 41
    if-eqz v8, :cond_0

    .line 42
    .line 43
    .line 44
    const v1, 0x7f0a0656

    .line 45
    .line 46
    .line 47
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 48
    move-result-object v2

    .line 49
    move-object v9, v2

    .line 50
    .line 51
    check-cast v9, Lcom/narvii/widget/TintButton;

    .line 52
    .line 53
    if-eqz v9, :cond_0

    .line 54
    .line 55
    .line 56
    const v1, 0x7f0a0658

    .line 57
    .line 58
    .line 59
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 60
    move-result-object v2

    .line 61
    move-object v10, v2

    .line 62
    .line 63
    check-cast v10, Landroid/widget/TextView;

    .line 64
    .line 65
    if-eqz v10, :cond_0

    .line 66
    .line 67
    .line 68
    const v1, 0x7f0a0659

    .line 69
    .line 70
    .line 71
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 72
    move-result-object v2

    .line 73
    move-object v11, v2

    .line 74
    .line 75
    check-cast v11, Lcom/narvii/widget/BottomVoteIcon;

    .line 76
    .line 77
    if-eqz v11, :cond_0

    .line 78
    .line 79
    .line 80
    const v1, 0x7f0a065a

    .line 81
    .line 82
    .line 83
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 84
    move-result-object v2

    .line 85
    move-object v12, v2

    .line 86
    .line 87
    check-cast v12, Lcom/narvii/widget/SpinningView;

    .line 88
    .line 89
    if-eqz v12, :cond_0

    .line 90
    .line 91
    .line 92
    const v1, 0x7f0a065b

    .line 93
    .line 94
    .line 95
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 96
    move-result-object v2

    .line 97
    move-object v13, v2

    .line 98
    .line 99
    check-cast v13, Landroid/widget/FrameLayout;

    .line 100
    .line 101
    if-eqz v13, :cond_0

    .line 102
    .line 103
    .line 104
    const v1, 0x7f0a065c

    .line 105
    .line 106
    .line 107
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 108
    move-result-object v2

    .line 109
    move-object v14, v2

    .line 110
    .line 111
    check-cast v14, Landroid/widget/FrameLayout;

    .line 112
    .line 113
    if-eqz v14, :cond_0

    .line 114
    .line 115
    .line 116
    const v1, 0x7f0a065d

    .line 117
    .line 118
    .line 119
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 120
    move-result-object v2

    .line 121
    move-object v15, v2

    .line 122
    .line 123
    check-cast v15, Landroid/widget/FrameLayout;

    .line 124
    .line 125
    if-eqz v15, :cond_0

    .line 126
    .line 127
    .line 128
    const v1, 0x7f0a065e

    .line 129
    .line 130
    .line 131
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 132
    move-result-object v2

    .line 133
    .line 134
    move-object/from16 v16, v2

    .line 135
    .line 136
    check-cast v16, Landroid/widget/FrameLayout;

    .line 137
    .line 138
    if-eqz v16, :cond_0

    .line 139
    .line 140
    new-instance v0, Lcom/narvii/amino/databinding/FeedDetailBottomFromHeadlineBinding;

    .line 141
    move-object v3, v0

    .line 142
    move-object v4, v7

    .line 143
    .line 144
    .line 145
    invoke-direct/range {v3 .. v16}, Lcom/narvii/amino/databinding/FeedDetailBottomFromHeadlineBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/narvii/widget/TintButton;Landroid/widget/LinearLayout;Lcom/narvii/widget/TintButton;Lcom/narvii/widget/TintButton;Landroid/widget/TextView;Lcom/narvii/widget/BottomVoteIcon;Lcom/narvii/widget/SpinningView;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V

    .line 146
    return-object v0

    .line 147
    .line 148
    .line 149
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 150
    move-result-object v0

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 154
    move-result-object v0

    .line 155
    .line 156
    new-instance v1, Ljava/lang/NullPointerException;

    .line 157
    .line 158
    const-string v2, "Missing required view with ID: "

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 162
    move-result-object v0

    .line 163
    .line 164
    .line 165
    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 166
    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/narvii/amino/databinding/FeedDetailBottomFromHeadlineBinding;
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
    invoke-static {p0, v0, v1}, Lcom/narvii/amino/databinding/FeedDetailBottomFromHeadlineBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/FeedDetailBottomFromHeadlineBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/FeedDetailBottomFromHeadlineBinding;
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

    const v0, 0x7f0d0245

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/amino/databinding/FeedDetailBottomFromHeadlineBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/FeedDetailBottomFromHeadlineBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/amino/databinding/FeedDetailBottomFromHeadlineBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/amino/databinding/FeedDetailBottomFromHeadlineBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
