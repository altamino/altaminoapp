.class Lcom/narvii/share/ShareButtonUploadToShareFolder$1;
.super Ljava/lang/Object;
.source "ShareButtonUploadToShareFolder.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/share/ShareButtonUploadToShareFolder;->onClick(Lcom/narvii/share/SharePayload;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/share/ShareButtonUploadToShareFolder;

.field final synthetic val$sharePayload:Lcom/narvii/share/SharePayload;


# direct methods
.method constructor <init>(Lcom/narvii/share/ShareButtonUploadToShareFolder;Lcom/narvii/share/SharePayload;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/narvii/share/ShareButtonUploadToShareFolder$1;->this$0:Lcom/narvii/share/ShareButtonUploadToShareFolder;

    iput-object p2, p0, Lcom/narvii/share/ShareButtonUploadToShareFolder$1;->val$sharePayload:Lcom/narvii/share/SharePayload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 2

    .line 52
    new-instance p1, Landroid/content/Intent;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ndc://fragment/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/narvii/media/PostMediaPickerFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 53
    iget-object v0, p0, Lcom/narvii/share/ShareButtonUploadToShareFolder$1;->this$0:Lcom/narvii/share/ShareButtonUploadToShareFolder;

    invoke-static {v0}, Lcom/narvii/share/ShareButtonUploadToShareFolder;->access$000(Lcom/narvii/share/ShareButtonUploadToShareFolder;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "list"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    iget-object v0, p0, Lcom/narvii/share/ShareButtonUploadToShareFolder$1;->this$0:Lcom/narvii/share/ShareButtonUploadToShareFolder;

    invoke-static {v0}, Lcom/narvii/share/ShareButtonUploadToShareFolder;->access$100(Lcom/narvii/share/ShareButtonUploadToShareFolder;)Lcom/narvii/model/Media;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "selected"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    iget-object v0, p0, Lcom/narvii/share/ShareButtonUploadToShareFolder$1;->val$sharePayload:Lcom/narvii/share/SharePayload;

    iget-object v0, v0, Lcom/narvii/share/SharePayload;->object:Lcom/narvii/model/NVObject;

    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v0

    const-string v1, "objectId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    iget-object v0, p0, Lcom/narvii/share/ShareButtonUploadToShareFolder$1;->val$sharePayload:Lcom/narvii/share/SharePayload;

    iget-object v0, v0, Lcom/narvii/share/SharePayload;->object:Lcom/narvii/model/NVObject;

    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->objectType()I

    move-result v0

    const-string v1, "objectType"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 57
    iget-object v0, p0, Lcom/narvii/share/ShareButtonUploadToShareFolder$1;->this$0:Lcom/narvii/share/ShareButtonUploadToShareFolder;

    iget-object v0, v0, Lcom/narvii/share/ShareButtonCustomInfo;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
