.class final Lcom/narvii/scene/poll/ScenePollPostFragment$doSubmit$1$1;
.super Ljava/lang/Object;
.source "ScenePollPostFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/poll/ScenePollPostFragment$doSubmit$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/scene/poll/ScenePollPostFragment$doSubmit$1;


# direct methods
.method constructor <init>(Lcom/narvii/scene/poll/ScenePollPostFragment$doSubmit$1;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/scene/poll/ScenePollPostFragment$doSubmit$1$1;->this$0:Lcom/narvii/scene/poll/ScenePollPostFragment$doSubmit$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/narvii/scene/poll/ScenePollPostFragment$doSubmit$1$1;->this$0:Lcom/narvii/scene/poll/ScenePollPostFragment$doSubmit$1;

    iget-object v0, v0, Lcom/narvii/scene/poll/ScenePollPostFragment$doSubmit$1;->this$0:Lcom/narvii/scene/poll/ScenePollPostFragment;

    sget v1, Lcom/narvii/mediaeditor/R$id;->title:I

    invoke-virtual {v0, v1}, Lcom/narvii/scene/poll/ScenePollPostFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-static {v0}, Lcom/narvii/util/SoftKeyboard;->showSoftKeyboard(Landroid/widget/EditText;)V

    return-void
.end method
