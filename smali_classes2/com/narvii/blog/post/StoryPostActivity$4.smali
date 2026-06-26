.class Lcom/narvii/blog/post/StoryPostActivity$4;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "StoryPostActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/blog/post/StoryPostActivity;->checkUneditablePoll(Lcom/narvii/blog/post/BlogPost;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/blog/post/StoryPostActivity$CheckUneditablePollResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/blog/post/StoryPostActivity;

.field final synthetic val$b:Lcom/narvii/blog/post/BlogPost;

.field final synthetic val$loadingDialog:Lcom/narvii/util/dialog/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/narvii/blog/post/StoryPostActivity;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/blog/post/BlogPost;)V
    .locals 0

    .line 1351
    iput-object p1, p0, Lcom/narvii/blog/post/StoryPostActivity$4;->this$0:Lcom/narvii/blog/post/StoryPostActivity;

    iput-object p3, p0, Lcom/narvii/blog/post/StoryPostActivity$4;->val$loadingDialog:Lcom/narvii/util/dialog/ProgressDialog;

    iput-object p4, p0, Lcom/narvii/blog/post/StoryPostActivity$4;->val$b:Lcom/narvii/blog/post/BlogPost;

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onFinish$0$StoryPostActivity$4(Lcom/narvii/blog/post/BlogPost;Landroid/view/View;)V
    .locals 0

    .line 1378
    iget-object p2, p0, Lcom/narvii/blog/post/StoryPostActivity$4;->this$0:Lcom/narvii/blog/post/StoryPostActivity;

    invoke-static {p2, p1}, Lcom/narvii/blog/post/StoryPostActivity;->access$800(Lcom/narvii/blog/post/StoryPostActivity;Lcom/narvii/blog/post/BlogPost;)V

    return-void
.end method

.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "I",
            "Ljava/util/List<",
            "Lcom/narvii/util/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/narvii/model/api/ApiResponse;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1388
    iget-object p1, p0, Lcom/narvii/blog/post/StoryPostActivity$4;->val$loadingDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 1389
    iget-object p1, p0, Lcom/narvii/blog/post/StoryPostActivity$4;->this$0:Lcom/narvii/blog/post/StoryPostActivity;

    iget-object p2, p0, Lcom/narvii/blog/post/StoryPostActivity$4;->val$b:Lcom/narvii/blog/post/BlogPost;

    invoke-static {p1, p2}, Lcom/narvii/blog/post/StoryPostActivity;->access$800(Lcom/narvii/blog/post/StoryPostActivity;Lcom/narvii/blog/post/BlogPost;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/blog/post/StoryPostActivity$CheckUneditablePollResponse;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1354
    iget-object p1, p0, Lcom/narvii/blog/post/StoryPostActivity$4;->val$loadingDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    if-eqz p2, :cond_5

    .line 1355
    iget-object p1, p2, Lcom/narvii/blog/post/StoryPostActivity$CheckUneditablePollResponse;->sceneUneditableWidgetsMapping:Ljava/util/Map;

    if-eqz p1, :cond_5

    .line 1356
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1357
    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity$4;->val$b:Lcom/narvii/blog/post/BlogPost;

    iget-object v0, v0, Lcom/narvii/blog/post/BlogPost;->sceneList:Ljava/util/List;

    .line 1358
    iget-object p2, p2, Lcom/narvii/blog/post/StoryPostActivity$CheckUneditablePollResponse;->sceneUneditableWidgetsMapping:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-nez v1, :cond_1

    goto :goto_0

    .line 1362
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1363
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/blog/post/StoryPostActivity$PollAttachWrapper;

    iget-object v2, v1, Lcom/narvii/blog/post/StoryPostActivity$PollAttachWrapper;->pollAttach:Lcom/narvii/model/PollAttach;

    .line 1365
    :cond_2
    invoke-static {v3, v0}, Lcom/narvii/model/Scene;->getScene(Ljava/lang/String;Ljava/util/List;)Lcom/narvii/model/Scene;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 1367
    iget-object v3, v1, Lcom/narvii/model/Scene;->pollAttach:Lcom/narvii/model/PollAttach;

    if-eqz v3, :cond_3

    iget-boolean v3, v3, Lcom/narvii/model/PollAttach;->isModified:Z

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/narvii/model/PollAttach;->attachId:Ljava/lang/String;

    iget-object v1, v1, Lcom/narvii/model/Scene;->sceneId:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    const-string v1, "\n"

    .line 1368
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lcom/narvii/model/PollAttach;->title:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1373
    :cond_4
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 1374
    new-instance p2, Lcom/narvii/widget/ACMAlertDialog;

    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity$4;->this$0:Lcom/narvii/blog/post/StoryPostActivity;

    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0f012e

    .line 1375
    invoke-virtual {p2, v0}, Lcom/narvii/widget/ACMAlertDialog;->setTitle(I)V

    .line 1376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/narvii/blog/post/StoryPostActivity$4;->this$0:Lcom/narvii/blog/post/StoryPostActivity;

    const v3, 0x7f0f0775

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p2, p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;I)V

    const p1, 0x7f0f0193

    .line 1377
    invoke-virtual {p2, p1, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const p1, 0x7f0f119f

    .line 1378
    iget-object v0, p0, Lcom/narvii/blog/post/StoryPostActivity$4;->val$b:Lcom/narvii/blog/post/BlogPost;

    new-instance v1, Lcom/narvii/blog/post/-$$Lambda$StoryPostActivity$4$Ng7trLR1R5asK9RxdnCpr3s6Rsc;

    invoke-direct {v1, p0, v0}, Lcom/narvii/blog/post/-$$Lambda$StoryPostActivity$4$Ng7trLR1R5asK9RxdnCpr3s6Rsc;-><init>(Lcom/narvii/blog/post/StoryPostActivity$4;Lcom/narvii/blog/post/BlogPost;)V

    invoke-virtual {p2, p1, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 1379
    invoke-virtual {p2}, Lcom/narvii/app/NVDialog;->show()V

    return-void

    .line 1383
    :cond_5
    iget-object p1, p0, Lcom/narvii/blog/post/StoryPostActivity$4;->this$0:Lcom/narvii/blog/post/StoryPostActivity;

    iget-object p2, p0, Lcom/narvii/blog/post/StoryPostActivity$4;->val$b:Lcom/narvii/blog/post/BlogPost;

    invoke-static {p1, p2}, Lcom/narvii/blog/post/StoryPostActivity;->access$800(Lcom/narvii/blog/post/StoryPostActivity;Lcom/narvii/blog/post/BlogPost;)V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1351
    check-cast p2, Lcom/narvii/blog/post/StoryPostActivity$CheckUneditablePollResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/blog/post/StoryPostActivity$4;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/blog/post/StoryPostActivity$CheckUneditablePollResponse;)V

    return-void
.end method
