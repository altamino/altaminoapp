.class Lcom/narvii/sharedfolder/SharedPhotoPickCallback$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoPickCallback$1;->this$0:Lcom/narvii/sharedfolder/SharedPhotoPickCallback;

    .line 3
    .line 4
    iput-boolean p2, p0, Lcom/narvii/sharedfolder/SharedPhotoPickCallback$1;->val$finishActivity:Z

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/sharedfolder/SharedPhotoPickCallback$1;->val$nvActivity:Lcom/narvii/app/NVActivity;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    iget-boolean p1, p0, Lcom/narvii/sharedfolder/SharedPhotoPickCallback$1;->val$finishActivity:Z

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoPickCallback$1;->val$nvActivity:Lcom/narvii/app/NVActivity;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->finish()V

    .line 10
    :cond_0
    return-void
.end method
