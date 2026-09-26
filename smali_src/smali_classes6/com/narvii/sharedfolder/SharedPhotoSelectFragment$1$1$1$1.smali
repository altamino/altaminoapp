.class Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1$1$1$1;->this$3:Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1$1$1;

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
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1$1$1$1;->this$3:Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1$1$1;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1$1$1;->this$2:Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1$1;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1$1;->this$1:Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1;->this$0:Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;

    .line 9
    const/4 v0, -0x1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->setResult(I)V

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1$1$1$1;->this$3:Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1$1$1;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1$1$1;->this$2:Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1$1;

    .line 17
    .line 18
    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1$1;->this$1:Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1;

    .line 19
    .line 20
    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$1;->this$0:Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    .line 24
    return-void
.end method
