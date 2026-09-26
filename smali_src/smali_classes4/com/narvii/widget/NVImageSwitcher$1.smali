.class Lcom/narvii/widget/NVImageSwitcher$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/NVImageSwitcher$1;->this$0:Lcom/narvii/widget/NVImageSwitcher;

    .line 3
    .line 4
    iput-wide p2, p0, Lcom/narvii/widget/NVImageSwitcher$1;->val$duration:J

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/narvii/widget/NVImageSwitcher$1;->this$0:Lcom/narvii/widget/NVImageSwitcher;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->showNext()V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/widget/NVImageSwitcher$1;->this$0:Lcom/narvii/widget/NVImageSwitcher;

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lcom/narvii/widget/NVImageSwitcher;->a(Lcom/narvii/widget/NVImageSwitcher;)I

    .line 11
    move-result v1

    .line 12
    .line 13
    add-int/lit8 v1, v1, 0x1

    .line 14
    .line 15
    iget-object v2, p0, Lcom/narvii/widget/NVImageSwitcher$1;->this$0:Lcom/narvii/widget/NVImageSwitcher;

    .line 16
    .line 17
    iget-object v2, v2, Lcom/narvii/widget/NVImageSwitcher;->mediaList:Ljava/util/List;

    .line 18
    .line 19
    .line 20
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 21
    move-result v2

    .line 22
    rem-int/2addr v1, v2

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v1}, Lcom/narvii/widget/NVImageSwitcher;->c(Lcom/narvii/widget/NVImageSwitcher;I)V

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/widget/NVImageSwitcher$1;->this$0:Lcom/narvii/widget/NVImageSwitcher;

    .line 28
    .line 29
    iget-object v1, v0, Lcom/narvii/widget/NVImageSwitcher;->mediaList:Ljava/util/List;

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Lcom/narvii/widget/NVImageSwitcher;->a(Lcom/narvii/widget/NVImageSwitcher;)I

    .line 33
    move-result v0

    .line 34
    .line 35
    .line 36
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    check-cast v0, Lcom/narvii/model/Media;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 42
    .line 43
    iget-object v1, p0, Lcom/narvii/widget/NVImageSwitcher$1;->this$0:Lcom/narvii/widget/NVImageSwitcher;

    .line 44
    .line 45
    new-instance v2, Lcom/narvii/widget/NVImageSwitcher$1$1;

    .line 46
    .line 47
    .line 48
    invoke-direct {v2, p0, v0}, Lcom/narvii/widget/NVImageSwitcher$1$1;-><init>(Lcom/narvii/widget/NVImageSwitcher$1;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-static {v1, v2}, Lcom/narvii/widget/NVImageSwitcher;->d(Lcom/narvii/widget/NVImageSwitcher;Ljava/lang/Runnable;)V

    .line 52
    .line 53
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 54
    .line 55
    iget-object v1, p0, Lcom/narvii/widget/NVImageSwitcher$1;->this$0:Lcom/narvii/widget/NVImageSwitcher;

    .line 56
    .line 57
    .line 58
    invoke-static {v1}, Lcom/narvii/widget/NVImageSwitcher;->b(Lcom/narvii/widget/NVImageSwitcher;)Ljava/lang/Runnable;

    .line 59
    move-result-object v1

    .line 60
    .line 61
    const-wide/16 v2, 0x5dc

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 65
    .line 66
    iget-wide v1, p0, Lcom/narvii/widget/NVImageSwitcher$1;->val$duration:J

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .line 73
    const-string v1, "imageSwitcher"

    .line 74
    .line 75
    .line 76
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    :goto_0
    return-void
.end method
