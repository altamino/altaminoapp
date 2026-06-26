.class final Lcom/narvii/widget/VolumeIndicator$1;
.super Ljava/lang/Object;
.source "VolumeIndicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/VolumeIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 27
    invoke-static {}, Lcom/narvii/widget/VolumeIndicator;->access$000()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 28
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/VolumeIndicator;

    .line 30
    invoke-static {v1}, Lcom/narvii/widget/VolumeIndicator;->access$200(Lcom/narvii/widget/VolumeIndicator;)F

    move-result v2

    invoke-static {v1, v2}, Lcom/narvii/widget/VolumeIndicator;->access$102(Lcom/narvii/widget/VolumeIndicator;F)F

    move-result v2

    .line 31
    invoke-static {v1}, Lcom/narvii/widget/VolumeIndicator;->access$300(Lcom/narvii/widget/VolumeIndicator;)F

    move-result v3

    mul-float v3, v3, v2

    invoke-static {v1, v3}, Lcom/narvii/widget/VolumeIndicator;->access$202(Lcom/narvii/widget/VolumeIndicator;F)F

    .line 32
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 33
    invoke-static {v1}, Lcom/narvii/widget/VolumeIndicator;->access$400(Lcom/narvii/widget/VolumeIndicator;)I

    move-result v1

    int-to-float v1, v1

    mul-float v2, v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    if-nez v1, :cond_0

    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 38
    :cond_1
    invoke-static {}, Lcom/narvii/widget/VolumeIndicator;->access$000()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 39
    invoke-static {}, Lcom/narvii/widget/VolumeIndicator;->access$500()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 41
    invoke-static {v0}, Lcom/narvii/widget/VolumeIndicator;->access$602(Z)Z

    :goto_1
    return-void
.end method
