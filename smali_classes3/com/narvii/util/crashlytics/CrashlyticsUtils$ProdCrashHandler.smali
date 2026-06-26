.class Lcom/narvii/util/crashlytics/CrashlyticsUtils$ProdCrashHandler;
.super Lcom/tencent/bugly/crashreport/CrashReport$CrashHandleCallback;
.source "CrashlyticsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/crashlytics/CrashlyticsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProdCrashHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 271
    invoke-direct {p0}, Lcom/tencent/bugly/crashreport/CrashReport$CrashHandleCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/util/crashlytics/CrashlyticsUtils$1;)V
    .locals 0

    .line 271
    invoke-direct {p0}, Lcom/narvii/util/crashlytics/CrashlyticsUtils$ProdCrashHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onCrashHandleStart(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 275
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->states:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string v1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 279
    :try_start_1
    invoke-static {}, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->getInitializingActivity()Lcom/narvii/app/NVActivity;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 282
    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    const-string v6, "resolution:"

    .line 283
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "*"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "density"

    const/high16 v6, 0x3f800000    # 1.0f

    .line 284
    invoke-static {v4, v6}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "activity"

    .line 285
    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    if-eqz v5, :cond_0

    const-string v6, "memoryClass"

    .line 287
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/app/ActivityManager;->getLargeMemoryClass()I

    move-result v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-nez v4, :cond_1

    .line 293
    invoke-static {}, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->getActiveActivity()Lcom/narvii/app/NVActivity;

    move-result-object v4

    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    const/4 v5, 0x1

    :goto_0
    if-nez v4, :cond_2

    const-string v5, "no active activity"

    goto :goto_2

    .line 297
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v5, :cond_3

    const-string v5, "initializing "

    goto :goto_1

    :cond_3
    const-string v5, "active "

    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/narvii/app/NVActivity;->getCrashlyticsFootprint()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_2
    const-string v6, "activity"

    .line 298
    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v4, :cond_4

    .line 300
    invoke-virtual {v4}, Lcom/narvii/app/NVActivity;->getCrashlyticsKey()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_4
    :try_start_2
    const-string v4, "foreground"

    .line 305
    sget-boolean v5, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->foreground:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    const-string v5, "heapUsed"

    .line 309
    invoke-virtual {v4}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v6

    invoke-virtual {v4}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "heapMax"

    .line 310
    invoke-virtual {v4}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    move-result-wide v4

    .line 315
    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    move-result-wide v6

    sub-long v6, v4, v6

    const-string v8, "nativeUsed"

    .line 317
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "nativeSize"

    .line 318
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v4

    const-string v5, "account"

    invoke-virtual {v4, v5}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/account/AccountService;

    const-string v5, "optinAdsFlags"

    .line 324
    invoke-virtual {v4}, Lcom/narvii/account/AccountService;->optinAdsFlags()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 328
    :try_start_3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    .line 329
    invoke-static {}, Lcom/narvii/logging/LogUtils;->getValidResumingPage()Lcom/narvii/app/NVContext;

    move-result-object v6

    if-eqz v6, :cond_5

    goto :goto_3

    .line 330
    :cond_5
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v6

    :goto_3
    invoke-static {v6}, Lcom/narvii/logging/LogEvent;->builder(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v6

    .line 331
    invoke-virtual {v6}, Lcom/narvii/logging/LogEvent$Builder;->appEvent()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/narvii/logging/LogEvent$Builder;->onlyInternalLogging()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v6

    sget-object v7, Lcom/narvii/logging/ActType;->auto:Lcom/narvii/logging/ActType;

    invoke-virtual {v6, v7}, Lcom/narvii/logging/LogEvent$Builder;->actType(Lcom/narvii/logging/ActType;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v6

    sget-object v7, Lcom/narvii/logging/ActSemantic;->crash:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {v6, v7}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v6

    const-string v7, "crashType"

    .line 332
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v6

    const-string v7, "foreground"

    sget-boolean v8, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->foreground:Z

    if-eqz v8, :cond_6

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    .line 333
    :goto_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v7, v2}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v2

    const-string v6, "crashId"

    .line 334
    invoke-virtual {v2, v6, v5}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v2

    .line 335
    sget-object v5, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->states:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 336
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v7, v6}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    goto :goto_5

    .line 338
    :cond_7
    invoke-virtual {v2}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_6

    :catchall_1
    :try_start_4
    const-string v2, "narvii"

    const-string v5, "fail to log crash event"

    .line 340
    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 344
    :goto_6
    :try_start_5
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-static {}, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->access$200()Ljava/io/File;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 346
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->access$300(Ljava/lang/String;Ljava/io/OutputStream;)V

    const/16 p1, 0xa

    .line 347
    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write(I)V

    .line 349
    invoke-static {p2, v2}, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->access$300(Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 350
    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write(I)V

    .line 352
    invoke-static {p3, v2}, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->access$300(Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 353
    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write(I)V

    .line 355
    invoke-static {p4, v2}, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->access$300(Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 356
    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write(I)V

    const-string p2, ";foreground="

    .line 358
    invoke-static {p2, v2}, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->access$300(Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 359
    sget-boolean p2, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->foreground:Z

    if-eqz p2, :cond_8

    const-string p2, "1"

    goto :goto_7

    :cond_8
    const-string p2, "0"

    :goto_7
    invoke-static {p2, v2}, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->access$300(Ljava/lang/String;Ljava/io/OutputStream;)V

    const-string p2, ";optinAds="

    .line 360
    invoke-static {p2, v2}, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->access$300(Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 361
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v2}, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->access$300(Ljava/lang/String;Ljava/io/OutputStream;)V

    const/16 p2, 0x3b

    .line 362
    invoke-virtual {v2, p2}, Ljava/io/FileOutputStream;->write(I)V

    .line 363
    sget-object p3, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->states:Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_8
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_9

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    .line 364
    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4, v2}, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->access$300(Ljava/lang/String;Ljava/io/OutputStream;)V

    const/16 v4, 0x3d

    .line 365
    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write(I)V

    .line 366
    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-static {p4, v2}, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->access$300(Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 367
    invoke-virtual {v2, p2}, Ljava/io/FileOutputStream;->write(I)V

    goto :goto_8

    .line 369
    :cond_9
    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write(I)V

    .line 371
    invoke-static {v1, v2}, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->access$300(Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 372
    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write(I)V

    .line 374
    sget-object p3, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->activities:Lcom/narvii/util/crashlytics/CrashlyticsUtils$Collector;

    iget-object p3, p3, Lcom/narvii/util/crashlytics/CrashlyticsUtils$Collector;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p3

    sget-object p4, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->activities:Lcom/narvii/util/crashlytics/CrashlyticsUtils$Collector;

    iget p4, p4, Lcom/narvii/util/crashlytics/CrashlyticsUtils$Collector;->capacity:I

    const/4 v1, 0x0

    :goto_9
    if-ge v1, p4, :cond_b

    .line 375
    sget-object v4, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->activities:Lcom/narvii/util/crashlytics/CrashlyticsUtils$Collector;

    iget-object v4, v4, Lcom/narvii/util/crashlytics/CrashlyticsUtils$Collector;->list:[Ljava/lang/String;

    add-int v5, p3, v1

    rem-int/2addr v5, p4

    aget-object v4, v4, v5

    if-eqz v4, :cond_a

    .line 377
    invoke-static {v4, v2}, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->access$300(Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 378
    invoke-virtual {v2, p2}, Ljava/io/FileOutputStream;->write(I)V

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 381
    :cond_b
    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write(I)V

    .line 383
    sget-object p3, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->images:Lcom/narvii/util/crashlytics/CrashlyticsUtils$Collector;

    iget-object p3, p3, Lcom/narvii/util/crashlytics/CrashlyticsUtils$Collector;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p3

    sget-object p4, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->images:Lcom/narvii/util/crashlytics/CrashlyticsUtils$Collector;

    iget p4, p4, Lcom/narvii/util/crashlytics/CrashlyticsUtils$Collector;->capacity:I

    :goto_a
    if-ge v3, p4, :cond_d

    .line 384
    sget-object v1, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->images:Lcom/narvii/util/crashlytics/CrashlyticsUtils$Collector;

    iget-object v1, v1, Lcom/narvii/util/crashlytics/CrashlyticsUtils$Collector;->list:[Ljava/lang/String;

    add-int v4, p3, v3

    rem-int/2addr v4, p4

    aget-object v1, v1, v4

    if-eqz v1, :cond_c

    .line 386
    invoke-static {v1, v2}, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->access$300(Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 387
    invoke-virtual {v2, p2}, Ljava/io/FileOutputStream;->write(I)V

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 390
    :cond_d
    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write(I)V

    .line 392
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 396
    :catchall_2
    monitor-exit p0

    return-object v0

    :catchall_3
    move-exception p1

    monitor-exit p0

    goto :goto_c

    :goto_b
    throw p1

    :goto_c
    goto :goto_b
.end method
