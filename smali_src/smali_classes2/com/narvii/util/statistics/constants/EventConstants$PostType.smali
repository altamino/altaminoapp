.class public final Lcom/narvii/util/statistics/constants/EventConstants$PostType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/statistics/constants/EventConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PostType"
.end annotation


# static fields
.field public static final BLOG:Ljava/lang/String; = "blog"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final GO_LIVE_CHAT:Ljava/lang/String; = "live"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Lcom/narvii/util/statistics/constants/EventConstants$PostType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final POLL_PLAIN:Ljava/lang/String; = "poll_plain"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final POLL_WIKI:Ljava/lang/String; = "poll_wiki"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final POST_TYPE:Ljava/lang/String; = "post_type"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PUBLIC_CHATROOM:Ljava/lang/String; = "public-chatroom"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final QUESTION:Ljava/lang/String; = "question"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final QUIZ:Ljava/lang/String; = "quiz"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final REPOST:Ljava/lang/String; = "repost"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final STORY:Ljava/lang/String; = "story"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final WIKI:Ljava/lang/String; = "wiki"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/narvii/util/statistics/constants/EventConstants$PostType;

    invoke-direct {v0}, Lcom/narvii/util/statistics/constants/EventConstants$PostType;-><init>()V

    sput-object v0, Lcom/narvii/util/statistics/constants/EventConstants$PostType;->INSTANCE:Lcom/narvii/util/statistics/constants/EventConstants$PostType;

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
