.class Lcom/narvii/chat/input/ChatInputFragment$21;
.super Ljava/lang/Object;
.source "ChatInputFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/input/ChatInputFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/input/ChatInputFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/input/ChatInputFragment;)V
    .locals 0

    .line 1357
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$21;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1360
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$21;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    iget-object v0, v0, Lcom/narvii/chat/input/ChatInputFragment;->edit:Lcom/narvii/chat/input/MentionedEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1361
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$21;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->access$900(Lcom/narvii/chat/input/ChatInputFragment;)V

    return-void
.end method
