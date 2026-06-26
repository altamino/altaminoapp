.class Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "CommonUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/internal/CommonUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AgoraPhoneStateListener"
.end annotation


# instance fields
.field private mSignalStrenth:Landroid/telephony/SignalStrength;

.field private phoneStatusNeedResume:Z

.field final synthetic this$0:Lio/agora/rtc/internal/CommonUtility;


# direct methods
.method public constructor <init>(Lio/agora/rtc/internal/CommonUtility;)V
    .locals 0

    .line 859
    iput-object p1, p0, Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;->this$0:Lio/agora/rtc/internal/CommonUtility;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    const/4 p1, 0x0

    .line 857
    iput-boolean p1, p0, Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;->phoneStatusNeedResume:Z

    return-void
.end method

.method private invokeMethod(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    .line 894
    :try_start_0
    iget-object v1, p0, Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;->mSignalStrenth:Landroid/telephony/SignalStrength;

    if-eqz v1, :cond_0

    .line 895
    iget-object v1, p0, Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;->mSignalStrenth:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Class;

    invoke-virtual {v1, p1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 897
    iget-object v1, p0, Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;->mSignalStrenth:Landroid/telephony/SignalStrength;

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_0
    return v0
.end method


# virtual methods
.method public getAsuLevel()I
    .locals 2

    .line 882
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_0

    const-string v0, "getAsuLevel"

    .line 887
    invoke-direct {p0, v0}, Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;->invokeMethod(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getLevel()I
    .locals 1

    const-string v0, "getLevel"

    .line 876
    invoke-direct {p0, v0}, Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;->invokeMethod(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getRssi()I
    .locals 2

    .line 864
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_0

    const-string v0, "getDbm"

    .line 869
    invoke-direct {p0, v0}, Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;->invokeMethod(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 7

    .line 912
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 937
    :cond_0
    invoke-static {}, Lio/agora/rtc/internal/CommonUtility;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "system phone call start"

    invoke-static {p1, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    iput-boolean p2, p0, Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;->phoneStatusNeedResume:Z

    .line 939
    iget-object v1, p0, Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;->this$0:Lio/agora/rtc/internal/CommonUtility;

    invoke-static {v1}, Lio/agora/rtc/internal/CommonUtility;->access$200(Lio/agora/rtc/internal/CommonUtility;)J

    move-result-wide v2

    const/4 v4, 0x0

    const/16 v5, 0x16

    const/4 v6, 0x2

    invoke-static/range {v1 .. v6}, Lio/agora/rtc/internal/CommonUtility;->access$300(Lio/agora/rtc/internal/CommonUtility;JZII)V

    goto :goto_0

    .line 932
    :cond_1
    invoke-static {}, Lio/agora/rtc/internal/CommonUtility;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "system phone call ring"

    invoke-static {p1, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    iput-boolean p2, p0, Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;->phoneStatusNeedResume:Z

    .line 934
    iget-object v1, p0, Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;->this$0:Lio/agora/rtc/internal/CommonUtility;

    invoke-static {v1}, Lio/agora/rtc/internal/CommonUtility;->access$200(Lio/agora/rtc/internal/CommonUtility;)J

    move-result-wide v2

    const/4 v4, 0x0

    const/16 v5, 0x16

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lio/agora/rtc/internal/CommonUtility;->access$300(Lio/agora/rtc/internal/CommonUtility;JZII)V

    goto :goto_0

    .line 916
    :cond_2
    iget-boolean p1, p0, Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;->phoneStatusNeedResume:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 917
    iput-boolean p1, p0, Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;->phoneStatusNeedResume:Z

    .line 918
    invoke-static {}, Lio/agora/rtc/internal/CommonUtility;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string p2, "system phone call end delay 1000ms"

    invoke-static {p1, p2}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener$1;

    invoke-direct {p2, p0}, Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener$1;-><init>(Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 0

    .line 906
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    .line 907
    iput-object p1, p0, Lio/agora/rtc/internal/CommonUtility$AgoraPhoneStateListener;->mSignalStrenth:Landroid/telephony/SignalStrength;

    return-void
.end method
