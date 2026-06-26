.class public Lcom/narvii/util/crashlytics/OomHelper;
.super Ljava/lang/Object;
.source "OomHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/util/crashlytics/OomHelper$OomCountLogger;
    }
.end annotation


# static fields
.field public static oomCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isOutOfMemory(Ljava/lang/Throwable;)Z
    .locals 3

    const/4 v0, 0x0

    move-object v1, p0

    const/4 p0, 0x0

    :goto_0
    const/16 v2, 0x8

    if-ge p0, v2, :cond_1

    if-eqz v1, :cond_1

    .line 21
    instance-of v2, v1, Ljava/lang/OutOfMemoryError;

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    .line 24
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static test(Ljava/lang/Throwable;)V
    .locals 0

    .line 14
    invoke-static {p0}, Lcom/narvii/util/crashlytics/OomHelper;->isOutOfMemory(Ljava/lang/Throwable;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 15
    sget p0, Lcom/narvii/util/crashlytics/OomHelper;->oomCount:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lcom/narvii/util/crashlytics/OomHelper;->oomCount:I

    :cond_0
    return-void
.end method
