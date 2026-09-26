.class Lcom/narvii/quiz/QuizMileStoneFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/quiz/QuizMileStoneFragment;->onClick(Landroid/view/View;)V
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$4;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/quiz/QuizMileStoneFragment$4;->val$c:Lcom/narvii/model/Community;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$4;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    iget-object v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment$4;->val$c:Lcom/narvii/model/Community;

    .line 3
    invoke-static {p1, v0}, Lcom/narvii/quiz/QuizMileStoneFragment;->F(Lcom/narvii/quiz/QuizMileStoneFragment;Lcom/narvii/model/Community;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/quiz/QuizMileStoneFragment$4;->call(Ljava/lang/Boolean;)V

    return-void
.end method
