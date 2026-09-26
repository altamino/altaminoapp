.class Lcom/narvii/flag/resolve/QuizzesQuestionFlagModeFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/flag/resolve/QuizzesQuestionFlagModeFragment$1;->this$0:Lcom/narvii/flag/resolve/QuizzesQuestionFlagModeFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method

.method public static safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    const-class p1, Lcom/narvii/blog/detail/BlogDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/flag/resolve/QuizzesQuestionFlagModeFragment$1;->this$0:Lcom/narvii/flag/resolve/QuizzesQuestionFlagModeFragment;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/narvii/flag/resolve/QuizzesQuestionFlagModeFragment;->quiz:Lcom/narvii/model/Blog;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    const-string v1, "id"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/flag/resolve/QuizzesQuestionFlagModeFragment$1;->this$0:Lcom/narvii/flag/resolve/QuizzesQuestionFlagModeFragment;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/narvii/flag/resolve/QuizzesQuestionFlagModeFragment;->quiz:Lcom/narvii/model/Blog;

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    const-string v1, "prefetch"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    .line 34
    iget-object v0, p0, Lcom/narvii/flag/resolve/QuizzesQuestionFlagModeFragment$1;->this$0:Lcom/narvii/flag/resolve/QuizzesQuestionFlagModeFragment;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/narvii/flag/resolve/QuizzesQuestionFlagModeFragment;->quiz:Lcom/narvii/model/Blog;

    .line 37
    .line 38
    iget-boolean v0, v0, Lcom/narvii/model/Blog;->isGlobalAnnouncement:Z

    .line 39
    .line 40
    const-string v1, "isAnnouncement"

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 44
    .line 45
    iget-object v0, p0, Lcom/narvii/flag/resolve/QuizzesQuestionFlagModeFragment$1;->this$0:Lcom/narvii/flag/resolve/QuizzesQuestionFlagModeFragment;

    .line 46
    .line 47
    .line 48
    invoke-static {v0, p1}, Lcom/narvii/flag/resolve/QuizzesQuestionFlagModeFragment$1;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 49
    return-void
.end method
