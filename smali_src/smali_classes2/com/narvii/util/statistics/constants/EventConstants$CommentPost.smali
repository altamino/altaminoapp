.class public final Lcom/narvii/util/statistics/constants/EventConstants$CommentPost;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/statistics/constants/EventConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CommentPost"
.end annotation


# static fields
.field public static final COMMENTS_WRITTEN_TOTAL:Ljava/lang/String; = "Comments Written Total"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COMMENT_POST:Ljava/lang/String; = "Comment Post"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final CONTENT_TYPE:Ljava/lang/String; = "Content Type"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final CREATE_COMMENT:Ljava/lang/String; = "create_comment"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Lcom/narvii/util/statistics/constants/EventConstants$CommentPost;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final NEW:Ljava/lang/String; = "New"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final REPLAY:Ljava/lang/String; = "Replay"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final RESPOND_TO:Ljava/lang/String; = "respondTo"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final STAT_PARENT_TYPE:Ljava/lang/String; = "stat_parent_type"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TYPE:Ljava/lang/String; = "Type"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TYPES:Ljava/lang/String; = "Types"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final USER_COMMENTS:Ljava/lang/String; = "User Comments"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/narvii/util/statistics/constants/EventConstants$CommentPost;

    invoke-direct {v0}, Lcom/narvii/util/statistics/constants/EventConstants$CommentPost;-><init>()V

    sput-object v0, Lcom/narvii/util/statistics/constants/EventConstants$CommentPost;->INSTANCE:Lcom/narvii/util/statistics/constants/EventConstants$CommentPost;

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
