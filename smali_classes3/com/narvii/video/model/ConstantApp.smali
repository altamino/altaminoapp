.class public Lcom/narvii/video/model/ConstantApp;
.super Ljava/lang/Object;
.source "ConstantApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/video/model/ConstantApp$AppError;,
        Lcom/narvii/video/model/ConstantApp$PrefManager;
    }
.end annotation


# static fields
.field public static final ACTION_KEY_CHANNEL_NAME:Ljava/lang/String; = "ecHANEL"

.field public static final ACTION_KEY_ENCRYPTION_KEY:Ljava/lang/String; = "xdL_encr_key_"

.field public static final ACTION_KEY_ENCRYPTION_MODE:Ljava/lang/String; = "tOK_edsx_Mode"

.field public static final APP_BUILD_DATE:Ljava/lang/String; = "today"

.field public static final BASE_VALUE_PERMISSION:I = 0x1

.field public static final DEFAULT_PROFILE_IDX:I = 0x2

.field public static final DEFAULT_VIDEO_PROFILE_INDEX:I = 0x2

.field public static final MAX_PEER_COUNT:I = 0x4

.field public static final PERMISSION_REQ_ID_CAMERA:I = 0x3

.field public static final PERMISSION_REQ_ID_RECORD_AUDIO:I = 0x2

.field public static final PERMISSION_REQ_ID_WRITE_EXTERNAL_STORAGE:I = 0x4

.field public static VIDEO_PROFILES:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 17
    fill-array-data v0, :array_0

    sput-object v0, Lcom/narvii/video/model/ConstantApp;->VIDEO_PROFILES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0xa
        0x14
        0x1e
        0x28
        0x32
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
