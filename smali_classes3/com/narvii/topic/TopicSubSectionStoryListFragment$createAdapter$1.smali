.class public final Lcom/narvii/topic/TopicSubSectionStoryListFragment$createAdapter$1;
.super Lcom/narvii/story/SubTypeStoryBaseListFragment$MyAdapter;
.source "TopicSubCategoryStoryListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/topic/TopicSubSectionStoryListFragment;->createAdapter()Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/topic/TopicSubSectionStoryListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/topic/TopicSubSectionStoryListFragment;Lcom/narvii/app/NVContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lcom/narvii/topic/TopicSubSectionStoryListFragment$createAdapter$1;->this$0:Lcom/narvii/topic/TopicSubSectionStoryListFragment;

    invoke-direct {p0, p1, p2}, Lcom/narvii/story/SubTypeStoryBaseListFragment$MyAdapter;-><init>(Lcom/narvii/story/SubTypeStoryBaseListFragment;Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public onAttach()V
    .locals 2

    .line 75
    invoke-super {p0}, Lcom/narvii/story/SubTypeStoryBaseListFragment$MyAdapter;->onAttach()V

    .line 76
    new-instance v0, Lcom/narvii/logging/Impression/DivideColumnImpressionCollector;

    const-class v1, Lcom/narvii/model/Blog;

    invoke-direct {v0, v1}, Lcom/narvii/logging/Impression/DivideColumnImpressionCollector;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    return-void
.end method
