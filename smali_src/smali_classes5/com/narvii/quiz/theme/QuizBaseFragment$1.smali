.class Lcom/narvii/quiz/theme/QuizBaseFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/quiz/theme/QuizBaseFragment$1;->this$0:Lcom/narvii/quiz/theme/QuizBaseFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/quiz/theme/QuizBaseFragment$1;->this$0:Lcom/narvii/quiz/theme/QuizBaseFragment;

    .line 3
    .line 4
    const-string v0, "liveLayer"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    check-cast p1, Lcom/narvii/livelayer/LiveLayerService;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/quiz/theme/QuizBaseFragment$1;->this$0:Lcom/narvii/quiz/theme/QuizBaseFragment;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    iget-object v2, p0, Lcom/narvii/quiz/theme/QuizBaseFragment$1;->this$0:Lcom/narvii/quiz/theme/QuizBaseFragment;

    .line 20
    .line 21
    iget-object v2, v2, Lcom/narvii/quiz/theme/QuizBaseFragment;->quiz:Lcom/narvii/model/Blog;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/narvii/model/NVObject;->objectTypeName()Ljava/lang/String;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v2, "/"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    iget-object v2, p0, Lcom/narvii/quiz/theme/QuizBaseFragment$1;->this$0:Lcom/narvii/quiz/theme/QuizBaseFragment;

    .line 36
    .line 37
    iget-object v2, v2, Lcom/narvii/quiz/theme/QuizBaseFragment;->quiz:Lcom/narvii/model/Blog;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    .line 41
    move-result-object v2

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    iput-object v1, v0, Lcom/narvii/quiz/theme/QuizBaseFragment;->liveLayerTarget:Ljava/lang/String;

    .line 51
    .line 52
    iget-object v0, p0, Lcom/narvii/quiz/theme/QuizBaseFragment$1;->this$0:Lcom/narvii/quiz/theme/QuizBaseFragment;

    .line 53
    .line 54
    iget-object v0, v0, Lcom/narvii/quiz/theme/QuizBaseFragment;->actions:Ljava/util/List;

    .line 55
    .line 56
    sget-object v1, Lcom/narvii/livelayer/LiveLayerService;->ACTION_PLAYING:Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    iget-object v0, p0, Lcom/narvii/quiz/theme/QuizBaseFragment$1;->this$0:Lcom/narvii/quiz/theme/QuizBaseFragment;

    .line 62
    .line 63
    iget-object v1, v0, Lcom/narvii/quiz/theme/QuizBaseFragment;->params:Ljava/util/HashMap;

    .line 64
    .line 65
    iget-object v0, v0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quiz:Lcom/narvii/model/Blog;

    .line 66
    .line 67
    iget v0, v0, Lcom/narvii/model/Blog;->type:I

    .line 68
    .line 69
    .line 70
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    move-result-object v0

    .line 72
    .line 73
    const-string v2, "blogType"

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    iget-object v0, p0, Lcom/narvii/quiz/theme/QuizBaseFragment$1;->this$0:Lcom/narvii/quiz/theme/QuizBaseFragment;

    .line 79
    .line 80
    iget-object v0, v0, Lcom/narvii/quiz/theme/QuizBaseFragment;->quiz:Lcom/narvii/model/Blog;

    .line 81
    .line 82
    .line 83
    invoke-static {v0}, Lcom/narvii/util/LiveLayerUtils;->isStatusOk(Lcom/narvii/model/NVObject;)Z

    .line 84
    move-result v0

    .line 85
    .line 86
    if-eqz v0, :cond_0

    .line 87
    .line 88
    iget-object v0, p0, Lcom/narvii/quiz/theme/QuizBaseFragment$1;->this$0:Lcom/narvii/quiz/theme/QuizBaseFragment;

    .line 89
    .line 90
    iget-object v1, v0, Lcom/narvii/quiz/theme/QuizBaseFragment;->actions:Ljava/util/List;

    .line 91
    .line 92
    iget-object v2, v0, Lcom/narvii/quiz/theme/QuizBaseFragment;->liveLayerTarget:Ljava/lang/String;

    .line 93
    .line 94
    iget-object v0, v0, Lcom/narvii/quiz/theme/QuizBaseFragment;->params:Ljava/util/HashMap;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v1, v2, v0}, Lcom/narvii/livelayer/LiveLayerService;->reportInactive(Ljava/util/List;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 98
    .line 99
    :cond_0
    iget-object p1, p0, Lcom/narvii/quiz/theme/QuizBaseFragment$1;->this$0:Lcom/narvii/quiz/theme/QuizBaseFragment;

    .line 100
    .line 101
    iget-boolean v0, p1, Lcom/narvii/quiz/theme/QuizBaseFragment;->resultUploaded:Z

    .line 102
    .line 103
    if-eqz v0, :cond_1

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    .line 107
    goto :goto_0

    .line 108
    .line 109
    :cond_1
    sget-object v0, Lcom/narvii/util/http/ApiResponseListener;->IGNORE_RESPONSE_LISTENER:Lcom/narvii/util/http/ApiResponseListener;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v0}, Lcom/narvii/quiz/theme/QuizBaseFragment;->uploadQuizResult(Lcom/narvii/util/http/ApiResponseListener;)V

    .line 113
    .line 114
    iget-object p1, p0, Lcom/narvii/quiz/theme/QuizBaseFragment$1;->this$0:Lcom/narvii/quiz/theme/QuizBaseFragment;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    .line 118
    :goto_0
    return-void
.end method
