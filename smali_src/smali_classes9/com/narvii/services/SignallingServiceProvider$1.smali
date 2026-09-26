.class Lcom/narvii/services/SignallingServiceProvider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/services/SignallingServiceProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/chat/signalling/SignallingService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/services/SignallingServiceProvider;

.field final synthetic val$srv:Lcom/narvii/chat/signalling/SignallingService;


# direct methods
.method constructor <init>(Lcom/narvii/services/SignallingServiceProvider;Lcom/narvii/chat/signalling/SignallingService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/services/SignallingServiceProvider$1;->this$0:Lcom/narvii/services/SignallingServiceProvider;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/services/SignallingServiceProvider$1;->val$srv:Lcom/narvii/chat/signalling/SignallingService;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/services/SignallingServiceProvider$1;->val$srv:Lcom/narvii/chat/signalling/SignallingService;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Lcom/narvii/chat/signalling/SignallingService;->leaveAllThreads(Z)V

    .line 7
    return-void
.end method
