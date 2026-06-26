.class Lcom/narvii/story/detail/StoryLeftCollapseView$5;
.super Ljava/lang/Object;
.source "StoryLeftCollapseView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/story/detail/StoryLeftCollapseView;->updateView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/story/detail/StoryLeftCollapseView;

.field final synthetic val$communityInfo:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/narvii/story/detail/StoryLeftCollapseView;Landroid/view/View;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/narvii/story/detail/StoryLeftCollapseView$5;->this$0:Lcom/narvii/story/detail/StoryLeftCollapseView;

    iput-object p2, p0, Lcom/narvii/story/detail/StoryLeftCollapseView$5;->val$communityInfo:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12

    .line 257
    iget-object p1, p0, Lcom/narvii/story/detail/StoryLeftCollapseView$5;->this$0:Lcom/narvii/story/detail/StoryLeftCollapseView;

    invoke-static {p1}, Lcom/narvii/story/detail/StoryLeftCollapseView;->access$300(Lcom/narvii/story/detail/StoryLeftCollapseView;)Lcom/narvii/model/Community;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "StoryInfoView: empty community info"

    .line 258
    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 261
    :cond_0
    iget-object p1, p0, Lcom/narvii/story/detail/StoryLeftCollapseView$5;->this$0:Lcom/narvii/story/detail/StoryLeftCollapseView;

    invoke-static {p1}, Lcom/narvii/story/detail/StoryLeftCollapseView;->access$400(Lcom/narvii/story/detail/StoryLeftCollapseView;)Lcom/narvii/community/CommunityHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/story/detail/StoryLeftCollapseView$5;->this$0:Lcom/narvii/story/detail/StoryLeftCollapseView;

    invoke-static {v0}, Lcom/narvii/story/detail/StoryLeftCollapseView;->access$200(Lcom/narvii/story/detail/StoryLeftCollapseView;)Lcom/narvii/model/Blog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/model/Blog;->getPublishNdcId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/narvii/community/CommunityHelper;->isJoinedCommunityWithContext(I)Z

    move-result p1

    const-string v0, "StoryInfo"

    if-eqz p1, :cond_4

    .line 262
    iget-object p1, p0, Lcom/narvii/story/detail/StoryLeftCollapseView$5;->this$0:Lcom/narvii/story/detail/StoryLeftCollapseView;

    invoke-static {p1}, Lcom/narvii/story/detail/StoryLeftCollapseView;->access$000(Lcom/narvii/story/detail/StoryLeftCollapseView;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/story/detail/StoryLeftCollapseView$5;->this$0:Lcom/narvii/story/detail/StoryLeftCollapseView;

    invoke-static {v0}, Lcom/narvii/story/detail/StoryLeftCollapseView;->access$300(Lcom/narvii/story/detail/StoryLeftCollapseView;)Lcom/narvii/model/Community;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    sget-object v0, Lcom/narvii/logging/ActSemantic;->aminoEnter:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 265
    iget-object p1, p0, Lcom/narvii/story/detail/StoryLeftCollapseView$5;->this$0:Lcom/narvii/story/detail/StoryLeftCollapseView;

    invoke-static {p1}, Lcom/narvii/story/detail/StoryLeftCollapseView;->access$500(Lcom/narvii/story/detail/StoryLeftCollapseView;)Lcom/narvii/app/NVContext;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/app/NVFragment;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 266
    iget-object p1, p0, Lcom/narvii/story/detail/StoryLeftCollapseView$5;->this$0:Lcom/narvii/story/detail/StoryLeftCollapseView;

    invoke-static {p1}, Lcom/narvii/story/detail/StoryLeftCollapseView;->access$500(Lcom/narvii/story/detail/StoryLeftCollapseView;)Lcom/narvii/app/NVContext;

    move-result-object p1

    check-cast p1, Lcom/narvii/app/NVFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    goto :goto_0

    .line 267
    :cond_1
    iget-object p1, p0, Lcom/narvii/story/detail/StoryLeftCollapseView$5;->this$0:Lcom/narvii/story/detail/StoryLeftCollapseView;

    invoke-static {p1}, Lcom/narvii/story/detail/StoryLeftCollapseView;->access$500(Lcom/narvii/story/detail/StoryLeftCollapseView;)Lcom/narvii/app/NVContext;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/app/NVActivity;

    if-eqz p1, :cond_2

    .line 268
    iget-object p1, p0, Lcom/narvii/story/detail/StoryLeftCollapseView$5;->this$0:Lcom/narvii/story/detail/StoryLeftCollapseView;

    invoke-static {p1}, Lcom/narvii/story/detail/StoryLeftCollapseView;->access$500(Lcom/narvii/story/detail/StoryLeftCollapseView;)Lcom/narvii/app/NVContext;

    move-result-object p1

    check-cast p1, Lcom/narvii/app/NVActivity;

    goto :goto_0

    :cond_2
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_3

    .line 271
    new-instance v1, Lcom/narvii/community/CommunityLaunchHelperWithIcon;

    iget-object v2, p0, Lcom/narvii/story/detail/StoryLeftCollapseView$5;->this$0:Lcom/narvii/story/detail/StoryLeftCollapseView;

    invoke-static {v2}, Lcom/narvii/story/detail/StoryLeftCollapseView;->access$500(Lcom/narvii/story/detail/StoryLeftCollapseView;)Lcom/narvii/app/NVContext;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/narvii/community/CommunityLaunchHelperWithIcon;-><init>(Lcom/narvii/app/NVContext;Landroid/app/Activity;)V

    .line 272
    iget-object p1, p0, Lcom/narvii/story/detail/StoryLeftCollapseView$5;->this$0:Lcom/narvii/story/detail/StoryLeftCollapseView;

    invoke-static {p1}, Lcom/narvii/story/detail/StoryLeftCollapseView;->access$300(Lcom/narvii/story/detail/StoryLeftCollapseView;)Lcom/narvii/model/Community;

    move-result-object p1

    iget-object v2, p0, Lcom/narvii/story/detail/StoryLeftCollapseView$5;->val$communityInfo:Landroid/view/View;

    const v3, 0x7f0902a3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/narvii/widget/NVImageView;

    invoke-virtual {v1, p1, v2, v0}, Lcom/narvii/community/CommunityLaunchHelperWithIcon;->launchCommunity(Lcom/narvii/model/Community;Lcom/narvii/widget/NVImageView;Lcom/narvii/widget/SmoothProgressBar;)V

    goto :goto_1

    .line 274
    :cond_3
    new-instance v3, Lcom/narvii/community/CommunityLaunchHelper;

    iget-object p1, p0, Lcom/narvii/story/detail/StoryLeftCollapseView$5;->this$0:Lcom/narvii/story/detail/StoryLeftCollapseView;

    invoke-static {p1}, Lcom/narvii/story/detail/StoryLeftCollapseView;->access$500(Lcom/narvii/story/detail/StoryLeftCollapseView;)Lcom/narvii/app/NVContext;

    move-result-object p1

    invoke-direct {v3, p1}, Lcom/narvii/community/CommunityLaunchHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 275
    iget-object p1, p0, Lcom/narvii/story/detail/StoryLeftCollapseView$5;->this$0:Lcom/narvii/story/detail/StoryLeftCollapseView;

    invoke-static {p1}, Lcom/narvii/story/detail/StoryLeftCollapseView;->access$200(Lcom/narvii/story/detail/StoryLeftCollapseView;)Lcom/narvii/model/Blog;

    move-result-object p1

    iget v4, p1, Lcom/narvii/model/Feed;->ndcId:I

    iget-object p1, p0, Lcom/narvii/story/detail/StoryLeftCollapseView$5;->this$0:Lcom/narvii/story/detail/StoryLeftCollapseView;

    invoke-static {p1}, Lcom/narvii/story/detail/StoryLeftCollapseView;->access$300(Lcom/narvii/story/detail/StoryLeftCollapseView;)Lcom/narvii/model/Community;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v3 .. v11}, Lcom/narvii/community/CommunityLaunchHelper;->launch(ILcom/narvii/model/Community;Ljava/lang/String;Lcom/narvii/model/User;Ljava/lang/String;Lcom/narvii/community/ReminderCheck;Ljava/lang/String;Z)V

    goto :goto_1

    .line 278
    :cond_4
    iget-object p1, p0, Lcom/narvii/story/detail/StoryLeftCollapseView$5;->this$0:Lcom/narvii/story/detail/StoryLeftCollapseView;

    invoke-static {p1}, Lcom/narvii/story/detail/StoryLeftCollapseView;->access$000(Lcom/narvii/story/detail/StoryLeftCollapseView;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/story/detail/StoryLeftCollapseView$5;->this$0:Lcom/narvii/story/detail/StoryLeftCollapseView;

    invoke-static {v0}, Lcom/narvii/story/detail/StoryLeftCollapseView;->access$300(Lcom/narvii/story/detail/StoryLeftCollapseView;)Lcom/narvii/model/Community;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    sget-object v0, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 280
    const-class p1, Lcom/narvii/master/CommunityDetailFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 281
    iget-object v0, p0, Lcom/narvii/story/detail/StoryLeftCollapseView$5;->this$0:Lcom/narvii/story/detail/StoryLeftCollapseView;

    invoke-static {v0}, Lcom/narvii/story/detail/StoryLeftCollapseView;->access$300(Lcom/narvii/story/detail/StoryLeftCollapseView;)Lcom/narvii/model/Community;

    move-result-object v0

    iget v0, v0, Lcom/narvii/model/Community;->id:I

    const-string v1, "id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 282
    iget-object v0, p0, Lcom/narvii/story/detail/StoryLeftCollapseView$5;->this$0:Lcom/narvii/story/detail/StoryLeftCollapseView;

    invoke-static {v0}, Lcom/narvii/story/detail/StoryLeftCollapseView;->access$300(Lcom/narvii/story/detail/StoryLeftCollapseView;)Lcom/narvii/model/Community;

    move-result-object v0

    iget-object v0, v0, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    const-string v1, "icon"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    iget-object v0, p0, Lcom/narvii/story/detail/StoryLeftCollapseView$5;->this$0:Lcom/narvii/story/detail/StoryLeftCollapseView;

    invoke-static {v0}, Lcom/narvii/story/detail/StoryLeftCollapseView;->access$300(Lcom/narvii/story/detail/StoryLeftCollapseView;)Lcom/narvii/model/Community;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "prefetch"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    iget-object v0, p0, Lcom/narvii/story/detail/StoryLeftCollapseView$5;->this$0:Lcom/narvii/story/detail/StoryLeftCollapseView;

    invoke-static {v0, p1}, Lcom/narvii/story/detail/StoryLeftCollapseView;->access$100(Lcom/narvii/story/detail/StoryLeftCollapseView;Landroid/content/Intent;)V

    :goto_1
    return-void
.end method
