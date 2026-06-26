.class Lcom/narvii/widget/NVImageView$2;
.super Ljava/lang/Object;
.source "NVImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/NVImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/NVImageView;


# direct methods
.method constructor <init>(Lcom/narvii/widget/NVImageView;)V
    .locals 0

    .line 622
    iput-object p1, p0, Lcom/narvii/widget/NVImageView$2;->this$0:Lcom/narvii/widget/NVImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 625
    iget-object v0, p0, Lcom/narvii/widget/NVImageView$2;->this$0:Lcom/narvii/widget/NVImageView;

    iget-object v1, v0, Lcom/narvii/widget/NVImageView;->requestUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/narvii/widget/NVImageView;->imageRetrieve:Z

    if-nez v1, :cond_0

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 626
    invoke-virtual {v0, v1, v2}, Lcom/narvii/widget/NVImageView;->setImageStatus(IZ)V

    .line 627
    iget-object v0, p0, Lcom/narvii/widget/NVImageView$2;->this$0:Lcom/narvii/widget/NVImageView;

    iput-boolean v2, v0, Lcom/narvii/widget/NVImageView;->imageRetrieve:Z

    :cond_0
    return-void
.end method
