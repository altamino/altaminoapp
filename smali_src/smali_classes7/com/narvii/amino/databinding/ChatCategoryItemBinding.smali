.class public final Lcom/narvii/amino/databinding/ChatCategoryItemBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final categoryTitle:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Lcom/narvii/chat/global/GlobalChatCategoryItemView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final showAll:Lcom/narvii/amino/databinding/ItemShowMoreStoryBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final thread1:Lcom/narvii/amino/databinding/ChatHangoutItemBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final thread2:Lcom/narvii/amino/databinding/ChatHangoutItemBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final thread3:Lcom/narvii/amino/databinding/ChatHangoutItemBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final thread4:Lcom/narvii/amino/databinding/ChatHangoutItemBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/narvii/chat/global/GlobalChatCategoryItemView;Landroid/widget/TextView;Lcom/narvii/amino/databinding/ItemShowMoreStoryBinding;Lcom/narvii/amino/databinding/ChatHangoutItemBinding;Lcom/narvii/amino/databinding/ChatHangoutItemBinding;Lcom/narvii/amino/databinding/ChatHangoutItemBinding;Lcom/narvii/amino/databinding/ChatHangoutItemBinding;)V
    .locals 0
    .param p1    # Lcom/narvii/chat/global/GlobalChatCategoryItemView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/amino/databinding/ItemShowMoreStoryBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/narvii/amino/databinding/ChatHangoutItemBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/amino/databinding/ChatHangoutItemBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/narvii/amino/databinding/ChatHangoutItemBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/narvii/amino/databinding/ChatHangoutItemBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/amino/databinding/ChatCategoryItemBinding;->rootView:Lcom/narvii/chat/global/GlobalChatCategoryItemView;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/amino/databinding/ChatCategoryItemBinding;->categoryTitle:Landroid/widget/TextView;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/amino/databinding/ChatCategoryItemBinding;->showAll:Lcom/narvii/amino/databinding/ItemShowMoreStoryBinding;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/narvii/amino/databinding/ChatCategoryItemBinding;->thread1:Lcom/narvii/amino/databinding/ChatHangoutItemBinding;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/narvii/amino/databinding/ChatCategoryItemBinding;->thread2:Lcom/narvii/amino/databinding/ChatHangoutItemBinding;

    .line 14
    .line 15
    iput-object p6, p0, Lcom/narvii/amino/databinding/ChatCategoryItemBinding;->thread3:Lcom/narvii/amino/databinding/ChatHangoutItemBinding;

    .line 16
    .line 17
    iput-object p7, p0, Lcom/narvii/amino/databinding/ChatCategoryItemBinding;->thread4:Lcom/narvii/amino/databinding/ChatHangoutItemBinding;

    .line 18
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/amino/databinding/ChatCategoryItemBinding;
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
    const v0, 0x7f0a025a

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
    const v0, 0x7f0a0d0e

    .line 16
    .line 17
    .line 18
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-static {v1}, Lcom/narvii/amino/databinding/ItemShowMoreStoryBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/ItemShowMoreStoryBinding;

    .line 25
    move-result-object v5

    .line 26
    .line 27
    .line 28
    const v0, 0x7f0a0e70

    .line 29
    .line 30
    .line 31
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    .line 37
    invoke-static {v1}, Lcom/narvii/amino/databinding/ChatHangoutItemBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/ChatHangoutItemBinding;

    .line 38
    move-result-object v6

    .line 39
    .line 40
    .line 41
    const v0, 0x7f0a0e71

    .line 42
    .line 43
    .line 44
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 45
    move-result-object v1

    .line 46
    .line 47
    if-eqz v1, :cond_0

    .line 48
    .line 49
    .line 50
    invoke-static {v1}, Lcom/narvii/amino/databinding/ChatHangoutItemBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/ChatHangoutItemBinding;

    .line 51
    move-result-object v7

    .line 52
    .line 53
    .line 54
    const v0, 0x7f0a0e72

    .line 55
    .line 56
    .line 57
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 58
    move-result-object v1

    .line 59
    .line 60
    if-eqz v1, :cond_0

    .line 61
    .line 62
    .line 63
    invoke-static {v1}, Lcom/narvii/amino/databinding/ChatHangoutItemBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/ChatHangoutItemBinding;

    .line 64
    move-result-object v8

    .line 65
    .line 66
    .line 67
    const v0, 0x7f0a0e73

    .line 68
    .line 69
    .line 70
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 71
    move-result-object v1

    .line 72
    .line 73
    if-eqz v1, :cond_0

    .line 74
    .line 75
    .line 76
    invoke-static {v1}, Lcom/narvii/amino/databinding/ChatHangoutItemBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/ChatHangoutItemBinding;

    .line 77
    move-result-object v9

    .line 78
    .line 79
    new-instance v0, Lcom/narvii/amino/databinding/ChatCategoryItemBinding;

    .line 80
    move-object v3, p0

    .line 81
    .line 82
    check-cast v3, Lcom/narvii/chat/global/GlobalChatCategoryItemView;

    .line 83
    move-object v2, v0

    .line 84
    .line 85
    .line 86
    invoke-direct/range {v2 .. v9}, Lcom/narvii/amino/databinding/ChatCategoryItemBinding;-><init>(Lcom/narvii/chat/global/GlobalChatCategoryItemView;Landroid/widget/TextView;Lcom/narvii/amino/databinding/ItemShowMoreStoryBinding;Lcom/narvii/amino/databinding/ChatHangoutItemBinding;Lcom/narvii/amino/databinding/ChatHangoutItemBinding;Lcom/narvii/amino/databinding/ChatHangoutItemBinding;Lcom/narvii/amino/databinding/ChatHangoutItemBinding;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/narvii/amino/databinding/ChatCategoryItemBinding;
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
    invoke-static {p0, v0, v1}, Lcom/narvii/amino/databinding/ChatCategoryItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/ChatCategoryItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/ChatCategoryItemBinding;
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

    const v0, 0x7f0d00ad

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/amino/databinding/ChatCategoryItemBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/ChatCategoryItemBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/amino/databinding/ChatCategoryItemBinding;->getRoot()Lcom/narvii/chat/global/GlobalChatCategoryItemView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/narvii/chat/global/GlobalChatCategoryItemView;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/amino/databinding/ChatCategoryItemBinding;->rootView:Lcom/narvii/chat/global/GlobalChatCategoryItemView;

    return-object v0
.end method
