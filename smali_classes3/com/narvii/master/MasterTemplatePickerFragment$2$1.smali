.class Lcom/narvii/master/MasterTemplatePickerFragment$2$1;
.super Ljava/lang/Object;
.source "MasterTemplatePickerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/MasterTemplatePickerFragment$2;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/master/MasterTemplatePickerFragment$2;


# direct methods
.method constructor <init>(Lcom/narvii/master/MasterTemplatePickerFragment$2;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/narvii/master/MasterTemplatePickerFragment$2$1;->this$1:Lcom/narvii/master/MasterTemplatePickerFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 191
    const-class p1, Lcom/narvii/prefs/AccountSettingFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 192
    iget-object v0, p0, Lcom/narvii/master/MasterTemplatePickerFragment$2$1;->this$1:Lcom/narvii/master/MasterTemplatePickerFragment$2;

    iget-object v0, v0, Lcom/narvii/master/MasterTemplatePickerFragment$2;->this$0:Lcom/narvii/master/MasterTemplatePickerFragment;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
