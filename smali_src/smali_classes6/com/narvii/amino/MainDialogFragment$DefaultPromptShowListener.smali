.class Lcom/narvii/amino/MainDialogFragment$DefaultPromptShowListener;
.super Ljava/lang/Object;
.source "SourceFile"

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

    iput-object p1, p0, Lcom/narvii/amino/MainDialogFragment$DefaultPromptShowListener;->this$0:Lcom/narvii/amino/MainDialogFragment;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/amino/MainDialogFragment;Lcom/narvii/amino/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/amino/MainDialogFragment$DefaultPromptShowListener;-><init>(Lcom/narvii/amino/MainDialogFragment;)V

    return-void
.end method


# virtual methods
.method public anyPromptShown()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/MainDialogFragment$DefaultPromptShowListener;->this$0:Lcom/narvii/amino/MainDialogFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/amino/MainDialogFragment;->shownPrompts:Ljava/util/HashSet;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    xor-int/lit8 v0, v0, 0x1

    .line 11
    return v0
.end method

.method public isActive()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/MainDialogFragment$DefaultPromptShowListener;->this$0:Lcom/narvii/amino/MainDialogFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/amino/MainDialogFragment;->r(Lcom/narvii/amino/MainDialogFragment;)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isDestroyed()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/MainDialogFragment$DefaultPromptShowListener;->this$0:Lcom/narvii/amino/MainDialogFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isPromptShown(I)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/MainDialogFragment$DefaultPromptShowListener;->this$0:Lcom/narvii/amino/MainDialogFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/amino/MainDialogFragment;->shownPrompts:Ljava/util/HashSet;

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public setPromptShown(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/MainDialogFragment$DefaultPromptShowListener;->this$0:Lcom/narvii/amino/MainDialogFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/amino/MainDialogFragment;->shownPrompts:Ljava/util/HashSet;

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 12
    return-void
.end method

.method public whenBlocking()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/MainDialogFragment$DefaultPromptShowListener;->this$0:Lcom/narvii/amino/MainDialogFragment;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    iput-boolean v1, v0, Lcom/narvii/amino/MainDialogFragment;->blocking:Z

    .line 6
    return-void
.end method

.method public whenNotBlocking()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/MainDialogFragment$DefaultPromptShowListener;->this$0:Lcom/narvii/amino/MainDialogFragment;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    iput-boolean v1, v0, Lcom/narvii/amino/MainDialogFragment;->blocking:Z

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    return-void

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/narvii/amino/MainDialogFragment$DefaultPromptShowListener;->this$0:Lcom/narvii/amino/MainDialogFragment;

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lcom/narvii/amino/MainDialogFragment;->r(Lcom/narvii/amino/MainDialogFragment;)Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/amino/MainDialogFragment$DefaultPromptShowListener;->this$0:Lcom/narvii/amino/MainDialogFragment;

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lcom/narvii/amino/MainDialogFragment;->s(Lcom/narvii/amino/MainDialogFragment;)Z

    .line 26
    move-result v0

    .line 27
    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lcom/narvii/amino/MainDialogFragment$DefaultPromptShowListener;->this$0:Lcom/narvii/amino/MainDialogFragment;

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Lcom/narvii/amino/MainDialogFragment;->q(Lcom/narvii/amino/MainDialogFragment;)Ljava/lang/Runnable;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    const-wide/16 v1, 0x64

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 40
    :cond_1
    return-void
.end method
