.class Lcom/android/volley/toolbox/NetworkImageView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/toolbox/ImageLoader$ImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/toolbox/NetworkImageView;->loadImageIfNecessary(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/volley/toolbox/NetworkImageView;

.field final synthetic val$isInLayoutPass:Z


# direct methods
.method constructor <init>(Lcom/android/volley/toolbox/NetworkImageView;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->this$0:Lcom/android/volley/toolbox/NetworkImageView;

    .line 3
    .line 4
    iput-boolean p2, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->val$isInLayoutPass:Z

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->this$0:Lcom/android/volley/toolbox/NetworkImageView;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/android/volley/toolbox/NetworkImageView;->b(Lcom/android/volley/toolbox/NetworkImageView;)I

    .line 6
    move-result p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->this$0:Lcom/android/volley/toolbox/NetworkImageView;

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/android/volley/toolbox/NetworkImageView;->b(Lcom/android/volley/toolbox/NetworkImageView;)I

    .line 14
    move-result v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 18
    :cond_0
    return-void
.end method

.method public onResponse(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V
    .locals 1

    .line 1
    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    iget-boolean p2, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->val$isInLayoutPass:Z

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    iget-object p2, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->this$0:Lcom/android/volley/toolbox/NetworkImageView;

    .line 9
    .line 10
    new-instance v0, Lcom/android/volley/toolbox/NetworkImageView$1$1;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, p0, p1}, Lcom/android/volley/toolbox/NetworkImageView$1$1;-><init>(Lcom/android/volley/toolbox/NetworkImageView$1;Lcom/android/volley/toolbox/ImageLoader$ImageContainer;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 17
    return-void

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    .line 21
    move-result-object p2

    .line 22
    .line 23
    if-eqz p2, :cond_1

    .line 24
    .line 25
    iget-object p2, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->this$0:Lcom/android/volley/toolbox/NetworkImageView;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_1
    iget-object p1, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->this$0:Lcom/android/volley/toolbox/NetworkImageView;

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Lcom/android/volley/toolbox/NetworkImageView;->a(Lcom/android/volley/toolbox/NetworkImageView;)I

    .line 39
    move-result p1

    .line 40
    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    iget-object p1, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->this$0:Lcom/android/volley/toolbox/NetworkImageView;

    .line 44
    .line 45
    .line 46
    invoke-static {p1}, Lcom/android/volley/toolbox/NetworkImageView;->a(Lcom/android/volley/toolbox/NetworkImageView;)I

    .line 47
    move-result p2

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 51
    :cond_2
    :goto_0
    return-void
.end method
