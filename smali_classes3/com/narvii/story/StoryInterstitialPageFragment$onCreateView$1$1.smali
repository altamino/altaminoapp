.class public final Lcom/narvii/story/StoryInterstitialPageFragment$onCreateView$1$1;
.super Lcom/narvii/share/ShareButtonSaveStory;
.source "StoryInterstitialPageFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/story/StoryInterstitialPageFragment$onCreateView$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/story/StoryInterstitialPageFragment$onCreateView$1;


# direct methods
.method constructor <init>(Lcom/narvii/story/StoryInterstitialPageFragment$onCreateView$1;Lcom/narvii/app/NVContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    .line 101
    iput-object p1, p0, Lcom/narvii/story/StoryInterstitialPageFragment$onCreateView$1$1;->this$0:Lcom/narvii/story/StoryInterstitialPageFragment$onCreateView$1;

    invoke-direct {p0, p2}, Lcom/narvii/share/ShareButtonSaveStory;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public onClickWithPermissionGranted(Lcom/narvii/share/SharePayload;)V
    .locals 4

    const-string v0, "payload"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/narvii/story/StoryInterstitialPageFragment$onCreateView$1$1;->this$0:Lcom/narvii/story/StoryInterstitialPageFragment$onCreateView$1;

    iget-object v0, v0, Lcom/narvii/story/StoryInterstitialPageFragment$onCreateView$1;->this$0:Lcom/narvii/story/StoryInterstitialPageFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryInterstitialPageFragment;->access$getStoryDownloadHelper$p(Lcom/narvii/story/StoryInterstitialPageFragment;)Lcom/narvii/story/StoryDownloadHelper;

    move-result-object v0

    iget-object p1, p1, Lcom/narvii/share/SharePayload;->object:Lcom/narvii/model/NVObject;

    if-eqz p1, :cond_0

    check-cast p1, Lcom/narvii/model/Blog;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Lcom/narvii/story/StoryDownloadHelper;->downloadStory$default(Lcom/narvii/story/StoryDownloadHelper;Lcom/narvii/model/Blog;IILjava/lang/Object;)V

    return-void

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.narvii.model.Blog"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
