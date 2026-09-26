.class public final Lcom/narvii/amino/databinding/ViewInterestialPageCommentBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final avatar:Lcom/narvii/amino/databinding/UserAvatarLayoutMiniBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final commentHintView:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/narvii/amino/databinding/UserAvatarLayoutMiniBinding;Landroid/widget/FrameLayout;)V
    .locals 0
    .param p1    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/amino/databinding/UserAvatarLayoutMiniBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/amino/databinding/ViewInterestialPageCommentBinding;->rootView:Landroid/widget/LinearLayout;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/amino/databinding/ViewInterestialPageCommentBinding;->avatar:Lcom/narvii/amino/databinding/UserAvatarLayoutMiniBinding;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/amino/databinding/ViewInterestialPageCommentBinding;->commentHintView:Landroid/widget/FrameLayout;

    .line 10
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/amino/databinding/ViewInterestialPageCommentBinding;
    .locals 3
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a0171

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 7
    move-result-object v1

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    .line 12
    invoke-static {v1}, Lcom/narvii/amino/databinding/UserAvatarLayoutMiniBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/UserAvatarLayoutMiniBinding;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    const v1, 0x7f0a0359

    .line 17
    .line 18
    .line 19
    invoke-static {p0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    check-cast v2, Landroid/widget/FrameLayout;

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    new-instance v1, Lcom/narvii/amino/databinding/ViewInterestialPageCommentBinding;

    .line 27
    .line 28
    check-cast p0, Landroid/widget/LinearLayout;

    .line 29
    .line 30
    .line 31
    invoke-direct {v1, p0, v0, v2}, Lcom/narvii/amino/databinding/ViewInterestialPageCommentBinding;-><init>(Landroid/widget/LinearLayout;Lcom/narvii/amino/databinding/UserAvatarLayoutMiniBinding;Landroid/widget/FrameLayout;)V

    .line 32
    return-object v1

    .line 33
    :cond_0
    move v0, v1

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 37
    move-result-object p0

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 41
    move-result-object p0

    .line 42
    .line 43
    new-instance v0, Ljava/lang/NullPointerException;

    .line 44
    .line 45
    const-string v1, "Missing required view with ID: "

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    move-result-object p0

    .line 50
    .line 51
    .line 52
    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 53
    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/narvii/amino/databinding/ViewInterestialPageCommentBinding;
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
    invoke-static {p0, v0, v1}, Lcom/narvii/amino/databinding/ViewInterestialPageCommentBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/ViewInterestialPageCommentBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/ViewInterestialPageCommentBinding;
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

    const v0, 0x7f0d078c

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/amino/databinding/ViewInterestialPageCommentBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/ViewInterestialPageCommentBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/amino/databinding/ViewInterestialPageCommentBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/amino/databinding/ViewInterestialPageCommentBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
