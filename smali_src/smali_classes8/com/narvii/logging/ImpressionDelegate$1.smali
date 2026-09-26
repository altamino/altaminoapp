.class Lcom/narvii/logging/ImpressionDelegate$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/logging/ImpressionDelegate$1;->this$0:Lcom/narvii/logging/ImpressionDelegate;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/logging/ImpressionDelegate$1;->this$0:Lcom/narvii/logging/ImpressionDelegate;

    .line 5
    .line 6
    iget-object v1, v1, Lcom/narvii/logging/ImpressionDelegate;->innerImpressionRunnable:Ljava/lang/Runnable;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/logging/ImpressionDelegate$1;->this$0:Lcom/narvii/logging/ImpressionDelegate;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/narvii/logging/ImpressionDelegate;->innerImpressionRunnable:Ljava/lang/Runnable;

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 17
    return-void
.end method
