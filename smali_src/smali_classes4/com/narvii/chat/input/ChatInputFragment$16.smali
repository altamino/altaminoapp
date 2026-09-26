.class Lcom/narvii/chat/input/ChatInputFragment$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/input/ChatInputFragment;->updateViews()V
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
    iput-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$16;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    const/4 p1, 0x4

    .line 2
    .line 3
    if-eq p2, p1, :cond_1

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 9
    move-result p1

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 15
    move-result p1

    .line 16
    .line 17
    const/16 p2, 0x42

    .line 18
    .line 19
    if-ne p1, p2, :cond_0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    return p1

    .line 23
    .line 24
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/narvii/chat/input/ChatInputFragment$16;->this$0:Lcom/narvii/chat/input/ChatInputFragment;

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lcom/narvii/chat/input/ChatInputFragment;->E(Lcom/narvii/chat/input/ChatInputFragment;)Lcom/narvii/widget/TintButton;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 32
    const/4 p1, 0x1

    .line 33
    return p1
.end method
