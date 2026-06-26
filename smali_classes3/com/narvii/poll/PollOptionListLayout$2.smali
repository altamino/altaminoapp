.class Lcom/narvii/poll/PollOptionListLayout$2;
.super Ljava/lang/Object;
.source "PollOptionListLayout.java"

# interfaces
.implements Lcom/narvii/widget/LongPushButton$AllowLongPushListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/poll/PollOptionListLayout;->updateView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/poll/PollOptionListLayout;


# direct methods
.method constructor <init>(Lcom/narvii/poll/PollOptionListLayout;)V
    .locals 0

    .line 330
    iput-object p1, p0, Lcom/narvii/poll/PollOptionListLayout$2;->this$0:Lcom/narvii/poll/PollOptionListLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allowLongPush()Z
    .locals 3

    .line 333
    iget-object v0, p0, Lcom/narvii/poll/PollOptionListLayout$2;->this$0:Lcom/narvii/poll/PollOptionListLayout;

    iget-boolean v1, v0, Lcom/narvii/poll/PollOptionListLayout;->preview:Z

    if-eqz v1, :cond_1

    .line 334
    iget-object v1, v0, Lcom/narvii/poll/PollOptionListLayout;->previewBlockListener:Lcom/narvii/poll/PollOptionListLayout$PollPreviewBlockListener;

    if-eqz v1, :cond_0

    .line 335
    invoke-interface {v1}, Lcom/narvii/poll/PollOptionListLayout$PollPreviewBlockListener;->onPreviewBlocked()V

    goto :goto_0

    .line 337
    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f10b1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    .line 340
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/narvii/poll/PollOptionListLayout$2;->this$0:Lcom/narvii/poll/PollOptionListLayout;

    iget-boolean v0, v0, Lcom/narvii/poll/PollOptionListLayout;->preview:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
