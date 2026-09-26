.class public final Lcom/narvii/lib/databinding/YoutubePlaylistItemsPickerBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final cancel:Lcom/narvii/widget/TintButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final clickRemoveMask:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final finishSelect:Landroid/widget/Button;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final playlistUrl:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Lcom/github/mmin18/widget/FlexLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final selectAll:Lcom/narvii/widget/PressedFrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tippingConfirmContent:Lcom/narvii/widget/RadiusLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final youtubeVideoSelectAllIcon:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/github/mmin18/widget/FlexLayout;Lcom/narvii/widget/TintButton;Landroid/view/View;Landroid/widget/Button;Landroid/widget/TextView;Lcom/narvii/widget/PressedFrameLayout;Lcom/narvii/widget/RadiusLayout;Landroid/widget/ImageView;)V
    .locals 0
    .param p1    # Lcom/github/mmin18/widget/FlexLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/widget/TintButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/widget/Button;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/narvii/widget/PressedFrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/narvii/widget/RadiusLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/lib/databinding/YoutubePlaylistItemsPickerBinding;->rootView:Lcom/github/mmin18/widget/FlexLayout;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/lib/databinding/YoutubePlaylistItemsPickerBinding;->cancel:Lcom/narvii/widget/TintButton;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/lib/databinding/YoutubePlaylistItemsPickerBinding;->clickRemoveMask:Landroid/view/View;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/narvii/lib/databinding/YoutubePlaylistItemsPickerBinding;->finishSelect:Landroid/widget/Button;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/narvii/lib/databinding/YoutubePlaylistItemsPickerBinding;->playlistUrl:Landroid/widget/TextView;

    .line 14
    .line 15
    iput-object p6, p0, Lcom/narvii/lib/databinding/YoutubePlaylistItemsPickerBinding;->selectAll:Lcom/narvii/widget/PressedFrameLayout;

    .line 16
    .line 17
    iput-object p7, p0, Lcom/narvii/lib/databinding/YoutubePlaylistItemsPickerBinding;->tippingConfirmContent:Lcom/narvii/widget/RadiusLayout;

    .line 18
    .line 19
    iput-object p8, p0, Lcom/narvii/lib/databinding/YoutubePlaylistItemsPickerBinding;->youtubeVideoSelectAllIcon:Landroid/widget/ImageView;

    .line 20
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/lib/databinding/YoutubePlaylistItemsPickerBinding;
    .locals 11
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    sget v0, Lcom/narvii/lib/R$id;->cancel:I

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 6
    move-result-object v1

    .line 7
    move-object v4, v1

    .line 8
    .line 9
    check-cast v4, Lcom/narvii/widget/TintButton;

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    sget v0, Lcom/narvii/lib/R$id;->click_remove_mask:I

    .line 14
    .line 15
    .line 16
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 17
    move-result-object v5

    .line 18
    .line 19
    if-eqz v5, :cond_0

    .line 20
    .line 21
    sget v0, Lcom/narvii/lib/R$id;->finish_select:I

    .line 22
    .line 23
    .line 24
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 25
    move-result-object v1

    .line 26
    move-object v6, v1

    .line 27
    .line 28
    check-cast v6, Landroid/widget/Button;

    .line 29
    .line 30
    if-eqz v6, :cond_0

    .line 31
    .line 32
    sget v0, Lcom/narvii/lib/R$id;->playlist_url:I

    .line 33
    .line 34
    .line 35
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 36
    move-result-object v1

    .line 37
    move-object v7, v1

    .line 38
    .line 39
    check-cast v7, Landroid/widget/TextView;

    .line 40
    .line 41
    if-eqz v7, :cond_0

    .line 42
    .line 43
    sget v0, Lcom/narvii/lib/R$id;->select_all:I

    .line 44
    .line 45
    .line 46
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 47
    move-result-object v1

    .line 48
    move-object v8, v1

    .line 49
    .line 50
    check-cast v8, Lcom/narvii/widget/PressedFrameLayout;

    .line 51
    .line 52
    if-eqz v8, :cond_0

    .line 53
    .line 54
    sget v0, Lcom/narvii/lib/R$id;->tipping_confirm_content:I

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
    check-cast v9, Lcom/narvii/widget/RadiusLayout;

    .line 62
    .line 63
    if-eqz v9, :cond_0

    .line 64
    .line 65
    sget v0, Lcom/narvii/lib/R$id;->youtube_video_select_all_icon:I

    .line 66
    .line 67
    .line 68
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 69
    move-result-object v1

    .line 70
    move-object v10, v1

    .line 71
    .line 72
    check-cast v10, Landroid/widget/ImageView;

    .line 73
    .line 74
    if-eqz v10, :cond_0

    .line 75
    .line 76
    new-instance v0, Lcom/narvii/lib/databinding/YoutubePlaylistItemsPickerBinding;

    .line 77
    move-object v3, p0

    .line 78
    .line 79
    check-cast v3, Lcom/github/mmin18/widget/FlexLayout;

    .line 80
    move-object v2, v0

    .line 81
    .line 82
    .line 83
    invoke-direct/range {v2 .. v10}, Lcom/narvii/lib/databinding/YoutubePlaylistItemsPickerBinding;-><init>(Lcom/github/mmin18/widget/FlexLayout;Lcom/narvii/widget/TintButton;Landroid/view/View;Landroid/widget/Button;Landroid/widget/TextView;Lcom/narvii/widget/PressedFrameLayout;Lcom/narvii/widget/RadiusLayout;Landroid/widget/ImageView;)V

    .line 84
    return-object v0

    .line 85
    .line 86
    .line 87
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 88
    move-result-object p0

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 92
    move-result-object p0

    .line 93
    .line 94
    new-instance v0, Ljava/lang/NullPointerException;

    .line 95
    .line 96
    const-string v1, "Missing required view with ID: "

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    move-result-object p0

    .line 101
    .line 102
    .line 103
    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 104
    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/narvii/lib/databinding/YoutubePlaylistItemsPickerBinding;
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
    invoke-static {p0, v0, v1}, Lcom/narvii/lib/databinding/YoutubePlaylistItemsPickerBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/lib/databinding/YoutubePlaylistItemsPickerBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/lib/databinding/YoutubePlaylistItemsPickerBinding;
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

    sget v0, Lcom/narvii/lib/R$layout;->youtube_playlist_items_picker:I

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/lib/databinding/YoutubePlaylistItemsPickerBinding;->bind(Landroid/view/View;)Lcom/narvii/lib/databinding/YoutubePlaylistItemsPickerBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/lib/databinding/YoutubePlaylistItemsPickerBinding;->getRoot()Lcom/github/mmin18/widget/FlexLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/github/mmin18/widget/FlexLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/lib/databinding/YoutubePlaylistItemsPickerBinding;->rootView:Lcom/github/mmin18/widget/FlexLayout;

    return-object v0
.end method
