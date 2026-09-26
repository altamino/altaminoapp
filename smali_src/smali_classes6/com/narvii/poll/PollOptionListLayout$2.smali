.class Lcom/narvii/poll/PollOptionListLayout$2;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/poll/PollOptionListLayout$2;->this$0:Lcom/narvii/poll/PollOptionListLayout;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public allowLongPush()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/poll/PollOptionListLayout$2;->this$0:Lcom/narvii/poll/PollOptionListLayout;

    .line 3
    .line 4
    iget-boolean v1, v0, Lcom/narvii/poll/PollOptionListLayout;->preview:Z

    .line 5
    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    iget-object v1, v0, Lcom/narvii/poll/PollOptionListLayout;->previewBlockListener:Lcom/narvii/poll/PollOptionListLayout$PollPreviewBlockListener;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-interface {v1}, Lcom/narvii/poll/PollOptionListLayout$PollPreviewBlockListener;->onPreviewBlocked()V

    .line 14
    goto :goto_0

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    const v1, 0x7f1211ac

    .line 22
    const/4 v2, 0x0

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v1, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    .line 30
    .line 31
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/narvii/poll/PollOptionListLayout$2;->this$0:Lcom/narvii/poll/PollOptionListLayout;

    .line 32
    .line 33
    iget-boolean v0, v0, Lcom/narvii/poll/PollOptionListLayout;->preview:Z

    .line 34
    .line 35
    xor-int/lit8 v0, v0, 0x1

    .line 36
    return v0
.end method
