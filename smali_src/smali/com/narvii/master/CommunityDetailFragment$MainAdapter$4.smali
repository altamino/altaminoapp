.class Lcom/narvii/master/CommunityDetailFragment$MainAdapter$4;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter$4;->this$1:Lcom/narvii/master/CommunityDetailFragment$MainAdapter;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter$4;->val$topic:Lcom/narvii/model/story/StoryTopic;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onPreClick(Lcom/narvii/story/widgets/StoryTopicView;Lcom/narvii/model/story/StoryTopic;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter$4;->this$1:Lcom/narvii/master/CommunityDetailFragment$MainAdapter;

    .line 3
    .line 4
    const-string p2, "TopicList"

    .line 5
    .line 6
    .line 7
    invoke-static {p1, p2}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    iget-object p2, p0, Lcom/narvii/master/CommunityDetailFragment$MainAdapter$4;->val$topic:Lcom/narvii/model/story/StoryTopic;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    sget-object p2, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 24
    return-void
.end method
