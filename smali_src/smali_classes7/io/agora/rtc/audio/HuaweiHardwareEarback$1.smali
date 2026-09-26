.class Lio/agora/rtc/audio/HuaweiHardwareEarback$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/huawei/multimedia/audiokit/interfaces/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/audio/HuaweiHardwareEarback;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/rtc/audio/HuaweiHardwareEarback;


# direct methods
.method constructor <init>(Lio/agora/rtc/audio/HuaweiHardwareEarback;)V
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
    iput-object p1, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback$1;->this$0:Lio/agora/rtc/audio/HuaweiHardwareEarback;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onResult(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "HuaweiHardwareEarback"

    .line 3
    .line 4
    if-eqz p1, :cond_2

    .line 5
    const/4 v1, 0x2

    .line 6
    .line 7
    if-eq p1, v1, :cond_1

    .line 8
    .line 9
    const/16 v1, 0x3e8

    .line 10
    .line 11
    if-eq p1, v1, :cond_0

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    const-string v2, "IAudioKitCallback: onResult error number "

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    .line 31
    invoke-static {v0, p1}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :cond_0
    iget-object p1, p0, Lio/agora/rtc/audio/HuaweiHardwareEarback$1;->this$0:Lio/agora/rtc/audio/HuaweiHardwareEarback;

    .line 35
    const/4 v1, 0x1

    .line 36
    .line 37
    .line 38
    invoke-static {p1, v1}, Lio/agora/rtc/audio/HuaweiHardwareEarback;->access$002(Lio/agora/rtc/audio/HuaweiHardwareEarback;Z)Z

    .line 39
    .line 40
    const-string p1, "IAudioKitCallback: HwAudioKaraokeFeatureKit init success "

    .line 41
    .line 42
    .line 43
    invoke-static {v0, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_1
    const-string p1, "IAudioKitCallback: audio kit not installed"

    .line 47
    .line 48
    .line 49
    invoke-static {v0, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    goto :goto_0

    .line 51
    .line 52
    :cond_2
    const-string p1, "IAudioKitCallback: HwAudioKit init success"

    .line 53
    .line 54
    .line 55
    invoke-static {v0, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :goto_0
    return-void
.end method
