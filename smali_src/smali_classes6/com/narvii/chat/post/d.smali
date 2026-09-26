.class public final synthetic Lcom/narvii/chat/post/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/chat/post/ThreadPostNewActivity;

.field public final synthetic b:Lcom/narvii/suggest/interest/ThreadPostTopicView;

.field public final synthetic c:Lcom/narvii/model/story/StoryTopic;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/post/ThreadPostNewActivity;Lcom/narvii/suggest/interest/ThreadPostTopicView;Lcom/narvii/model/story/StoryTopic;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/post/d;->a:Lcom/narvii/chat/post/ThreadPostNewActivity;

    iput-object p2, p0, Lcom/narvii/chat/post/d;->b:Lcom/narvii/suggest/interest/ThreadPostTopicView;

    iput-object p3, p0, Lcom/narvii/chat/post/d;->c:Lcom/narvii/model/story/StoryTopic;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/narvii/chat/post/d;->a:Lcom/narvii/chat/post/ThreadPostNewActivity;

    iget-object v1, p0, Lcom/narvii/chat/post/d;->b:Lcom/narvii/suggest/interest/ThreadPostTopicView;

    iget-object v2, p0, Lcom/narvii/chat/post/d;->c:Lcom/narvii/model/story/StoryTopic;

    invoke-static {v0, v1, v2, p1}, Lcom/narvii/chat/post/ThreadPostNewActivity;->C(Lcom/narvii/chat/post/ThreadPostNewActivity;Lcom/narvii/suggest/interest/ThreadPostTopicView;Lcom/narvii/model/story/StoryTopic;Landroid/view/View;)V

    return-void
.end method
