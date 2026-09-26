.class public Lai/medialab/medialabanalytics/MediaLabAnalytics;
.super Ljava/lang/Object;
.source "MediaLabAnalytics.java"


# static fields
.field public static Companion:Lai/medialab/medialabanalytics/MediaLabAnalytics$Companion;

.field public static INSTANCE$stub:Lai/medialab/medialabanalytics/MediaLabAnalytics;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lai/medialab/medialabanalytics/MediaLabAnalytics$Companion;

    invoke-direct {v0}, Lai/medialab/medialabanalytics/MediaLabAnalytics$Companion;-><init>()V

    sput-object v0, Lai/medialab/medialabanalytics/MediaLabAnalytics;->Companion:Lai/medialab/medialabanalytics/MediaLabAnalytics$Companion;

    new-instance v0, Lai/medialab/medialabanalytics/MediaLabAnalytics;

    invoke-direct {v0}, Lai/medialab/medialabanalytics/MediaLabAnalytics;-><init>()V

    sput-object v0, Lai/medialab/medialabanalytics/MediaLabAnalytics;->INSTANCE$stub:Lai/medialab/medialabanalytics/MediaLabAnalytics;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lai/medialab/medialabanalytics/MediaLabAnalytics;
    .locals 1

    sget-object v0, Lai/medialab/medialabanalytics/MediaLabAnalytics;->INSTANCE$stub:Lai/medialab/medialabanalytics/MediaLabAnalytics;

    return-object v0
.end method


# virtual methods
.method public getUid(Lai/medialab/medialabanalytics/UidListener;)V
    .locals 0

    return-void
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public trackEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    return-void
.end method

.method public trackEvent(Ljava/lang/String;[Landroid/util/Pair;)V
    .locals 0

    return-void
.end method
