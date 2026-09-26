.class public final Lcom/narvii/amino/databinding/ItemBubbleBaseBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final bubbleContent:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final bubblePreview:Lcom/narvii/widget/NVImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final customBubble:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final customContainer:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final customHint:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final itemName:Lcom/narvii/monetization/utils/StoreItemNameView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final subtitle:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/view/View;Landroid/widget/LinearLayout;Lcom/narvii/widget/NVImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/narvii/monetization/utils/StoreItemNameView;Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/widget/NVImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/narvii/monetization/utils/StoreItemNameView;
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
    iput-object p1, p0, Lcom/narvii/amino/databinding/ItemBubbleBaseBinding;->rootView:Landroid/view/View;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/amino/databinding/ItemBubbleBaseBinding;->bubbleContent:Landroid/widget/LinearLayout;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/amino/databinding/ItemBubbleBaseBinding;->bubblePreview:Lcom/narvii/widget/NVImageView;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/narvii/amino/databinding/ItemBubbleBaseBinding;->customBubble:Landroid/widget/ImageView;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/narvii/amino/databinding/ItemBubbleBaseBinding;->customContainer:Landroid/widget/LinearLayout;

    .line 14
    .line 15
    iput-object p6, p0, Lcom/narvii/amino/databinding/ItemBubbleBaseBinding;->customHint:Landroid/widget/TextView;

    .line 16
    .line 17
    iput-object p7, p0, Lcom/narvii/amino/databinding/ItemBubbleBaseBinding;->itemName:Lcom/narvii/monetization/utils/StoreItemNameView;

    .line 18
    .line 19
    iput-object p8, p0, Lcom/narvii/amino/databinding/ItemBubbleBaseBinding;->subtitle:Landroid/widget/TextView;

    .line 20
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/amino/databinding/ItemBubbleBaseBinding;
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
    const v0, 0x7f0a0223

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
    const v0, 0x7f0a022b

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
    check-cast v5, Lcom/narvii/widget/NVImageView;

    .line 23
    .line 24
    if-eqz v5, :cond_0

    .line 25
    .line 26
    .line 27
    const v0, 0x7f0a03f4

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
    check-cast v6, Landroid/widget/ImageView;

    .line 35
    .line 36
    if-eqz v6, :cond_0

    .line 37
    .line 38
    .line 39
    const v0, 0x7f0a03f5

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
    check-cast v7, Landroid/widget/LinearLayout;

    .line 47
    .line 48
    if-eqz v7, :cond_0

    .line 49
    .line 50
    .line 51
    const v0, 0x7f0a03f6

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
    check-cast v8, Landroid/widget/TextView;

    .line 59
    .line 60
    if-eqz v8, :cond_0

    .line 61
    .line 62
    .line 63
    const v0, 0x7f0a076a

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
    check-cast v9, Lcom/narvii/monetization/utils/StoreItemNameView;

    .line 71
    .line 72
    if-eqz v9, :cond_0

    .line 73
    .line 74
    .line 75
    const v0, 0x7f0a0e08

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
    new-instance v0, Lcom/narvii/amino/databinding/ItemBubbleBaseBinding;

    .line 87
    move-object v2, v0

    .line 88
    move-object v3, p0

    .line 89
    .line 90
    .line 91
    invoke-direct/range {v2 .. v10}, Lcom/narvii/amino/databinding/ItemBubbleBaseBinding;-><init>(Landroid/view/View;Landroid/widget/LinearLayout;Lcom/narvii/widget/NVImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/narvii/monetization/utils/StoreItemNameView;Landroid/widget/TextView;)V

    .line 92
    return-object v0

    .line 93
    .line 94
    .line 95
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 96
    move-result-object p0

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 100
    move-result-object p0

    .line 101
    .line 102
    new-instance v0, Ljava/lang/NullPointerException;

    .line 103
    .line 104
    const-string v1, "Missing required view with ID: "

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    move-result-object p0

    .line 109
    .line 110
    .line 111
    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 112
    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/narvii/amino/databinding/ItemBubbleBaseBinding;
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
    const v0, 0x7f0d03c2

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/narvii/amino/databinding/ItemBubbleBaseBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/ItemBubbleBaseBinding;

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

    iget-object v0, p0, Lcom/narvii/amino/databinding/ItemBubbleBaseBinding;->rootView:Landroid/view/View;

    return-object v0
.end method
