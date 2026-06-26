.class Lcom/narvii/amino/MainDialogFragment$DefaultPromptShowListener;
.super Ljava/lang/Object;
.source "MainDialogFragment.java"

# interfaces
.implements Lcom/narvii/amino/PromptShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/amino/MainDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultPromptShowListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/amino/MainDialogFragment;


# direct methods
.method private constructor <init>(Lcom/narvii/amino/MainDialogFragment;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/narvii/amino/MainDialogFragment$DefaultPromptShowListener;->this$0:Lcom/narvii/amino/MainDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/amino/MainDialogFragment;Lcom/narvii/amino/MainDialogFragment$1;)V
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lcom/narvii/amino/MainDialogFragment$DefaultPromptShowListener;-><init>(Lcom/narvii/amino/MainDialogFragment;)V

    return-void
.end method


# virtual methods
.method public anyPromptShown()Z
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/narvii/amino/MainDialogFragment$DefaultPromptShowListener;->this$0:Lcom/narvii/amino/MainDialogFragment;

    iget-object v0, v0, Lcom/narvii/amino/MainDialogFragment;->shownPrompts:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isActive()Z
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/narvii/amino/MainDialogFragment$DefaultPromptShowListener;->this$0:Lcom/narvii/amino/MainDialogFragment;

    invoke-static {v0}, Lcom/narvii/amino/MainDialogFragment;->access$000(Lcom/narvii/amino/MainDialogFragment;)Z

    move-result v0

    return v0
.end method

.method public isDestroyed()Z
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/narvii/amino/MainDialogFragment$DefaultPromptShowListener;->this$0:Lcom/narvii/amino/MainDialogFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    move-result v0

    return v0
.end method

.method public isPromptShown(I)Z
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/narvii/amino/MainDialogFragment$DefaultPromptShowListener;->this$0:Lcom/narvii/amino/MainDialogFragment;

    iget-object v0, v0, Lcom/narvii/amino/MainDialogFragment;->shownPrompts:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public setPromptShown(I)V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/narvii/amino/MainDialogFragment$DefaultPromptShowListener;->this$0:Lcom/narvii/amino/MainDialogFragment;

    iget-object v0, v0, Lcom/narvii/amino/MainDialogFragment;->shownPrompts:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public whenBlocking()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/narvii/amino/MainDialogFragment$DefaultPromptShowListener;->this$0:Lcom/narvii/amino/MainDialogFragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/narvii/amino/MainDialogFragment;->blocking:Z

    return-void
.end method

.method public whenNotBlocking()V
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/narvii/amino/MainDialogFragment$DefaultPromptShowListener;->this$0:Lcom/narvii/amino/MainDialogFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/narvii/amino/MainDialogFragment;->blocking:Z

    .line 102
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/narvii/amino/MainDialogFragment$DefaultPromptShowListener;->this$0:Lcom/narvii/amino/MainDialogFragment;

    invoke-static {v0}, Lcom/narvii/amino/MainDialogFragment;->access$000(Lcom/narvii/amino/MainDialogFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/amino/MainDialogFragment$DefaultPromptShowListener;->this$0:Lcom/narvii/amino/MainDialogFragment;

    invoke-static {v0}, Lcom/narvii/amino/MainDialogFragment;->access$200(Lcom/narvii/amino/MainDialogFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/narvii/amino/MainDialogFragment$DefaultPromptShowListener;->this$0:Lcom/narvii/amino/MainDialogFragment;

    invoke-static {v0}, Lcom/narvii/amino/MainDialogFragment;->access$100(Lcom/narvii/amino/MainDialogFragment;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_1
    return-void
.end method
