.class public Lai/medialab/medialabads2/MediaLabAds$Companion;
.super Ljava/lang/Object;
.source "MediaLabAds$Companion.java"


# static fields
.field public static INSTANCE$stub:Lai/medialab/medialabads2/MediaLabAds$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lai/medialab/medialabads2/MediaLabAds$Companion;

    invoke-direct {v0}, Lai/medialab/medialabads2/MediaLabAds$Companion;-><init>()V

    sput-object v0, Lai/medialab/medialabads2/MediaLabAds$Companion;->INSTANCE$stub:Lai/medialab/medialabads2/MediaLabAds$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInstance()Lai/medialab/medialabads2/MediaLabAds;
    .locals 1

    sget-object v0, Lai/medialab/medialabads2/MediaLabAds;->INSTANCE$stub:Lai/medialab/medialabads2/MediaLabAds;

    return-object v0
.end method
