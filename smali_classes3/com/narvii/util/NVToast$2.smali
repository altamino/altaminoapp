.class final Lcom/narvii/util/NVToast$2;
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

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 196
    invoke-static {}, Lcom/narvii/util/NVToast;->access$100()Lcom/narvii/util/NVToast;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 200
    :cond_0
    invoke-static {}, Lcom/narvii/util/NVToast;->access$200()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 201
    invoke-static {}, Lcom/narvii/util/NVToast;->access$300()Lcom/narvii/util/NVToast;

    move-result-object v0

    .line 202
    invoke-static {v1}, Lcom/narvii/util/NVToast;->access$302(Lcom/narvii/util/NVToast;)Lcom/narvii/util/NVToast;

    goto :goto_0

    .line 204
    :cond_1
    invoke-static {}, Lcom/narvii/util/NVToast;->access$200()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/NVToast;

    :goto_0
    if-eqz v0, :cond_9

    const/4 v2, 0x1

    .line 208
    :try_start_0
    invoke-static {v0}, Lcom/narvii/util/NVToast;->access$400(Lcom/narvii/util/NVToast;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 209
    sget v4, Lcom/narvii/lib/R$layout;->toast:I

    invoke-virtual {v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/NVToast;->access$502(Lcom/narvii/util/NVToast;Landroid/view/View;)Landroid/view/View;

    .line 210
    invoke-static {v0}, Lcom/narvii/util/NVToast;->access$500(Lcom/narvii/util/NVToast;)Landroid/view/View;

    move-result-object v1

    sget v3, Lcom/narvii/lib/R$id;->toast_message:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 211
    invoke-static {v0}, Lcom/narvii/util/NVToast;->access$600(Lcom/narvii/util/NVToast;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v3}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v4, 0x11

    .line 214
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v4, -0x2

    .line 215
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 216
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v4, 0x18

    .line 217
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v4, -0x3

    .line 219
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 220
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-ge v4, v5, :cond_2

    const/16 v4, 0x7d5

    .line 221
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_1

    :cond_2
    const/16 v4, 0x7f6

    .line 223
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 226
    :goto_1
    invoke-static {v0}, Lcom/narvii/util/NVToast;->access$400(Lcom/narvii/util/NVToast;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 227
    invoke-static {v0}, Lcom/narvii/util/NVToast;->access$500(Lcom/narvii/util/NVToast;)Landroid/view/View;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    invoke-static {v0}, Lcom/narvii/util/NVToast;->access$400(Lcom/narvii/util/NVToast;)Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/narvii/lib/R$anim;->toast_show:I

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 230
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "permission denied"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 231
    invoke-static {v2}, Lcom/narvii/util/NVToast;->access$702(Z)Z

    .line 232
    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    goto :goto_2

    :cond_3
    const-string v3, "toast fail"

    .line 234
    invoke-static {v3, v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 237
    :goto_2
    invoke-static {v0}, Lcom/narvii/util/NVToast;->access$102(Lcom/narvii/util/NVToast;)Lcom/narvii/util/NVToast;

    .line 239
    invoke-static {v0}, Lcom/narvii/util/NVToast;->access$600(Lcom/narvii/util/NVToast;)Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_3

    :cond_4
    invoke-static {v0}, Lcom/narvii/util/NVToast;->access$600(Lcom/narvii/util/NVToast;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 240
    :goto_3
    invoke-static {v0}, Lcom/narvii/util/NVToast;->access$800(Lcom/narvii/util/NVToast;)I

    move-result v3

    const-wide/16 v4, 0x7d0

    if-ne v3, v2, :cond_5

    move-wide v6, v4

    goto :goto_4

    :cond_5
    const-wide/16 v6, 0x4b0

    .line 241
    :goto_4
    invoke-static {v0}, Lcom/narvii/util/NVToast;->access$800(Lcom/narvii/util/NVToast;)I

    move-result v0

    if-ne v0, v2, :cond_6

    const-wide/16 v4, 0xdac

    :cond_6
    const/16 v0, 0x8

    if-ge v1, v0, :cond_7

    goto :goto_5

    :cond_7
    const/16 v2, 0x14

    if-le v1, v2, :cond_8

    move-wide v6, v4

    goto :goto_5

    :cond_8
    sub-long/2addr v4, v6

    sub-int/2addr v1, v0

    int-to-long v0, v1

    mul-long v4, v4, v0

    const-wide/16 v0, 0xc

    .line 247
    div-long/2addr v4, v0

    add-long/2addr v6, v4

    .line 249
    :goto_5
    invoke-static {}, Lcom/narvii/util/NVToast;->access$1000()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/narvii/util/NVToast;->access$900()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_9
    return-void
.end method
