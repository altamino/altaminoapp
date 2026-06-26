.class public Lcom/narvii/checkin/lottery/LotteryLog;
.super Ljava/lang/Object;
.source "LotteryLog.java"


# static fields
.field public static final LOTTERY_AWARD_TYPE_COIN:I = 0x1

.field public static final LOTTERY_AWARD_TYPE_NONE:I = 0x0

.field public static final LOTTERY_AWARD_TYPE_PRODUCT:I = 0x2


# instance fields
.field public awardType:I

.field public awardValue:I

.field public createdTime:Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lcom/narvii/util/JacksonUtils$DateDeserializer;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
        using = Lcom/narvii/util/JacksonUtils$DateSerializer;
    .end annotation
.end field

.field public objectId:Ljava/lang/String;

.field public objectType:I

.field public parentId:Ljava/lang/String;

.field public parentType:I

.field public refObject:Lcom/fasterxml/jackson/databind/JsonNode;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
