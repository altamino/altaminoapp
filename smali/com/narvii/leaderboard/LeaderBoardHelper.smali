.class public Lcom/narvii/leaderboard/LeaderBoardHelper;
.super Ljava/lang/Object;
.source "LeaderBoardHelper.java"


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

    sput-object v0, Lcom/narvii/leaderboard/LeaderBoardHelper;->DYNAMICTHEMEBG:Lcom/narvii/util/statistics/TmpValue;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/narvii/leaderboard/LeaderBoardHelper;->ctx:Lcom/narvii/app/NVContext;

    return-void
.end method


# virtual methods
.method public getDynamicThemeBg()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 27
    sget-object v0, Lcom/narvii/leaderboard/LeaderBoardHelper;->DYNAMICTHEMEBG:Lcom/narvii/util/statistics/TmpValue;

    invoke-virtual {v0}, Lcom/narvii/util/statistics/TmpValue;->getAndRemove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/narvii/leaderboard/LeaderBoardHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0805a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public saveDynamicThemeBg(Landroid/app/Activity;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const v0, 0x7f090647

    .line 37
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 38
    instance-of v0, p1, Lcom/narvii/widget/NVImageView;

    if-eqz v0, :cond_1

    .line 39
    sget-object v0, Lcom/narvii/leaderboard/LeaderBoardHelper;->DYNAMICTHEMEBG:Lcom/narvii/util/statistics/TmpValue;

    check-cast p1, Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
