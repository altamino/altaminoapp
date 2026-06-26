.class public final Lcom/narvii/master/home/story/PublishedStoryListFragment$onHeaderViewClicked$2;
.super Ljava/lang/Object;
.source "PublishedStoryListFragment.kt"

# interfaces
.implements Lcom/narvii/story/dialog/StoryCreationDialog$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/home/story/PublishedStoryListFragment;->onHeaderViewClicked(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/home/story/PublishedStoryListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/home/story/PublishedStoryListFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 228
    iput-object p1, p0, Lcom/narvii/master/home/story/PublishedStoryListFragment$onHeaderViewClicked$2;->this$0:Lcom/narvii/master/home/story/PublishedStoryListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateNewClick(Landroid/view/View;)V
    .locals 3

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    new-instance p1, Lcom/narvii/blog/post/BlogPost;

    invoke-direct {p1}, Lcom/narvii/blog/post/BlogPost;-><init>()V

    const/16 v0, 0x9

    .line 231
    iput v0, p1, Lcom/narvii/blog/post/BlogPost;->type:I

    .line 232
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/narvii/master/home/story/PublishedStoryListFragment$onHeaderViewClicked$2;->this$0:Lcom/narvii/master/home/story/PublishedStoryListFragment;

    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/narvii/blog/post/StoryPostActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 233
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "post"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    iget-object p1, p0, Lcom/narvii/master/home/story/PublishedStoryListFragment$onHeaderViewClicked$2;->this$0:Lcom/narvii/master/home/story/PublishedStoryListFragment;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onViewDraftClick(Landroid/view/View;)V
    .locals 2

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    const-class p1, Lcom/narvii/post/draft/DraftListFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "draftType"

    const-string v1, "story"

    .line 239
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    iget-object v0, p0, Lcom/narvii/master/home/story/PublishedStoryListFragment$onHeaderViewClicked$2;->this$0:Lcom/narvii/master/home/story/PublishedStoryListFragment;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
