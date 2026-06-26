.class final Lcom/narvii/story/StoryInterstitialPageFragment$Adapter;
.super Lcom/narvii/comment/list/CommentListAdapter;
.source "StoryInterstitialPageFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/story/StoryInterstitialPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Adapter"
.end annotation


# instance fields
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

    .line 265
    iput-object p1, p0, Lcom/narvii/story/StoryInterstitialPageFragment$Adapter;->this$0:Lcom/narvii/story/StoryInterstitialPageFragment;

    invoke-direct {p0, p2}, Lcom/narvii/comment/list/CommentListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p3, p0, Lcom/narvii/story/StoryInterstitialPageFragment$Adapter;->story:Lcom/narvii/model/Blog;

    const/4 p1, 0x1

    .line 268
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    return-void
.end method


# virtual methods
.method protected getFeedNdcId()I
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/narvii/story/StoryInterstitialPageFragment$Adapter;->story:Lcom/narvii/model/Blog;

    iget v0, v0, Lcom/narvii/model/Feed;->ndcId:I

    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 282
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/comment/list/CommentListAdapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const-string p2, "#40000000"

    .line 283
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    const-string p2, "view"

    .line 284
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method protected getParent()Lcom/narvii/model/NVObject;
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/narvii/story/StoryInterstitialPageFragment$Adapter;->story:Lcom/narvii/model/Blog;

    return-object v0
.end method

.method public final getStory()Lcom/narvii/model/Blog;
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/narvii/story/StoryInterstitialPageFragment$Adapter;->story:Lcom/narvii/model/Blog;

    return-object v0
.end method

.method public isDarkNVTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/narvii/story/StoryInterstitialPageFragment$Adapter;->story:Lcom/narvii/model/Blog;

    invoke-virtual {v0}, Lcom/narvii/model/Blog;->getTotalCommentsCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public showListEnd(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
