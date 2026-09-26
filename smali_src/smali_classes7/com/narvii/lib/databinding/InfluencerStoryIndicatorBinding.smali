.class public final Lcom/narvii/lib/databinding/InfluencerStoryIndicatorBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final check:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final fansOnly:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final influencerLock:Lcom/narvii/widget/TintButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final influencerPostLockIndicator:Lcom/narvii/influencer/StoryInfluencerPostIndicator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Lcom/narvii/influencer/StoryInfluencerPostIndicator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final toggleLayout:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/narvii/influencer/StoryInfluencerPostIndicator;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/narvii/widget/TintButton;Lcom/narvii/influencer/StoryInfluencerPostIndicator;Landroid/widget/FrameLayout;)V
    .locals 0
    .param p1    # Lcom/narvii/influencer/StoryInfluencerPostIndicator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/narvii/widget/TintButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/influencer/StoryInfluencerPostIndicator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/lib/databinding/InfluencerStoryIndicatorBinding;->rootView:Lcom/narvii/influencer/StoryInfluencerPostIndicator;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/lib/databinding/InfluencerStoryIndicatorBinding;->check:Landroid/widget/ImageView;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/lib/databinding/InfluencerStoryIndicatorBinding;->fansOnly:Landroid/widget/TextView;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/narvii/lib/databinding/InfluencerStoryIndicatorBinding;->influencerLock:Lcom/narvii/widget/TintButton;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/narvii/lib/databinding/InfluencerStoryIndicatorBinding;->influencerPostLockIndicator:Lcom/narvii/influencer/StoryInfluencerPostIndicator;

    .line 14
    .line 15
    iput-object p6, p0, Lcom/narvii/lib/databinding/InfluencerStoryIndicatorBinding;->toggleLayout:Landroid/widget/FrameLayout;

    .line 16
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/lib/databinding/InfluencerStoryIndicatorBinding;
    .locals 9
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    sget v0, Lcom/narvii/lib/R$id;->check:I

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
    check-cast v4, Landroid/widget/ImageView;

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    sget v0, Lcom/narvii/lib/R$id;->fans_only:I

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
    sget v0, Lcom/narvii/lib/R$id;->influencer_lock:I

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
    check-cast v6, Lcom/narvii/widget/TintButton;

    .line 32
    .line 33
    if-eqz v6, :cond_0

    .line 34
    move-object v7, p0

    .line 35
    .line 36
    check-cast v7, Lcom/narvii/influencer/StoryInfluencerPostIndicator;

    .line 37
    .line 38
    sget v0, Lcom/narvii/lib/R$id;->toggle_layout:I

    .line 39
    .line 40
    .line 41
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 42
    move-result-object v1

    .line 43
    move-object v8, v1

    .line 44
    .line 45
    check-cast v8, Landroid/widget/FrameLayout;

    .line 46
    .line 47
    if-eqz v8, :cond_0

    .line 48
    .line 49
    new-instance p0, Lcom/narvii/lib/databinding/InfluencerStoryIndicatorBinding;

    .line 50
    move-object v2, p0

    .line 51
    move-object v3, v7

    .line 52
    .line 53
    .line 54
    invoke-direct/range {v2 .. v8}, Lcom/narvii/lib/databinding/InfluencerStoryIndicatorBinding;-><init>(Lcom/narvii/influencer/StoryInfluencerPostIndicator;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/narvii/widget/TintButton;Lcom/narvii/influencer/StoryInfluencerPostIndicator;Landroid/widget/FrameLayout;)V

    .line 55
    return-object p0

    .line 56
    .line 57
    .line 58
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 59
    move-result-object p0

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 63
    move-result-object p0

    .line 64
    .line 65
    new-instance v0, Ljava/lang/NullPointerException;

    .line 66
    .line 67
    const-string v1, "Missing required view with ID: "

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    move-result-object p0

    .line 72
    .line 73
    .line 74
    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 75
    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/narvii/lib/databinding/InfluencerStoryIndicatorBinding;
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
    invoke-static {p0, v0, v1}, Lcom/narvii/lib/databinding/InfluencerStoryIndicatorBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/lib/databinding/InfluencerStoryIndicatorBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/lib/databinding/InfluencerStoryIndicatorBinding;
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

    sget v0, Lcom/narvii/lib/R$layout;->influencer_story_indicator:I

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/lib/databinding/InfluencerStoryIndicatorBinding;->bind(Landroid/view/View;)Lcom/narvii/lib/databinding/InfluencerStoryIndicatorBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/lib/databinding/InfluencerStoryIndicatorBinding;->getRoot()Lcom/narvii/influencer/StoryInfluencerPostIndicator;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/narvii/influencer/StoryInfluencerPostIndicator;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/lib/databinding/InfluencerStoryIndicatorBinding;->rootView:Lcom/narvii/influencer/StoryInfluencerPostIndicator;

    return-object v0
.end method
