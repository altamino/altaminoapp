.class Lcom/narvii/logging/ImpressionDelegate$2;
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

    .line 38
    iput-object p1, p0, Lcom/narvii/logging/ImpressionDelegate$2;->this$0:Lcom/narvii/logging/ImpressionDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/narvii/logging/ImpressionDelegate$2;->this$0:Lcom/narvii/logging/ImpressionDelegate;

    iget-object v0, v0, Lcom/narvii/logging/ImpressionDelegate;->nvFragment:Lcom/narvii/app/NVFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/narvii/logging/ImpressionDelegate$2;->this$0:Lcom/narvii/logging/ImpressionDelegate;

    invoke-virtual {v0}, Lcom/narvii/logging/ImpressionDelegate;->logImpressionQuit()V

    .line 43
    iget-object v0, p0, Lcom/narvii/logging/ImpressionDelegate$2;->this$0:Lcom/narvii/logging/ImpressionDelegate;

    invoke-virtual {v0}, Lcom/narvii/logging/ImpressionDelegate;->logImpression()V

    :cond_0
    return-void
.end method
