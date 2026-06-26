.class Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer$1;
.super Ljava/lang/Object;
.source "ChatInputFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->doEndChat()V
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
.field final synthetic this$1:Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;


# direct methods
.method constructor <init>(Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;)V
    .locals 0

    .line 1852
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer$1;->this$1:Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1855
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1856
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer$1;->this$1:Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;

    iget-object p1, p1, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    const-string v0, "HangUpButton"

    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    :cond_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1852
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/input/ChatInputFragment$SideMenuEventDealer$1;->call(Ljava/lang/Boolean;)V

    return-void
.end method
