.class public final Lcom/narvii/amino/databinding/DetailUserVoteItemBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final datetime:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final divider:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final nickname:Lcom/narvii/widget/NicknameView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final userLayout:Landroid/widget/RelativeLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final voteBtn:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final voteCount:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final voteIcon:Lcom/narvii/widget/VoteIcon;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final voteProgress:Lcom/narvii/widget/SpinningView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/view/View;Lcom/narvii/widget/NicknameView;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/narvii/widget/VoteIcon;Lcom/narvii/widget/SpinningView;)V
    .locals 0
    .param p1    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/narvii/widget/NicknameView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/widget/RelativeLayout;
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
    .param p8    # Lcom/narvii/widget/VoteIcon;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Lcom/narvii/widget/SpinningView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/amino/databinding/DetailUserVoteItemBinding;->rootView:Landroid/widget/LinearLayout;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/amino/databinding/DetailUserVoteItemBinding;->datetime:Landroid/widget/TextView;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/amino/databinding/DetailUserVoteItemBinding;->divider:Landroid/view/View;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/narvii/amino/databinding/DetailUserVoteItemBinding;->nickname:Lcom/narvii/widget/NicknameView;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/narvii/amino/databinding/DetailUserVoteItemBinding;->userLayout:Landroid/widget/RelativeLayout;

    .line 14
    .line 15
    iput-object p6, p0, Lcom/narvii/amino/databinding/DetailUserVoteItemBinding;->voteBtn:Landroid/widget/LinearLayout;

    .line 16
    .line 17
    iput-object p7, p0, Lcom/narvii/amino/databinding/DetailUserVoteItemBinding;->voteCount:Landroid/widget/TextView;

    .line 18
    .line 19
    iput-object p8, p0, Lcom/narvii/amino/databinding/DetailUserVoteItemBinding;->voteIcon:Lcom/narvii/widget/VoteIcon;

    .line 20
    .line 21
    iput-object p9, p0, Lcom/narvii/amino/databinding/DetailUserVoteItemBinding;->voteProgress:Lcom/narvii/widget/SpinningView;

    .line 22
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/amino/databinding/DetailUserVoteItemBinding;
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
    const v0, 0x7f0a0408

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
    check-cast v4, Landroid/widget/TextView;

    .line 11
    .line 12
    if-eqz v4, :cond_0

    .line 13
    .line 14
    .line 15
    const v0, 0x7f0a044f

    .line 16
    .line 17
    .line 18
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 19
    move-result-object v5

    .line 20
    .line 21
    if-eqz v5, :cond_0

    .line 22
    .line 23
    .line 24
    const v0, 0x7f0a09f9

    .line 25
    .line 26
    .line 27
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 28
    move-result-object v1

    .line 29
    move-object v6, v1

    .line 30
    .line 31
    check-cast v6, Lcom/narvii/widget/NicknameView;

    .line 32
    .line 33
    if-eqz v6, :cond_0

    .line 34
    .line 35
    .line 36
    const v0, 0x7f0a0f4b

    .line 37
    .line 38
    .line 39
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 40
    move-result-object v1

    .line 41
    move-object v7, v1

    .line 42
    .line 43
    check-cast v7, Landroid/widget/RelativeLayout;

    .line 44
    .line 45
    if-eqz v7, :cond_0

    .line 46
    .line 47
    .line 48
    const v0, 0x7f0a0ffb

    .line 49
    .line 50
    .line 51
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 52
    move-result-object v1

    .line 53
    move-object v8, v1

    .line 54
    .line 55
    check-cast v8, Landroid/widget/LinearLayout;

    .line 56
    .line 57
    if-eqz v8, :cond_0

    .line 58
    .line 59
    .line 60
    const v0, 0x7f0a0ffd

    .line 61
    .line 62
    .line 63
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 64
    move-result-object v1

    .line 65
    move-object v9, v1

    .line 66
    .line 67
    check-cast v9, Landroid/widget/TextView;

    .line 68
    .line 69
    if-eqz v9, :cond_0

    .line 70
    .line 71
    .line 72
    const v0, 0x7f0a1002

    .line 73
    .line 74
    .line 75
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 76
    move-result-object v1

    .line 77
    move-object v10, v1

    .line 78
    .line 79
    check-cast v10, Lcom/narvii/widget/VoteIcon;

    .line 80
    .line 81
    if-eqz v10, :cond_0

    .line 82
    .line 83
    .line 84
    const v0, 0x7f0a1006

    .line 85
    .line 86
    .line 87
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 88
    move-result-object v1

    .line 89
    move-object v11, v1

    .line 90
    .line 91
    check-cast v11, Lcom/narvii/widget/SpinningView;

    .line 92
    .line 93
    if-eqz v11, :cond_0

    .line 94
    .line 95
    new-instance v0, Lcom/narvii/amino/databinding/DetailUserVoteItemBinding;

    .line 96
    move-object v3, p0

    .line 97
    .line 98
    check-cast v3, Landroid/widget/LinearLayout;

    .line 99
    move-object v2, v0

    .line 100
    .line 101
    .line 102
    invoke-direct/range {v2 .. v11}, Lcom/narvii/amino/databinding/DetailUserVoteItemBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/view/View;Lcom/narvii/widget/NicknameView;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/narvii/widget/VoteIcon;Lcom/narvii/widget/SpinningView;)V

    .line 103
    return-object v0

    .line 104
    .line 105
    .line 106
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 107
    move-result-object p0

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 111
    move-result-object p0

    .line 112
    .line 113
    new-instance v0, Ljava/lang/NullPointerException;

    .line 114
    .line 115
    const-string v1, "Missing required view with ID: "

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 119
    move-result-object p0

    .line 120
    .line 121
    .line 122
    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 123
    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/narvii/amino/databinding/DetailUserVoteItemBinding;
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
    invoke-static {p0, v0, v1}, Lcom/narvii/amino/databinding/DetailUserVoteItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/DetailUserVoteItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/DetailUserVoteItemBinding;
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

    const v0, 0x7f0d017e

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/amino/databinding/DetailUserVoteItemBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/DetailUserVoteItemBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/amino/databinding/DetailUserVoteItemBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/amino/databinding/DetailUserVoteItemBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
