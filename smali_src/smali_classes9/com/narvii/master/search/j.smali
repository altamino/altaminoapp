.class public final synthetic Lcom/narvii/master/search/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/story/widgets/StoryTopicView$OnPreClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$BaseSearchTopicAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/master/search/GlobalSearchOthersResultFragment$BaseSearchTopicAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/master/search/j;->a:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$BaseSearchTopicAdapter;

    return-void
.end method


# virtual methods
.method public final onPreClick(Lcom/narvii/story/widgets/StoryTopicView;Lcom/narvii/model/story/StoryTopic;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/master/search/j;->a:Lcom/narvii/master/search/GlobalSearchOthersResultFragment$BaseSearchTopicAdapter;

    invoke-static {v0, p1, p2}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$BaseSearchTopicAdapter;->f(Lcom/narvii/master/search/GlobalSearchOthersResultFragment$BaseSearchTopicAdapter;Lcom/narvii/story/widgets/StoryTopicView;Lcom/narvii/model/story/StoryTopic;)V

    return-void
.end method
