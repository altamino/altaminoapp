.class public Lcom/narvii/util/crashlytics/CrashlyticsUtils$Collector;
.super Ljava/lang/Object;
.source "CrashlyticsUtils.java"


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

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput p1, p0, Lcom/narvii/util/crashlytics/CrashlyticsUtils$Collector;->capacity:I

    .line 79
    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/narvii/util/crashlytics/CrashlyticsUtils$Collector;->list:[Ljava/lang/String;

    .line 80
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/narvii/util/crashlytics/CrashlyticsUtils$Collector;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/narvii/util/crashlytics/CrashlyticsUtils$Collector;->list:[Ljava/lang/String;

    iget-object v1, p0, Lcom/narvii/util/crashlytics/CrashlyticsUtils$Collector;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    iget v2, p0, Lcom/narvii/util/crashlytics/CrashlyticsUtils$Collector;->capacity:I

    rem-int/2addr v1, v2

    aput-object p1, v0, v1

    return-void
.end method
