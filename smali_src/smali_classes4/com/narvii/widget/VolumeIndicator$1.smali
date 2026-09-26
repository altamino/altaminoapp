.class Lcom/narvii/widget/VolumeIndicator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/VolumeIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/widget/VolumeIndicator;->g()Ljava/util/HashSet;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    check-cast v1, Lcom/narvii/widget/VolumeIndicator;

    .line 21
    .line 22
    .line 23
    invoke-static {v1}, Lcom/narvii/widget/VolumeIndicator;->b(Lcom/narvii/widget/VolumeIndicator;)F

    .line 24
    move-result v2

    .line 25
    .line 26
    .line 27
    invoke-static {v1, v2}, Lcom/narvii/widget/VolumeIndicator;->d(Lcom/narvii/widget/VolumeIndicator;F)V

    .line 28
    .line 29
    .line 30
    invoke-static {v1}, Lcom/narvii/widget/VolumeIndicator;->a(Lcom/narvii/widget/VolumeIndicator;)F

    .line 31
    move-result v3

    .line 32
    mul-float/2addr v3, v2

    .line 33
    .line 34
    .line 35
    invoke-static {v1, v3}, Lcom/narvii/widget/VolumeIndicator;->e(Lcom/narvii/widget/VolumeIndicator;F)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 39
    .line 40
    .line 41
    invoke-static {v1}, Lcom/narvii/widget/VolumeIndicator;->c(Lcom/narvii/widget/VolumeIndicator;)I

    .line 42
    move-result v1

    .line 43
    int-to-float v1, v1

    .line 44
    mul-float/2addr v2, v1

    .line 45
    .line 46
    .line 47
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 48
    move-result v1

    .line 49
    .line 50
    if-nez v1, :cond_0

    .line 51
    .line 52
    .line 53
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 54
    goto :goto_0

    .line 55
    .line 56
    .line 57
    :cond_1
    invoke-static {}, Lcom/narvii/widget/VolumeIndicator;->g()Ljava/util/HashSet;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    .line 62
    move-result v0

    .line 63
    .line 64
    if-lez v0, :cond_2

    .line 65
    .line 66
    .line 67
    invoke-static {}, Lcom/narvii/widget/VolumeIndicator;->f()Landroid/os/Handler;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    const-wide/16 v1, 0xc8

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 74
    goto :goto_1

    .line 75
    :cond_2
    const/4 v0, 0x0

    .line 76
    .line 77
    .line 78
    invoke-static {v0}, Lcom/narvii/widget/VolumeIndicator;->h(Z)V

    .line 79
    :goto_1
    return-void
.end method
