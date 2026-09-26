.class final Lcom/narvii/util/debug/ToggleOptionsFragment$observeViewState$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/debug/ToggleOptionsFragment;->observeViewState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Lcom/narvii/util/debug/viewmodel/DebugToggleOptionsViewState;",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/util/debug/ToggleOptionsFragment;


# direct methods
.method constructor <init>(Lcom/narvii/util/debug/ToggleOptionsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/util/debug/ToggleOptionsFragment$observeViewState$1;->this$0:Lcom/narvii/util/debug/ToggleOptionsFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/util/debug/viewmodel/DebugToggleOptionsViewState;

    invoke-virtual {p0, p1}, Lcom/narvii/util/debug/ToggleOptionsFragment$observeViewState$1;->invoke(Lcom/narvii/util/debug/viewmodel/DebugToggleOptionsViewState;)V

    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    return-object p1
.end method

.method public final invoke(Lcom/narvii/util/debug/viewmodel/DebugToggleOptionsViewState;)V
    .locals 1

    .line 2
    instance-of v0, p1, Lcom/narvii/util/debug/viewmodel/DebugToggleOptionsViewState$Loading;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/narvii/util/debug/ToggleOptionsFragment$observeViewState$1;->this$0:Lcom/narvii/util/debug/ToggleOptionsFragment;

    .line 3
    invoke-static {p1}, Lcom/narvii/util/debug/ToggleOptionsFragment;->access$showLoading(Lcom/narvii/util/debug/ToggleOptionsFragment;)V

    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Lcom/narvii/util/debug/viewmodel/DebugToggleOptionsViewState$Success;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/narvii/util/debug/ToggleOptionsFragment$observeViewState$1;->this$0:Lcom/narvii/util/debug/ToggleOptionsFragment;

    .line 5
    invoke-static {v0}, Lcom/narvii/util/debug/ToggleOptionsFragment;->access$hideLoading(Lcom/narvii/util/debug/ToggleOptionsFragment;)V

    iget-object v0, p0, Lcom/narvii/util/debug/ToggleOptionsFragment$observeViewState$1;->this$0:Lcom/narvii/util/debug/ToggleOptionsFragment;

    .line 6
    invoke-static {v0}, Lcom/narvii/util/debug/ToggleOptionsFragment;->access$getAttestationTokenSwitch$p(Lcom/narvii/util/debug/ToggleOptionsFragment;)Landroid/widget/Switch;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "attestationTokenSwitch"

    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    check-cast p1, Lcom/narvii/util/debug/viewmodel/DebugToggleOptionsViewState$Success;

    invoke-virtual {p1}, Lcom/narvii/util/debug/viewmodel/DebugToggleOptionsViewState$Success;->getFailAttestation()Lcom/narvii/util/debug/model/FailAttestation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/debug/model/FailAttestation;->getShouldFail()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 7
    :cond_2
    instance-of v0, p1, Lcom/narvii/util/debug/viewmodel/DebugToggleOptionsViewState$Error;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/narvii/util/debug/ToggleOptionsFragment$observeViewState$1;->this$0:Lcom/narvii/util/debug/ToggleOptionsFragment;

    .line 8
    invoke-static {v0}, Lcom/narvii/util/debug/ToggleOptionsFragment;->access$hideLoading(Lcom/narvii/util/debug/ToggleOptionsFragment;)V

    iget-object v0, p0, Lcom/narvii/util/debug/ToggleOptionsFragment$observeViewState$1;->this$0:Lcom/narvii/util/debug/ToggleOptionsFragment;

    .line 9
    check-cast p1, Lcom/narvii/util/debug/viewmodel/DebugToggleOptionsViewState$Error;

    invoke-virtual {p1}, Lcom/narvii/util/debug/viewmodel/DebugToggleOptionsViewState$Error;->getError()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/narvii/util/debug/ToggleOptionsFragment;->access$showErrorMessage(Lcom/narvii/util/debug/ToggleOptionsFragment;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
