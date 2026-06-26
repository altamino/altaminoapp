.class Lcom/narvii/sharedfolder/MyUploadsBaseFragment$1;
.super Lcom/narvii/sharedfolder/SharedPhotosAdapter;
.source "MyUploadsBaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/MyUploadsBaseFragment;->getPhotoAdapter(Z)Lcom/narvii/list/NVAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/sharedfolder/MyUploadsBaseFragment;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/MyUploadsBaseFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/narvii/sharedfolder/MyUploadsBaseFragment$1;->this$0:Lcom/narvii/sharedfolder/MyUploadsBaseFragment;

    invoke-direct {p0, p2}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method protected allowShowDisabledByAmino()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected allowShowNormalDisable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected showNew()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected sourceType()Ljava/lang/String;
    .locals 1

    const-string v0, "my-uploads"

    return-object v0
.end method
