.class public final Lcom/narvii/util/statistics/constants/EventConstants$LikePost;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/statistics/constants/EventConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LikePost"
.end annotation


# static fields
.field public static final COMMUNITY_ONBOARDING:Ljava/lang/String; = "Community Onboarding"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COMMUNITY_ONBOARDING_LIKES:Ljava/lang/String; = "Community Onboarding Likes"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Lcom/narvii/util/statistics/constants/EventConstants$LikePost;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final LIKE_POST:Ljava/lang/String; = "Like Post"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PAGE_DETAILED_VIEW:Ljava/lang/String; = "Page Detailed View"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SBB:Ljava/lang/String; = "SBB"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/narvii/util/statistics/constants/EventConstants$LikePost;

    invoke-direct {v0}, Lcom/narvii/util/statistics/constants/EventConstants$LikePost;-><init>()V

    sput-object v0, Lcom/narvii/util/statistics/constants/EventConstants$LikePost;->INSTANCE:Lcom/narvii/util/statistics/constants/EventConstants$LikePost;

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
