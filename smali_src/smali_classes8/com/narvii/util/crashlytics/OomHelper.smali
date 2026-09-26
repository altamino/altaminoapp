.class public Lcom/narvii/util/crashlytics/OomHelper;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static isOutOfMemory(Ljava/lang/Throwable;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    .line 4
    :goto_0
    const/16 v2, 0x8

    .line 5
    .line 6
    if-ge v1, v2, :cond_1

    .line 7
    .line 8
    if-eqz p0, :cond_1

    .line 9
    .line 10
    instance-of v2, p0, Ljava/lang/OutOfMemoryError;

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 18
    move-result-object p0

    .line 19
    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    return v0
.end method

.method public static test(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/narvii/util/crashlytics/OomHelper;->isOutOfMemory(Ljava/lang/Throwable;)Z

    .line 4
    move-result p0

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    sget p0, Lcom/narvii/util/crashlytics/OomHelper;->oomCount:I

    .line 9
    .line 10
    add-int/lit8 p0, p0, 0x1

    .line 11
    .line 12
    sput p0, Lcom/narvii/util/crashlytics/OomHelper;->oomCount:I

    .line 13
    :cond_0
    return-void
.end method
