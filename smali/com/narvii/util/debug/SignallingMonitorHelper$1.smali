.class Lcom/narvii/util/debug/SignallingMonitorHelper$1;
.super Ljava/lang/Object;
.source "SignallingMonitorHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/debug/SignallingMonitorHelper;->showPopup(Landroid/app/Activity;)Landroid/widget/PopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field fail:I

.field final synthetic this$0:Lcom/narvii/util/debug/SignallingMonitorHelper;

.field final synthetic val$a:Landroid/app/Activity;

.field final synthetic val$popup:Landroid/widget/PopupWindow;


# direct methods
.method constructor <init>(Lcom/narvii/util/debug/SignallingMonitorHelper;Landroid/app/Activity;Landroid/widget/PopupWindow;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/narvii/util/debug/SignallingMonitorHelper$1;->this$0:Lcom/narvii/util/debug/SignallingMonitorHelper;

    iput-object p2, p0, Lcom/narvii/util/debug/SignallingMonitorHelper$1;->val$a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/narvii/util/debug/SignallingMonitorHelper$1;->val$popup:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 83
    iput p1, p0, Lcom/narvii/util/debug/SignallingMonitorHelper$1;->fail:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/narvii/util/debug/SignallingMonitorHelper$1;->val$a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/narvii/util/Utils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    .line 89
    iget-object v1, p0, Lcom/narvii/util/debug/SignallingMonitorHelper$1;->val$popup:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/narvii/util/debug/SignallingMonitorHelper$1;->val$a:Landroid/app/Activity;

    const v3, 0x1020002

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x31

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 91
    iget v0, p0, Lcom/narvii/util/debug/SignallingMonitorHelper$1;->fail:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/narvii/util/debug/SignallingMonitorHelper$1;->fail:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    const-wide/16 v0, 0x64

    .line 92
    invoke-static {p0, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_0
    :goto_0
    return-void
.end method
