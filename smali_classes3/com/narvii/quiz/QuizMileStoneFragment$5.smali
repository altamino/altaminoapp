.class Lcom/narvii/quiz/QuizMileStoneFragment$5;
.super Ljava/lang/Object;
.source "QuizMileStoneFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/quiz/QuizMileStoneFragment;->showJoinCommunityDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

.field final synthetic val$c:Lcom/narvii/model/Community;


# direct methods
.method constructor <init>(Lcom/narvii/quiz/QuizMileStoneFragment;Lcom/narvii/model/Community;)V
    .locals 0

    .line 362
    iput-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$5;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    iput-object p2, p0, Lcom/narvii/quiz/QuizMileStoneFragment$5;->val$c:Lcom/narvii/model/Community;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 2

    .line 365
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 366
    const-class p1, Lcom/narvii/master/CommunityDetailFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 367
    iget-object v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment$5;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    const-string v1, "__communityId"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v0

    const-string v1, "id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 368
    iget-object v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment$5;->val$c:Lcom/narvii/model/Community;

    iget-object v0, v0, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    const-string v1, "icon"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    iget-object v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment$5;->val$c:Lcom/narvii/model/Community;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "prefetch"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 370
    iget-object v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment$5;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 362
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/quiz/QuizMileStoneFragment$5;->call(Ljava/lang/Boolean;)V

    return-void
.end method
