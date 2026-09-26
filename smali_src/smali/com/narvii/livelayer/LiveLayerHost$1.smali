.class Lcom/narvii/livelayer/LiveLayerHost$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerHost$1;->this$0:Lcom/narvii/livelayer/LiveLayerHost;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method

.method public static safedk_Activity_startActivity_9d898b58165fa4ba0e12c3900a2b8533(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroid/app/Activity;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerHost$1;->this$0:Lcom/narvii/livelayer/LiveLayerHost;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/livelayer/LiveLayerHost;->activity:Landroid/app/Activity;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const-class p1, Lcom/narvii/livelayer/LiveLayerFragment;

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/narvii/livelayer/LiveLayerActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    const-string v0, "customFinishAnimOut"

    .line 15
    .line 16
    .line 17
    const v1, 0x7f01000d

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 21
    .line 22
    const-string v0, "customFinishAnimIn"

    .line 23
    const/4 v1, 0x0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerHost$1;->this$0:Lcom/narvii/livelayer/LiveLayerHost;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/narvii/livelayer/LiveLayerHost;->activity:Landroid/app/Activity;

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Lcom/narvii/livelayer/LiveLayerHost;->getSource(Landroid/app/Activity;)Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    const-string v2, "Source"

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    .line 41
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerHost$1;->this$0:Lcom/narvii/livelayer/LiveLayerHost;

    .line 42
    .line 43
    iget v0, v0, Lcom/narvii/livelayer/LiveLayerHost;->cid:I

    .line 44
    .line 45
    const-string v2, "__communityId"

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 49
    .line 50
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerHost$1;->this$0:Lcom/narvii/livelayer/LiveLayerHost;

    .line 51
    .line 52
    iget-object v0, v0, Lcom/narvii/livelayer/LiveLayerHost;->activity:Landroid/app/Activity;

    .line 53
    .line 54
    .line 55
    invoke-static {v0}, Lcom/narvii/livelayer/LiveLayerActivity;->prepare(Landroid/app/Activity;)V

    .line 56
    .line 57
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerHost$1;->this$0:Lcom/narvii/livelayer/LiveLayerHost;

    .line 58
    .line 59
    iget-object v0, v0, Lcom/narvii/livelayer/LiveLayerHost;->activity:Landroid/app/Activity;

    .line 60
    .line 61
    .line 62
    invoke-static {v0, p1}, Lcom/narvii/livelayer/LiveLayerHost$1;->safedk_Activity_startActivity_9d898b58165fa4ba0e12c3900a2b8533(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 63
    .line 64
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerHost$1;->this$0:Lcom/narvii/livelayer/LiveLayerHost;

    .line 65
    .line 66
    iget-object p1, p1, Lcom/narvii/livelayer/LiveLayerHost;->activity:Landroid/app/Activity;

    .line 67
    .line 68
    .line 69
    const v0, 0x7f01000c

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 73
    :cond_0
    return-void
.end method
