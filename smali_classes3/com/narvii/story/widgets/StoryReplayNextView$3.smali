.class public final Lcom/narvii/story/widgets/StoryReplayNextView$3;
.super Ljava/lang/Object;
.source "StoryReplayNextView.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/story/widgets/StoryReplayNextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/story/widgets/StoryReplayNextView;


# direct methods
.method constructor <init>(Lcom/narvii/story/widgets/StoryReplayNextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lcom/narvii/story/widgets/StoryReplayNextView$3;->this$0:Lcom/narvii/story/widgets/StoryReplayNextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 32
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryReplayNextView$3;->this$0:Lcom/narvii/story/widgets/StoryReplayNextView;

    invoke-virtual {v0}, Lcom/narvii/story/widgets/StoryReplayNextView;->getCountDownTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/narvii/story/widgets/StoryReplayNextView;->setCountDownTime(J)V

    .line 33
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryReplayNextView$3;->this$0:Lcom/narvii/story/widgets/StoryReplayNextView;

    invoke-virtual {v0}, Lcom/narvii/story/widgets/StoryReplayNextView;->getCountDownTime()J

    move-result-wide v0

    const-wide/16 v5, 0x0

    cmp-long v2, v0, v5

    if-lez v2, :cond_0

    .line 34
    iget-object v7, p0, Lcom/narvii/story/widgets/StoryReplayNextView$3;->this$0:Lcom/narvii/story/widgets/StoryReplayNextView;

    invoke-virtual {v7}, Lcom/narvii/story/widgets/StoryReplayNextView;->getCountDownTime()J

    move-result-wide v8

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lcom/narvii/story/widgets/StoryReplayNextView;->onCountDownUpdate$default(Lcom/narvii/story/widgets/StoryReplayNextView;JZILjava/lang/Object;)V

    .line 35
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryReplayNextView$3;->this$0:Lcom/narvii/story/widgets/StoryReplayNextView;

    invoke-virtual {v0, p0, v3, v4}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryReplayNextView$3;->this$0:Lcom/narvii/story/widgets/StoryReplayNextView;

    invoke-virtual {v0, v5, v6}, Lcom/narvii/story/widgets/StoryReplayNextView;->setCountDownTime(J)V

    .line 38
    iget-object v7, p0, Lcom/narvii/story/widgets/StoryReplayNextView$3;->this$0:Lcom/narvii/story/widgets/StoryReplayNextView;

    invoke-virtual {v7}, Lcom/narvii/story/widgets/StoryReplayNextView;->getCountDownTime()J

    move-result-wide v8

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lcom/narvii/story/widgets/StoryReplayNextView;->onCountDownUpdate$default(Lcom/narvii/story/widgets/StoryReplayNextView;JZILjava/lang/Object;)V

    :goto_0
    return-void
.end method
