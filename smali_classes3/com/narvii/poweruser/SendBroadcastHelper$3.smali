.class Lcom/narvii/poweruser/SendBroadcastHelper$3;
.super Ljava/lang/Object;
.source "SendBroadcastHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/poweruser/SendBroadcastHelper;->processError(ILjava/lang/String;Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/poweruser/SendBroadcastHelper;

.field final synthetic val$onClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Lcom/narvii/poweruser/SendBroadcastHelper;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/narvii/poweruser/SendBroadcastHelper$3;->this$0:Lcom/narvii/poweruser/SendBroadcastHelper;

    iput-object p2, p0, Lcom/narvii/poweruser/SendBroadcastHelper$3;->val$onClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 197
    iget-object p1, p0, Lcom/narvii/poweruser/SendBroadcastHelper$3;->val$onClickListener:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 198
    invoke-interface {p1, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
