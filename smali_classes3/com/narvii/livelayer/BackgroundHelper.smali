.class public Lcom/narvii/livelayer/BackgroundHelper;
.super Ljava/lang/Object;
.source "BackgroundHelper.java"


# static fields
.field private static final SHARE_BACKGROUND:Lcom/narvii/util/statistics/TmpValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/statistics/TmpValue<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lcom/narvii/util/statistics/TmpValue;

    invoke-direct {v0}, Lcom/narvii/util/statistics/TmpValue;-><init>()V

    sput-object v0, Lcom/narvii/livelayer/BackgroundHelper;->SHARE_BACKGROUND:Lcom/narvii/util/statistics/TmpValue;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDynamicBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 21
    sget-object v0, Lcom/narvii/livelayer/BackgroundHelper;->SHARE_BACKGROUND:Lcom/narvii/util/statistics/TmpValue;

    invoke-virtual {v0}, Lcom/narvii/util/statistics/TmpValue;->getAndRemove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public static saveWithCapture(Landroid/app/Activity;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x3e800000    # 0.25f

    const/4 v1, 0x0

    .line 28
    :try_start_0
    invoke-static {p0, v0, v1, v1}, Lcom/narvii/util/image/Screenshot;->takeScreenshot(Landroid/app/Activity;FII)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 29
    sget-object v0, Lcom/narvii/livelayer/BackgroundHelper;->SHARE_BACKGROUND:Lcom/narvii/util/statistics/TmpValue;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 32
    invoke-static {p0}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V

    :catch_1
    :goto_0
    return-void
.end method

.method public static saveWithDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 39
    :cond_0
    :try_start_0
    sget-object v0, Lcom/narvii/livelayer/BackgroundHelper;->SHARE_BACKGROUND:Lcom/narvii/util/statistics/TmpValue;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 42
    invoke-static {p0}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V

    :catch_1
    :goto_0
    return-void
.end method
