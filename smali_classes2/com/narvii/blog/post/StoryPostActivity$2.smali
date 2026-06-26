.class Lcom/narvii/blog/post/StoryPostActivity$2;
.super Ljava/lang/Object;
.source "StoryPostActivity.java"

# interfaces
.implements Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/blog/post/StoryPostActivity;->encodeScene(ZLcom/narvii/blog/post/BlogPost;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/blog/post/StoryPostActivity;

.field final synthetic val$blogPost:Lcom/narvii/blog/post/BlogPost;

.field final synthetic val$preview:Z


# direct methods
.method constructor <init>(Lcom/narvii/blog/post/StoryPostActivity;Lcom/narvii/blog/post/BlogPost;Z)V
    .locals 0

    .line 795
    iput-object p1, p0, Lcom/narvii/blog/post/StoryPostActivity$2;->this$0:Lcom/narvii/blog/post/StoryPostActivity;

    iput-object p2, p0, Lcom/narvii/blog/post/StoryPostActivity$2;->val$blogPost:Lcom/narvii/blog/post/BlogPost;

    iput-boolean p3, p0, Lcom/narvii/blog/post/StoryPostActivity$2;->val$preview:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Z)V
    .locals 1

    .line 825
    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity$2;->this$0:Lcom/narvii/blog/post/StoryPostActivity;

    invoke-static {v0}, Lcom/narvii/blog/post/StoryPostActivity;->access$300(Lcom/narvii/blog/post/StoryPostActivity;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 826
    sget-object v0, Lcom/narvii/video/services/SceneMediaProcessor;->INSTANCE:Lcom/narvii/video/services/SceneMediaProcessor;

    invoke-virtual {v0}, Lcom/narvii/video/services/SceneMediaProcessor;->clearListeners()V

    if-nez p1, :cond_0

    .line 828
    iget-object p1, p0, Lcom/narvii/blog/post/StoryPostActivity$2;->this$0:Lcom/narvii/blog/post/StoryPostActivity;

    invoke-virtual {p1}, Lcom/narvii/blog/post/StoryPostActivity;->showFailedDialog()V

    :cond_0
    return-void
.end method

.method public onProgress(F)V
    .locals 3

    .line 798
    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity$2;->this$0:Lcom/narvii/blog/post/StoryPostActivity;

    invoke-static {v0}, Lcom/narvii/blog/post/StoryPostActivity;->access$300(Lcom/narvii/blog/post/StoryPostActivity;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float p1, p1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr p1, v2

    float-to-int p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/util/dialog/ProgressDialog;->updateProgress(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 803
    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity$2;->this$0:Lcom/narvii/blog/post/StoryPostActivity;

    invoke-static {v0}, Lcom/narvii/blog/post/StoryPostActivity;->access$300(Lcom/narvii/blog/post/StoryPostActivity;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 804
    sget-object v0, Lcom/narvii/video/services/SceneMediaProcessor;->INSTANCE:Lcom/narvii/video/services/SceneMediaProcessor;

    invoke-virtual {v0}, Lcom/narvii/video/services/SceneMediaProcessor;->clearListeners()V

    const/4 v0, 0x0

    .line 806
    :goto_0
    iget-object v1, p0, Lcom/narvii/blog/post/StoryPostActivity$2;->this$0:Lcom/narvii/blog/post/StoryPostActivity;

    invoke-static {v1}, Lcom/narvii/blog/post/StoryPostActivity;->access$400(Lcom/narvii/blog/post/StoryPostActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 807
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v0, v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 810
    :cond_0
    iget-object v1, p0, Lcom/narvii/blog/post/StoryPostActivity$2;->this$0:Lcom/narvii/blog/post/StoryPostActivity;

    invoke-static {v1}, Lcom/narvii/blog/post/StoryPostActivity;->access$400(Lcom/narvii/blog/post/StoryPostActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/scene/model/SceneInfo;

    .line 811
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/narvii/scene/model/SceneInfo;->outputUrl:Ljava/lang/String;

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 813
    :cond_2
    iget-object p1, p0, Lcom/narvii/blog/post/StoryPostActivity$2;->val$blogPost:Lcom/narvii/blog/post/BlogPost;

    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity$2;->this$0:Lcom/narvii/blog/post/StoryPostActivity;

    invoke-static {v0}, Lcom/narvii/blog/post/StoryPostActivity;->access$500(Lcom/narvii/blog/post/StoryPostActivity;)Lcom/narvii/scene/service/SceneDraftHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/blog/post/StoryPostActivity$2;->this$0:Lcom/narvii/blog/post/StoryPostActivity;

    invoke-static {v1}, Lcom/narvii/blog/post/StoryPostActivity;->access$400(Lcom/narvii/blog/post/StoryPostActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/scene/service/SceneDraftHelper;->getSceneList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/narvii/blog/post/BlogPost;->sceneList:Ljava/util/List;

    .line 814
    iget-object p1, p0, Lcom/narvii/blog/post/StoryPostActivity$2;->val$blogPost:Lcom/narvii/blog/post/BlogPost;

    iget-object v0, p1, Lcom/narvii/blog/post/BlogPost;->sceneDraft:Lcom/narvii/scene/model/SceneDraft;

    invoke-virtual {v0}, Lcom/narvii/scene/model/SceneDraft;->clone()Lcom/narvii/scene/model/SceneDraft;

    move-result-object v0

    iput-object v0, p1, Lcom/narvii/blog/post/BlogPost;->oldSceneDraft:Lcom/narvii/scene/model/SceneDraft;

    .line 816
    iget-boolean p1, p0, Lcom/narvii/blog/post/StoryPostActivity$2;->val$preview:Z

    if-eqz p1, :cond_3

    .line 817
    iget-object p1, p0, Lcom/narvii/blog/post/StoryPostActivity$2;->this$0:Lcom/narvii/blog/post/StoryPostActivity;

    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity$2;->val$blogPost:Lcom/narvii/blog/post/BlogPost;

    invoke-static {p1, v0}, Lcom/narvii/blog/post/StoryPostActivity;->access$600(Lcom/narvii/blog/post/StoryPostActivity;Lcom/narvii/blog/post/BlogPost;)V

    goto :goto_2

    .line 819
    :cond_3
    iget-object p1, p0, Lcom/narvii/blog/post/StoryPostActivity$2;->this$0:Lcom/narvii/blog/post/StoryPostActivity;

    invoke-static {p1}, Lcom/narvii/blog/post/StoryPostActivity;->access$700(Lcom/narvii/blog/post/StoryPostActivity;)V

    :goto_2
    return-void
.end method
