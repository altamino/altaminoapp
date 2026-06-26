.class public final Lcom/narvii/community/CommunityLayoutHelper$TopicFlowLayoutHelper;
.super Lcom/narvii/util/FlowLayoutHelper;
.source "CommunityLayoutHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/community/CommunityLayoutHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TopicFlowLayoutHelper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/narvii/util/FlowLayoutHelper<",
        "Lcom/narvii/model/story/StoryTopic;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/community/CommunityLayoutHelper;


# direct methods
.method public constructor <init>(Lcom/narvii/community/CommunityLayoutHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/narvii/community/CommunityLayoutHelper$TopicFlowLayoutHelper;->this$0:Lcom/narvii/community/CommunityLayoutHelper;

    invoke-direct {p0}, Lcom/narvii/util/FlowLayoutHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public createChildView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 42
    iget-object v0, p0, Lcom/narvii/community/CommunityLayoutHelper$TopicFlowLayoutHelper;->this$0:Lcom/narvii/community/CommunityLayoutHelper;

    invoke-virtual {v0}, Lcom/narvii/community/CommunityLayoutHelper;->getContext$Lib_release()Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$layout;->community_item_topic:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(cont\u2026tem_topic, parent, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public updateChildView(Landroid/view/View;Lcom/narvii/model/story/StoryTopic;)V
    .locals 1

    .line 46
    instance-of v0, p1, Lcom/narvii/widget/TopicView;

    if-eqz v0, :cond_0

    .line 47
    check-cast p1, Lcom/narvii/widget/TopicView;

    invoke-virtual {p1, p2}, Lcom/narvii/widget/TopicView;->setTopic(Lcom/narvii/model/story/StoryTopic;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic updateChildView(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .line 40
    check-cast p2, Lcom/narvii/model/story/StoryTopic;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/community/CommunityLayoutHelper$TopicFlowLayoutHelper;->updateChildView(Landroid/view/View;Lcom/narvii/model/story/StoryTopic;)V

    return-void
.end method
