.class public final Lcom/narvii/util/mixpanel/Tracking;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/util/mixpanel/Tracking$CONSTANTS;,
        Lcom/narvii/util/mixpanel/Tracking$Events;,
        Lcom/narvii/util/mixpanel/Tracking$Properties;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/narvii/util/mixpanel/Tracking;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/narvii/util/mixpanel/Tracking;

    invoke-direct {v0}, Lcom/narvii/util/mixpanel/Tracking;-><init>()V

    sput-object v0, Lcom/narvii/util/mixpanel/Tracking;->INSTANCE:Lcom/narvii/util/mixpanel/Tracking;

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
