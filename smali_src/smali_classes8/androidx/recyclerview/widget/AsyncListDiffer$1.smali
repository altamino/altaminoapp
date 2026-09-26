.class Landroidx/recyclerview/widget/AsyncListDiffer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Landroidx/recyclerview/widget/AsyncListDiffer;

.field final synthetic val$commitCallback:Ljava/lang/Runnable;

.field final synthetic val$newList:Ljava/util/List;

.field final synthetic val$oldList:Ljava/util/List;

.field final synthetic val$runGeneration:I


# virtual methods
.method public run()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Landroidx/recyclerview/widget/AsyncListDiffer$1$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/AsyncListDiffer$1$1;-><init>(Landroidx/recyclerview/widget/AsyncListDiffer$1;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Landroidx/recyclerview/widget/DiffUtil;->b(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/recyclerview/widget/AsyncListDiffer$1;->this$0:Landroidx/recyclerview/widget/AsyncListDiffer;

    .line 12
    .line 13
    iget-object v1, v1, Landroidx/recyclerview/widget/AsyncListDiffer;->mMainThreadExecutor:Ljava/util/concurrent/Executor;

    .line 14
    .line 15
    new-instance v2, Landroidx/recyclerview/widget/AsyncListDiffer$1$2;

    .line 16
    .line 17
    .line 18
    invoke-direct {v2, p0, v0}, Landroidx/recyclerview/widget/AsyncListDiffer$1$2;-><init>(Landroidx/recyclerview/widget/AsyncListDiffer$1;Landroidx/recyclerview/widget/DiffUtil$DiffResult;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 22
    return-void
.end method
