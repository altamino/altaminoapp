.class public final Lcom/narvii/util/statistics/constants/EventConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/util/statistics/constants/EventConstants$AppCheck;,
        Lcom/narvii/util/statistics/constants/EventConstants$CommentPost;,
        Lcom/narvii/util/statistics/constants/EventConstants$CreatePost;,
        Lcom/narvii/util/statistics/constants/EventConstants$GlobalNavigation;,
        Lcom/narvii/util/statistics/constants/EventConstants$LikePost;,
        Lcom/narvii/util/statistics/constants/EventConstants$PostType;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/narvii/util/statistics/constants/EventConstants;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/narvii/util/statistics/constants/EventConstants;

    invoke-direct {v0}, Lcom/narvii/util/statistics/constants/EventConstants;-><init>()V

    sput-object v0, Lcom/narvii/util/statistics/constants/EventConstants;->INSTANCE:Lcom/narvii/util/statistics/constants/EventConstants;

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
