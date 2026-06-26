.class Lcom/narvii/flag/resolve/QuizzesQuestionFlagModeFragment$1;
.super Ljava/lang/Object;
.source "QuizzesQuestionFlagModeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/flag/resolve/QuizzesQuestionFlagModeFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/flag/resolve/QuizzesQuestionFlagModeFragment;


# direct methods
.method constructor <init>(Lcom/narvii/flag/resolve/QuizzesQuestionFlagModeFragment;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/narvii/flag/resolve/QuizzesQuestionFlagModeFragment$1;->this$0:Lcom/narvii/flag/resolve/QuizzesQuestionFlagModeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 64
    const-class p1, Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 65
    iget-object v0, p0, Lcom/narvii/flag/resolve/QuizzesQuestionFlagModeFragment$1;->this$0:Lcom/narvii/flag/resolve/QuizzesQuestionFlagModeFragment;

    iget-object v0, v0, Lcom/narvii/flag/resolve/QuizzesQuestionFlagModeFragment;->quiz:Lcom/narvii/model/Blog;

    invoke-virtual {v0}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    iget-object v0, p0, Lcom/narvii/flag/resolve/QuizzesQuestionFlagModeFragment$1;->this$0:Lcom/narvii/flag/resolve/QuizzesQuestionFlagModeFragment;

    iget-object v0, v0, Lcom/narvii/flag/resolve/QuizzesQuestionFlagModeFragment;->quiz:Lcom/narvii/model/Blog;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "prefetch"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    iget-object v0, p0, Lcom/narvii/flag/resolve/QuizzesQuestionFlagModeFragment$1;->this$0:Lcom/narvii/flag/resolve/QuizzesQuestionFlagModeFragment;

    iget-object v0, v0, Lcom/narvii/flag/resolve/QuizzesQuestionFlagModeFragment;->quiz:Lcom/narvii/model/Blog;

    iget-boolean v0, v0, Lcom/narvii/model/Blog;->isGlobalAnnouncement:Z

    const-string v1, "isAnnouncement"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 68
    iget-object v0, p0, Lcom/narvii/flag/resolve/QuizzesQuestionFlagModeFragment$1;->this$0:Lcom/narvii/flag/resolve/QuizzesQuestionFlagModeFragment;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
