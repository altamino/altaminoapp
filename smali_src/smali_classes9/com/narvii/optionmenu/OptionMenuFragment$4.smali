.class Lcom/narvii/optionmenu/OptionMenuFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/optionmenu/OptionMenuFragment$4;->this$0:Lcom/narvii/optionmenu/OptionMenuFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/optionmenu/OptionMenuFragment$4;->val$mediaList:Ljava/util/ArrayList;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/optionmenu/OptionMenuFragment$4;->val$media:Lcom/narvii/model/Media;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public static safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/app/NVContext;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 2

    .line 1
    .line 2
    new-instance p1, Landroid/content/Intent;

    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    const-string v1, "ndc://fragment/"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-class v1, Lcom/narvii/media/PostMediaPickerFragment;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    const-string v1, "android.intent.action.VIEW"

    .line 32
    .line 33
    .line 34
    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 35
    .line 36
    iget-object v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment$4;->val$mediaList:Ljava/util/ArrayList;

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    const-string v1, "list"

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    .line 47
    iget-object v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment$4;->val$media:Lcom/narvii/model/Media;

    .line 48
    .line 49
    .line 50
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    const-string v1, "selected"

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    .line 58
    iget-object v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment$4;->this$0:Lcom/narvii/optionmenu/OptionMenuFragment;

    .line 59
    .line 60
    .line 61
    invoke-static {v0}, Lcom/narvii/optionmenu/OptionMenuFragment;->o(Lcom/narvii/optionmenu/OptionMenuFragment;)Lcom/narvii/model/NVObject;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    const-string v1, "objectId"

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    .line 73
    iget-object v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment$4;->this$0:Lcom/narvii/optionmenu/OptionMenuFragment;

    .line 74
    .line 75
    .line 76
    invoke-static {v0}, Lcom/narvii/optionmenu/OptionMenuFragment;->o(Lcom/narvii/optionmenu/OptionMenuFragment;)Lcom/narvii/model/NVObject;

    .line 77
    move-result-object v0

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->objectType()I

    .line 81
    move-result v0

    .line 82
    .line 83
    const-string v1, "objectType"

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 87
    .line 88
    iget-object v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment$4;->this$0:Lcom/narvii/optionmenu/OptionMenuFragment;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getParentContext()Lcom/narvii/app/NVContext;

    .line 92
    move-result-object v0

    .line 93
    .line 94
    .line 95
    invoke-static {v0, p1}, Lcom/narvii/optionmenu/OptionMenuFragment$4;->safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V

    .line 96
    return-void
.end method
