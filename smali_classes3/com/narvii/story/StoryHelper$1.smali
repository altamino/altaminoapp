.class Lcom/narvii/story/StoryHelper$1;
.super Ljava/lang/Object;
.source "StoryHelper.java"

# interfaces
.implements Lcom/narvii/story/dialog/StoryCreationDialog$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/story/StoryHelper;->showStoryPostPage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/story/StoryHelper;


# direct methods
.method constructor <init>(Lcom/narvii/story/StoryHelper;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/narvii/story/StoryHelper$1;->this$0:Lcom/narvii/story/StoryHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateNewClick(Landroid/view/View;)V
    .locals 3

    .line 187
    new-instance p1, Lcom/narvii/blog/post/BlogPost;

    invoke-direct {p1}, Lcom/narvii/blog/post/BlogPost;-><init>()V

    const/16 v0, 0x9

    .line 188
    iput v0, p1, Lcom/narvii/blog/post/BlogPost;->type:I

    .line 189
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/narvii/story/StoryHelper$1;->this$0:Lcom/narvii/story/StoryHelper;

    invoke-static {v1}, Lcom/narvii/story/StoryHelper;->access$000(Lcom/narvii/story/StoryHelper;)Lcom/narvii/app/NVContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/narvii/blog/post/StoryPostActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 190
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "post"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    iget-object p1, p0, Lcom/narvii/story/StoryHelper$1;->this$0:Lcom/narvii/story/StoryHelper;

    invoke-static {p1}, Lcom/narvii/story/StoryHelper;->access$000(Lcom/narvii/story/StoryHelper;)Lcom/narvii/app/NVContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onViewDraftClick(Landroid/view/View;)V
    .locals 2

    .line 196
    const-class p1, Lcom/narvii/post/draft/DraftListFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "draftType"

    const-string v1, "story"

    .line 197
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    iget-object v0, p0, Lcom/narvii/story/StoryHelper$1;->this$0:Lcom/narvii/story/StoryHelper;

    invoke-static {v0}, Lcom/narvii/story/StoryHelper;->access$000(Lcom/narvii/story/StoryHelper;)Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
