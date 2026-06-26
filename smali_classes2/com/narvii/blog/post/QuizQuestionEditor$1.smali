.class Lcom/narvii/blog/post/QuizQuestionEditor$1;
.super Ljava/lang/Object;
.source "QuizQuestionEditor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/blog/post/QuizQuestionEditor;->onBackPressed(Lcom/narvii/app/NVActivity;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/blog/post/QuizQuestionEditor;


# direct methods
.method constructor <init>(Lcom/narvii/blog/post/QuizQuestionEditor;)V
    .locals 0

    .line 404
    iput-object p1, p0, Lcom/narvii/blog/post/QuizQuestionEditor$1;->this$0:Lcom/narvii/blog/post/QuizQuestionEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 407
    iget-object p1, p0, Lcom/narvii/blog/post/QuizQuestionEditor$1;->this$0:Lcom/narvii/blog/post/QuizQuestionEditor;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method
