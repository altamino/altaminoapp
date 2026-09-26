.class public final Lcom/narvii/amino/databinding/SnippetPollOptionListBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final pollOptionItem1:Lcom/narvii/amino/databinding/PollOptionItemSnippetBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final pollOptionItem2:Lcom/narvii/amino/databinding/PollOptionItemSnippetBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final pollOptionItem3:Lcom/narvii/amino/databinding/PollOptionItemSnippetBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final pollOptionItem4:Lcom/narvii/amino/databinding/PollOptionItemSnippetBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final pollOptionItem5:Lcom/narvii/amino/databinding/PollOptionItemSnippetBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final pollText:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Lcom/narvii/poll/PollOptionListLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/narvii/poll/PollOptionListLayout;Lcom/narvii/amino/databinding/PollOptionItemSnippetBinding;Lcom/narvii/amino/databinding/PollOptionItemSnippetBinding;Lcom/narvii/amino/databinding/PollOptionItemSnippetBinding;Lcom/narvii/amino/databinding/PollOptionItemSnippetBinding;Lcom/narvii/amino/databinding/PollOptionItemSnippetBinding;Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Lcom/narvii/poll/PollOptionListLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/amino/databinding/PollOptionItemSnippetBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/amino/databinding/PollOptionItemSnippetBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/narvii/amino/databinding/PollOptionItemSnippetBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/amino/databinding/PollOptionItemSnippetBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/narvii/amino/databinding/PollOptionItemSnippetBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/amino/databinding/SnippetPollOptionListBinding;->rootView:Lcom/narvii/poll/PollOptionListLayout;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/amino/databinding/SnippetPollOptionListBinding;->pollOptionItem1:Lcom/narvii/amino/databinding/PollOptionItemSnippetBinding;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/amino/databinding/SnippetPollOptionListBinding;->pollOptionItem2:Lcom/narvii/amino/databinding/PollOptionItemSnippetBinding;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/narvii/amino/databinding/SnippetPollOptionListBinding;->pollOptionItem3:Lcom/narvii/amino/databinding/PollOptionItemSnippetBinding;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/narvii/amino/databinding/SnippetPollOptionListBinding;->pollOptionItem4:Lcom/narvii/amino/databinding/PollOptionItemSnippetBinding;

    .line 14
    .line 15
    iput-object p6, p0, Lcom/narvii/amino/databinding/SnippetPollOptionListBinding;->pollOptionItem5:Lcom/narvii/amino/databinding/PollOptionItemSnippetBinding;

    .line 16
    .line 17
    iput-object p7, p0, Lcom/narvii/amino/databinding/SnippetPollOptionListBinding;->pollText:Landroid/widget/TextView;

    .line 18
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/amino/databinding/SnippetPollOptionListBinding;
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
    const v0, 0x7f0a0b12

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
    invoke-static {v1}, Lcom/narvii/amino/databinding/PollOptionItemSnippetBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/PollOptionItemSnippetBinding;

    .line 13
    move-result-object v4

    .line 14
    .line 15
    .line 16
    const v0, 0x7f0a0b13

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
    invoke-static {v1}, Lcom/narvii/amino/databinding/PollOptionItemSnippetBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/PollOptionItemSnippetBinding;

    .line 26
    move-result-object v5

    .line 27
    .line 28
    .line 29
    const v0, 0x7f0a0b14

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
    invoke-static {v1}, Lcom/narvii/amino/databinding/PollOptionItemSnippetBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/PollOptionItemSnippetBinding;

    .line 39
    move-result-object v6

    .line 40
    .line 41
    .line 42
    const v0, 0x7f0a0b15

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
    invoke-static {v1}, Lcom/narvii/amino/databinding/PollOptionItemSnippetBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/PollOptionItemSnippetBinding;

    .line 52
    move-result-object v7

    .line 53
    .line 54
    .line 55
    const v0, 0x7f0a0b16

    .line 56
    .line 57
    .line 58
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 59
    move-result-object v1

    .line 60
    .line 61
    if-eqz v1, :cond_0

    .line 62
    .line 63
    .line 64
    invoke-static {v1}, Lcom/narvii/amino/databinding/PollOptionItemSnippetBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/PollOptionItemSnippetBinding;

    .line 65
    move-result-object v8

    .line 66
    .line 67
    .line 68
    const v0, 0x7f0a0b1c

    .line 69
    .line 70
    .line 71
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 72
    move-result-object v1

    .line 73
    move-object v9, v1

    .line 74
    .line 75
    check-cast v9, Landroid/widget/TextView;

    .line 76
    .line 77
    if-eqz v9, :cond_0

    .line 78
    .line 79
    new-instance v0, Lcom/narvii/amino/databinding/SnippetPollOptionListBinding;

    .line 80
    move-object v3, p0

    .line 81
    .line 82
    check-cast v3, Lcom/narvii/poll/PollOptionListLayout;

    .line 83
    move-object v2, v0

    .line 84
    .line 85
    .line 86
    invoke-direct/range {v2 .. v9}, Lcom/narvii/amino/databinding/SnippetPollOptionListBinding;-><init>(Lcom/narvii/poll/PollOptionListLayout;Lcom/narvii/amino/databinding/PollOptionItemSnippetBinding;Lcom/narvii/amino/databinding/PollOptionItemSnippetBinding;Lcom/narvii/amino/databinding/PollOptionItemSnippetBinding;Lcom/narvii/amino/databinding/PollOptionItemSnippetBinding;Lcom/narvii/amino/databinding/PollOptionItemSnippetBinding;Landroid/widget/TextView;)V

    .line 87
    return-object v0

    .line 88
    .line 89
    .line 90
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 91
    move-result-object p0

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 95
    move-result-object p0

    .line 96
    .line 97
    new-instance v0, Ljava/lang/NullPointerException;

    .line 98
    .line 99
    const-string v1, "Missing required view with ID: "

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    move-result-object p0

    .line 104
    .line 105
    .line 106
    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 107
    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/narvii/amino/databinding/SnippetPollOptionListBinding;
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
    invoke-static {p0, v0, v1}, Lcom/narvii/amino/databinding/SnippetPollOptionListBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/SnippetPollOptionListBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/SnippetPollOptionListBinding;
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

    const v0, 0x7f0d06ed

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/amino/databinding/SnippetPollOptionListBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/SnippetPollOptionListBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/amino/databinding/SnippetPollOptionListBinding;->getRoot()Lcom/narvii/poll/PollOptionListLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/narvii/poll/PollOptionListLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/amino/databinding/SnippetPollOptionListBinding;->rootView:Lcom/narvii/poll/PollOptionListLayout;

    return-object v0
.end method
