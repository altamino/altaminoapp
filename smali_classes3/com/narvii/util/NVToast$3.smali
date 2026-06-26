.class final Lcom/narvii/util/NVToast$3;
.super Ljava/lang/Object;
.source "NVToast.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/NVToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 257
    invoke-static {}, Lcom/narvii/util/NVToast;->access$100()Lcom/narvii/util/NVToast;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 258
    invoke-static {v0}, Lcom/narvii/util/NVToast;->access$500(Lcom/narvii/util/NVToast;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 259
    new-instance v1, Lcom/narvii/util/NVToast$3$1;

    invoke-direct {v1, p0, v0}, Lcom/narvii/util/NVToast$3$1;-><init>(Lcom/narvii/util/NVToast$3;Lcom/narvii/util/NVToast;)V

    .line 269
    invoke-static {v0}, Lcom/narvii/util/NVToast;->access$400(Lcom/narvii/util/NVToast;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/narvii/lib/R$anim;->toast_hide:I

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 270
    new-instance v3, Lcom/narvii/util/NVToast$3$2;

    invoke-direct {v3, p0, v1}, Lcom/narvii/util/NVToast$3$2;-><init>(Lcom/narvii/util/NVToast$3;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 285
    invoke-static {v0}, Lcom/narvii/util/NVToast;->access$500(Lcom/narvii/util/NVToast;)Landroid/view/View;

    move-result-object v0

    sget v3, Lcom/narvii/lib/R$id;->toast_message:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x4

    .line 286
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 287
    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 290
    invoke-virtual {v2}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x14

    add-long/2addr v2, v4

    .line 291
    invoke-static {}, Lcom/narvii/util/NVToast;->access$1000()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    const/4 v0, 0x0

    .line 293
    invoke-static {v0}, Lcom/narvii/util/NVToast;->access$102(Lcom/narvii/util/NVToast;)Lcom/narvii/util/NVToast;

    .line 294
    invoke-static {}, Lcom/narvii/util/NVToast;->access$1000()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/narvii/util/NVToast;->access$1100()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
