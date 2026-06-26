.class Lcom/narvii/sharedfolder/SharedPhotoPickCallback$1;
.super Ljava/lang/Object;
.source "SharedPhotoPickCallback.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/SharedPhotoPickCallback;->uploadMedia(Ljava/util/HashMap;Lcom/narvii/app/NVActivity;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/sharedfolder/SharedPhotoPickCallback;

.field final synthetic val$finishActivity:Z

.field final synthetic val$nvActivity:Lcom/narvii/app/NVActivity;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/SharedPhotoPickCallback;ZLcom/narvii/app/NVActivity;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoPickCallback$1;->this$0:Lcom/narvii/sharedfolder/SharedPhotoPickCallback;

    iput-boolean p2, p0, Lcom/narvii/sharedfolder/SharedPhotoPickCallback$1;->val$finishActivity:Z

    iput-object p3, p0, Lcom/narvii/sharedfolder/SharedPhotoPickCallback$1;->val$nvActivity:Lcom/narvii/app/NVActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 0

    .line 50
    iget-boolean p1, p0, Lcom/narvii/sharedfolder/SharedPhotoPickCallback$1;->val$finishActivity:Z

    if-eqz p1, :cond_0

    .line 51
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoPickCallback$1;->val$nvActivity:Lcom/narvii/app/NVActivity;

    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->finish()V

    :cond_0
    return-void
.end method
