.class Lio/agora/rtc/internal/AudioRoutingController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/internal/AudioRoutingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/rtc/internal/AudioRoutingController;


# direct methods
.method constructor <init>(Lio/agora/rtc/internal/AudioRoutingController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$1;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$1;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$000(Lio/agora/rtc/internal/AudioRoutingController;)V

    .line 6
    return-void
.end method
