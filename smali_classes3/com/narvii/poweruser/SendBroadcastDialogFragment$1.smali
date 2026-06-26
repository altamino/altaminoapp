.class Lcom/narvii/poweruser/SendBroadcastDialogFragment$1;
.super Ljava/lang/Object;
.source "SendBroadcastDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/poweruser/SendBroadcastDialogFragment;->onClick(Landroid/view/View;)V
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

    .line 75
    iput-object p1, p0, Lcom/narvii/poweruser/SendBroadcastDialogFragment$1;->this$0:Lcom/narvii/poweruser/SendBroadcastDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    if-eqz p2, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    iget-object p1, p0, Lcom/narvii/poweruser/SendBroadcastDialogFragment$1;->this$0:Lcom/narvii/poweruser/SendBroadcastDialogFragment;

    invoke-static {p1}, Lcom/narvii/poweruser/SendBroadcastDialogFragment;->access$000(Lcom/narvii/poweruser/SendBroadcastDialogFragment;)V

    :goto_0
    return-void
.end method
