.class public Lcom/narvii/wallet/CoinStats;
.super Ljava/lang/Object;
.source "CoinStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/wallet/CoinStats$StatsSection;,
        Lcom/narvii/wallet/CoinStats$DailyStats;
    }
.end annotation


# instance fields
.field public dailyStatsList:Ljava/util/ArrayList;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/wallet/CoinStats$DailyStats;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/wallet/CoinStats$DailyStats;",
            ">;"
        }
    .end annotation
.end field

.field public totalEarnings:D

.field public totalPaidOut:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
