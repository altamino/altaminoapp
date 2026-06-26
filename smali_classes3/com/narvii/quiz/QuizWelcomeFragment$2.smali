.class Lcom/narvii/quiz/QuizWelcomeFragment$2;
.super Ljava/lang/Object;
.source "QuizWelcomeFragment.java"

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

    .line 168
    iput-object p1, p0, Lcom/narvii/quiz/QuizWelcomeFragment$2;->this$0:Lcom/narvii/quiz/QuizWelcomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/narvii/quiz/QuizWelcomeFragment$2;->this$0:Lcom/narvii/quiz/QuizWelcomeFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/narvii/quiz/QuizWelcomeFragment$2;->this$0:Lcom/narvii/quiz/QuizWelcomeFragment;

    iget-object v0, v0, Lcom/narvii/quiz/QuizWelcomeFragment;->countDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :cond_0
    return-void
.end method
