.class public final Lcom/narvii/community/CommunityLayoutHelper$TopicFlowLayoutHelper;
.super Lcom/narvii/util/FlowLayoutHelper;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/community/CommunityLayoutHelper$TopicFlowLayoutHelper;->this$0:Lcom/narvii/community/CommunityLayoutHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/util/FlowLayoutHelper;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public createChildView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/CommunityLayoutHelper$TopicFlowLayoutHelper;->this$0:Lcom/narvii/community/CommunityLayoutHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/community/CommunityLayoutHelper;->getContext$Lib_release()Lcom/narvii/app/NVContext;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    sget v1, Lcom/narvii/lib/R$layout;->community_item_topic:I

    .line 17
    const/4 v2, 0x0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    const-string v0, "inflate(...)"

    .line 24
    .line 25
    .line 26
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    return-object p1
.end method

.method public updateChildView(Landroid/view/View;Lcom/narvii/model/story/StoryTopic;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/model/story/StoryTopic;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    instance-of v0, p1, Lcom/narvii/widget/TopicView;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lcom/narvii/widget/TopicView;

    invoke-virtual {p1, p2}, Lcom/narvii/widget/TopicView;->setTopic(Lcom/narvii/model/story/StoryTopic;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic updateChildView(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/model/story/StoryTopic;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/community/CommunityLayoutHelper$TopicFlowLayoutHelper;->updateChildView(Landroid/view/View;Lcom/narvii/model/story/StoryTopic;)V

    return-void
.end method
