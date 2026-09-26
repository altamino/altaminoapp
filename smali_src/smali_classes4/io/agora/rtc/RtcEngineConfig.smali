.class public Lio/agora/rtc/RtcEngineConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtc/RtcEngineConfig$AreaCode;,
        Lio/agora/rtc/RtcEngineConfig$LogConfig;
    }
.end annotation


# instance fields
.field public mAppId:Ljava/lang/String;

.field public mAreaCode:I

.field public mContext:Landroid/content/Context;

.field public mEventHandler:Lio/agora/rtc/IRtcEngineEventHandler;

.field public mLogConfig:Lio/agora/rtc/RtcEngineConfig$LogConfig;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-object v0, p0, Lio/agora/rtc/RtcEngineConfig;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    iput-object v0, p0, Lio/agora/rtc/RtcEngineConfig;->mEventHandler:Lio/agora/rtc/IRtcEngineEventHandler;

    .line 9
    .line 10
    const-string v0, ""

    .line 11
    .line 12
    iput-object v0, p0, Lio/agora/rtc/RtcEngineConfig;->mAppId:Ljava/lang/String;

    .line 13
    const/4 v0, -0x1

    .line 14
    .line 15
    iput v0, p0, Lio/agora/rtc/RtcEngineConfig;->mAreaCode:I

    .line 16
    .line 17
    new-instance v0, Lio/agora/rtc/RtcEngineConfig$LogConfig;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0}, Lio/agora/rtc/RtcEngineConfig$LogConfig;-><init>()V

    .line 21
    .line 22
    iput-object v0, p0, Lio/agora/rtc/RtcEngineConfig;->mLogConfig:Lio/agora/rtc/RtcEngineConfig$LogConfig;

    .line 23
    return-void
.end method
