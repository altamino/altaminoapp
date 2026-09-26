.class Lcom/google/firebase/crashlytics/internal/settings/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final buildVersion:Ljava/lang/String;

.field public final deviceModel:Ljava/lang/String;

.field public final displayVersion:Ljava/lang/String;

.field public final googleAppId:Ljava/lang/String;

.field public final installIdProvider:Lcom/google/firebase/crashlytics/internal/common/c0;

.field public final instanceId:Ljava/lang/String;

.field public final osBuildVersion:Ljava/lang/String;

.field public final osDisplayVersion:Ljava/lang/String;

.field public final source:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/common/c0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/settings/j;->googleAppId:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/settings/j;->deviceModel:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/google/firebase/crashlytics/internal/settings/j;->osBuildVersion:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/google/firebase/crashlytics/internal/settings/j;->osDisplayVersion:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/google/firebase/crashlytics/internal/settings/j;->installIdProvider:Lcom/google/firebase/crashlytics/internal/common/c0;

    .line 14
    .line 15
    iput-object p6, p0, Lcom/google/firebase/crashlytics/internal/settings/j;->instanceId:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p7, p0, Lcom/google/firebase/crashlytics/internal/settings/j;->displayVersion:Ljava/lang/String;

    .line 18
    .line 19
    iput-object p8, p0, Lcom/google/firebase/crashlytics/internal/settings/j;->buildVersion:Ljava/lang/String;

    .line 20
    .line 21
    iput p9, p0, Lcom/google/firebase/crashlytics/internal/settings/j;->source:I

    .line 22
    return-void
.end method
