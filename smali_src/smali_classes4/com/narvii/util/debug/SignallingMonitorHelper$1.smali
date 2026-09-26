.class Lcom/narvii/util/debug/SignallingMonitorHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/debug/SignallingMonitorHelper$1;->this$0:Lcom/narvii/util/debug/SignallingMonitorHelper;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/util/debug/SignallingMonitorHelper$1;->val$a:Landroid/app/Activity;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/util/debug/SignallingMonitorHelper$1;->val$popup:Landroid/widget/PopupWindow;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 p1, 0x0

    .line 11
    .line 12
    iput p1, p0, Lcom/narvii/util/debug/SignallingMonitorHelper$1;->fail:I

    .line 13
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/narvii/util/debug/SignallingMonitorHelper$1;->val$a:Landroid/app/Activity;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/util/Utils;->getStatusBarHeight(Landroid/content/Context;)I

    .line 6
    move-result v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/util/debug/SignallingMonitorHelper$1;->val$popup:Landroid/widget/PopupWindow;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/narvii/util/debug/SignallingMonitorHelper$1;->val$a:Landroid/app/Activity;

    .line 11
    .line 12
    .line 13
    const v3, 0x1020002

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    const/16 v3, 0x31

    .line 20
    const/4 v4, 0x0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :catch_0
    iget v0, p0, Lcom/narvii/util/debug/SignallingMonitorHelper$1;->fail:I

    .line 27
    .line 28
    add-int/lit8 v0, v0, 0x1

    .line 29
    .line 30
    iput v0, p0, Lcom/narvii/util/debug/SignallingMonitorHelper$1;->fail:I

    .line 31
    const/4 v1, 0x6

    .line 32
    .line 33
    if-ge v0, v1, :cond_0

    .line 34
    .line 35
    const-wide/16 v0, 0x64

    .line 36
    .line 37
    .line 38
    invoke-static {p0, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 39
    :cond_0
    :goto_0
    return-void
.end method
