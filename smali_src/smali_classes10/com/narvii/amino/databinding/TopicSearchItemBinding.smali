.class public final Lcom/narvii/amino/databinding/TopicSearchItemBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Lcom/narvii/util/layouts/NVFlowLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final topicFlow:Lcom/narvii/util/layouts/NVFlowLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final topicView:Lcom/narvii/amino/databinding/InterestPickerSubInterestTopicItemBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/narvii/util/layouts/NVFlowLayout;Lcom/narvii/util/layouts/NVFlowLayout;Lcom/narvii/amino/databinding/InterestPickerSubInterestTopicItemBinding;)V
    .locals 0
    .param p1    # Lcom/narvii/util/layouts/NVFlowLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/util/layouts/NVFlowLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/amino/databinding/InterestPickerSubInterestTopicItemBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/amino/databinding/TopicSearchItemBinding;->rootView:Lcom/narvii/util/layouts/NVFlowLayout;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/amino/databinding/TopicSearchItemBinding;->topicFlow:Lcom/narvii/util/layouts/NVFlowLayout;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/amino/databinding/TopicSearchItemBinding;->topicView:Lcom/narvii/amino/databinding/InterestPickerSubInterestTopicItemBinding;

    .line 10
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/amino/databinding/TopicSearchItemBinding;
    .locals 3
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
    check-cast v0, Lcom/narvii/util/layouts/NVFlowLayout;

    .line 4
    .line 5
    .line 6
    const v1, 0x7f0a0eec

    .line 7
    .line 8
    .line 9
    invoke-static {p0, v1}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 10
    move-result-object v2

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-static {v2}, Lcom/narvii/amino/databinding/InterestPickerSubInterestTopicItemBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/InterestPickerSubInterestTopicItemBinding;

    .line 16
    move-result-object p0

    .line 17
    .line 18
    new-instance v1, Lcom/narvii/amino/databinding/TopicSearchItemBinding;

    .line 19
    .line 20
    .line 21
    invoke-direct {v1, v0, v0, p0}, Lcom/narvii/amino/databinding/TopicSearchItemBinding;-><init>(Lcom/narvii/util/layouts/NVFlowLayout;Lcom/narvii/util/layouts/NVFlowLayout;Lcom/narvii/amino/databinding/InterestPickerSubInterestTopicItemBinding;)V

    .line 22
    return-object v1

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 26
    move-result-object p0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 31
    .line 32
    new-instance v0, Ljava/lang/NullPointerException;

    .line 33
    .line 34
    const-string v1, "Missing required view with ID: "

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    move-result-object p0

    .line 39
    .line 40
    .line 41
    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 42
    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/narvii/amino/databinding/TopicSearchItemBinding;
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
    invoke-static {p0, v0, v1}, Lcom/narvii/amino/databinding/TopicSearchItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/TopicSearchItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/TopicSearchItemBinding;
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

    const v0, 0x7f0d0759

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/amino/databinding/TopicSearchItemBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/TopicSearchItemBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/amino/databinding/TopicSearchItemBinding;->getRoot()Lcom/narvii/util/layouts/NVFlowLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/narvii/util/layouts/NVFlowLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/amino/databinding/TopicSearchItemBinding;->rootView:Lcom/narvii/util/layouts/NVFlowLayout;

    return-object v0
.end method
