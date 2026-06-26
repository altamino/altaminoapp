.class public Lcom/narvii/community/search/MasterThemeHelper;
.super Ljava/lang/Object;
.source "MasterThemeHelper.java"


# static fields
.field private static final DYNAMICTHEMEBG:Lcom/narvii/util/statistics/TmpValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/statistics/TmpValue<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ctx:Lcom/narvii/app/NVContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lcom/narvii/util/statistics/TmpValue;

    invoke-direct {v0}, Lcom/narvii/util/statistics/TmpValue;-><init>()V

    sput-object v0, Lcom/narvii/community/search/MasterThemeHelper;->DYNAMICTHEMEBG:Lcom/narvii/util/statistics/TmpValue;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/narvii/community/search/MasterThemeHelper;->ctx:Lcom/narvii/app/NVContext;

    return-void
.end method


# virtual methods
.method public getDynamicThemeBg()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 27
    sget-object v0, Lcom/narvii/community/search/MasterThemeHelper;->DYNAMICTHEMEBG:Lcom/narvii/util/statistics/TmpValue;

    invoke-virtual {v0}, Lcom/narvii/util/statistics/TmpValue;->getAndRemove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/narvii/community/search/MasterThemeHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$drawable;->master_default_bg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public saveDynamicThemeBg(Landroid/app/Activity;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x3e800000    # 0.25f

    const/4 v1, 0x0

    .line 38
    :try_start_0
    invoke-static {p1, v0, v1, v1}, Lcom/narvii/util/image/Screenshot;->takeScreenshot(Landroid/app/Activity;FII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 39
    sget-object v0, Lcom/narvii/community/search/MasterThemeHelper;->DYNAMICTHEMEBG:Lcom/narvii/util/statistics/TmpValue;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 42
    invoke-static {p1}, Lcom/narvii/util/crashlytics/OomHelper;->test(Ljava/lang/Throwable;)V

    :catch_1
    :goto_0
    return-void
.end method

.method public saveDynamicThemeBg(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 47
    sget-object v0, Lcom/narvii/community/search/MasterThemeHelper;->DYNAMICTHEMEBG:Lcom/narvii/util/statistics/TmpValue;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p1, v1, v2}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;J)V

    return-void
.end method
