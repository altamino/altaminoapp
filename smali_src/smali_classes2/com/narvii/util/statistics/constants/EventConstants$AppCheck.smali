.class public final Lcom/narvii/util/statistics/constants/EventConstants$AppCheck;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/statistics/constants/EventConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppCheck"
.end annotation


# static fields
.field public static final FAILED:Ljava/lang/String; = "app_check_failed"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Lcom/narvii/util/statistics/constants/EventConstants$AppCheck;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SUCCESS:Ljava/lang/String; = "app_check_passed_successfully"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/narvii/util/statistics/constants/EventConstants$AppCheck;

    invoke-direct {v0}, Lcom/narvii/util/statistics/constants/EventConstants$AppCheck;-><init>()V

    sput-object v0, Lcom/narvii/util/statistics/constants/EventConstants$AppCheck;->INSTANCE:Lcom/narvii/util/statistics/constants/EventConstants$AppCheck;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method
