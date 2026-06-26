.class Lcom/narvii/livelayer/LiveLayerOnlineBar$9;
.super Ljava/lang/Object;
.source "LiveLayerOnlineBar.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/livelayer/LiveLayerOnlineBar;->getHoloAlphaAnimation()Landroid/view/animation/AlphaAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;


# direct methods
.method constructor <init>(Lcom/narvii/livelayer/LiveLayerOnlineBar;)V
    .locals 0

    .line 1456
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$9;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 3

    const v0, 0x3f666666    # 0.9f

    const v1, 0x3e19999a    # 0.15f

    cmpg-float v2, p1, v1

    if-gez v2, :cond_0

    div-float/2addr p1, v1

    mul-float p1, p1, v0

    return p1

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr p1, v1

    const v1, 0x3f59999a    # 0.85f

    div-float/2addr p1, v1

    sub-float/2addr v2, p1

    mul-float v2, v2, v0

    return v2
.end method
