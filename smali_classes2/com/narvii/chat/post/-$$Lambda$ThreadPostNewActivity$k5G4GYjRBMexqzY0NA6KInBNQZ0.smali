.class public final synthetic Lcom/narvii/chat/post/-$$Lambda$ThreadPostNewActivity$k5G4GYjRBMexqzY0NA6KInBNQZ0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/narvii/chat/post/ThreadPostNewActivity;

.field private final synthetic f$1:Lcom/narvii/suggest/interest/ThreadPostTopicView;

.field private final synthetic f$2:Lcom/narvii/model/story/StoryTopic;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/chat/post/ThreadPostNewActivity;Lcom/narvii/suggest/interest/ThreadPostTopicView;Lcom/narvii/model/story/StoryTopic;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/post/-$$Lambda$ThreadPostNewActivity$k5G4GYjRBMexqzY0NA6KInBNQZ0;->f$0:Lcom/narvii/chat/post/ThreadPostNewActivity;

    iput-object p2, p0, Lcom/narvii/chat/post/-$$Lambda$ThreadPostNewActivity$k5G4GYjRBMexqzY0NA6KInBNQZ0;->f$1:Lcom/narvii/suggest/interest/ThreadPostTopicView;

    iput-object p3, p0, Lcom/narvii/chat/post/-$$Lambda$ThreadPostNewActivity$k5G4GYjRBMexqzY0NA6KInBNQZ0;->f$2:Lcom/narvii/model/story/StoryTopic;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/narvii/chat/post/-$$Lambda$ThreadPostNewActivity$k5G4GYjRBMexqzY0NA6KInBNQZ0;->f$0:Lcom/narvii/chat/post/ThreadPostNewActivity;

    iget-object v1, p0, Lcom/narvii/chat/post/-$$Lambda$ThreadPostNewActivity$k5G4GYjRBMexqzY0NA6KInBNQZ0;->f$1:Lcom/narvii/suggest/interest/ThreadPostTopicView;

    iget-object v2, p0, Lcom/narvii/chat/post/-$$Lambda$ThreadPostNewActivity$k5G4GYjRBMexqzY0NA6KInBNQZ0;->f$2:Lcom/narvii/model/story/StoryTopic;

    invoke-virtual {v0, v1, v2, p1}, Lcom/narvii/chat/post/ThreadPostNewActivity;->lambda$updateTopicView$2$ThreadPostNewActivity(Lcom/narvii/suggest/interest/ThreadPostTopicView;Lcom/narvii/model/story/StoryTopic;Landroid/view/View;)V

    return-void
.end method
