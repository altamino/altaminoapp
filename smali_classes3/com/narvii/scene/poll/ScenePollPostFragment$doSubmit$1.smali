.class final Lcom/narvii/scene/poll/ScenePollPostFragment$doSubmit$1;
.super Ljava/lang/Object;
.source "ScenePollPostFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/scene/poll/ScenePollPostFragment;->doSubmit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $msgRes:Ljava/lang/Integer;

.field final synthetic this$0:Lcom/narvii/scene/poll/ScenePollPostFragment;


# direct methods
.method constructor <init>(Lcom/narvii/scene/poll/ScenePollPostFragment;Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/scene/poll/ScenePollPostFragment$doSubmit$1;->this$0:Lcom/narvii/scene/poll/ScenePollPostFragment;

    iput-object p2, p0, Lcom/narvii/scene/poll/ScenePollPostFragment$doSubmit$1;->$msgRes:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 189
    iget-object p1, p0, Lcom/narvii/scene/poll/ScenePollPostFragment$doSubmit$1;->$msgRes:Ljava/lang/Integer;

    sget v0, Lcom/narvii/mediaeditor/R$string;->input_poll_title:I

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_1

    .line 190
    iget-object p1, p0, Lcom/narvii/scene/poll/ScenePollPostFragment$doSubmit$1;->this$0:Lcom/narvii/scene/poll/ScenePollPostFragment;

    sget v0, Lcom/narvii/mediaeditor/R$id;->title:I

    invoke-virtual {p1, v0}, Lcom/narvii/scene/poll/ScenePollPostFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 191
    new-instance p1, Lcom/narvii/scene/poll/ScenePollPostFragment$doSubmit$1$1;

    invoke-direct {p1, p0}, Lcom/narvii/scene/poll/ScenePollPostFragment$doSubmit$1$1;-><init>(Lcom/narvii/scene/poll/ScenePollPostFragment$doSubmit$1;)V

    const-wide/16 v0, 0x32

    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_1
    :goto_0
    return-void
.end method
