.class Lcom/narvii/story/StoryListFragment$SingleStoryAdapter$1;
.super Lcom/narvii/paging/source/SinglePageDataSource;
.source "StoryListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/story/StoryListFragment$SingleStoryAdapter;->createDataSource(Lcom/narvii/app/NVContext;)Lcom/narvii/paging/source/DataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/paging/source/SinglePageDataSource<",
        "Lcom/narvii/model/Blog;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/story/StoryListFragment$SingleStoryAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/story/StoryListFragment$SingleStoryAdapter;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1753
    iput-object p1, p0, Lcom/narvii/story/StoryListFragment$SingleStoryAdapter$1;->this$1:Lcom/narvii/story/StoryListFragment$SingleStoryAdapter;

    invoke-direct {p0, p2}, Lcom/narvii/paging/source/SinglePageDataSource;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public pageData()Ljava/util/List;
    .locals 2

    .line 1757
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1758
    iget-object v1, p0, Lcom/narvii/story/StoryListFragment$SingleStoryAdapter$1;->this$1:Lcom/narvii/story/StoryListFragment$SingleStoryAdapter;

    invoke-static {v1}, Lcom/narvii/story/StoryListFragment$SingleStoryAdapter;->access$1300(Lcom/narvii/story/StoryListFragment$SingleStoryAdapter;)Lcom/narvii/model/Blog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1759
    iget-object v1, p0, Lcom/narvii/story/StoryListFragment$SingleStoryAdapter$1;->this$1:Lcom/narvii/story/StoryListFragment$SingleStoryAdapter;

    invoke-static {v1}, Lcom/narvii/story/StoryListFragment$SingleStoryAdapter;->access$1300(Lcom/narvii/story/StoryListFragment$SingleStoryAdapter;)Lcom/narvii/model/Blog;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method
