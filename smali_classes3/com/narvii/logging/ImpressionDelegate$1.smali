.class Lcom/narvii/logging/ImpressionDelegate$1;
.super Ljava/lang/Object;
.source "ImpressionDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/logging/ImpressionDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/logging/ImpressionDelegate;


# direct methods
.method constructor <init>(Lcom/narvii/logging/ImpressionDelegate;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/narvii/logging/ImpressionDelegate$1;->this$0:Lcom/narvii/logging/ImpressionDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 33
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/logging/ImpressionDelegate$1;->this$0:Lcom/narvii/logging/ImpressionDelegate;

    iget-object v1, v1, Lcom/narvii/logging/ImpressionDelegate;->innerImpressionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 34
    iget-object v0, p0, Lcom/narvii/logging/ImpressionDelegate$1;->this$0:Lcom/narvii/logging/ImpressionDelegate;

    iget-object v0, v0, Lcom/narvii/logging/ImpressionDelegate;->innerImpressionRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method
