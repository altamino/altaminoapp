.class Lcom/narvii/util/statistics/StatisticsServiceImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/statistics/StatisticsServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/util/statistics/StatisticsServiceImpl;


# direct methods
.method constructor <init>(Lcom/narvii/util/statistics/StatisticsServiceImpl;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/statistics/StatisticsServiceImpl$1;->this$0:Lcom/narvii/util/statistics/StatisticsServiceImpl;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/statistics/StatisticsServiceImpl$1;->this$0:Lcom/narvii/util/statistics/StatisticsServiceImpl;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/util/statistics/StatisticsServiceImpl;->queue:Ljava/util/LinkedList;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/util/statistics/StatisticsServiceImpl$1;->this$0:Lcom/narvii/util/statistics/StatisticsServiceImpl;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/narvii/util/statistics/StatisticsServiceImpl;->queue:Ljava/util/LinkedList;

    .line 15
    .line 16
    sget-object v1, Lcom/narvii/util/statistics/StatisticsEventBuilder;->COMPARATOR:Ljava/util/Comparator;

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 20
    .line 21
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/narvii/util/statistics/StatisticsServiceImpl$1;->this$0:Lcom/narvii/util/statistics/StatisticsServiceImpl;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/narvii/util/statistics/StatisticsServiceImpl;->queue:Ljava/util/LinkedList;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 27
    move-result v0

    .line 28
    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Lcom/narvii/util/statistics/StatisticsServiceImpl$1;->this$0:Lcom/narvii/util/statistics/StatisticsServiceImpl;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/narvii/util/statistics/StatisticsServiceImpl;->queue:Ljava/util/LinkedList;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    check-cast v0, Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/narvii/util/statistics/StatisticsServiceImpl$1;->this$0:Lcom/narvii/util/statistics/StatisticsServiceImpl;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v0}, Lcom/narvii/util/statistics/StatisticsServiceImpl;->logEvent(Lcom/narvii/util/statistics/StatisticsEventBuilder;)V

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    return-void
.end method
