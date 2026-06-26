.class Lcom/narvii/livelayer/LiveLayerHost$1;
.super Ljava/lang/Object;
.source "LiveLayerHost.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/livelayer/LiveLayerHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/livelayer/LiveLayerHost;


# direct methods
.method constructor <init>(Lcom/narvii/livelayer/LiveLayerHost;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerHost$1;->this$0:Lcom/narvii/livelayer/LiveLayerHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 48
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerHost$1;->this$0:Lcom/narvii/livelayer/LiveLayerHost;

    iget-object p1, p1, Lcom/narvii/livelayer/LiveLayerHost;->activity:Landroid/app/Activity;

    if-eqz p1, :cond_1

    .line 49
    const-class p1, Lcom/narvii/livelayer/LiveLayerFragment;

    invoke-static {p1}, Lcom/narvii/livelayer/LiveLayerActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const v0, 0x7f01000d

    const-string v1, "customFinishAnimOut"

    .line 50
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v0, 0x0

    const-string v1, "customFinishAnimIn"

    .line 51
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 52
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerHost$1;->this$0:Lcom/narvii/livelayer/LiveLayerHost;

    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerHost;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/narvii/livelayer/LiveLayerHost;->getSource(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Source"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerHost$1;->this$0:Lcom/narvii/livelayer/LiveLayerHost;

    iget v1, v1, Lcom/narvii/livelayer/LiveLayerHost;->cid:I

    const-string v2, "__communityId"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 54
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-le v1, v2, :cond_0

    .line 55
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerHost$1;->this$0:Lcom/narvii/livelayer/LiveLayerHost;

    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerHost;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/narvii/livelayer/LiveLayerActivity;->prepare(Landroid/app/Activity;)V

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerHost$1;->this$0:Lcom/narvii/livelayer/LiveLayerHost;

    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerHost;->activity:Landroid/app/Activity;

    invoke-virtual {v1, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 58
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerHost$1;->this$0:Lcom/narvii/livelayer/LiveLayerHost;

    iget-object p1, p1, Lcom/narvii/livelayer/LiveLayerHost;->activity:Landroid/app/Activity;

    const v1, 0x7f01000c

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_1
    return-void
.end method
