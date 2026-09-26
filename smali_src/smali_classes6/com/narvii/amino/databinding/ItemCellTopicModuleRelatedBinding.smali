.class public final Lcom/narvii/amino/databinding/ItemCellTopicModuleRelatedBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final imgContainer:Lcom/narvii/topic/widgets/TopicCardCoverView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Lcom/narvii/topic/widgets/GeneralTopicCard;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final storyTopicCardView:Lcom/narvii/topic/widgets/GeneralTopicCard;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final topicView:Lcom/narvii/story/widgets/StoryTopicView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/narvii/topic/widgets/GeneralTopicCard;Lcom/narvii/topic/widgets/TopicCardCoverView;Lcom/narvii/topic/widgets/GeneralTopicCard;Lcom/narvii/story/widgets/StoryTopicView;)V
    .locals 0
    .param p1    # Lcom/narvii/topic/widgets/GeneralTopicCard;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/topic/widgets/TopicCardCoverView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/topic/widgets/GeneralTopicCard;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/narvii/story/widgets/StoryTopicView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/amino/databinding/ItemCellTopicModuleRelatedBinding;->rootView:Lcom/narvii/topic/widgets/GeneralTopicCard;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/amino/databinding/ItemCellTopicModuleRelatedBinding;->imgContainer:Lcom/narvii/topic/widgets/TopicCardCoverView;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/amino/databinding/ItemCellTopicModuleRelatedBinding;->storyTopicCardView:Lcom/narvii/topic/widgets/GeneralTopicCard;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/narvii/amino/databinding/ItemCellTopicModuleRelatedBinding;->topicView:Lcom/narvii/story/widgets/StoryTopicView;

    .line 12
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/amino/databinding/ItemCellTopicModuleRelatedBinding;
    .locals 4
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a070d

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 7
    move-result-object v1

    .line 8
    .line 9
    check-cast v1, Lcom/narvii/topic/widgets/TopicCardCoverView;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    move-object v0, p0

    .line 13
    .line 14
    check-cast v0, Lcom/narvii/topic/widgets/GeneralTopicCard;

    .line 15
    .line 16
    .line 17
    const v2, 0x7f0a0eec

    .line 18
    .line 19
    .line 20
    invoke-static {p0, v2}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 21
    move-result-object v3

    .line 22
    .line 23
    check-cast v3, Lcom/narvii/story/widgets/StoryTopicView;

    .line 24
    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    new-instance p0, Lcom/narvii/amino/databinding/ItemCellTopicModuleRelatedBinding;

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, v0, v1, v0, v3}, Lcom/narvii/amino/databinding/ItemCellTopicModuleRelatedBinding;-><init>(Lcom/narvii/topic/widgets/GeneralTopicCard;Lcom/narvii/topic/widgets/TopicCardCoverView;Lcom/narvii/topic/widgets/GeneralTopicCard;Lcom/narvii/story/widgets/StoryTopicView;)V

    .line 31
    return-object p0

    .line 32
    :cond_0
    move v0, v2

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 36
    move-result-object p0

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 40
    move-result-object p0

    .line 41
    .line 42
    new-instance v0, Ljava/lang/NullPointerException;

    .line 43
    .line 44
    const-string v1, "Missing required view with ID: "

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    move-result-object p0

    .line 49
    .line 50
    .line 51
    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 52
    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/narvii/amino/databinding/ItemCellTopicModuleRelatedBinding;
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
    invoke-static {p0, v0, v1}, Lcom/narvii/amino/databinding/ItemCellTopicModuleRelatedBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/ItemCellTopicModuleRelatedBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/ItemCellTopicModuleRelatedBinding;
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

    const v0, 0x7f0d03d0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/amino/databinding/ItemCellTopicModuleRelatedBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/ItemCellTopicModuleRelatedBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/amino/databinding/ItemCellTopicModuleRelatedBinding;->getRoot()Lcom/narvii/topic/widgets/GeneralTopicCard;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/narvii/topic/widgets/GeneralTopicCard;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/amino/databinding/ItemCellTopicModuleRelatedBinding;->rootView:Lcom/narvii/topic/widgets/GeneralTopicCard;

    return-object v0
.end method
