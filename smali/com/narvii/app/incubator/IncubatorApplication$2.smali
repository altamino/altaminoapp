.class Lcom/narvii/app/incubator/IncubatorApplication$2;
.super Landroid/os/Handler;
.source "IncubatorApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/app/incubator/IncubatorApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/app/incubator/IncubatorApplication;


# direct methods
.method constructor <init>(Lcom/narvii/app/incubator/IncubatorApplication;Landroid/os/Looper;)V
    .locals 0

    .line 662
    iput-object p1, p0, Lcom/narvii/app/incubator/IncubatorApplication$2;->this$0:Lcom/narvii/app/incubator/IncubatorApplication;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 665
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 666
    iget v1, p1, Landroid/os/Message;->what:I

    const-wide/16 v2, 0x64

    const/16 v4, 0xb

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v1, v5, :cond_0

    .line 667
    invoke-virtual {p0, v4, v0, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 668
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 670
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const-string v7, "\'s community context not found"

    const-string/jumbo v8, "x"

    if-ne v1, v4, :cond_2

    .line 671
    iget-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication$2;->this$0:Lcom/narvii/app/incubator/IncubatorApplication;

    invoke-static {v1}, Lcom/narvii/app/incubator/IncubatorApplication;->access$000(Lcom/narvii/app/incubator/IncubatorApplication;)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 672
    iget-object v4, p0, Lcom/narvii/app/incubator/IncubatorApplication$2;->this$0:Lcom/narvii/app/incubator/IncubatorApplication;

    invoke-static {v4}, Lcom/narvii/app/incubator/IncubatorApplication;->access$000(Lcom/narvii/app/incubator/IncubatorApplication;)Landroid/util/SparseIntArray;

    move-result-object v4

    sub-int/2addr v1, v5

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-virtual {v4, v0, v9}, Landroid/util/SparseIntArray;->put(II)V

    if-gtz v1, :cond_2

    .line 674
    iget-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication$2;->this$0:Lcom/narvii/app/incubator/IncubatorApplication;

    invoke-static {v1}, Lcom/narvii/app/incubator/IncubatorApplication;->access$100(Lcom/narvii/app/incubator/IncubatorApplication;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/services/incubator/CommunityContext;

    if-nez v1, :cond_1

    .line 676
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 678
    :cond_1
    iget-object v4, v1, Lcom/narvii/services/incubator/CommunityContext;->serviceManager:Lcom/narvii/services/ServiceManager;

    invoke-virtual {v4}, Lcom/narvii/services/ServiceManager;->stop()V

    .line 679
    iget-object v1, v1, Lcom/narvii/services/incubator/CommunityContext;->serviceManager:Lcom/narvii/services/ServiceManager;

    invoke-virtual {v1}, Lcom/narvii/services/ServiceManager;->destroy()V

    .line 680
    iget-object v1, p0, Lcom/narvii/app/incubator/IncubatorApplication$2;->this$0:Lcom/narvii/app/incubator/IncubatorApplication;

    invoke-static {v1}, Lcom/narvii/app/incubator/IncubatorApplication;->access$100(Lcom/narvii/app/incubator/IncubatorApplication;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    :cond_2
    :goto_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x2

    const/16 v9, 0xc

    if-ne v1, v4, :cond_3

    .line 685
    invoke-virtual {p0, v9, v0, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 686
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 688
    :cond_3
    iget p1, p1, Landroid/os/Message;->what:I

    if-ne p1, v9, :cond_5

    .line 689
    iget-object p1, p0, Lcom/narvii/app/incubator/IncubatorApplication$2;->this$0:Lcom/narvii/app/incubator/IncubatorApplication;

    invoke-static {p1}, Lcom/narvii/app/incubator/IncubatorApplication;->access$200(Lcom/narvii/app/incubator/IncubatorApplication;)I

    move-result p1

    if-ne p1, v0, :cond_5

    .line 690
    iget-object p1, p0, Lcom/narvii/app/incubator/IncubatorApplication$2;->this$0:Lcom/narvii/app/incubator/IncubatorApplication;

    invoke-static {p1}, Lcom/narvii/app/incubator/IncubatorApplication;->access$300(Lcom/narvii/app/incubator/IncubatorApplication;)I

    move-result v1

    sub-int/2addr v1, v5

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {p1, v1}, Lcom/narvii/app/incubator/IncubatorApplication;->access$302(Lcom/narvii/app/incubator/IncubatorApplication;I)I

    .line 691
    iget-object p1, p0, Lcom/narvii/app/incubator/IncubatorApplication$2;->this$0:Lcom/narvii/app/incubator/IncubatorApplication;

    invoke-static {p1}, Lcom/narvii/app/incubator/IncubatorApplication;->access$300(Lcom/narvii/app/incubator/IncubatorApplication;)I

    move-result p1

    if-nez p1, :cond_5

    .line 692
    iget-object p1, p0, Lcom/narvii/app/incubator/IncubatorApplication$2;->this$0:Lcom/narvii/app/incubator/IncubatorApplication;

    invoke-static {p1}, Lcom/narvii/app/incubator/IncubatorApplication;->access$100(Lcom/narvii/app/incubator/IncubatorApplication;)Ljava/util/HashMap;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/services/incubator/CommunityContext;

    if-nez p1, :cond_4

    .line 694
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 696
    :cond_4
    iget-object p1, p1, Lcom/narvii/services/incubator/CommunityContext;->serviceManager:Lcom/narvii/services/ServiceManager;

    invoke-virtual {p1}, Lcom/narvii/services/ServiceManager;->pause()V

    .line 698
    :goto_1
    iget-object p1, p0, Lcom/narvii/app/incubator/IncubatorApplication$2;->this$0:Lcom/narvii/app/incubator/IncubatorApplication;

    invoke-static {p1, v6}, Lcom/narvii/app/incubator/IncubatorApplication;->access$202(Lcom/narvii/app/incubator/IncubatorApplication;I)I

    :cond_5
    return-void
.end method
