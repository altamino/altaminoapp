.class Lcom/narvii/monetization/bubble/BubbleEditFragment$6;
.super Ljava/lang/Object;
.source "BubbleEditFragment.java"

# interfaces
.implements Lcom/narvii/photos/PhotoUploadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/bubble/BubbleEditFragment;->uploadBubblePreview(Landroid/graphics/Bitmap;Lcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/bubble/BubbleEditFragment;

.field final synthetic val$callback:Lcom/narvii/util/Callback;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/bubble/BubbleEditFragment;Lcom/narvii/util/Callback;)V
    .locals 0

    .line 480
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment$6;->this$0:Lcom/narvii/monetization/bubble/BubbleEditFragment;

    iput-object p2, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment$6;->val$callback:Lcom/narvii/util/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 490
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment$6;->this$0:Lcom/narvii/monetization/bubble/BubbleEditFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p3, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 491
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment$6;->val$callback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 492
    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onFinish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 483
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleEditFragment$6;->val$callback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_0

    .line 484
    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onProgress(Ljava/lang/String;II)V
    .locals 0

    return-void
.end method
