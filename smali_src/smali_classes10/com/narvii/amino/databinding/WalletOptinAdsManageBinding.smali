.class public final Lcom/narvii/amino/databinding/WalletOptinAdsManageBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final earnMoreCoins:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final earnMoreSwitch:Landroid/widget/CheckBox;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final optinAdsEarnTotal:Lcom/narvii/app/theme/view/NVThemeTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final optinAdsEarnWeek:Lcom/narvii/app/theme/view/NVThemeTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final optinAdsSwitch:Landroid/widget/CheckBox;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Lcom/narvii/app/theme/view/NVThemeLinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final text:Lcom/narvii/app/theme/view/NVThemeTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/narvii/app/theme/view/NVThemeLinearLayout;Landroid/widget/LinearLayout;Landroid/widget/CheckBox;Lcom/narvii/app/theme/view/NVThemeTextView;Lcom/narvii/app/theme/view/NVThemeTextView;Landroid/widget/CheckBox;Lcom/narvii/app/theme/view/NVThemeTextView;)V
    .locals 0
    .param p1    # Lcom/narvii/app/theme/view/NVThemeLinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/CheckBox;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/narvii/app/theme/view/NVThemeTextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/app/theme/view/NVThemeTextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroid/widget/CheckBox;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/narvii/app/theme/view/NVThemeTextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/amino/databinding/WalletOptinAdsManageBinding;->rootView:Lcom/narvii/app/theme/view/NVThemeLinearLayout;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/amino/databinding/WalletOptinAdsManageBinding;->earnMoreCoins:Landroid/widget/LinearLayout;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/amino/databinding/WalletOptinAdsManageBinding;->earnMoreSwitch:Landroid/widget/CheckBox;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/narvii/amino/databinding/WalletOptinAdsManageBinding;->optinAdsEarnTotal:Lcom/narvii/app/theme/view/NVThemeTextView;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/narvii/amino/databinding/WalletOptinAdsManageBinding;->optinAdsEarnWeek:Lcom/narvii/app/theme/view/NVThemeTextView;

    .line 14
    .line 15
    iput-object p6, p0, Lcom/narvii/amino/databinding/WalletOptinAdsManageBinding;->optinAdsSwitch:Landroid/widget/CheckBox;

    .line 16
    .line 17
    iput-object p7, p0, Lcom/narvii/amino/databinding/WalletOptinAdsManageBinding;->text:Lcom/narvii/app/theme/view/NVThemeTextView;

    .line 18
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/amino/databinding/WalletOptinAdsManageBinding;
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
    const v0, 0x7f0a04ab

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
    const v0, 0x7f0a04ad

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
    check-cast v5, Landroid/widget/CheckBox;

    .line 23
    .line 24
    if-eqz v5, :cond_0

    .line 25
    .line 26
    .line 27
    const v0, 0x7f0a0a7b

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
    check-cast v6, Lcom/narvii/app/theme/view/NVThemeTextView;

    .line 35
    .line 36
    if-eqz v6, :cond_0

    .line 37
    .line 38
    .line 39
    const v0, 0x7f0a0a7c

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
    check-cast v7, Lcom/narvii/app/theme/view/NVThemeTextView;

    .line 47
    .line 48
    if-eqz v7, :cond_0

    .line 49
    .line 50
    .line 51
    const v0, 0x7f0a0a7d

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
    check-cast v8, Landroid/widget/CheckBox;

    .line 59
    .line 60
    if-eqz v8, :cond_0

    .line 61
    .line 62
    .line 63
    const v0, 0x7f0a0e51

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
    check-cast v9, Lcom/narvii/app/theme/view/NVThemeTextView;

    .line 71
    .line 72
    if-eqz v9, :cond_0

    .line 73
    .line 74
    new-instance v0, Lcom/narvii/amino/databinding/WalletOptinAdsManageBinding;

    .line 75
    move-object v3, p0

    .line 76
    .line 77
    check-cast v3, Lcom/narvii/app/theme/view/NVThemeLinearLayout;

    .line 78
    move-object v2, v0

    .line 79
    .line 80
    .line 81
    invoke-direct/range {v2 .. v9}, Lcom/narvii/amino/databinding/WalletOptinAdsManageBinding;-><init>(Lcom/narvii/app/theme/view/NVThemeLinearLayout;Landroid/widget/LinearLayout;Landroid/widget/CheckBox;Lcom/narvii/app/theme/view/NVThemeTextView;Lcom/narvii/app/theme/view/NVThemeTextView;Landroid/widget/CheckBox;Lcom/narvii/app/theme/view/NVThemeTextView;)V

    .line 82
    return-object v0

    .line 83
    .line 84
    .line 85
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 86
    move-result-object p0

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 90
    move-result-object p0

    .line 91
    .line 92
    new-instance v0, Ljava/lang/NullPointerException;

    .line 93
    .line 94
    const-string v1, "Missing required view with ID: "

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    move-result-object p0

    .line 99
    .line 100
    .line 101
    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 102
    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/narvii/amino/databinding/WalletOptinAdsManageBinding;
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
    invoke-static {p0, v0, v1}, Lcom/narvii/amino/databinding/WalletOptinAdsManageBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/WalletOptinAdsManageBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/WalletOptinAdsManageBinding;
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

    const v0, 0x7f0d07a9

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/amino/databinding/WalletOptinAdsManageBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/WalletOptinAdsManageBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/amino/databinding/WalletOptinAdsManageBinding;->getRoot()Lcom/narvii/app/theme/view/NVThemeLinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/narvii/app/theme/view/NVThemeLinearLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/amino/databinding/WalletOptinAdsManageBinding;->rootView:Lcom/narvii/app/theme/view/NVThemeLinearLayout;

    return-object v0
.end method
