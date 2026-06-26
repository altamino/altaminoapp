.class Lcom/narvii/chat/ChatFragment$6;
.super Ljava/lang/Object;
.source "ChatFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/ChatFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/ChatFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/ChatFragment;)V
    .locals 0

    .line 486
    iput-object p1, p0, Lcom/narvii/chat/ChatFragment$6;->this$0:Lcom/narvii/chat/ChatFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 1

    .line 489
    iget-object v0, p0, Lcom/narvii/chat/ChatFragment$6;->this$0:Lcom/narvii/chat/ChatFragment;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/narvii/chat/ChatFragment;->access$402(Lcom/narvii/chat/ChatFragment;Z)Z

    .line 490
    iget-object p1, p0, Lcom/narvii/chat/ChatFragment$6;->this$0:Lcom/narvii/chat/ChatFragment;

    invoke-static {p1}, Lcom/narvii/chat/ChatFragment;->access$100(Lcom/narvii/chat/ChatFragment;)V

    .line 491
    iget-object p1, p0, Lcom/narvii/chat/ChatFragment$6;->this$0:Lcom/narvii/chat/ChatFragment;

    invoke-static {p1}, Lcom/narvii/chat/ChatFragment;->access$200(Lcom/narvii/chat/ChatFragment;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 486
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/ChatFragment$6;->call(Ljava/lang/Boolean;)V

    return-void
.end method
