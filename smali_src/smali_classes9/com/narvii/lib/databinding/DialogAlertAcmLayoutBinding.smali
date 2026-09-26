.class public final Lcom/narvii/lib/databinding/DialogAlertAcmLayoutBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final alertDialogButtons:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final alertDialogMessage:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final alertDialogTitle:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final root:Lcom/github/mmin18/widget/FlexLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Lcom/github/mmin18/widget/FlexLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/github/mmin18/widget/FlexLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/github/mmin18/widget/FlexLayout;)V
    .locals 0
    .param p1    # Lcom/github/mmin18/widget/FlexLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/TextView;
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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/lib/databinding/DialogAlertAcmLayoutBinding;->rootView:Lcom/github/mmin18/widget/FlexLayout;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/lib/databinding/DialogAlertAcmLayoutBinding;->alertDialogButtons:Landroid/widget/LinearLayout;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/lib/databinding/DialogAlertAcmLayoutBinding;->alertDialogMessage:Landroid/widget/TextView;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/narvii/lib/databinding/DialogAlertAcmLayoutBinding;->alertDialogTitle:Landroid/widget/TextView;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/narvii/lib/databinding/DialogAlertAcmLayoutBinding;->root:Lcom/github/mmin18/widget/FlexLayout;

    .line 14
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/lib/databinding/DialogAlertAcmLayoutBinding;
    .locals 8
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    sget v0, Lcom/narvii/lib/R$id;->alert_dialog_buttons:I

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
    check-cast v4, Landroid/widget/LinearLayout;

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    sget v0, Lcom/narvii/lib/R$id;->alert_dialog_message:I

    .line 14
    .line 15
    .line 16
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 17
    move-result-object v1

    .line 18
    move-object v5, v1

    .line 19
    .line 20
    check-cast v5, Landroid/widget/TextView;

    .line 21
    .line 22
    if-eqz v5, :cond_0

    .line 23
    .line 24
    sget v0, Lcom/narvii/lib/R$id;->alert_dialog_title:I

    .line 25
    .line 26
    .line 27
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 28
    move-result-object v1

    .line 29
    move-object v6, v1

    .line 30
    .line 31
    check-cast v6, Landroid/widget/TextView;

    .line 32
    .line 33
    if-eqz v6, :cond_0

    .line 34
    move-object v7, p0

    .line 35
    .line 36
    check-cast v7, Lcom/github/mmin18/widget/FlexLayout;

    .line 37
    .line 38
    new-instance p0, Lcom/narvii/lib/databinding/DialogAlertAcmLayoutBinding;

    .line 39
    move-object v2, p0

    .line 40
    move-object v3, v7

    .line 41
    .line 42
    .line 43
    invoke-direct/range {v2 .. v7}, Lcom/narvii/lib/databinding/DialogAlertAcmLayoutBinding;-><init>(Lcom/github/mmin18/widget/FlexLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/github/mmin18/widget/FlexLayout;)V

    .line 44
    return-object p0

    .line 45
    .line 46
    .line 47
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 48
    move-result-object p0

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 52
    move-result-object p0

    .line 53
    .line 54
    new-instance v0, Ljava/lang/NullPointerException;

    .line 55
    .line 56
    const-string v1, "Missing required view with ID: "

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    move-result-object p0

    .line 61
    .line 62
    .line 63
    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 64
    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/narvii/lib/databinding/DialogAlertAcmLayoutBinding;
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
    invoke-static {p0, v0, v1}, Lcom/narvii/lib/databinding/DialogAlertAcmLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/lib/databinding/DialogAlertAcmLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/lib/databinding/DialogAlertAcmLayoutBinding;
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

    sget v0, Lcom/narvii/lib/R$layout;->dialog_alert_acm_layout:I

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/lib/databinding/DialogAlertAcmLayoutBinding;->bind(Landroid/view/View;)Lcom/narvii/lib/databinding/DialogAlertAcmLayoutBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/lib/databinding/DialogAlertAcmLayoutBinding;->getRoot()Lcom/github/mmin18/widget/FlexLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/github/mmin18/widget/FlexLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/lib/databinding/DialogAlertAcmLayoutBinding;->rootView:Lcom/github/mmin18/widget/FlexLayout;

    return-object v0
.end method
