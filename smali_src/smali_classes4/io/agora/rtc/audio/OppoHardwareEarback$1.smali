.class Lio/agora/rtc/audio/OppoHardwareEarback$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coloros/ocs/base/common/api/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/audio/OppoHardwareEarback;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/rtc/audio/OppoHardwareEarback;


# direct methods
.method constructor <init>(Lio/agora/rtc/audio/OppoHardwareEarback;)V
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
    iput-object p1, p0, Lio/agora/rtc/audio/OppoHardwareEarback$1;->this$0:Lio/agora/rtc/audio/OppoHardwareEarback;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onConnectionSucceed()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/audio/OppoHardwareEarback$1;->this$0:Lio/agora/rtc/audio/OppoHardwareEarback;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lio/agora/rtc/audio/OppoHardwareEarback;->access$002(Lio/agora/rtc/audio/OppoHardwareEarback;Z)Z

    .line 7
    return-void
.end method
