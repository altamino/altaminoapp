.class public final Lcom/narvii/amino/databinding/InterestPickerSubInterestTopicItemBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final interestItemView:Lcom/narvii/suggest/interest/InterestTopicView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final more:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Lcom/narvii/suggest/interest/InterestTopicView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final text:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/narvii/suggest/interest/InterestTopicView;Lcom/narvii/suggest/interest/InterestTopicView;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Lcom/narvii/suggest/interest/InterestTopicView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/suggest/interest/InterestTopicView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/amino/databinding/InterestPickerSubInterestTopicItemBinding;->rootView:Lcom/narvii/suggest/interest/InterestTopicView;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/amino/databinding/InterestPickerSubInterestTopicItemBinding;->interestItemView:Lcom/narvii/suggest/interest/InterestTopicView;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/amino/databinding/InterestPickerSubInterestTopicItemBinding;->more:Landroid/widget/ImageView;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/narvii/amino/databinding/InterestPickerSubInterestTopicItemBinding;->text:Landroid/widget/TextView;

    .line 12
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/amino/databinding/InterestPickerSubInterestTopicItemBinding;
    .locals 4
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    .line 3
    check-cast v0, Lcom/narvii/suggest/interest/InterestTopicView;

    .line 4
    .line 5
    .line 6
    const v1, 0x7f0a098d

    .line 7
    .line 8
    .line 9
    invoke-static {p0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 10
    move-result-object v2

    .line 11
    .line 12
    check-cast v2, Landroid/widget/ImageView;

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    .line 17
    const v1, 0x7f0a0e51

    .line 18
    .line 19
    .line 20
    invoke-static {p0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 21
    move-result-object v3

    .line 22
    .line 23
    check-cast v3, Landroid/widget/TextView;

    .line 24
    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    new-instance p0, Lcom/narvii/amino/databinding/InterestPickerSubInterestTopicItemBinding;

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, v0, v0, v2, v3}, Lcom/narvii/amino/databinding/InterestPickerSubInterestTopicItemBinding;-><init>(Lcom/narvii/suggest/interest/InterestTopicView;Lcom/narvii/suggest/interest/InterestTopicView;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 31
    return-object p0

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 35
    move-result-object p0

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 39
    move-result-object p0

    .line 40
    .line 41
    new-instance v0, Ljava/lang/NullPointerException;

    .line 42
    .line 43
    const-string v1, "Missing required view with ID: "

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    move-result-object p0

    .line 48
    .line 49
    .line 50
    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 51
    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/narvii/amino/databinding/InterestPickerSubInterestTopicItemBinding;
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
    invoke-static {p0, v0, v1}, Lcom/narvii/amino/databinding/InterestPickerSubInterestTopicItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/InterestPickerSubInterestTopicItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/InterestPickerSubInterestTopicItemBinding;
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

    const v0, 0x7f0d03ac

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/amino/databinding/InterestPickerSubInterestTopicItemBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/InterestPickerSubInterestTopicItemBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/amino/databinding/InterestPickerSubInterestTopicItemBinding;->getRoot()Lcom/narvii/suggest/interest/InterestTopicView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/narvii/suggest/interest/InterestTopicView;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/amino/databinding/InterestPickerSubInterestTopicItemBinding;->rootView:Lcom/narvii/suggest/interest/InterestTopicView;

    return-object v0
.end method
