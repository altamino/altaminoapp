.class Lcom/meicam/sdk/NvsStatisticsSender$1;
.super Ljava/lang/Object;
.source "NvsStatisticsSender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meicam/sdk/NvsStatisticsSender;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meicam/sdk/NvsStatisticsSender;


# direct methods
.method constructor <init>(Lcom/meicam/sdk/NvsStatisticsSender;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/meicam/sdk/NvsStatisticsSender$1;->this$0:Lcom/meicam/sdk/NvsStatisticsSender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 35
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 36
    iget-object v0, p0, Lcom/meicam/sdk/NvsStatisticsSender$1;->this$0:Lcom/meicam/sdk/NvsStatisticsSender;

    invoke-static {v0}, Lcom/meicam/sdk/NvsStatisticsSender;->access$000(Lcom/meicam/sdk/NvsStatisticsSender;)V

    .line 37
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
