.class public final synthetic Lcom/narvii/quiz/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/widget/CheckWindowChangeView$OnWindowFocusChangedListener;


# instance fields
.field public final synthetic a:Lcom/narvii/quiz/QuizQuestionFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/quiz/QuizQuestionFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/quiz/a;->a:Lcom/narvii/quiz/QuizQuestionFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/quiz/a;->a:Lcom/narvii/quiz/QuizQuestionFragment;

    invoke-static {v0, p1}, Lcom/narvii/quiz/QuizQuestionFragment;->o(Lcom/narvii/quiz/QuizQuestionFragment;Z)V

    return-void
.end method
