.class Lcom/narvii/sharedfolder/SharedPhotoPostHelper$1;
.super Ljava/lang/Object;
.source "SharedPhotoPostHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->onPostStart(Lcom/narvii/post/PostHelper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/sharedfolder/SharedPhotoPostHelper;

.field final synthetic val$post:Lcom/narvii/post/PostHelper;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/SharedPhotoPostHelper;Lcom/narvii/post/PostHelper;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoPostHelper$1;->this$0:Lcom/narvii/sharedfolder/SharedPhotoPostHelper;

    iput-object p2, p0, Lcom/narvii/sharedfolder/SharedPhotoPostHelper$1;->val$post:Lcom/narvii/post/PostHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 69
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoPostHelper$1;->val$post:Lcom/narvii/post/PostHelper;

    invoke-virtual {p1}, Lcom/narvii/post/PostHelper;->cancel()V

    return-void
.end method
