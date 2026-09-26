.class Lcom/narvii/flag/resolve/FlagModeHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/flag/resolve/FlagModeHelper;->launchQuizQuestion(Lcom/narvii/app/NVContext;Lcom/narvii/flag/model/Flag;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/flag/resolve/FlagModeHelper$2;->val$item:Lcom/narvii/flag/model/Flag;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/flag/resolve/FlagModeHelper$2;->val$list:Ljava/util/List;

    .line 5
    .line 6
    iput p3, p0, Lcom/narvii/flag/resolve/FlagModeHelper$2;->val$flagSize:I

    .line 7
    .line 8
    iput-object p4, p0, Lcom/narvii/flag/resolve/FlagModeHelper$2;->val$filter:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/narvii/flag/resolve/FlagModeHelper$2;->val$stopTime:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p6, p0, Lcom/narvii/flag/resolve/FlagModeHelper$2;->val$context:Lcom/narvii/app/NVContext;

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/app/NVContext;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 7

    .line 2
    check-cast p1, Lcom/narvii/model/api/BlogResponse;

    iget-object p1, p1, Lcom/narvii/model/api/BlogResponse;->blog:Lcom/narvii/model/Blog;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-class v0, Lcom/narvii/flag/resolve/QuizzesQuestionFlagModeFragment;

    .line 3
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    .line 4
    iget-object v0, p1, Lcom/narvii/model/Blog;->quizQuestionList:Ljava/util/List;

    iget-object v2, p0, Lcom/narvii/flag/resolve/FlagModeHelper$2;->val$item:Lcom/narvii/flag/model/Flag;

    .line 5
    iget-object v2, v2, Lcom/narvii/flag/model/Flag;->objectId:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/narvii/flag/resolve/FlagModeHelper;->a(Ljava/util/List;Ljava/lang/String;)Lcom/narvii/model/QuizQuestion;

    move-result-object v0

    const-string v2, "question"

    .line 6
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "flagMode"

    const/4 v2, 0x1

    .line 7
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "quiz"

    .line 8
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/narvii/flag/resolve/FlagModeHelper$2;->val$item:Lcom/narvii/flag/model/Flag;

    iget-object v3, p0, Lcom/narvii/flag/resolve/FlagModeHelper$2;->val$list:Ljava/util/List;

    iget v4, p0, Lcom/narvii/flag/resolve/FlagModeHelper$2;->val$flagSize:I

    iget-object v5, p0, Lcom/narvii/flag/resolve/FlagModeHelper$2;->val$filter:Ljava/lang/String;

    iget-object v6, p0, Lcom/narvii/flag/resolve/FlagModeHelper$2;->val$stopTime:Ljava/lang/String;

    .line 9
    invoke-static/range {v1 .. v6}, Lcom/narvii/flag/resolve/FlagModeHelper;->b(Landroid/content/Intent;Lcom/narvii/flag/model/Flag;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    :try_start_0
    iget-object v0, p0, Lcom/narvii/flag/resolve/FlagModeHelper$2;->val$context:Lcom/narvii/app/NVContext;

    .line 10
    invoke-static {v0, p1}, Lcom/narvii/flag/resolve/FlagModeHelper$2;->safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/narvii/flag/resolve/FlagModeHelper$2;->val$context:Lcom/narvii/app/NVContext;

    .line 11
    instance-of v0, p1, Lcom/narvii/app/NVFragment;

    if-eqz v0, :cond_1

    .line 12
    check-cast p1, Lcom/narvii/app/NVFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f01005a

    const v1, 0x7f01005f

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/flag/resolve/FlagModeHelper$2;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
