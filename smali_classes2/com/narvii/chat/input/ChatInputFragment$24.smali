.class Lcom/narvii/chat/input/ChatInputFragment$24;
.super Ljava/lang/Object;
.source "ChatInputFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/input/ChatInputFragment;->hideAllPanels()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/chat/input/ChatInputFragment$PanelHideListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/input/ChatInputFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/input/ChatInputFragment;)V
    .locals 0

    .line 1571
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$24;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/chat/input/ChatInputFragment$PanelHideListener;)V
    .locals 0

    .line 1574
    invoke-interface {p1}, Lcom/narvii/chat/input/ChatInputFragment$PanelHideListener;->onPanelHide()V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1571
    check-cast p1, Lcom/narvii/chat/input/ChatInputFragment$PanelHideListener;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/input/ChatInputFragment$24;->call(Lcom/narvii/chat/input/ChatInputFragment$PanelHideListener;)V

    return-void
.end method
