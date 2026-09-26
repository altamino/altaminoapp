.class Lcom/narvii/chat/input/ChatInputFragment$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/input/ChatInputFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$13;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$13;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->s(Lcom/narvii/chat/input/ChatInputFragment;)Landroid/widget/TextView;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$13;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->s(Lcom/narvii/chat/input/ChatInputFragment;)Landroid/widget/TextView;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 18
    move-result v0

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$13;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->s(Lcom/narvii/chat/input/ChatInputFragment;)Landroid/widget/TextView;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$13;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->L(Lcom/narvii/chat/input/ChatInputFragment;)Landroid/widget/TextView;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$13;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 41
    .line 42
    .line 43
    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->L(Lcom/narvii/chat/input/ChatInputFragment;)Landroid/widget/TextView;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 48
    move-result v0

    .line 49
    .line 50
    if-nez v0, :cond_1

    .line 51
    .line 52
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$13;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 53
    .line 54
    .line 55
    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->L(Lcom/narvii/chat/input/ChatInputFragment;)Landroid/widget/TextView;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 60
    goto :goto_0

    .line 61
    .line 62
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/input/ChatInputFragment$13;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 63
    .line 64
    .line 65
    invoke-static {v0}, Lcom/narvii/chat/input/ChatInputFragment;->V(Lcom/narvii/chat/input/ChatInputFragment;)V

    .line 66
    :goto_0
    return-void
.end method
