.class Lcom/narvii/story/widgets/StoryItemView$2;
.super Ljava/lang/Object;
.source "StoryItemView.java"

# interfaces
.implements Lcom/narvii/influencer/FansOnlyPostMask$BecomeFansClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/story/widgets/StoryItemView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/story/widgets/StoryItemView;


# direct methods
.method constructor <init>(Lcom/narvii/story/widgets/StoryItemView;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/narvii/story/widgets/StoryItemView$2;->this$0:Lcom/narvii/story/widgets/StoryItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBecomeFansClicked()V
    .locals 4

    .line 178
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView$2;->this$0:Lcom/narvii/story/widgets/StoryItemView;

    invoke-static {v0}, Lcom/narvii/story/widgets/StoryItemView;->access$400(Lcom/narvii/story/widgets/StoryItemView;)Lcom/narvii/account/AccountService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/story/widgets/StoryItemView$2;->this$0:Lcom/narvii/story/widgets/StoryItemView;

    invoke-static {v1}, Lcom/narvii/story/widgets/StoryItemView;->access$200(Lcom/narvii/story/widgets/StoryItemView;)Lcom/narvii/model/Blog;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/narvii/story/widgets/StoryItemView$2;->this$0:Lcom/narvii/story/widgets/StoryItemView;

    invoke-static {v1}, Lcom/narvii/story/widgets/StoryItemView;->access$200(Lcom/narvii/story/widgets/StoryItemView;)Lcom/narvii/model/Blog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/model/Blog;->uid()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView$2;->this$0:Lcom/narvii/story/widgets/StoryItemView;

    invoke-static {v0}, Lcom/narvii/story/widgets/StoryItemView;->access$500(Lcom/narvii/story/widgets/StoryItemView;)Lcom/narvii/influencer/FansOnlyPostMask;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView$2;->this$0:Lcom/narvii/story/widgets/StoryItemView;

    invoke-static {v0}, Lcom/narvii/story/widgets/StoryItemView;->access$200(Lcom/narvii/story/widgets/StoryItemView;)Lcom/narvii/model/Blog;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView$2;->this$0:Lcom/narvii/story/widgets/StoryItemView;

    invoke-static {v0}, Lcom/narvii/story/widgets/StoryItemView;->access$200(Lcom/narvii/story/widgets/StoryItemView;)Lcom/narvii/model/Blog;

    move-result-object v0

    iget-object v0, v0, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView$2;->this$0:Lcom/narvii/story/widgets/StoryItemView;

    invoke-static {v0}, Lcom/narvii/story/widgets/StoryItemView;->access$200(Lcom/narvii/story/widgets/StoryItemView;)Lcom/narvii/model/Blog;

    move-result-object v0

    iget-object v0, v0, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    invoke-virtual {v0}, Lcom/narvii/model/User;->isInfluencer()Z

    move-result v0

    if-nez v0, :cond_2

    .line 183
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView$2;->this$0:Lcom/narvii/story/widgets/StoryItemView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f10b0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    goto :goto_1

    .line 184
    :cond_2
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView$2;->this$0:Lcom/narvii/story/widgets/StoryItemView;

    invoke-static {v0}, Lcom/narvii/story/widgets/StoryItemView;->access$200(Lcom/narvii/story/widgets/StoryItemView;)Lcom/narvii/model/Blog;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView$2;->this$0:Lcom/narvii/story/widgets/StoryItemView;

    invoke-static {v0}, Lcom/narvii/story/widgets/StoryItemView;->access$200(Lcom/narvii/story/widgets/StoryItemView;)Lcom/narvii/model/Blog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/model/Blog;->uid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 185
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryItemView$2;->this$0:Lcom/narvii/story/widgets/StoryItemView;

    iget-object v1, v0, Lcom/narvii/story/widgets/StoryItemView;->nvContext:Lcom/narvii/app/NVContext;

    invoke-static {v0}, Lcom/narvii/story/widgets/StoryItemView;->access$200(Lcom/narvii/story/widgets/StoryItemView;)Lcom/narvii/model/Blog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/model/Blog;->uid()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/narvii/story/widgets/StoryItemView$2;->this$0:Lcom/narvii/story/widgets/StoryItemView;

    invoke-static {v3}, Lcom/narvii/story/widgets/StoryItemView;->access$200(Lcom/narvii/story/widgets/StoryItemView;)Lcom/narvii/model/Blog;

    move-result-object v3

    iget v3, v3, Lcom/narvii/model/Feed;->ndcId:I

    invoke-static {v1, v0, v3, v2}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->showSubscriptionDialog(Lcom/narvii/app/NVContext;Ljava/lang/String;ILjava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method
