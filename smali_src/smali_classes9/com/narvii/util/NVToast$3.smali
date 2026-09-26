.class Lcom/narvii/util/NVToast$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/NVToast;
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
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/NVToast;->g()Lcom/narvii/util/NVToast;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/narvii/util/NVToast;->e(Lcom/narvii/util/NVToast;)Landroid/view/View;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Lcom/narvii/util/NVToast$3$1;

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, p0, v0}, Lcom/narvii/util/NVToast$3$1;-><init>(Lcom/narvii/util/NVToast$3;Lcom/narvii/util/NVToast;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lcom/narvii/util/NVToast;->a(Lcom/narvii/util/NVToast;)Landroid/content/Context;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    sget v3, Lcom/narvii/lib/R$anim;->toast_hide:I

    .line 24
    .line 25
    .line 26
    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    new-instance v3, Lcom/narvii/util/NVToast$3$2;

    .line 30
    .line 31
    .line 32
    invoke-direct {v3, p0, v1}, Lcom/narvii/util/NVToast$3$2;-><init>(Lcom/narvii/util/NVToast$3;Ljava/lang/Runnable;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Lcom/narvii/util/NVToast;->e(Lcom/narvii/util/NVToast;)Landroid/view/View;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    sget v3, Lcom/narvii/lib/R$id;->toast_message:I

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    move-result-object v0

    .line 46
    const/4 v3, 0x4

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Landroid/view/animation/Animation;->getDuration()J

    .line 56
    move-result-wide v2

    .line 57
    .line 58
    const-wide/16 v4, 0x14

    .line 59
    add-long/2addr v2, v4

    .line 60
    .line 61
    .line 62
    invoke-static {}, Lcom/narvii/util/NVToast;->i()Landroid/os/Handler;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 67
    :cond_0
    const/4 v0, 0x0

    .line 68
    .line 69
    .line 70
    invoke-static {v0}, Lcom/narvii/util/NVToast;->m(Lcom/narvii/util/NVToast;)V

    .line 71
    .line 72
    .line 73
    invoke-static {}, Lcom/narvii/util/NVToast;->i()Landroid/os/Handler;

    .line 74
    move-result-object v0

    .line 75
    .line 76
    .line 77
    invoke-static {}, Lcom/narvii/util/NVToast;->h()Ljava/lang/Runnable;

    .line 78
    move-result-object v1

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 82
    return-void
.end method
