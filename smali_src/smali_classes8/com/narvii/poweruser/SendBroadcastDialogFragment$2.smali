.class Lcom/narvii/poweruser/SendBroadcastDialogFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/poweruser/SendBroadcastDialogFragment$2;->this$0:Lcom/narvii/poweruser/SendBroadcastDialogFragment;

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
    iget-object v0, p0, Lcom/narvii/poweruser/SendBroadcastDialogFragment$2;->this$0:Lcom/narvii/poweruser/SendBroadcastDialogFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/poweruser/SendBroadcastDialogFragment;->editText:Landroid/widget/EditText;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/narvii/util/SoftKeyboard;->showSoftKeyboard(Landroid/widget/EditText;)V

    .line 10
    :cond_0
    return-void
.end method
