.class Lcom/narvii/master/MasterTemplatePickerFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/MasterTemplatePickerFragment;->createCheck(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/MasterTemplatePickerFragment;

.field final synthetic val$apiService:Lcom/narvii/util/http/ApiService;


# direct methods
.method constructor <init>(Lcom/narvii/master/MasterTemplatePickerFragment;Lcom/narvii/util/http/ApiService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/MasterTemplatePickerFragment$1;->this$0:Lcom/narvii/master/MasterTemplatePickerFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/master/MasterTemplatePickerFragment$1;->val$apiService:Lcom/narvii/util/http/ApiService;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/master/MasterTemplatePickerFragment$1;->this$0:Lcom/narvii/master/MasterTemplatePickerFragment;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/master/MasterTemplatePickerFragment;->apiRequest:Lcom/narvii/util/http/ApiRequest;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/master/MasterTemplatePickerFragment$1;->val$apiService:Lcom/narvii/util/http/ApiService;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    .line 12
    :cond_0
    return-void
.end method
