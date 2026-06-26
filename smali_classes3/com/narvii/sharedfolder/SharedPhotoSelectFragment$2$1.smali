.class Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$2$1;
.super Ljava/lang/Object;
.source "SharedPhotoSelectFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$2;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$2;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$2$1;->this$1:Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 0

    .line 154
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$2$1;->this$1:Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$2;

    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$2;->this$0:Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method
