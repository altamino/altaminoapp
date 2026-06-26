.class final Lcom/narvii/story/widgets/StoryReplayNextView$1;
.super Ljava/lang/Object;
.source "StoryReplayNextView.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/story/widgets/StoryReplayNextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/story/widgets/StoryReplayNextView;


# direct methods
.method constructor <init>(Lcom/narvii/story/widgets/StoryReplayNextView;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/story/widgets/StoryReplayNextView$1;->this$0:Lcom/narvii/story/widgets/StoryReplayNextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 25
    iget-object p1, p0, Lcom/narvii/story/widgets/StoryReplayNextView$1;->this$0:Lcom/narvii/story/widgets/StoryReplayNextView;

    invoke-virtual {p1}, Lcom/narvii/story/widgets/StoryReplayNextView;->getReplayNextClickListener()Lcom/narvii/story/widgets/StoryReplayNextView$IStoryReplayNextClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/narvii/story/widgets/StoryReplayNextView$IStoryReplayNextClickListener;->onReplay()V

    :cond_0
    return-void
.end method
