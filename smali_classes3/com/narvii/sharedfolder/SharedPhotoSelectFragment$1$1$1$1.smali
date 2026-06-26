.class Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1$1$1$1;
.super Ljava/lang/Object;
.source "SharedPhotoSelectFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1$1$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1$1$1;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1$1$1;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1$1$1$1;->this$3:Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 1

    .line 128
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1$1$1$1;->this$3:Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1$1$1;

    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1$1$1;->this$2:Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1$1;

    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1$1;->this$1:Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1;

    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1;->this$0:Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->setResult(I)V

    .line 129
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1$1$1$1;->this$3:Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1$1$1;

    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1$1$1;->this$2:Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1$1;

    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1$1;->this$1:Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1;

    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1;->this$0:Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method
