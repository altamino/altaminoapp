.class public final Lcom/narvii/util/statistics/constants/EventConstants$GlobalNavigation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/statistics/constants/EventConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GlobalNavigation"
.end annotation


# static fields
.field public static final CHAT_HUB:Ljava/lang/String; = "chat-hub"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DISCOVER:Ljava/lang/String; = "discover"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final GLOBAL_NAV_BUTTON:Ljava/lang/String; = "global_nav_button"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final GLOBAL_PROFILE:Ljava/lang/String; = "global-profile"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Lcom/narvii/util/statistics/constants/EventConstants$GlobalNavigation;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final LIVE_VIEW:Ljava/lang/String; = "live"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MY_COMMUNITIES:Ljava/lang/String; = "my-communities"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final NAV_CLICK_GLOBAL:Ljava/lang/String; = "Nav Click Global"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final NOTIFICATIONS:Ljava/lang/String; = "notifications"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final STORE:Ljava/lang/String; = "store"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final WALLET:Ljava/lang/String; = "wallet"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/narvii/util/statistics/constants/EventConstants$GlobalNavigation;

    invoke-direct {v0}, Lcom/narvii/util/statistics/constants/EventConstants$GlobalNavigation;-><init>()V

    sput-object v0, Lcom/narvii/util/statistics/constants/EventConstants$GlobalNavigation;->INSTANCE:Lcom/narvii/util/statistics/constants/EventConstants$GlobalNavigation;

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
