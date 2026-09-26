.class Lcom/narvii/poweruser/SendBroadcastDialogFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/poweruser/SendBroadcastDialogFragment$1;->this$0:Lcom/narvii/poweruser/SendBroadcastDialogFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    .line 2
    if-eqz p2, :cond_0

    .line 3
    goto :goto_0

    .line 4
    .line 5
    :cond_0
    iget-object p1, p0, Lcom/narvii/poweruser/SendBroadcastDialogFragment$1;->this$0:Lcom/narvii/poweruser/SendBroadcastDialogFragment;

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/narvii/poweruser/SendBroadcastDialogFragment;->f(Lcom/narvii/poweruser/SendBroadcastDialogFragment;)V

    .line 9
    :goto_0
    return-void
.end method
