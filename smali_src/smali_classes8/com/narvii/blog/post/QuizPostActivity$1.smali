.class Lcom/narvii/blog/post/QuizPostActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/widget/NVScrollView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/blog/post/QuizPostActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/blog/post/QuizPostActivity;


# direct methods
.method constructor <init>(Lcom/narvii/blog/post/QuizPostActivity;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/blog/post/QuizPostActivity$1;->this$0:Lcom/narvii/blog/post/QuizPostActivity;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onScroll(IIII)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/blog/post/QuizPostActivity$1;->this$0:Lcom/narvii/blog/post/QuizPostActivity;

    .line 3
    const/4 p2, 0x1

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p2}, Lcom/narvii/blog/post/QuizPostActivity;->closeAllSwipeToDelete(Z)V

    .line 7
    return-void
.end method
