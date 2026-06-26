.class Lcom/narvii/poweruser/SendBroadcastDialogFragment$2;
.super Ljava/lang/Object;
.source "SendBroadcastDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/poweruser/SendBroadcastDialogFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/poweruser/SendBroadcastDialogFragment;


# direct methods
.method constructor <init>(Lcom/narvii/poweruser/SendBroadcastDialogFragment;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/narvii/poweruser/SendBroadcastDialogFragment$2;->this$0:Lcom/narvii/poweruser/SendBroadcastDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/narvii/poweruser/SendBroadcastDialogFragment$2;->this$0:Lcom/narvii/poweruser/SendBroadcastDialogFragment;

    iget-object v0, v0, Lcom/narvii/poweruser/SendBroadcastDialogFragment;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 98
    invoke-static {v0}, Lcom/narvii/util/SoftKeyboard;->showSoftKeyboard(Landroid/widget/EditText;)V

    :cond_0
    return-void
.end method
