.class public final Lcom/narvii/util/mixpanel/Tracking$CONSTANTS;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/mixpanel/Tracking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CONSTANTS"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/narvii/util/mixpanel/Tracking$CONSTANTS;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final OLD:Ljava/lang/String; = "old"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/narvii/util/mixpanel/Tracking$CONSTANTS;

    invoke-direct {v0}, Lcom/narvii/util/mixpanel/Tracking$CONSTANTS;-><init>()V

    sput-object v0, Lcom/narvii/util/mixpanel/Tracking$CONSTANTS;->INSTANCE:Lcom/narvii/util/mixpanel/Tracking$CONSTANTS;

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
