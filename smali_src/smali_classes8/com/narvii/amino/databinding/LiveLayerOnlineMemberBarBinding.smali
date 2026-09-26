.class public final Lcom/narvii/amino/databinding/LiveLayerOnlineMemberBarBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final bar:Lcom/narvii/widget/NVImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final content:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final greenOval:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final liveLayerHalo:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final onlineTextLayout:Landroid/widget/RelativeLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final onlineTv:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final recentAvatar:Lcom/narvii/amino/databinding/LiveLayerOnlineMemberAvatarBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/view/View;Lcom/narvii/widget/NVImageView;Landroid/widget/LinearLayout;Landroid/view/View;Landroid/view/View;Lcom/narvii/livelayer/ws/ClipLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Lcom/narvii/amino/databinding/LiveLayerOnlineMemberAvatarBinding;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/widget/NVImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/narvii/livelayer/ws/ClipLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Landroid/widget/RelativeLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Lcom/narvii/amino/databinding/LiveLayerOnlineMemberAvatarBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/amino/databinding/LiveLayerOnlineMemberBarBinding;->rootView:Landroid/view/View;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/amino/databinding/LiveLayerOnlineMemberBarBinding;->bar:Lcom/narvii/widget/NVImageView;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/amino/databinding/LiveLayerOnlineMemberBarBinding;->content:Landroid/widget/LinearLayout;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/narvii/amino/databinding/LiveLayerOnlineMemberBarBinding;->greenOval:Landroid/view/View;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/narvii/amino/databinding/LiveLayerOnlineMemberBarBinding;->liveLayerHalo:Landroid/view/View;

    .line 14
    .line 15
    iput-object p6, p0, Lcom/narvii/amino/databinding/LiveLayerOnlineMemberBarBinding;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    .line 16
    .line 17
    iput-object p7, p0, Lcom/narvii/amino/databinding/LiveLayerOnlineMemberBarBinding;->onlineTextLayout:Landroid/widget/RelativeLayout;

    .line 18
    .line 19
    iput-object p8, p0, Lcom/narvii/amino/databinding/LiveLayerOnlineMemberBarBinding;->onlineTv:Landroid/widget/TextView;

    .line 20
    .line 21
    iput-object p9, p0, Lcom/narvii/amino/databinding/LiveLayerOnlineMemberBarBinding;->recentAvatar:Lcom/narvii/amino/databinding/LiveLayerOnlineMemberAvatarBinding;

    .line 22
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/amino/databinding/LiveLayerOnlineMemberBarBinding;
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
    const v0, 0x7f0a01b4

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
    check-cast v4, Lcom/narvii/widget/NVImageView;

    .line 11
    .line 12
    if-eqz v4, :cond_0

    .line 13
    .line 14
    .line 15
    const v0, 0x7f0a039d

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
    const v0, 0x7f0a0630

    .line 28
    .line 29
    .line 30
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 31
    move-result-object v6

    .line 32
    .line 33
    if-eqz v6, :cond_0

    .line 34
    .line 35
    .line 36
    const v0, 0x7f0a080d

    .line 37
    .line 38
    .line 39
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 40
    move-result-object v7

    .line 41
    .line 42
    if-eqz v7, :cond_0

    .line 43
    .line 44
    .line 45
    const v0, 0x7f0a083f

    .line 46
    .line 47
    .line 48
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 49
    move-result-object v1

    .line 50
    move-object v8, v1

    .line 51
    .line 52
    check-cast v8, Lcom/narvii/livelayer/ws/ClipLayout;

    .line 53
    .line 54
    if-eqz v8, :cond_0

    .line 55
    .line 56
    .line 57
    const v0, 0x7f0a0a60

    .line 58
    .line 59
    .line 60
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 61
    move-result-object v1

    .line 62
    move-object v9, v1

    .line 63
    .line 64
    check-cast v9, Landroid/widget/RelativeLayout;

    .line 65
    .line 66
    if-eqz v9, :cond_0

    .line 67
    .line 68
    .line 69
    const v0, 0x7f0a0a61

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
    check-cast v10, Landroid/widget/TextView;

    .line 77
    .line 78
    if-eqz v10, :cond_0

    .line 79
    .line 80
    .line 81
    const v0, 0x7f0a0be5

    .line 82
    .line 83
    .line 84
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 85
    move-result-object v1

    .line 86
    .line 87
    if-eqz v1, :cond_0

    .line 88
    .line 89
    .line 90
    invoke-static {v1}, Lcom/narvii/amino/databinding/LiveLayerOnlineMemberAvatarBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/LiveLayerOnlineMemberAvatarBinding;

    .line 91
    move-result-object v11

    .line 92
    .line 93
    new-instance v0, Lcom/narvii/amino/databinding/LiveLayerOnlineMemberBarBinding;

    .line 94
    move-object v2, v0

    .line 95
    move-object v3, p0

    .line 96
    .line 97
    .line 98
    invoke-direct/range {v2 .. v11}, Lcom/narvii/amino/databinding/LiveLayerOnlineMemberBarBinding;-><init>(Landroid/view/View;Lcom/narvii/widget/NVImageView;Landroid/widget/LinearLayout;Landroid/view/View;Landroid/view/View;Lcom/narvii/livelayer/ws/ClipLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Lcom/narvii/amino/databinding/LiveLayerOnlineMemberAvatarBinding;)V

    .line 99
    return-object v0

    .line 100
    .line 101
    .line 102
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 103
    move-result-object p0

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 107
    move-result-object p0

    .line 108
    .line 109
    new-instance v0, Ljava/lang/NullPointerException;

    .line 110
    .line 111
    const-string v1, "Missing required view with ID: "

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 115
    move-result-object p0

    .line 116
    .line 117
    .line 118
    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 119
    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/narvii/amino/databinding/LiveLayerOnlineMemberBarBinding;
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
    const v0, 0x7f0d050d

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/narvii/amino/databinding/LiveLayerOnlineMemberBarBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/LiveLayerOnlineMemberBarBinding;

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

    iget-object v0, p0, Lcom/narvii/amino/databinding/LiveLayerOnlineMemberBarBinding;->rootView:Landroid/view/View;

    return-object v0
.end method
