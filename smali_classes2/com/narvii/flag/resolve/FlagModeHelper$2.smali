.class final Lcom/narvii/flag/resolve/FlagModeHelper$2;
.super Ljava/lang/Object;
.source "FlagModeHelper.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/flag/resolve/FlagModeHelper;->launchQuizQuestion(Lcom/narvii/app/NVContext;Lcom/narvii/flag/model/Flag;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/model/api/ApiResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Lcom/narvii/app/NVContext;

.field final synthetic val$filter:Ljava/lang/String;

.field final synthetic val$flagSize:I

.field final synthetic val$item:Lcom/narvii/flag/model/Flag;

.field final synthetic val$list:Ljava/util/List;

.field final synthetic val$stopTime:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/flag/model/Flag;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/narvii/flag/resolve/FlagModeHelper$2;->val$item:Lcom/narvii/flag/model/Flag;

    iput-object p2, p0, Lcom/narvii/flag/resolve/FlagModeHelper$2;->val$list:Ljava/util/List;

    iput p3, p0, Lcom/narvii/flag/resolve/FlagModeHelper$2;->val$flagSize:I

    iput-object p4, p0, Lcom/narvii/flag/resolve/FlagModeHelper$2;->val$filter:Ljava/lang/String;

    iput-object p5, p0, Lcom/narvii/flag/resolve/FlagModeHelper$2;->val$stopTime:Ljava/lang/String;

    iput-object p6, p0, Lcom/narvii/flag/resolve/FlagModeHelper$2;->val$context:Lcom/narvii/app/NVContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 7

    .line 213
    check-cast p1, Lcom/narvii/model/api/BlogResponse;

    iget-object p1, p1, Lcom/narvii/model/api/BlogResponse;->blog:Lcom/narvii/model/Blog;

    if-nez p1, :cond_0

    return-void

    .line 215
    :cond_0
    const-class v0, Lcom/narvii/flag/resolve/QuizzesQuestionFlagModeFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    .line 216
    iget-object v0, p1, Lcom/narvii/model/Blog;->quizQuestionList:Ljava/util/List;

    .line 217
    iget-object v2, p0, Lcom/narvii/flag/resolve/FlagModeHelper$2;->val$item:Lcom/narvii/flag/model/Flag;

    iget-object v2, v2, Lcom/narvii/flag/model/Flag;->objectId:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/narvii/flag/resolve/FlagModeHelper;->access$000(Ljava/util/List;Ljava/lang/String;)Lcom/narvii/model/QuizQuestion;

    move-result-object v0

    .line 218
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "question"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x1

    const-string v2, "flagMode"

    .line 219
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 220
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "quiz"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    iget-object v2, p0, Lcom/narvii/flag/resolve/FlagModeHelper$2;->val$item:Lcom/narvii/flag/model/Flag;

    iget-object v3, p0, Lcom/narvii/flag/resolve/FlagModeHelper$2;->val$list:Ljava/util/List;

    iget v4, p0, Lcom/narvii/flag/resolve/FlagModeHelper$2;->val$flagSize:I

    iget-object v5, p0, Lcom/narvii/flag/resolve/FlagModeHelper$2;->val$filter:Ljava/lang/String;

    iget-object v6, p0, Lcom/narvii/flag/resolve/FlagModeHelper$2;->val$stopTime:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lcom/narvii/flag/resolve/FlagModeHelper;->access$100(Landroid/content/Intent;Lcom/narvii/flag/model/Flag;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/narvii/flag/resolve/FlagModeHelper$2;->val$context:Lcom/narvii/app/NVContext;

    invoke-interface {v0, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    .line 224
    iget-object p1, p0, Lcom/narvii/flag/resolve/FlagModeHelper$2;->val$context:Lcom/narvii/app/NVContext;

    instance-of p1, p1, Lcom/narvii/app/NVFragment;

    if-eqz p1, :cond_1

    .line 225
    iget-object p1, p0, Lcom/narvii/flag/resolve/FlagModeHelper$2;->val$context:Lcom/narvii/app/NVContext;

    check-cast p1, Lcom/narvii/app/NVFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f01003c

    const v1, 0x7f010041

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 210
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/flag/resolve/FlagModeHelper$2;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
