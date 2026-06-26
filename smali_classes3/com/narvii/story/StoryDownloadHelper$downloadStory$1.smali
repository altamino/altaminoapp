.class final Lcom/narvii/story/StoryDownloadHelper$downloadStory$1;
.super Ljava/lang/Object;
.source "StoryDownloadHelper.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/story/StoryDownloadHelper;->downloadStory(Lcom/narvii/model/Blog;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $blog:Lcom/narvii/model/Blog;

.field final synthetic $curIndex:I

.field final synthetic $medias:Ljava/util/List;

.field final synthetic this$0:Lcom/narvii/story/StoryDownloadHelper;


# direct methods
.method constructor <init>(Lcom/narvii/story/StoryDownloadHelper;Lcom/narvii/model/Blog;Ljava/util/List;I)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/story/StoryDownloadHelper$downloadStory$1;->this$0:Lcom/narvii/story/StoryDownloadHelper;

    iput-object p2, p0, Lcom/narvii/story/StoryDownloadHelper$downloadStory$1;->$blog:Lcom/narvii/model/Blog;

    iput-object p3, p0, Lcom/narvii/story/StoryDownloadHelper$downloadStory$1;->$medias:Ljava/util/List;

    iput p4, p0, Lcom/narvii/story/StoryDownloadHelper$downloadStory$1;->$curIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const-string p1, "blog.author"

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    iget-object p2, p0, Lcom/narvii/story/StoryDownloadHelper$downloadStory$1;->this$0:Lcom/narvii/story/StoryDownloadHelper;

    invoke-virtual {p2}, Lcom/narvii/story/StoryDownloadHelper;->getDownloadClickListener()Lcom/narvii/story/StoryDownloadHelper$OnStoryDownloadClickListener;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/narvii/story/StoryDownloadHelper$OnStoryDownloadClickListener;->onDownloadStory()V

    .line 93
    :cond_1
    iget-object p2, p0, Lcom/narvii/story/StoryDownloadHelper$downloadStory$1;->this$0:Lcom/narvii/story/StoryDownloadHelper;

    iget-object v0, p0, Lcom/narvii/story/StoryDownloadHelper$downloadStory$1;->$blog:Lcom/narvii/model/Blog;

    iget-object v0, v0, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/narvii/story/StoryDownloadHelper$downloadStory$1;->$blog:Lcom/narvii/model/Blog;

    iget p1, p1, Lcom/narvii/model/Feed;->ndcId:I

    iget-object v1, p0, Lcom/narvii/story/StoryDownloadHelper$downloadStory$1;->$medias:Ljava/util/List;

    invoke-static {p2, v0, p1, v1}, Lcom/narvii/story/StoryDownloadHelper;->access$downloadStoryInternal(Lcom/narvii/story/StoryDownloadHelper;Lcom/narvii/model/User;ILjava/util/List;)V

    goto :goto_0

    .line 88
    :cond_2
    iget-object p2, p0, Lcom/narvii/story/StoryDownloadHelper$downloadStory$1;->this$0:Lcom/narvii/story/StoryDownloadHelper;

    invoke-virtual {p2}, Lcom/narvii/story/StoryDownloadHelper;->getDownloadClickListener()Lcom/narvii/story/StoryDownloadHelper$OnStoryDownloadClickListener;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-interface {p2}, Lcom/narvii/story/StoryDownloadHelper$OnStoryDownloadClickListener;->onDownloadScene()V

    .line 89
    :cond_3
    iget-object p2, p0, Lcom/narvii/story/StoryDownloadHelper$downloadStory$1;->this$0:Lcom/narvii/story/StoryDownloadHelper;

    iget-object v0, p0, Lcom/narvii/story/StoryDownloadHelper$downloadStory$1;->$blog:Lcom/narvii/model/Blog;

    iget-object v0, v0, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/narvii/story/StoryDownloadHelper$downloadStory$1;->$blog:Lcom/narvii/model/Blog;

    iget p1, p1, Lcom/narvii/model/Feed;->ndcId:I

    iget-object v1, p0, Lcom/narvii/story/StoryDownloadHelper$downloadStory$1;->$medias:Ljava/util/List;

    iget v2, p0, Lcom/narvii/story/StoryDownloadHelper$downloadStory$1;->$curIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {p2, v0, p1, v1}, Lcom/narvii/story/StoryDownloadHelper;->access$downloadStoryInternal(Lcom/narvii/story/StoryDownloadHelper;Lcom/narvii/model/User;ILjava/util/List;)V

    :goto_0
    return-void
.end method
