.class Lcom/narvii/feed/quizzes/share/QuizShareFragment$1;
.super Ljava/lang/Object;
.source "QuizShareFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/feed/quizzes/share/QuizShareFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/model/Blog;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/feed/quizzes/share/QuizShareFragment;


# direct methods
.method constructor <init>(Lcom/narvii/feed/quizzes/share/QuizShareFragment;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment$1;->this$0:Lcom/narvii/feed/quizzes/share/QuizShareFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/Blog;)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/narvii/feed/quizzes/share/QuizShareFragment$1;->this$0:Lcom/narvii/feed/quizzes/share/QuizShareFragment;

    invoke-static {v0, p1}, Lcom/narvii/feed/quizzes/share/QuizShareFragment;->access$002(Lcom/narvii/feed/quizzes/share/QuizShareFragment;Lcom/narvii/model/Blog;)Lcom/narvii/model/Blog;

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 90
    check-cast p1, Lcom/narvii/model/Blog;

    invoke-virtual {p0, p1}, Lcom/narvii/feed/quizzes/share/QuizShareFragment$1;->call(Lcom/narvii/model/Blog;)V

    return-void
.end method
