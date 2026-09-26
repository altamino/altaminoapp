.class public final Lcom/narvii/amino/databinding/ItemAudienceLayoutBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final audienceCount:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final audienceCountContainer:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final avatar1:Lcom/narvii/amino/databinding/UserAvatarLayoutMiniNobadgeBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final avatar2:Lcom/narvii/amino/databinding/UserAvatarLayoutMiniNobadgeBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final avatar3:Lcom/narvii/amino/databinding/UserAvatarLayoutMiniNobadgeBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final avatar4:Lcom/narvii/amino/databinding/UserAvatarLayoutMiniNobadgeBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final lastAvatarLayout:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final more:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final overlay:Lcom/narvii/widget/NVImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Lcom/narvii/amino/databinding/UserAvatarLayoutMiniNobadgeBinding;Lcom/narvii/amino/databinding/UserAvatarLayoutMiniNobadgeBinding;Lcom/narvii/amino/databinding/UserAvatarLayoutMiniNobadgeBinding;Lcom/narvii/amino/databinding/UserAvatarLayoutMiniNobadgeBinding;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Lcom/narvii/widget/NVImageView;)V
    .locals 0
    .param p1    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/narvii/amino/databinding/UserAvatarLayoutMiniNobadgeBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/amino/databinding/UserAvatarLayoutMiniNobadgeBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/narvii/amino/databinding/UserAvatarLayoutMiniNobadgeBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/narvii/amino/databinding/UserAvatarLayoutMiniNobadgeBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Lcom/narvii/widget/NVImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/amino/databinding/ItemAudienceLayoutBinding;->rootView:Landroid/widget/LinearLayout;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/amino/databinding/ItemAudienceLayoutBinding;->audienceCount:Landroid/widget/TextView;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/amino/databinding/ItemAudienceLayoutBinding;->audienceCountContainer:Landroid/widget/LinearLayout;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/narvii/amino/databinding/ItemAudienceLayoutBinding;->avatar1:Lcom/narvii/amino/databinding/UserAvatarLayoutMiniNobadgeBinding;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/narvii/amino/databinding/ItemAudienceLayoutBinding;->avatar2:Lcom/narvii/amino/databinding/UserAvatarLayoutMiniNobadgeBinding;

    .line 14
    .line 15
    iput-object p6, p0, Lcom/narvii/amino/databinding/ItemAudienceLayoutBinding;->avatar3:Lcom/narvii/amino/databinding/UserAvatarLayoutMiniNobadgeBinding;

    .line 16
    .line 17
    iput-object p7, p0, Lcom/narvii/amino/databinding/ItemAudienceLayoutBinding;->avatar4:Lcom/narvii/amino/databinding/UserAvatarLayoutMiniNobadgeBinding;

    .line 18
    .line 19
    iput-object p8, p0, Lcom/narvii/amino/databinding/ItemAudienceLayoutBinding;->lastAvatarLayout:Landroid/widget/FrameLayout;

    .line 20
    .line 21
    iput-object p9, p0, Lcom/narvii/amino/databinding/ItemAudienceLayoutBinding;->more:Landroid/widget/ImageView;

    .line 22
    .line 23
    iput-object p10, p0, Lcom/narvii/amino/databinding/ItemAudienceLayoutBinding;->overlay:Lcom/narvii/widget/NVImageView;

    .line 24
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/amino/databinding/ItemAudienceLayoutBinding;
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
    const v0, 0x7f0a0155

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
    const v0, 0x7f0a0156

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
    check-cast v5, Landroid/widget/LinearLayout;

    .line 23
    .line 24
    if-eqz v5, :cond_0

    .line 25
    .line 26
    .line 27
    const v0, 0x7f0a0172

    .line 28
    .line 29
    .line 30
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    .line 36
    invoke-static {v1}, Lcom/narvii/amino/databinding/UserAvatarLayoutMiniNobadgeBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/UserAvatarLayoutMiniNobadgeBinding;

    .line 37
    move-result-object v6

    .line 38
    .line 39
    .line 40
    const v0, 0x7f0a0173

    .line 41
    .line 42
    .line 43
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    if-eqz v1, :cond_0

    .line 47
    .line 48
    .line 49
    invoke-static {v1}, Lcom/narvii/amino/databinding/UserAvatarLayoutMiniNobadgeBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/UserAvatarLayoutMiniNobadgeBinding;

    .line 50
    move-result-object v7

    .line 51
    .line 52
    .line 53
    const v0, 0x7f0a0174

    .line 54
    .line 55
    .line 56
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 57
    move-result-object v1

    .line 58
    .line 59
    if-eqz v1, :cond_0

    .line 60
    .line 61
    .line 62
    invoke-static {v1}, Lcom/narvii/amino/databinding/UserAvatarLayoutMiniNobadgeBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/UserAvatarLayoutMiniNobadgeBinding;

    .line 63
    move-result-object v8

    .line 64
    .line 65
    .line 66
    const v0, 0x7f0a0175

    .line 67
    .line 68
    .line 69
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 70
    move-result-object v1

    .line 71
    .line 72
    if-eqz v1, :cond_0

    .line 73
    .line 74
    .line 75
    invoke-static {v1}, Lcom/narvii/amino/databinding/UserAvatarLayoutMiniNobadgeBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/UserAvatarLayoutMiniNobadgeBinding;

    .line 76
    move-result-object v9

    .line 77
    .line 78
    .line 79
    const v0, 0x7f0a07b0

    .line 80
    .line 81
    .line 82
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 83
    move-result-object v1

    .line 84
    move-object v10, v1

    .line 85
    .line 86
    check-cast v10, Landroid/widget/FrameLayout;

    .line 87
    .line 88
    if-eqz v10, :cond_0

    .line 89
    .line 90
    .line 91
    const v0, 0x7f0a098d

    .line 92
    .line 93
    .line 94
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 95
    move-result-object v1

    .line 96
    move-object v11, v1

    .line 97
    .line 98
    check-cast v11, Landroid/widget/ImageView;

    .line 99
    .line 100
    if-eqz v11, :cond_0

    .line 101
    .line 102
    .line 103
    const v0, 0x7f0a0ab1

    .line 104
    .line 105
    .line 106
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 107
    move-result-object v1

    .line 108
    move-object v12, v1

    .line 109
    .line 110
    check-cast v12, Lcom/narvii/widget/NVImageView;

    .line 111
    .line 112
    if-eqz v12, :cond_0

    .line 113
    .line 114
    new-instance v0, Lcom/narvii/amino/databinding/ItemAudienceLayoutBinding;

    .line 115
    move-object v3, p0

    .line 116
    .line 117
    check-cast v3, Landroid/widget/LinearLayout;

    .line 118
    move-object v2, v0

    .line 119
    .line 120
    .line 121
    invoke-direct/range {v2 .. v12}, Lcom/narvii/amino/databinding/ItemAudienceLayoutBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Lcom/narvii/amino/databinding/UserAvatarLayoutMiniNobadgeBinding;Lcom/narvii/amino/databinding/UserAvatarLayoutMiniNobadgeBinding;Lcom/narvii/amino/databinding/UserAvatarLayoutMiniNobadgeBinding;Lcom/narvii/amino/databinding/UserAvatarLayoutMiniNobadgeBinding;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Lcom/narvii/widget/NVImageView;)V

    .line 122
    return-object v0

    .line 123
    .line 124
    .line 125
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 126
    move-result-object p0

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 130
    move-result-object p0

    .line 131
    .line 132
    new-instance v0, Ljava/lang/NullPointerException;

    .line 133
    .line 134
    const-string v1, "Missing required view with ID: "

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 138
    move-result-object p0

    .line 139
    .line 140
    .line 141
    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 142
    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/narvii/amino/databinding/ItemAudienceLayoutBinding;
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
    invoke-static {p0, v0, v1}, Lcom/narvii/amino/databinding/ItemAudienceLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/ItemAudienceLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/ItemAudienceLayoutBinding;
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

    const v0, 0x7f0d03bd

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/amino/databinding/ItemAudienceLayoutBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/ItemAudienceLayoutBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/amino/databinding/ItemAudienceLayoutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/amino/databinding/ItemAudienceLayoutBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
