.class Lcom/narvii/master/MasterTemplatePickerFragment$1;
.super Ljava/lang/Object;
.source "MasterTemplatePickerFragment.java"

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

    .line 146
    iput-object p1, p0, Lcom/narvii/master/MasterTemplatePickerFragment$1;->this$0:Lcom/narvii/master/MasterTemplatePickerFragment;

    iput-object p2, p0, Lcom/narvii/master/MasterTemplatePickerFragment$1;->val$apiService:Lcom/narvii/util/http/ApiService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 149
    iget-object p1, p0, Lcom/narvii/master/MasterTemplatePickerFragment$1;->this$0:Lcom/narvii/master/MasterTemplatePickerFragment;

    iget-object p1, p1, Lcom/narvii/master/MasterTemplatePickerFragment;->apiRequest:Lcom/narvii/util/http/ApiRequest;

    if-eqz p1, :cond_0

    .line 150
    iget-object v0, p0, Lcom/narvii/master/MasterTemplatePickerFragment$1;->val$apiService:Lcom/narvii/util/http/ApiService;

    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    :cond_0
    return-void
.end method
