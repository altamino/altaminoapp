.class public final Lcom/narvii/amino/databinding/FragmentVvContentMiniBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final avatar1:Lcom/narvii/amino/databinding/UserAvatarLayoutMiniNobadgeNoavatarBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final avatar2:Lcom/narvii/amino/databinding/UserAvatarLayoutMiniNobadgeNoavatarBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final avatar3:Lcom/narvii/amino/databinding/UserAvatarLayoutMiniNobadgeNoavatarBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final memberCount:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final mute:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final root:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final vvTypeIndicator:Lcom/narvii/chat/video/view/VVIndicatorView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/narvii/amino/databinding/UserAvatarLayoutMiniNobadgeNoavatarBinding;Lcom/narvii/amino/databinding/UserAvatarLayoutMiniNobadgeNoavatarBinding;Lcom/narvii/amino/databinding/UserAvatarLayoutMiniNobadgeNoavatarBinding;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Lcom/narvii/chat/video/view/VVIndicatorView;)V
    .locals 0
    .param p1    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/amino/databinding/UserAvatarLayoutMiniNobadgeNoavatarBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/amino/databinding/UserAvatarLayoutMiniNobadgeNoavatarBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/narvii/amino/databinding/UserAvatarLayoutMiniNobadgeNoavatarBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Lcom/narvii/chat/video/view/VVIndicatorView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/amino/databinding/FragmentVvContentMiniBinding;->rootView:Landroid/widget/LinearLayout;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/amino/databinding/FragmentVvContentMiniBinding;->avatar1:Lcom/narvii/amino/databinding/UserAvatarLayoutMiniNobadgeNoavatarBinding;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/amino/databinding/FragmentVvContentMiniBinding;->avatar2:Lcom/narvii/amino/databinding/UserAvatarLayoutMiniNobadgeNoavatarBinding;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/narvii/amino/databinding/FragmentVvContentMiniBinding;->avatar3:Lcom/narvii/amino/databinding/UserAvatarLayoutMiniNobadgeNoavatarBinding;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/narvii/amino/databinding/FragmentVvContentMiniBinding;->memberCount:Landroid/widget/TextView;

    .line 14
    .line 15
    iput-object p6, p0, Lcom/narvii/amino/databinding/FragmentVvContentMiniBinding;->mute:Landroid/widget/ImageView;

    .line 16
    .line 17
    iput-object p7, p0, Lcom/narvii/amino/databinding/FragmentVvContentMiniBinding;->root:Landroid/widget/LinearLayout;

    .line 18
    .line 19
    iput-object p8, p0, Lcom/narvii/amino/databinding/FragmentVvContentMiniBinding;->vvTypeIndicator:Lcom/narvii/chat/video/view/VVIndicatorView;

    .line 20
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/amino/databinding/FragmentVvContentMiniBinding;
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
    const v0, 0x7f0a0176

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
    invoke-static {v1}, Lcom/narvii/amino/databinding/UserAvatarLayoutMiniNobadgeNoavatarBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/UserAvatarLayoutMiniNobadgeNoavatarBinding;

    .line 13
    move-result-object v4

    .line 14
    .line 15
    .line 16
    const v0, 0x7f0a0177

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
    invoke-static {v1}, Lcom/narvii/amino/databinding/UserAvatarLayoutMiniNobadgeNoavatarBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/UserAvatarLayoutMiniNobadgeNoavatarBinding;

    .line 26
    move-result-object v5

    .line 27
    .line 28
    .line 29
    const v0, 0x7f0a0178

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
    invoke-static {v1}, Lcom/narvii/amino/databinding/UserAvatarLayoutMiniNobadgeNoavatarBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/UserAvatarLayoutMiniNobadgeNoavatarBinding;

    .line 39
    move-result-object v6

    .line 40
    .line 41
    .line 42
    const v0, 0x7f0a093e

    .line 43
    .line 44
    .line 45
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 46
    move-result-object v1

    .line 47
    move-object v7, v1

    .line 48
    .line 49
    check-cast v7, Landroid/widget/TextView;

    .line 50
    .line 51
    if-eqz v7, :cond_0

    .line 52
    .line 53
    .line 54
    const v0, 0x7f0a09c3

    .line 55
    .line 56
    .line 57
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 58
    move-result-object v1

    .line 59
    move-object v8, v1

    .line 60
    .line 61
    check-cast v8, Landroid/widget/ImageView;

    .line 62
    .line 63
    if-eqz v8, :cond_0

    .line 64
    move-object v9, p0

    .line 65
    .line 66
    check-cast v9, Landroid/widget/LinearLayout;

    .line 67
    .line 68
    .line 69
    const v0, 0x7f0a1013

    .line 70
    .line 71
    .line 72
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 73
    move-result-object v1

    .line 74
    move-object v10, v1

    .line 75
    .line 76
    check-cast v10, Lcom/narvii/chat/video/view/VVIndicatorView;

    .line 77
    .line 78
    if-eqz v10, :cond_0

    .line 79
    .line 80
    new-instance p0, Lcom/narvii/amino/databinding/FragmentVvContentMiniBinding;

    .line 81
    move-object v2, p0

    .line 82
    move-object v3, v9

    .line 83
    .line 84
    .line 85
    invoke-direct/range {v2 .. v10}, Lcom/narvii/amino/databinding/FragmentVvContentMiniBinding;-><init>(Landroid/widget/LinearLayout;Lcom/narvii/amino/databinding/UserAvatarLayoutMiniNobadgeNoavatarBinding;Lcom/narvii/amino/databinding/UserAvatarLayoutMiniNobadgeNoavatarBinding;Lcom/narvii/amino/databinding/UserAvatarLayoutMiniNobadgeNoavatarBinding;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Lcom/narvii/chat/video/view/VVIndicatorView;)V

    .line 86
    return-object p0

    .line 87
    .line 88
    .line 89
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 90
    move-result-object p0

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 94
    move-result-object p0

    .line 95
    .line 96
    new-instance v0, Ljava/lang/NullPointerException;

    .line 97
    .line 98
    const-string v1, "Missing required view with ID: "

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    move-result-object p0

    .line 103
    .line 104
    .line 105
    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 106
    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/narvii/amino/databinding/FragmentVvContentMiniBinding;
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
    invoke-static {p0, v0, v1}, Lcom/narvii/amino/databinding/FragmentVvContentMiniBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/FragmentVvContentMiniBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/FragmentVvContentMiniBinding;
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

    const v0, 0x7f0d033e

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/amino/databinding/FragmentVvContentMiniBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/FragmentVvContentMiniBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/amino/databinding/FragmentVvContentMiniBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/amino/databinding/FragmentVvContentMiniBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
