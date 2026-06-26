.class public final Lcom/narvii/scene/poll/ScenePollPostFragment$textWatcher$1;
.super Ljava/lang/Object;
.source "ScenePollPostFragment.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/poll/ScenePollPostFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/poll/ScenePollPostFragment;


# direct methods
.method constructor <init>(Lcom/narvii/scene/poll/ScenePollPostFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/narvii/scene/poll/ScenePollPostFragment$textWatcher$1;->this$0:Lcom/narvii/scene/poll/ScenePollPostFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 46
    iget-object p1, p0, Lcom/narvii/scene/poll/ScenePollPostFragment$textWatcher$1;->this$0:Lcom/narvii/scene/poll/ScenePollPostFragment;

    invoke-static {p1}, Lcom/narvii/scene/poll/ScenePollPostFragment;->access$updatePollContent(Lcom/narvii/scene/poll/ScenePollPostFragment;)V

    .line 47
    iget-object p1, p0, Lcom/narvii/scene/poll/ScenePollPostFragment$textWatcher$1;->this$0:Lcom/narvii/scene/poll/ScenePollPostFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->invalidateOptionsMenu()V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
