.class public final Lcom/narvii/util/mixpanel/Tracking$Events;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/mixpanel/Tracking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Events"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/narvii/util/mixpanel/Tracking$Events;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final LOGIN_FAILURE:Ljava/lang/String; = "login_failure"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final LOGIN_SUCCESS:Ljava/lang/String; = "login_success"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MEDIA_LAB_UID_READY:Ljava/lang/String; = "medialab_uid_ready"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PAGE_VIEW:Ljava/lang/String; = "page_view"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final REGISTER_FAILURE:Ljava/lang/String; = "register_failure"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final REGISTER_SUCCESS:Ljava/lang/String; = "register_success"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/narvii/util/mixpanel/Tracking$Events;

    invoke-direct {v0}, Lcom/narvii/util/mixpanel/Tracking$Events;-><init>()V

    sput-object v0, Lcom/narvii/util/mixpanel/Tracking$Events;->INSTANCE:Lcom/narvii/util/mixpanel/Tracking$Events;

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
