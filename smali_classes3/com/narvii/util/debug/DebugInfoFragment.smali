.class public Lcom/narvii/util/debug/DebugInfoFragment;
.super Lcom/narvii/app/NVFragment;
.source "DebugInfoFragment.java"


# instance fields
.field info:Ljava/lang/String;

.field larkRobot:Lcom/narvii/util/debug/LarkRobot;

.field simpleInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 30
    new-instance v0, Lcom/narvii/util/debug/LarkRobot;

    invoke-direct {v0, p0}, Lcom/narvii/util/debug/LarkRobot;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/util/debug/DebugInfoFragment;->larkRobot:Lcom/narvii/util/debug/LarkRobot;

    return-void
.end method


# virtual methods
.method public getClipboard()Ljava/lang/String;
    .locals 3

    .line 111
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 112
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 113
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 115
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 34
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "Debug info"

    .line 35
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b011f

    const/4 v0, 0x0

    .line 41
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 46
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lcom/narvii/util/debug/DebugInfoFragment;->getClipboard()Ljava/lang/String;

    move-result-object p1

    .line 49
    new-instance p2, Lcom/narvii/util/debug/DebugInfoFragment$1;

    invoke-direct {p2, p0, p1}, Lcom/narvii/util/debug/DebugInfoFragment$1;-><init>(Lcom/narvii/util/debug/DebugInfoFragment;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 101
    new-instance p1, Lcom/narvii/util/debug/DebugInfoFragment$2;

    invoke-direct {p1, p0}, Lcom/narvii/util/debug/DebugInfoFragment$2;-><init>(Lcom/narvii/util/debug/DebugInfoFragment;)V

    const-string p2, "Send"

    invoke-virtual {p0, p2, p1}, Lcom/narvii/app/NVFragment;->setActionBarRightButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    return-void
.end method
