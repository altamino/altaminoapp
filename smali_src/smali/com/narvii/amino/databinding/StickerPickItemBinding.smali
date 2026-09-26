.class public final Lcom/narvii/amino/databinding/StickerPickItemBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final disabled:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final error:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final membershipLock:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Lcom/narvii/monetization/sticker/picker/StickerPickerItem;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final selected:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final stickerPickerItem:Lcom/narvii/monetization/sticker/picker/StickerPickerItem;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final stickerPickerMain:Lcom/github/mmin18/widget/FlexLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final stub1:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final thumbnail:Lcom/narvii/widget/NVImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/narvii/monetization/sticker/picker/StickerPickerItem;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/view/View;Lcom/narvii/monetization/sticker/picker/StickerPickerItem;Lcom/github/mmin18/widget/FlexLayout;Landroid/view/View;Lcom/narvii/widget/NVImageView;)V
    .locals 0
    .param p1    # Lcom/narvii/monetization/sticker/picker/StickerPickerItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/narvii/monetization/sticker/picker/StickerPickerItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/github/mmin18/widget/FlexLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Lcom/narvii/widget/NVImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/amino/databinding/StickerPickItemBinding;->rootView:Lcom/narvii/monetization/sticker/picker/StickerPickerItem;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/amino/databinding/StickerPickItemBinding;->disabled:Landroid/view/View;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/amino/databinding/StickerPickItemBinding;->error:Landroid/widget/ImageView;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/narvii/amino/databinding/StickerPickItemBinding;->membershipLock:Landroid/widget/ImageView;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/narvii/amino/databinding/StickerPickItemBinding;->selected:Landroid/view/View;

    .line 14
    .line 15
    iput-object p6, p0, Lcom/narvii/amino/databinding/StickerPickItemBinding;->stickerPickerItem:Lcom/narvii/monetization/sticker/picker/StickerPickerItem;

    .line 16
    .line 17
    iput-object p7, p0, Lcom/narvii/amino/databinding/StickerPickItemBinding;->stickerPickerMain:Lcom/github/mmin18/widget/FlexLayout;

    .line 18
    .line 19
    iput-object p8, p0, Lcom/narvii/amino/databinding/StickerPickItemBinding;->stub1:Landroid/view/View;

    .line 20
    .line 21
    iput-object p9, p0, Lcom/narvii/amino/databinding/StickerPickItemBinding;->thumbnail:Lcom/narvii/widget/NVImageView;

    .line 22
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/amino/databinding/StickerPickItemBinding;
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
    const v0, 0x7f0a0441

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 7
    move-result-object v3

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    .line 12
    const v0, 0x7f0a04fd

    .line 13
    .line 14
    .line 15
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 16
    move-result-object v1

    .line 17
    move-object v4, v1

    .line 18
    .line 19
    check-cast v4, Landroid/widget/ImageView;

    .line 20
    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    .line 24
    const v0, 0x7f0a0959

    .line 25
    .line 26
    .line 27
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 28
    move-result-object v1

    .line 29
    move-object v5, v1

    .line 30
    .line 31
    check-cast v5, Landroid/widget/ImageView;

    .line 32
    .line 33
    if-eqz v5, :cond_0

    .line 34
    .line 35
    .line 36
    const v0, 0x7f0a0cd2

    .line 37
    .line 38
    .line 39
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 40
    move-result-object v6

    .line 41
    .line 42
    if-eqz v6, :cond_0

    .line 43
    move-object v7, p0

    .line 44
    .line 45
    check-cast v7, Lcom/narvii/monetization/sticker/picker/StickerPickerItem;

    .line 46
    .line 47
    .line 48
    const v0, 0x7f0a0db4

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
    check-cast v8, Lcom/github/mmin18/widget/FlexLayout;

    .line 56
    .line 57
    if-eqz v8, :cond_0

    .line 58
    .line 59
    .line 60
    const v0, 0x7f0a0de5

    .line 61
    .line 62
    .line 63
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 64
    move-result-object v9

    .line 65
    .line 66
    if-eqz v9, :cond_0

    .line 67
    .line 68
    .line 69
    const v0, 0x7f0a0e77

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
    check-cast v10, Lcom/narvii/widget/NVImageView;

    .line 77
    .line 78
    if-eqz v10, :cond_0

    .line 79
    .line 80
    new-instance p0, Lcom/narvii/amino/databinding/StickerPickItemBinding;

    .line 81
    move-object v1, p0

    .line 82
    move-object v2, v7

    .line 83
    .line 84
    .line 85
    invoke-direct/range {v1 .. v10}, Lcom/narvii/amino/databinding/StickerPickItemBinding;-><init>(Lcom/narvii/monetization/sticker/picker/StickerPickerItem;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/view/View;Lcom/narvii/monetization/sticker/picker/StickerPickerItem;Lcom/github/mmin18/widget/FlexLayout;Landroid/view/View;Lcom/narvii/widget/NVImageView;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/narvii/amino/databinding/StickerPickItemBinding;
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
    invoke-static {p0, v0, v1}, Lcom/narvii/amino/databinding/StickerPickItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/StickerPickItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/StickerPickItemBinding;
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

    const v0, 0x7f0d0708

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/amino/databinding/StickerPickItemBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/StickerPickItemBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/amino/databinding/StickerPickItemBinding;->getRoot()Lcom/narvii/monetization/sticker/picker/StickerPickerItem;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/narvii/monetization/sticker/picker/StickerPickerItem;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/amino/databinding/StickerPickItemBinding;->rootView:Lcom/narvii/monetization/sticker/picker/StickerPickerItem;

    return-object v0
.end method
