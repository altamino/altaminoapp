.class Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$5$1;->this$1:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$5;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$5$1;->this$1:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$5;

    .line 3
    .line 4
    iget-object v0, p1, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$5;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;->onPhotoDeleteCallback:Lcom/narvii/util/Callback;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$5;->val$sharedFile:Lcom/narvii/model/SharedFile;

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 14
    .line 15
    :cond_0
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$5$1;->this$1:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$5;

    .line 16
    .line 17
    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$5;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    .line 18
    .line 19
    const-string v0, "gallery"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 23
    move-result p1

    .line 24
    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$5$1;->this$1:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$5;

    .line 28
    .line 29
    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedPhotoDetailFragment$5;->this$0:Lcom/narvii/sharedfolder/SharedPhotoDetailFragment;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    .line 33
    :cond_1
    return-void
.end method
