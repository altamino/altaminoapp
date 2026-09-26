.class public final Lv4/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BUILD_TYPE:Ljava/lang/String; = "release"

.field public static final DEBUG:Z = false

.field public static final ENFORCE_DEFAULT_LOG_SRC:Ljava/lang/Boolean;

.field public static final FIREPERF_VERSION_NAME:Ljava/lang/String;

.field public static final LIBRARY_PACKAGE_NAME:Ljava/lang/String; = "com.google.firebase.perf"

.field public static final TRANSPORT_LOG_SRC:Ljava/lang/String;

.field public static final VERSION_NAME:Ljava/lang/String; = "20.5.1"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lv4/a;->ENFORCE_DEFAULT_LOG_SRC:Ljava/lang/Boolean;

    const-string v0, "20.5.1"

    sput-object v0, Lv4/a;->FIREPERF_VERSION_NAME:Ljava/lang/String;

    const-string v0, "FIREPERF"

    sput-object v0, Lv4/a;->TRANSPORT_LOG_SRC:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method
