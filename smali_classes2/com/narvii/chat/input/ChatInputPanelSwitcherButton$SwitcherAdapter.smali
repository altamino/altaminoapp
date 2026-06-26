.class public interface abstract Lcom/narvii/chat/input/ChatInputPanelSwitcherButton$SwitcherAdapter;
.super Ljava/lang/Object;
.source "ChatInputPanelSwitcherButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/input/ChatInputPanelSwitcherButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SwitcherAdapter"
.end annotation


# virtual methods
.method public abstract checkThreadAvailable(Landroid/view/View;)Z
.end method

.method public abstract getValidPanelHeight()I
.end method

.method public abstract hidePanelWithKeyBoardSwitch(Landroid/view/View;)V
.end method

.method public abstract scrollChatListToBottom()V
.end method

.method public abstract showPanel(Landroid/view/View;)V
.end method

.method public abstract showPanelWithKeyBoardSwitch(Landroid/view/View;)V
.end method
