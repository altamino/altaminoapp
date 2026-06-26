.class Lcom/narvii/optionmenu/OptionMenuFragment$4;
.super Ljava/lang/Object;
.source "OptionMenuFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/optionmenu/OptionMenuFragment;->uploadToShareFolder(Lcom/narvii/model/Media;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/optionmenu/OptionMenuFragment;

.field final synthetic val$media:Lcom/narvii/model/Media;

.field final synthetic val$mediaList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/narvii/optionmenu/OptionMenuFragment;Ljava/util/ArrayList;Lcom/narvii/model/Media;)V
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/narvii/optionmenu/OptionMenuFragment$4;->this$0:Lcom/narvii/optionmenu/OptionMenuFragment;

    iput-object p2, p0, Lcom/narvii/optionmenu/OptionMenuFragment$4;->val$mediaList:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/narvii/optionmenu/OptionMenuFragment$4;->val$media:Lcom/narvii/model/Media;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 2

    .line 332
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

    .line 333
    iget-object v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment$4;->val$mediaList:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "list"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 334
    iget-object v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment$4;->val$media:Lcom/narvii/model/Media;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "selected"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    iget-object v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment$4;->this$0:Lcom/narvii/optionmenu/OptionMenuFragment;

    invoke-static {v0}, Lcom/narvii/optionmenu/OptionMenuFragment;->access$500(Lcom/narvii/optionmenu/OptionMenuFragment;)Lcom/narvii/model/NVObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v0

    const-string v1, "objectId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    iget-object v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment$4;->this$0:Lcom/narvii/optionmenu/OptionMenuFragment;

    invoke-static {v0}, Lcom/narvii/optionmenu/OptionMenuFragment;->access$500(Lcom/narvii/optionmenu/OptionMenuFragment;)Lcom/narvii/model/NVObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->objectType()I

    move-result v0

    const-string v1, "objectType"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 337
    iget-object v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment$4;->this$0:Lcom/narvii/optionmenu/OptionMenuFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
