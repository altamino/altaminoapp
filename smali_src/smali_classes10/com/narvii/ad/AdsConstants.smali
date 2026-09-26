.class public final Lcom/narvii/ad/AdsConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FEED_2_AD_UNIT_NAME:Ljava/lang/String; = "feed_2"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final FEED_AD_UNIT_NAME:Ljava/lang/String; = "feed"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Lcom/narvii/ad/AdsConstants;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/narvii/ad/AdsConstants;

    invoke-direct {v0}, Lcom/narvii/ad/AdsConstants;-><init>()V

    sput-object v0, Lcom/narvii/ad/AdsConstants;->INSTANCE:Lcom/narvii/ad/AdsConstants;

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
