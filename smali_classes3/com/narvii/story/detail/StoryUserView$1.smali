.class Lcom/narvii/story/detail/StoryUserView$1;
.super Lcom/narvii/community/CommunityHelper;
.source "StoryUserView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/story/detail/StoryUserView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/story/detail/StoryUserView;


# direct methods
.method constructor <init>(Lcom/narvii/story/detail/StoryUserView;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/narvii/story/detail/StoryUserView$1;->this$0:Lcom/narvii/story/detail/StoryUserView;

    invoke-direct {p0, p2}, Lcom/narvii/community/CommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method protected onCancelButtonPreClick(Ljava/lang/String;)V
    .locals 1

    .line 125
    invoke-super {p0, p1}, Lcom/narvii/community/CommunityHelper;->onCancelButtonPreClick(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/narvii/story/detail/StoryUserView$1;->this$0:Lcom/narvii/story/detail/StoryUserView;

    invoke-static {v0}, Lcom/narvii/story/detail/StoryUserView;->access$100(Lcom/narvii/story/detail/StoryUserView;)Lcom/narvii/model/Blog;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/narvii/story/detail/StoryUserView$1;->this$0:Lcom/narvii/story/detail/StoryUserView;

    invoke-static {v0}, Lcom/narvii/story/detail/StoryUserView;->access$200(Lcom/narvii/story/detail/StoryUserView;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    sget-object v0, Lcom/narvii/logging/ActSemantic;->cancelJoin:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    sget-object v0, Lcom/narvii/logging/ObjectType;->community:Lcom/narvii/logging/ObjectType;

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->objectType(Lcom/narvii/logging/ObjectType;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->objectSubType(Lcom/narvii/logging/ObjectSubType;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/story/detail/StoryUserView$1;->this$0:Lcom/narvii/story/detail/StoryUserView;

    invoke-static {v0}, Lcom/narvii/story/detail/StoryUserView;->access$100(Lcom/narvii/story/detail/StoryUserView;)Lcom/narvii/model/Blog;

    move-result-object v0

    iget v0, v0, Lcom/narvii/model/Feed;->ndcId:I

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->objectId(I)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    return-void
.end method

.method protected onJoinButtonPreClick(Ljava/lang/String;)V
    .locals 1

    .line 134
    invoke-super {p0, p1}, Lcom/narvii/community/CommunityHelper;->onJoinButtonPreClick(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/narvii/story/detail/StoryUserView$1;->this$0:Lcom/narvii/story/detail/StoryUserView;

    invoke-static {v0}, Lcom/narvii/story/detail/StoryUserView;->access$100(Lcom/narvii/story/detail/StoryUserView;)Lcom/narvii/model/Blog;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/narvii/story/detail/StoryUserView$1;->this$0:Lcom/narvii/story/detail/StoryUserView;

    invoke-static {v0}, Lcom/narvii/story/detail/StoryUserView;->access$200(Lcom/narvii/story/detail/StoryUserView;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    sget-object v0, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    sget-object v0, Lcom/narvii/logging/ObjectType;->community:Lcom/narvii/logging/ObjectType;

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->objectType(Lcom/narvii/logging/ObjectType;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->objectSubType(Lcom/narvii/logging/ObjectSubType;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/story/detail/StoryUserView$1;->this$0:Lcom/narvii/story/detail/StoryUserView;

    invoke-static {v0}, Lcom/narvii/story/detail/StoryUserView;->access$100(Lcom/narvii/story/detail/StoryUserView;)Lcom/narvii/model/Blog;

    move-result-object v0

    iget v0, v0, Lcom/narvii/model/Feed;->ndcId:I

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->objectId(I)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    return-void
.end method

.method protected startActivity(Landroid/content/Intent;)V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/narvii/story/detail/StoryUserView$1;->this$0:Lcom/narvii/story/detail/StoryUserView;

    invoke-static {v0, p1}, Lcom/narvii/story/detail/StoryUserView;->access$000(Lcom/narvii/story/detail/StoryUserView;Landroid/content/Intent;)V

    return-void
.end method
