.class public Lcom/narvii/model/LeaderBoardItem;
.super Ljava/lang/Object;
.source "LeaderBoardItem.java"


# static fields
.field public static final TYPE_LEADERBOARD_CHECKIN:I = 0x3

.field public static final TYPE_LEADERBOARD_HALL_OF_FRAME:I = 0x5

.field public static final TYPE_LEADERBOARD_MOST_ACTIVE_24_HOURS:I = 0x1

.field public static final TYPE_LEADERBOARD_MOST_ACTIVE_2_DAYS:I = 0x2

.field public static final TYPE_LEADERBOARD_QUIZZES:I = 0x4


# instance fields
.field public enabled:Z

.field public id:Ljava/lang/String;

.field public style:Lcom/fasterxml/jackson/databind/node/ObjectNode;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 26
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/narvii/model/LeaderBoardItem;-><init>(ILcom/fasterxml/jackson/databind/node/ObjectNode;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILcom/fasterxml/jackson/databind/node/ObjectNode;ZLjava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lcom/narvii/model/LeaderBoardItem;->type:I

    .line 31
    iput-object p2, p0, Lcom/narvii/model/LeaderBoardItem;->style:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 32
    iput-boolean p3, p0, Lcom/narvii/model/LeaderBoardItem;->enabled:Z

    .line 33
    iput-object p4, p0, Lcom/narvii/model/LeaderBoardItem;->id:Ljava/lang/String;

    return-void
.end method
