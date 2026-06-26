.class Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$5$1;
.super Ljava/lang/Object;
.source "SharedPhotoDetailFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$5;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$5;)V
    .locals 0

    .line 496
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$5$1;->this$1:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 1

    .line 499
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$5$1;->this$1:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$5;

    iget-object v0, p1, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$5;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    iget-object v0, v0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->onPhotoDeleteCallback:Lcom/narvii/util/Callback;

    if-eqz v0, :cond_0

    .line 500
    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$5;->val$sharedFile:Lcom/narvii/model/SharedFile;

    invoke-interface {v0, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 502
    :cond_0
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$5$1;->this$1:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$5;

    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$5;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    const-string v0, "gallery"

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 503
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$5$1;->this$1:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$5;

    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$5;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    :cond_1
    return-void
.end method
