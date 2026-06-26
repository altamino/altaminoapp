.class final Lcom/narvii/story/StoryPostServiceProvider$Service$launchStoryPost$1;
.super Lkotlin/jvm/internal/Lambda;
.source "StoryPostServiceProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/story/StoryPostServiceProvider$Service;->launchStoryPost(Lcom/narvii/scene/model/SceneInfo;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/narvii/scene/model/SceneDraft;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $draftId:Ljava/lang/String;

.field final synthetic $linkedBlog:Lcom/narvii/model/Blog;

.field final synthetic $post:Lcom/narvii/blog/post/BlogPost;

.field final synthetic this$0:Lcom/narvii/story/StoryPostServiceProvider$Service;


# direct methods
.method constructor <init>(Lcom/narvii/story/StoryPostServiceProvider$Service;Ljava/lang/String;Lcom/narvii/blog/post/BlogPost;Lcom/narvii/model/Blog;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/story/StoryPostServiceProvider$Service$launchStoryPost$1;->this$0:Lcom/narvii/story/StoryPostServiceProvider$Service;

    iput-object p2, p0, Lcom/narvii/story/StoryPostServiceProvider$Service$launchStoryPost$1;->$draftId:Ljava/lang/String;

    iput-object p3, p0, Lcom/narvii/story/StoryPostServiceProvider$Service$launchStoryPost$1;->$post:Lcom/narvii/blog/post/BlogPost;

    iput-object p4, p0, Lcom/narvii/story/StoryPostServiceProvider$Service$launchStoryPost$1;->$linkedBlog:Lcom/narvii/model/Blog;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 47
    check-cast p1, Lcom/narvii/scene/model/SceneDraft;

    invoke-virtual {p0, p1}, Lcom/narvii/story/StoryPostServiceProvider$Service$launchStoryPost$1;->invoke(Lcom/narvii/scene/model/SceneDraft;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/narvii/scene/model/SceneDraft;)V
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object p1, p0, Lcom/narvii/story/StoryPostServiceProvider$Service$launchStoryPost$1;->this$0:Lcom/narvii/story/StoryPostServiceProvider$Service;

    invoke-virtual {p1}, Lcom/narvii/story/StoryPostServiceProvider$Service;->getDraftManager()Lcom/narvii/post/DraftManager;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/story/StoryPostServiceProvider$Service$launchStoryPost$1;->$draftId:Ljava/lang/String;

    iget-object v1, p0, Lcom/narvii/story/StoryPostServiceProvider$Service$launchStoryPost$1;->$post:Lcom/narvii/blog/post/BlogPost;

    invoke-virtual {p1, v0, v1}, Lcom/narvii/post/DraftManager;->savePost(Ljava/lang/String;Lcom/narvii/post/PostObject;)Z

    .line 68
    iget-object p1, p0, Lcom/narvii/story/StoryPostServiceProvider$Service$launchStoryPost$1;->this$0:Lcom/narvii/story/StoryPostServiceProvider$Service;

    iget-object v0, p0, Lcom/narvii/story/StoryPostServiceProvider$Service$launchStoryPost$1;->$linkedBlog:Lcom/narvii/model/Blog;

    invoke-static {p1, v0}, Lcom/narvii/story/StoryPostServiceProvider$Service;->access$sendNotification(Lcom/narvii/story/StoryPostServiceProvider$Service;Lcom/narvii/model/Blog;)V

    .line 69
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/narvii/story/StoryPostServiceProvider$Service$launchStoryPost$1;->this$0:Lcom/narvii/story/StoryPostServiceProvider$Service;

    invoke-static {v0}, Lcom/narvii/story/StoryPostServiceProvider$Service;->access$getNvContext$p(Lcom/narvii/story/StoryPostServiceProvider$Service;)Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/narvii/blog/post/StoryPostActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    iget-object v0, p0, Lcom/narvii/story/StoryPostServiceProvider$Service$launchStoryPost$1;->$post:Lcom/narvii/blog/post/BlogPost;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "post"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    iget-object v0, p0, Lcom/narvii/story/StoryPostServiceProvider$Service$launchStoryPost$1;->$draftId:Ljava/lang/String;

    const-string v1, "draftId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    iget-object v0, p0, Lcom/narvii/story/StoryPostServiceProvider$Service$launchStoryPost$1;->this$0:Lcom/narvii/story/StoryPostServiceProvider$Service;

    invoke-static {v0}, Lcom/narvii/story/StoryPostServiceProvider$Service;->access$getNvContext$p(Lcom/narvii/story/StoryPostServiceProvider$Service;)Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
