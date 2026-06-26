.class Lcom/narvii/quiz/theme/QuizBaseFragment$1;
.super Ljava/lang/Object;
.source "QuizBaseFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/quiz/theme/QuizBaseFragment;->onBackPressed(Lcom/narvii/app/NVActivity;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/quiz/theme/QuizBaseFragment;


# direct methods
.method constructor <init>(Lcom/narvii/quiz/theme/QuizBaseFragment;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/narvii/quiz/theme/QuizBaseFragment$1;->this$0:Lcom/narvii/quiz/theme/QuizBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 140
    iget-object p1, p0, Lcom/narvii/quiz/theme/QuizBaseFragment$1;->this$0:Lcom/narvii/quiz/theme/QuizBaseFragment;

    const-string v0, "liveLayer"

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/livelayer/LiveLayerService;

    .line 141
    iget-object v0, p0, Lcom/narvii/quiz/theme/QuizBaseFragment$1;->this$0:Lcom/narvii/quiz/theme/QuizBaseFragment;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/narvii/quiz/theme/QuizBaseFragment$1;->this$0:Lcom/narvii/quiz/theme/QuizBaseFragment;

    iget-object v2, v2, Lcom/narvii/quiz/theme/QuizBaseFragment;->quiz:Lcom/narvii/model/Blog;

    invoke-virtual {v2}, Lcom/narvii/model/NVObject;->objectTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/quiz/theme/QuizBaseFragment$1;->this$0:Lcom/narvii/quiz/theme/QuizBaseFragment;

    iget-object v2, v2, Lcom/narvii/quiz/theme/QuizBaseFragment;->quiz:Lcom/narvii/model/Blog;

    invoke-virtual {v2}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/quiz/theme/QuizBaseFragment;->liveLayerTarget:Ljava/lang/String;

    .line 142
    iget-object v0, p0, Lcom/narvii/quiz/theme/QuizBaseFragment$1;->this$0:Lcom/narvii/quiz/theme/QuizBaseFragment;

    iget-object v0, v0, Lcom/narvii/quiz/theme/QuizBaseFragment;->actions:Ljava/util/List;

    sget-object v1, Lcom/narvii/livelayer/LiveLayerService;->ACTION_PLAYING:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object v0, p0, Lcom/narvii/quiz/theme/QuizBaseFragment$1;->this$0:Lcom/narvii/quiz/theme/QuizBaseFragment;

    iget-object v1, v0, Lcom/narvii/quiz/theme/QuizBaseFragment;->params:Ljava/util/HashMap;

    iget-object v0, v0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quiz:Lcom/narvii/model/Blog;

    iget v0, v0, Lcom/narvii/model/Blog;->type:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "blogType"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v0, p0, Lcom/narvii/quiz/theme/QuizBaseFragment$1;->this$0:Lcom/narvii/quiz/theme/QuizBaseFragment;

    iget-object v0, v0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quiz:Lcom/narvii/model/Blog;

    invoke-static {v0}, Lcom/narvii/util/LiveLayerUtils;->isStatusOk(Lcom/narvii/model/NVObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/narvii/quiz/theme/QuizBaseFragment$1;->this$0:Lcom/narvii/quiz/theme/QuizBaseFragment;

    iget-object v1, v0, Lcom/narvii/quiz/theme/QuizBaseFragment;->actions:Ljava/util/List;

    iget-object v2, v0, Lcom/narvii/quiz/theme/QuizBaseFragment;->liveLayerTarget:Ljava/lang/String;

    iget-object v0, v0, Lcom/narvii/quiz/theme/QuizBaseFragment;->params:Ljava/util/HashMap;

    invoke-virtual {p1, v1, v2, v0}, Lcom/narvii/livelayer/LiveLayerService;->reportInactive(Ljava/util/List;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 149
    :cond_0
    iget-object p1, p0, Lcom/narvii/quiz/theme/QuizBaseFragment$1;->this$0:Lcom/narvii/quiz/theme/QuizBaseFragment;

    iget-boolean v0, p1, Lcom/narvii/quiz/theme/QuizBaseFragment;->resultUploaded:Z

    if-eqz v0, :cond_1

    .line 150
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    goto :goto_0

    .line 152
    :cond_1
    sget-object v0, Lcom/narvii/util/http/ApiResponseListener;->IGNORE_RESPONSE_LISTENER:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {p1, v0}, Lcom/narvii/quiz/theme/QuizBaseFragment;->uploadQuizResult(Lcom/narvii/util/http/ApiResponseListener;)V

    .line 153
    iget-object p1, p0, Lcom/narvii/quiz/theme/QuizBaseFragment$1;->this$0:Lcom/narvii/quiz/theme/QuizBaseFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    :goto_0
    return-void
.end method
