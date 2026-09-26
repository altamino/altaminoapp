.class public final Lcom/narvii/amino/databinding/UserFollowViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final addImg:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final followContentLayout:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final followLayout:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final followNotificationRing:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final followProgress:Lcom/narvii/widget/SpinningView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final followSuccessLayout:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final followTxt:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final notificationContentLayout:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final notificationLayout:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final notificationProgress:Lcom/narvii/widget/SpinningView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final notificationTxt:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Lcom/narvii/widget/SpinningView;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Lcom/narvii/widget/SpinningView;Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/narvii/widget/SpinningView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Lcom/narvii/widget/SpinningView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p12    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/amino/databinding/UserFollowViewBinding;->rootView:Landroid/view/View;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/amino/databinding/UserFollowViewBinding;->addImg:Landroid/widget/ImageView;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/amino/databinding/UserFollowViewBinding;->followContentLayout:Landroid/widget/LinearLayout;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/narvii/amino/databinding/UserFollowViewBinding;->followLayout:Landroid/widget/FrameLayout;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/narvii/amino/databinding/UserFollowViewBinding;->followNotificationRing:Landroid/widget/ImageView;

    .line 14
    .line 15
    iput-object p6, p0, Lcom/narvii/amino/databinding/UserFollowViewBinding;->followProgress:Lcom/narvii/widget/SpinningView;

    .line 16
    .line 17
    iput-object p7, p0, Lcom/narvii/amino/databinding/UserFollowViewBinding;->followSuccessLayout:Landroid/widget/FrameLayout;

    .line 18
    .line 19
    iput-object p8, p0, Lcom/narvii/amino/databinding/UserFollowViewBinding;->followTxt:Landroid/widget/TextView;

    .line 20
    .line 21
    iput-object p9, p0, Lcom/narvii/amino/databinding/UserFollowViewBinding;->notificationContentLayout:Landroid/widget/LinearLayout;

    .line 22
    .line 23
    iput-object p10, p0, Lcom/narvii/amino/databinding/UserFollowViewBinding;->notificationLayout:Landroid/widget/FrameLayout;

    .line 24
    .line 25
    iput-object p11, p0, Lcom/narvii/amino/databinding/UserFollowViewBinding;->notificationProgress:Lcom/narvii/widget/SpinningView;

    .line 26
    .line 27
    iput-object p12, p0, Lcom/narvii/amino/databinding/UserFollowViewBinding;->notificationTxt:Landroid/widget/TextView;

    .line 28
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/amino/databinding/UserFollowViewBinding;
    .locals 15
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a009e

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
    check-cast v4, Landroid/widget/ImageView;

    .line 11
    .line 12
    if-eqz v4, :cond_0

    .line 13
    .line 14
    .line 15
    const v0, 0x7f0a05e4

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
    const v0, 0x7f0a05e7

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
    check-cast v6, Landroid/widget/FrameLayout;

    .line 35
    .line 36
    if-eqz v6, :cond_0

    .line 37
    .line 38
    .line 39
    const v0, 0x7f0a05eb

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
    check-cast v7, Landroid/widget/ImageView;

    .line 47
    .line 48
    if-eqz v7, :cond_0

    .line 49
    .line 50
    .line 51
    const v0, 0x7f0a05ec

    .line 52
    .line 53
    .line 54
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 55
    move-result-object v1

    .line 56
    move-object v8, v1

    .line 57
    .line 58
    check-cast v8, Lcom/narvii/widget/SpinningView;

    .line 59
    .line 60
    if-eqz v8, :cond_0

    .line 61
    .line 62
    .line 63
    const v0, 0x7f0a05ed

    .line 64
    .line 65
    .line 66
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 67
    move-result-object v1

    .line 68
    move-object v9, v1

    .line 69
    .line 70
    check-cast v9, Landroid/widget/FrameLayout;

    .line 71
    .line 72
    if-eqz v9, :cond_0

    .line 73
    .line 74
    .line 75
    const v0, 0x7f0a05ef

    .line 76
    .line 77
    .line 78
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 79
    move-result-object v1

    .line 80
    move-object v10, v1

    .line 81
    .line 82
    check-cast v10, Landroid/widget/TextView;

    .line 83
    .line 84
    if-eqz v10, :cond_0

    .line 85
    .line 86
    .line 87
    const v0, 0x7f0a0a28

    .line 88
    .line 89
    .line 90
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 91
    move-result-object v1

    .line 92
    move-object v11, v1

    .line 93
    .line 94
    check-cast v11, Landroid/widget/LinearLayout;

    .line 95
    .line 96
    if-eqz v11, :cond_0

    .line 97
    .line 98
    .line 99
    const v0, 0x7f0a0a2b

    .line 100
    .line 101
    .line 102
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 103
    move-result-object v1

    .line 104
    move-object v12, v1

    .line 105
    .line 106
    check-cast v12, Landroid/widget/FrameLayout;

    .line 107
    .line 108
    if-eqz v12, :cond_0

    .line 109
    .line 110
    .line 111
    const v0, 0x7f0a0a2e

    .line 112
    .line 113
    .line 114
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 115
    move-result-object v1

    .line 116
    move-object v13, v1

    .line 117
    .line 118
    check-cast v13, Lcom/narvii/widget/SpinningView;

    .line 119
    .line 120
    if-eqz v13, :cond_0

    .line 121
    .line 122
    .line 123
    const v0, 0x7f0a0a31

    .line 124
    .line 125
    .line 126
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 127
    move-result-object v1

    .line 128
    move-object v14, v1

    .line 129
    .line 130
    check-cast v14, Landroid/widget/TextView;

    .line 131
    .line 132
    if-eqz v14, :cond_0

    .line 133
    .line 134
    new-instance v0, Lcom/narvii/amino/databinding/UserFollowViewBinding;

    .line 135
    move-object v2, v0

    .line 136
    move-object v3, p0

    .line 137
    .line 138
    .line 139
    invoke-direct/range {v2 .. v14}, Lcom/narvii/amino/databinding/UserFollowViewBinding;-><init>(Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Lcom/narvii/widget/SpinningView;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Lcom/narvii/widget/SpinningView;Landroid/widget/TextView;)V

    .line 140
    return-object v0

    .line 141
    .line 142
    .line 143
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 144
    move-result-object p0

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 148
    move-result-object p0

    .line 149
    .line 150
    new-instance v0, Ljava/lang/NullPointerException;

    .line 151
    .line 152
    const-string v1, "Missing required view with ID: "

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 156
    move-result-object p0

    .line 157
    .line 158
    .line 159
    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 160
    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/narvii/amino/databinding/UserFollowViewBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    .line 5
    const v0, 0x7f0d0766

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/narvii/amino/databinding/UserFollowViewBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/UserFollowViewBinding;

    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    .line 15
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    .line 16
    .line 17
    const-string p1, "parent"

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 21
    throw p0
.end method


# virtual methods
.method public getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/amino/databinding/UserFollowViewBinding;->rootView:Landroid/view/View;

    return-object v0
.end method
