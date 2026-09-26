.class Lcom/narvii/quiz/QuizWelcomeFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/quiz/QuizWelcomeFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/quiz/QuizWelcomeFragment;


# direct methods
.method constructor <init>(Lcom/narvii/quiz/QuizWelcomeFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/quiz/QuizWelcomeFragment$2;->this$0:Lcom/narvii/quiz/QuizWelcomeFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/quiz/QuizWelcomeFragment$2;->this$0:Lcom/narvii/quiz/QuizWelcomeFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/quiz/QuizWelcomeFragment$2;->this$0:Lcom/narvii/quiz/QuizWelcomeFragment;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/narvii/quiz/QuizWelcomeFragment;->countDownTimer:Landroid/os/CountDownTimer;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 16
    :cond_0
    return-void
.end method
