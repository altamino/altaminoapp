.class Lio/agora/rtc/audio/OppoHardwareEarback$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coloros/ocs/base/common/api/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/audio/OppoHardwareEarback;->enableEarbackFeature(Z)I
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
    iput-object p1, p0, Lio/agora/rtc/audio/OppoHardwareEarback$2;->this$0:Lio/agora/rtc/audio/OppoHardwareEarback;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onConnectionSucceed()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/audio/OppoHardwareEarback$2;->this$0:Lio/agora/rtc/audio/OppoHardwareEarback;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lio/agora/rtc/audio/OppoHardwareEarback;->access$100(Lio/agora/rtc/audio/OppoHardwareEarback;)Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lio/agora/rtc/audio/OppoHardwareEarback$2;->this$0:Lio/agora/rtc/audio/OppoHardwareEarback;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lio/agora/rtc/audio/OppoHardwareEarback;->access$100(Lio/agora/rtc/audio/OppoHardwareEarback;)Landroid/content/Context;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lcom/coloros/ocs/mediaunit/d;->a(Landroid/content/Context;)Lcom/coloros/ocs/mediaunit/e;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/coloros/ocs/mediaunit/e;->r()I

    .line 22
    :cond_0
    return-void
.end method
