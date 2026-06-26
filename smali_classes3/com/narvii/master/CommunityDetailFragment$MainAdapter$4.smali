.class Lcom/narvii/master/CommunityDetailFragment$MainAdapter$4;
.super Ljava/lang/Object;
.source "CommunityDetailFragment.java"

# interfaces
.implements Lcom/narvii/story/widgets/StoryTopicView$OnPreClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/CommunityDetailFragment$MainAdapter;->createTopicView(Lcom/narvii/model/story/StoryTopic;Lcom/narvii/util/layouts/NVFlowLayout;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/master/CommunityDetailFragment$MainAdapter;

.field final synthetic val$topic:Lcom/narvii/model/story/StoryTopic;


# direct methods
.method constructor <init>(Lcom/narvii/master/CommunityDetailFragment$MainAdapter;Lcom/narvii/model/story/StoryTopic;)V
    .locals 0

    .line 1363
    iput-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter$4;->this$1:Lcom/narvii/master/CommunityDetailFragment$MainAdapter;

    iput-object p2, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter$4;->val$topic:Lcom/narvii/model/story/StoryTopic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreClick(Lcom/narvii/story/widgets/StoryTopicView;Lcom/narvii/model/story/StoryTopic;)V
    .locals 0

    .line 1366
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter$4;->this$1:Lcom/narvii/master/CommunityDetailFragment$MainAdapter;

    const-string p2, "TopicList"

    invoke-static {p1, p2}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter$4;->val$topic:Lcom/narvii/model/story/StoryTopic;

    .line 1367
    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    sget-object p2, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    .line 1368
    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    .line 1369
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    return-void
.end method
