.class public final Lcom/narvii/amino/databinding/ChatClaimOrganizerLayoutBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final organizerTransClaimLayout:Lcom/narvii/amino/databinding/ChatClaimOrganizerClaimLayoutBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final organizerTransConfirmLayout:Lcom/narvii/amino/databinding/ChatClaimOrganizerConfirmLayoutBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final organizerTransRequestLayout:Lcom/narvii/amino/databinding/ChatClaimOrganizerRequestLayoutBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Lcom/narvii/amino/databinding/ChatClaimOrganizerClaimLayoutBinding;Lcom/narvii/amino/databinding/ChatClaimOrganizerConfirmLayoutBinding;Lcom/narvii/amino/databinding/ChatClaimOrganizerRequestLayoutBinding;)V
    .locals 0
    .param p1    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/amino/databinding/ChatClaimOrganizerClaimLayoutBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/amino/databinding/ChatClaimOrganizerConfirmLayoutBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/narvii/amino/databinding/ChatClaimOrganizerRequestLayoutBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/amino/databinding/ChatClaimOrganizerLayoutBinding;->rootView:Landroid/widget/FrameLayout;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/amino/databinding/ChatClaimOrganizerLayoutBinding;->organizerTransClaimLayout:Lcom/narvii/amino/databinding/ChatClaimOrganizerClaimLayoutBinding;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/amino/databinding/ChatClaimOrganizerLayoutBinding;->organizerTransConfirmLayout:Lcom/narvii/amino/databinding/ChatClaimOrganizerConfirmLayoutBinding;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/narvii/amino/databinding/ChatClaimOrganizerLayoutBinding;->organizerTransRequestLayout:Lcom/narvii/amino/databinding/ChatClaimOrganizerRequestLayoutBinding;

    .line 12
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/amino/databinding/ChatClaimOrganizerLayoutBinding;
    .locals 4
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a0aa6

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 7
    move-result-object v1

    .line 8
    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    .line 12
    invoke-static {v1}, Lcom/narvii/amino/databinding/ChatClaimOrganizerClaimLayoutBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/ChatClaimOrganizerClaimLayoutBinding;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    const v1, 0x7f0a0aa7

    .line 17
    .line 18
    .line 19
    invoke-static {p0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-static {v2}, Lcom/narvii/amino/databinding/ChatClaimOrganizerConfirmLayoutBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/ChatClaimOrganizerConfirmLayoutBinding;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    const v2, 0x7f0a0aaa

    .line 30
    .line 31
    .line 32
    invoke-static {p0, v2}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 33
    move-result-object v3

    .line 34
    .line 35
    if-eqz v3, :cond_0

    .line 36
    .line 37
    .line 38
    invoke-static {v3}, Lcom/narvii/amino/databinding/ChatClaimOrganizerRequestLayoutBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/ChatClaimOrganizerRequestLayoutBinding;

    .line 39
    move-result-object v2

    .line 40
    .line 41
    new-instance v3, Lcom/narvii/amino/databinding/ChatClaimOrganizerLayoutBinding;

    .line 42
    .line 43
    check-cast p0, Landroid/widget/FrameLayout;

    .line 44
    .line 45
    .line 46
    invoke-direct {v3, p0, v0, v1, v2}, Lcom/narvii/amino/databinding/ChatClaimOrganizerLayoutBinding;-><init>(Landroid/widget/FrameLayout;Lcom/narvii/amino/databinding/ChatClaimOrganizerClaimLayoutBinding;Lcom/narvii/amino/databinding/ChatClaimOrganizerConfirmLayoutBinding;Lcom/narvii/amino/databinding/ChatClaimOrganizerRequestLayoutBinding;)V

    .line 47
    return-object v3

    .line 48
    :cond_0
    move v0, v2

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    move v0, v1

    .line 51
    .line 52
    .line 53
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 54
    move-result-object p0

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 58
    move-result-object p0

    .line 59
    .line 60
    new-instance v0, Ljava/lang/NullPointerException;

    .line 61
    .line 62
    const-string v1, "Missing required view with ID: "

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    move-result-object p0

    .line 67
    .line 68
    .line 69
    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 70
    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/narvii/amino/databinding/ChatClaimOrganizerLayoutBinding;
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
    invoke-static {p0, v0, v1}, Lcom/narvii/amino/databinding/ChatClaimOrganizerLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/ChatClaimOrganizerLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/ChatClaimOrganizerLayoutBinding;
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

    const v0, 0x7f0d00b0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/amino/databinding/ChatClaimOrganizerLayoutBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/ChatClaimOrganizerLayoutBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/amino/databinding/ChatClaimOrganizerLayoutBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/amino/databinding/ChatClaimOrganizerLayoutBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
