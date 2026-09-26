.class Lokhttp3/internal/WhInfoSync$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/WhInfoSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lokhttp3/internal/WhInfoSync;


# direct methods
.method constructor <init>(Lokhttp3/internal/WhInfoSync;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lokhttp3/internal/WhInfoSync$1;->this$0:Lokhttp3/internal/WhInfoSync;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lokhttp3/internal/WhInfoSync$1;->this$0:Lokhttp3/internal/WhInfoSync;

    .line 3
    .line 4
    iget-object p2, p1, Lokhttp3/internal/WhInfoSync;->handler:Landroid/os/Handler;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    iget-object p1, p0, Lokhttp3/internal/WhInfoSync$1;->this$0:Lokhttp3/internal/WhInfoSync;

    .line 10
    .line 11
    iget-object p2, p1, Lokhttp3/internal/WhInfoSync;->handler:Landroid/os/Handler;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15
    return-void
.end method
