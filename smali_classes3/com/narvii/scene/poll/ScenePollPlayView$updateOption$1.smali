.class final Lcom/narvii/scene/poll/ScenePollPlayView$updateOption$1;
.super Ljava/lang/Object;
.source "ScenePollPlayView.kt"

# interfaces
.implements Lcom/narvii/widget/LongPushButton$AllowLongPushListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/poll/ScenePollPlayView;->updateOption(Landroid/view/View;Lcom/narvii/model/PollOption;ZZZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/poll/ScenePollPlayView;


# direct methods
.method constructor <init>(Lcom/narvii/scene/poll/ScenePollPlayView;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/scene/poll/ScenePollPlayView$updateOption$1;->this$0:Lcom/narvii/scene/poll/ScenePollPlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final allowLongPush()Z
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/narvii/scene/poll/ScenePollPlayView$updateOption$1;->this$0:Lcom/narvii/scene/poll/ScenePollPlayView;

    invoke-static {v0}, Lcom/narvii/scene/poll/ScenePollPlayView;->access$isRequesting$p(Lcom/narvii/scene/poll/ScenePollPlayView;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
