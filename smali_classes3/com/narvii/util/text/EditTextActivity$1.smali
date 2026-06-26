.class Lcom/narvii/util/text/EditTextActivity$1;
.super Ljava/lang/Object;
.source "EditTextActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/text/EditTextActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/util/text/EditTextActivity;


# direct methods
.method constructor <init>(Lcom/narvii/util/text/EditTextActivity;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/narvii/util/text/EditTextActivity$1;->this$0:Lcom/narvii/util/text/EditTextActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-eq p2, p1, :cond_1

    if-eqz p3, :cond_0

    .line 48
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 49
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p2, 0x42

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 50
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/narvii/util/text/EditTextActivity$1;->this$0:Lcom/narvii/util/text/EditTextActivity;

    invoke-virtual {p1}, Lcom/narvii/util/text/EditTextActivity;->finish()V

    const/4 p1, 0x1

    return p1
.end method
