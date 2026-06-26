.class Lcom/narvii/story/StoryListFragment$1;
.super Lcom/narvii/share/ShareButtonSaveStory;
.source "StoryListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/story/StoryListFragment;->onShareStory(Lcom/narvii/model/Blog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/story/StoryListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/story/StoryListFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/narvii/story/StoryListFragment$1;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-direct {p0, p2}, Lcom/narvii/share/ShareButtonSaveStory;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onClickWithPermissionGranted$0$StoryListFragment$1(Ljava/lang/Boolean;)V
    .locals 2

    .line 313
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment$1;->this$0:Lcom/narvii/story/StoryListFragment;

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-static {p1, v0, v1}, Lcom/narvii/story/StoryListFragment;->access$000(Lcom/narvii/story/StoryListFragment;ZI)V

    return-void
.end method

.method public onClickWithPermissionGranted(Lcom/narvii/share/SharePayload;)V
    .locals 3

    .line 309
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$1;->this$0:Lcom/narvii/story/StoryListFragment;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcom/narvii/story/StoryListFragment;->access$000(Lcom/narvii/story/StoryListFragment;ZI)V

    .line 310
    iget-object p1, p1, Lcom/narvii/share/SharePayload;->object:Lcom/narvii/model/NVObject;

    check-cast p1, Lcom/narvii/model/Blog;

    .line 311
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$1;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryListFragment;->access$100(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/model/Blog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$1;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryListFragment;->access$100(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/model/Blog;

    move-result-object v0

    iget v0, v0, Lcom/narvii/model/Blog;->currentWindowIndex:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 312
    :goto_0
    iget-object v1, p0, Lcom/narvii/story/StoryListFragment$1;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v1}, Lcom/narvii/story/StoryListFragment;->access$200(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/story/StoryDownloadHelper;

    move-result-object v1

    new-instance v2, Lcom/narvii/story/-$$Lambda$StoryListFragment$1$LZnvsQWT0bz7vqfBFUiPDb8pbAU;

    invoke-direct {v2, p0}, Lcom/narvii/story/-$$Lambda$StoryListFragment$1$LZnvsQWT0bz7vqfBFUiPDb8pbAU;-><init>(Lcom/narvii/story/StoryListFragment$1;)V

    invoke-static {v2}, Lcom/narvii/util/Utils;->functionUnit(Lcom/narvii/util/Callback;)Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/narvii/story/StoryDownloadHelper;->setOnActionFinished(Lkotlin/jvm/functions/Function1;)V

    .line 315
    iget-object v1, p0, Lcom/narvii/story/StoryListFragment$1;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v1}, Lcom/narvii/story/StoryListFragment;->access$200(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/story/StoryDownloadHelper;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/narvii/story/StoryDownloadHelper;->downloadStory(Lcom/narvii/model/Blog;I)V

    return-void
.end method
