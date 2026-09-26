.class public Lai/medialab/medialabanalytics/MediaLabAnalytics$Companion;
.super Ljava/lang/Object;
.source "MediaLabAnalytics$Companion.java"


# static fields
.field public static INSTANCE$stub:Lai/medialab/medialabanalytics/MediaLabAnalytics$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lai/medialab/medialabanalytics/MediaLabAnalytics$Companion;

    invoke-direct {v0}, Lai/medialab/medialabanalytics/MediaLabAnalytics$Companion;-><init>()V

    sput-object v0, Lai/medialab/medialabanalytics/MediaLabAnalytics$Companion;->INSTANCE$stub:Lai/medialab/medialabanalytics/MediaLabAnalytics$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInstance()Lai/medialab/medialabanalytics/MediaLabAnalytics;
    .locals 1

    sget-object v0, Lai/medialab/medialabanalytics/MediaLabAnalytics;->INSTANCE$stub:Lai/medialab/medialabanalytics/MediaLabAnalytics;

    return-object v0
.end method
