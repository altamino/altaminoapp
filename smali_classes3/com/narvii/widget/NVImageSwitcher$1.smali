.class Lcom/narvii/widget/NVImageSwitcher$1;
.super Ljava/lang/Object;
.source "NVImageSwitcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/NVImageSwitcher;->startSwitch(Ljava/util/List;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/NVImageSwitcher;

.field final synthetic val$duration:J


# direct methods
.method constructor <init>(Lcom/narvii/widget/NVImageSwitcher;J)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/narvii/widget/NVImageSwitcher$1;->this$0:Lcom/narvii/widget/NVImageSwitcher;

    iput-wide p2, p0, Lcom/narvii/widget/NVImageSwitcher$1;->val$duration:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/narvii/widget/NVImageSwitcher$1;->this$0:Lcom/narvii/widget/NVImageSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->showNext()V

    .line 103
    iget-object v0, p0, Lcom/narvii/widget/NVImageSwitcher$1;->this$0:Lcom/narvii/widget/NVImageSwitcher;

    iget-object v1, p0, Lcom/narvii/widget/NVImageSwitcher$1;->this$0:Lcom/narvii/widget/NVImageSwitcher;

    invoke-static {v1}, Lcom/narvii/widget/NVImageSwitcher;->access$000(Lcom/narvii/widget/NVImageSwitcher;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/narvii/widget/NVImageSwitcher$1;->this$0:Lcom/narvii/widget/NVImageSwitcher;

    iget-object v2, v2, Lcom/narvii/widget/NVImageSwitcher;->mediaList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/narvii/widget/NVImageSwitcher;->access$002(Lcom/narvii/widget/NVImageSwitcher;I)I

    .line 104
    iget-object v0, p0, Lcom/narvii/widget/NVImageSwitcher$1;->this$0:Lcom/narvii/widget/NVImageSwitcher;

    iget-object v0, v0, Lcom/narvii/widget/NVImageSwitcher;->mediaList:Ljava/util/List;

    iget-object v1, p0, Lcom/narvii/widget/NVImageSwitcher$1;->this$0:Lcom/narvii/widget/NVImageSwitcher;

    invoke-static {v1}, Lcom/narvii/widget/NVImageSwitcher;->access$000(Lcom/narvii/widget/NVImageSwitcher;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Media;

    iget-object v0, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 105
    iget-object v1, p0, Lcom/narvii/widget/NVImageSwitcher$1;->this$0:Lcom/narvii/widget/NVImageSwitcher;

    new-instance v2, Lcom/narvii/widget/NVImageSwitcher$1$1;

    invoke-direct {v2, p0, v0}, Lcom/narvii/widget/NVImageSwitcher$1$1;-><init>(Lcom/narvii/widget/NVImageSwitcher$1;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/narvii/widget/NVImageSwitcher;->access$102(Lcom/narvii/widget/NVImageSwitcher;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 111
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/widget/NVImageSwitcher$1;->this$0:Lcom/narvii/widget/NVImageSwitcher;

    invoke-static {v1}, Lcom/narvii/widget/NVImageSwitcher;->access$100(Lcom/narvii/widget/NVImageSwitcher;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 113
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-wide v1, p0, Lcom/narvii/widget/NVImageSwitcher$1;->val$duration:J

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "imageSwitcher"

    .line 115
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
