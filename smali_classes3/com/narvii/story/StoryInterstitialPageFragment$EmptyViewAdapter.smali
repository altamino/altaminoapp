.class final Lcom/narvii/story/StoryInterstitialPageFragment$EmptyViewAdapter;
.super Lcom/narvii/list/AdriftAdapter;
.source "StoryInterstitialPageFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/story/StoryInterstitialPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EmptyViewAdapter"
.end annotation


# instance fields
.field private host:Lcom/narvii/list/NVAdapter;

.field private final story:Lcom/narvii/model/Blog;

.field final synthetic this$0:Lcom/narvii/story/StoryInterstitialPageFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/story/StoryInterstitialPageFragment;Lcom/narvii/app/NVContext;Lcom/narvii/model/Blog;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Lcom/narvii/model/Blog;",
            ")V"
        }
    .end annotation

    const-string v0, "ctx"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "story"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    iput-object p1, p0, Lcom/narvii/story/StoryInterstitialPageFragment$EmptyViewAdapter;->this$0:Lcom/narvii/story/StoryInterstitialPageFragment;

    invoke-direct {p0, p2}, Lcom/narvii/list/AdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p3, p0, Lcom/narvii/story/StoryInterstitialPageFragment$EmptyViewAdapter;->story:Lcom/narvii/model/Blog;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/narvii/story/StoryInterstitialPageFragment$EmptyViewAdapter;->host:Lcom/narvii/list/NVAdapter;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final getHost()Lcom/narvii/list/NVAdapter;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/narvii/story/StoryInterstitialPageFragment$EmptyViewAdapter;->host:Lcom/narvii/list/NVAdapter;

    return-object v0
.end method

.method public final getStory()Lcom/narvii/model/Blog;
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/narvii/story/StoryInterstitialPageFragment$EmptyViewAdapter;->story:Lcom/narvii/model/Blog;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const p1, 0x7f0b0373

    .line 251
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const-string p2, "createView<FrameLayout>(\u2026iew, parent, convertView)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method protected isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final setHost(Lcom/narvii/list/NVAdapter;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/narvii/story/StoryInterstitialPageFragment$EmptyViewAdapter;->host:Lcom/narvii/list/NVAdapter;

    return-void
.end method
