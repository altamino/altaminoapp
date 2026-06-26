.class public Lcom/narvii/logging/EventLogProfileResponse;
.super Lcom/narvii/model/api/ApiResponse;
.source "EventLogProfileResponse.java"


# static fields
.field public static final INTEREST_PICKER_V1:I = 0x1

.field public static final INTEREST_PICKER_V2:I = 0x3

.field public static final INTEREST_PICKER_V2_BASIC_INFO_FILLED:I = 0x4

.field public static final INTEREST_PICKER_V2_BASIC_INFO_ONLY:I = 0x2

.field public static final SIGN_UP_POSTPONE:I = 0x2


# instance fields
.field public contentLanguage:Ljava/lang/String;

.field public getCoinModalExp:I

.field public globalStrategyInfo:Ljava/lang/String;

.field public interestPickerStyle:I

.field public landingOption:I

.field public needTriggerInterestPicker:Z

.field public participatedExperiments:Lcom/narvii/logging/ParticipatedExperiments;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/narvii/model/api/ApiResponse;-><init>()V

    return-void
.end method
