.class Lcom/narvii/chat/input/ChatInputFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "ChatInputFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/input/ChatInputFragment;->onCreate(Landroid/os/Bundle;)V
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

    .line 290
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$1;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 293
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$1;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-virtual {p1}, Lcom/narvii/chat/input/ChatInputFragment;->updateViews()V

    return-void
.end method
