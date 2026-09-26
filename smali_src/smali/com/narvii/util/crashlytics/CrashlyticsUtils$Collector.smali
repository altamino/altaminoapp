.class public Lcom/narvii/util/crashlytics/CrashlyticsUtils$Collector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/crashlytics/CrashlyticsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Collector"
.end annotation


# instance fields
.field public final capacity:I

.field public final count:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final list:[Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Lcom/narvii/util/crashlytics/CrashlyticsUtils$Collector;->capacity:I

    .line 6
    .line 7
    new-array p1, p1, [Ljava/lang/String;

    .line 8
    .line 9
    iput-object p1, p0, Lcom/narvii/util/crashlytics/CrashlyticsUtils$Collector;->list:[Ljava/lang/String;

    .line 10
    .line 11
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 12
    .line 13
    .line 14
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 15
    .line 16
    iput-object p1, p0, Lcom/narvii/util/crashlytics/CrashlyticsUtils$Collector;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 17
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/crashlytics/CrashlyticsUtils$Collector;->list:[Ljava/lang/String;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/util/crashlytics/CrashlyticsUtils$Collector;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 8
    move-result v1

    .line 9
    .line 10
    iget v2, p0, Lcom/narvii/util/crashlytics/CrashlyticsUtils$Collector;->capacity:I

    .line 11
    rem-int/2addr v1, v2

    .line 12
    .line 13
    aput-object p1, v0, v1

    .line 14
    return-void
.end method
