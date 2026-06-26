.class public Lcom/narvii/share/ShareButtonUploadToShareFolder;
.super Lcom/narvii/share/ShareButtonCustomInfo;
.source "ShareButtonUploadToShareFolder.java"


# instance fields
.field private final media:Lcom/narvii/model/Media;

.field private final mediaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/Media;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Lcom/narvii/model/Media;",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1}, Lcom/narvii/share/ShareButtonCustomInfo;-><init>(Lcom/narvii/app/NVContext;)V

    .line 27
    iput-object p2, p0, Lcom/narvii/share/ShareButtonUploadToShareFolder;->media:Lcom/narvii/model/Media;

    .line 28
    iput-object p3, p0, Lcom/narvii/share/ShareButtonUploadToShareFolder;->mediaList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/share/ShareButtonUploadToShareFolder;)Ljava/util/List;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/narvii/share/ShareButtonUploadToShareFolder;->mediaList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/share/ShareButtonUploadToShareFolder;)Lcom/narvii/model/Media;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/narvii/share/ShareButtonUploadToShareFolder;->media:Lcom/narvii/model/Media;

    return-object p0
.end method


# virtual methods
.method public getIcon()I
    .locals 1

    .line 38
    sget v0, Lcom/narvii/lib/R$drawable;->ic_share_dialog_upload_to_share_folder:I

    return v0
.end method

.method public getStatSelectionForShare()Ljava/lang/String;
    .locals 1

    const-string v0, "Shared Folder"

    return-object v0
.end method

.method public getTextString()I
    .locals 1

    .line 33
    sget v0, Lcom/narvii/lib/R$string;->share_upload_to_share_folder:I

    return v0
.end method

.method public onClick(Lcom/narvii/share/SharePayload;)V
    .locals 3

    .line 48
    new-instance v0, Lcom/narvii/util/CheckEligibleHelper;

    iget-object v1, p0, Lcom/narvii/share/ShareButtonCustomInfo;->nvContext:Lcom/narvii/app/NVContext;

    invoke-direct {v0, v1}, Lcom/narvii/util/CheckEligibleHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 49
    new-instance v1, Lcom/narvii/share/ShareButtonUploadToShareFolder$1;

    invoke-direct {v1, p0, p1}, Lcom/narvii/share/ShareButtonUploadToShareFolder$1;-><init>(Lcom/narvii/share/ShareButtonUploadToShareFolder;Lcom/narvii/share/SharePayload;)V

    const-string p1, "shared-folder"

    const-string v2, "image-upload"

    invoke-virtual {v0, p1, v2, v1}, Lcom/narvii/util/CheckEligibleHelper;->checkEligible(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/util/Callback;)V

    return-void
.end method
