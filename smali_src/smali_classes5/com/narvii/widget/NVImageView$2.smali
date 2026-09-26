.class Lcom/narvii/widget/NVImageView$2;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/NVImageView$2;->this$0:Lcom/narvii/widget/NVImageView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/NVImageView$2;->this$0:Lcom/narvii/widget/NVImageView;

    .line 3
    .line 4
    iget-object v1, v0, Lcom/narvii/widget/NVImageView;->requestUrl:Ljava/lang/String;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-boolean v1, v0, Lcom/narvii/widget/NVImageView;->imageRetrieve:Z

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    const/4 v1, 0x2

    .line 12
    const/4 v2, 0x1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Lcom/narvii/widget/NVImageView;->setImageStatus(IZ)V

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/widget/NVImageView$2;->this$0:Lcom/narvii/widget/NVImageView;

    .line 18
    .line 19
    iput-boolean v2, v0, Lcom/narvii/widget/NVImageView;->imageRetrieve:Z

    .line 20
    :cond_0
    return-void
.end method
