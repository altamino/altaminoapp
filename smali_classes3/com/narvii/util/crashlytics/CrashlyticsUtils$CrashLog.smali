.class public Lcom/narvii/util/crashlytics/CrashlyticsUtils$CrashLog;
.super Ljava/lang/Object;
.source "CrashlyticsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/crashlytics/CrashlyticsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CrashLog"
.end annotation


# instance fields
.field public crashType:I

.field public el1Active:Ljava/lang/String;

.field public el2Activities:Ljava/lang/String;

.field public el3Images:Ljava/lang/String;

.field public errorMessage:Ljava/lang/String;

.field public errorStack:Ljava/lang/String;

.field public errorType:Ljava/lang/String;

.field public states:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
