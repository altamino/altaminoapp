.class public final Lcom/narvii/amino/databinding/DialogSuggetUpdateBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final bg:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final close:Lcom/narvii/widget/PopButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final hint:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final mainLayout:Lcom/github/mmin18/widget/FlexLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final openAppStoreButton:Landroid/widget/Button;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Lcom/github/mmin18/widget/FlexLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/github/mmin18/widget/FlexLayout;Landroid/view/View;Lcom/narvii/widget/PopButton;Landroid/widget/TextView;Lcom/github/mmin18/widget/FlexLayout;Landroid/widget/Button;)V
    .locals 0
    .param p1    # Lcom/github/mmin18/widget/FlexLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/widget/PopButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/github/mmin18/widget/FlexLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroid/widget/Button;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/amino/databinding/DialogSuggetUpdateBinding;->rootView:Lcom/github/mmin18/widget/FlexLayout;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/amino/databinding/DialogSuggetUpdateBinding;->bg:Landroid/view/View;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/amino/databinding/DialogSuggetUpdateBinding;->close:Lcom/narvii/widget/PopButton;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/narvii/amino/databinding/DialogSuggetUpdateBinding;->hint:Landroid/widget/TextView;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/narvii/amino/databinding/DialogSuggetUpdateBinding;->mainLayout:Lcom/github/mmin18/widget/FlexLayout;

    .line 14
    .line 15
    iput-object p6, p0, Lcom/narvii/amino/databinding/DialogSuggetUpdateBinding;->openAppStoreButton:Landroid/widget/Button;

    .line 16
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/amino/databinding/DialogSuggetUpdateBinding;
    .locals 8
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a01c8

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
    const v0, 0x7f0a0321

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
    check-cast v4, Lcom/narvii/widget/PopButton;

    .line 20
    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    .line 24
    const v0, 0x7f0a0666

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
    check-cast v5, Landroid/widget/TextView;

    .line 32
    .line 33
    if-eqz v5, :cond_0

    .line 34
    .line 35
    .line 36
    const v0, 0x7f0a083f

    .line 37
    .line 38
    .line 39
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 40
    move-result-object v1

    .line 41
    move-object v6, v1

    .line 42
    .line 43
    check-cast v6, Lcom/github/mmin18/widget/FlexLayout;

    .line 44
    .line 45
    if-eqz v6, :cond_0

    .line 46
    .line 47
    .line 48
    const v0, 0x7f0a0a71

    .line 49
    .line 50
    .line 51
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 52
    move-result-object v1

    .line 53
    move-object v7, v1

    .line 54
    .line 55
    check-cast v7, Landroid/widget/Button;

    .line 56
    .line 57
    if-eqz v7, :cond_0

    .line 58
    .line 59
    new-instance v0, Lcom/narvii/amino/databinding/DialogSuggetUpdateBinding;

    .line 60
    move-object v2, p0

    .line 61
    .line 62
    check-cast v2, Lcom/github/mmin18/widget/FlexLayout;

    .line 63
    move-object v1, v0

    .line 64
    .line 65
    .line 66
    invoke-direct/range {v1 .. v7}, Lcom/narvii/amino/databinding/DialogSuggetUpdateBinding;-><init>(Lcom/github/mmin18/widget/FlexLayout;Landroid/view/View;Lcom/narvii/widget/PopButton;Landroid/widget/TextView;Lcom/github/mmin18/widget/FlexLayout;Landroid/widget/Button;)V

    .line 67
    return-object v0

    .line 68
    .line 69
    .line 70
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 71
    move-result-object p0

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 75
    move-result-object p0

    .line 76
    .line 77
    new-instance v0, Ljava/lang/NullPointerException;

    .line 78
    .line 79
    const-string v1, "Missing required view with ID: "

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    move-result-object p0

    .line 84
    .line 85
    .line 86
    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 87
    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/narvii/amino/databinding/DialogSuggetUpdateBinding;
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
    invoke-static {p0, v0, v1}, Lcom/narvii/amino/databinding/DialogSuggetUpdateBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/DialogSuggetUpdateBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/DialogSuggetUpdateBinding;
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

    const v0, 0x7f0d01dd

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/amino/databinding/DialogSuggetUpdateBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/DialogSuggetUpdateBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/amino/databinding/DialogSuggetUpdateBinding;->getRoot()Lcom/github/mmin18/widget/FlexLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/github/mmin18/widget/FlexLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/amino/databinding/DialogSuggetUpdateBinding;->rootView:Lcom/github/mmin18/widget/FlexLayout;

    return-object v0
.end method
