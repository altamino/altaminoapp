.class Lcom/narvii/flag/resolve/ThreadDetailFlagModeFragment$1;
.super Ljava/lang/Object;
.source "ThreadDetailFlagModeFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/flag/resolve/ThreadDetailFlagModeFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/model/ChatThread;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/flag/resolve/ThreadDetailFlagModeFragment;


# direct methods
.method constructor <init>(Lcom/narvii/flag/resolve/ThreadDetailFlagModeFragment;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/narvii/flag/resolve/ThreadDetailFlagModeFragment$1;->this$0:Lcom/narvii/flag/resolve/ThreadDetailFlagModeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/ChatThread;)V
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/narvii/flag/resolve/ThreadDetailFlagModeFragment$1;->this$0:Lcom/narvii/flag/resolve/ThreadDetailFlagModeFragment;

    iput-object p1, v0, Lcom/narvii/flag/resolve/ThreadDetailFlagModeFragment;->thread:Lcom/narvii/model/ChatThread;

    .line 28
    iget p1, p1, Lcom/narvii/model/ChatThread;->status:I

    const/16 v1, 0x9

    if-ne p1, v1, :cond_0

    .line 29
    iget-object p1, v0, Lcom/narvii/flag/resolve/ThreadDetailFlagModeFragment;->flagResolveBar:Lcom/narvii/flag/resolve/FlagResolveBar;

    invoke-virtual {p1}, Lcom/narvii/flag/resolve/FlagResolveBar;->showAlreadyResolved()V

    :cond_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p1, Lcom/narvii/model/ChatThread;

    invoke-virtual {p0, p1}, Lcom/narvii/flag/resolve/ThreadDetailFlagModeFragment$1;->call(Lcom/narvii/model/ChatThread;)V

    return-void
.end method
