.class public final Lcom/narvii/amino/databinding/ReputationGainedBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final main:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final mainLayout:Lcom/github/mmin18/widget/FlexLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final rankingTitleView:Lcom/narvii/widget/ExactRankingTitleView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final reputationGained:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final reputationGainedLayout:Lcom/github/mmin18/widget/FlexLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Lcom/github/mmin18/widget/FlexLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final rp:Lcom/narvii/widget/StrokedTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final title:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/github/mmin18/widget/FlexLayout;Landroid/widget/LinearLayout;Lcom/github/mmin18/widget/FlexLayout;Lcom/narvii/widget/ExactRankingTitleView;Landroid/widget/TextView;Lcom/github/mmin18/widget/FlexLayout;Lcom/narvii/widget/StrokedTextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Lcom/github/mmin18/widget/FlexLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/github/mmin18/widget/FlexLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/narvii/widget/ExactRankingTitleView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/github/mmin18/widget/FlexLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/narvii/widget/StrokedTextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/amino/databinding/ReputationGainedBinding;->rootView:Lcom/github/mmin18/widget/FlexLayout;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/amino/databinding/ReputationGainedBinding;->main:Landroid/widget/LinearLayout;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/amino/databinding/ReputationGainedBinding;->mainLayout:Lcom/github/mmin18/widget/FlexLayout;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/narvii/amino/databinding/ReputationGainedBinding;->rankingTitleView:Lcom/narvii/widget/ExactRankingTitleView;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/narvii/amino/databinding/ReputationGainedBinding;->reputationGained:Landroid/widget/TextView;

    .line 14
    .line 15
    iput-object p6, p0, Lcom/narvii/amino/databinding/ReputationGainedBinding;->reputationGainedLayout:Lcom/github/mmin18/widget/FlexLayout;

    .line 16
    .line 17
    iput-object p7, p0, Lcom/narvii/amino/databinding/ReputationGainedBinding;->rp:Lcom/narvii/widget/StrokedTextView;

    .line 18
    .line 19
    iput-object p8, p0, Lcom/narvii/amino/databinding/ReputationGainedBinding;->title:Landroid/widget/TextView;

    .line 20
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/amino/databinding/ReputationGainedBinding;
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
    const v0, 0x7f0a083a

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
    check-cast v4, Landroid/widget/LinearLayout;

    .line 11
    .line 12
    if-eqz v4, :cond_0

    .line 13
    .line 14
    .line 15
    const v0, 0x7f0a083f

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
    check-cast v5, Lcom/github/mmin18/widget/FlexLayout;

    .line 23
    .line 24
    if-eqz v5, :cond_0

    .line 25
    .line 26
    .line 27
    const v0, 0x7f0a0bcf

    .line 28
    .line 29
    .line 30
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 31
    move-result-object v1

    .line 32
    move-object v6, v1

    .line 33
    .line 34
    check-cast v6, Lcom/narvii/widget/ExactRankingTitleView;

    .line 35
    .line 36
    if-eqz v6, :cond_0

    .line 37
    .line 38
    .line 39
    const v0, 0x7f0a0c1f

    .line 40
    .line 41
    .line 42
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 43
    move-result-object v1

    .line 44
    move-object v7, v1

    .line 45
    .line 46
    check-cast v7, Landroid/widget/TextView;

    .line 47
    .line 48
    if-eqz v7, :cond_0

    .line 49
    move-object v8, p0

    .line 50
    .line 51
    check-cast v8, Lcom/github/mmin18/widget/FlexLayout;

    .line 52
    .line 53
    .line 54
    const v0, 0x7f0a0c55

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
    check-cast v9, Lcom/narvii/widget/StrokedTextView;

    .line 62
    .line 63
    if-eqz v9, :cond_0

    .line 64
    .line 65
    .line 66
    const v0, 0x7f0a0e9e

    .line 67
    .line 68
    .line 69
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 70
    move-result-object v1

    .line 71
    move-object v10, v1

    .line 72
    .line 73
    check-cast v10, Landroid/widget/TextView;

    .line 74
    .line 75
    if-eqz v10, :cond_0

    .line 76
    .line 77
    new-instance p0, Lcom/narvii/amino/databinding/ReputationGainedBinding;

    .line 78
    move-object v2, p0

    .line 79
    move-object v3, v8

    .line 80
    .line 81
    .line 82
    invoke-direct/range {v2 .. v10}, Lcom/narvii/amino/databinding/ReputationGainedBinding;-><init>(Lcom/github/mmin18/widget/FlexLayout;Landroid/widget/LinearLayout;Lcom/github/mmin18/widget/FlexLayout;Lcom/narvii/widget/ExactRankingTitleView;Landroid/widget/TextView;Lcom/github/mmin18/widget/FlexLayout;Lcom/narvii/widget/StrokedTextView;Landroid/widget/TextView;)V

    .line 83
    return-object p0

    .line 84
    .line 85
    .line 86
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 87
    move-result-object p0

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 91
    move-result-object p0

    .line 92
    .line 93
    new-instance v0, Ljava/lang/NullPointerException;

    .line 94
    .line 95
    const-string v1, "Missing required view with ID: "

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    move-result-object p0

    .line 100
    .line 101
    .line 102
    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 103
    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/narvii/amino/databinding/ReputationGainedBinding;
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
    invoke-static {p0, v0, v1}, Lcom/narvii/amino/databinding/ReputationGainedBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/ReputationGainedBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/ReputationGainedBinding;
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

    const v0, 0x7f0d069f

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/amino/databinding/ReputationGainedBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/ReputationGainedBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/amino/databinding/ReputationGainedBinding;->getRoot()Lcom/github/mmin18/widget/FlexLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/github/mmin18/widget/FlexLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/amino/databinding/ReputationGainedBinding;->rootView:Lcom/github/mmin18/widget/FlexLayout;

    return-object v0
.end method
