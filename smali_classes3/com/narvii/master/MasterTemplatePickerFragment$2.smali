.class Lcom/narvii/master/MasterTemplatePickerFragment$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "MasterTemplatePickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/MasterTemplatePickerFragment;->createCheck(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/model/api/ApiResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/MasterTemplatePickerFragment;

.field final synthetic val$templateId:I


# direct methods
.method constructor <init>(Lcom/narvii/master/MasterTemplatePickerFragment;Ljava/lang/Class;I)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/narvii/master/MasterTemplatePickerFragment$2;->this$0:Lcom/narvii/master/MasterTemplatePickerFragment;

    iput p3, p0, Lcom/narvii/master/MasterTemplatePickerFragment$2;->val$templateId:I

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "I",
            "Ljava/util/List<",
            "Lcom/narvii/util/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/narvii/model/api/ApiResponse;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 171
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 172
    iget-object p1, p0, Lcom/narvii/master/MasterTemplatePickerFragment$2;->this$0:Lcom/narvii/master/MasterTemplatePickerFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 175
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/MasterTemplatePickerFragment$2;->this$0:Lcom/narvii/master/MasterTemplatePickerFragment;

    iget-object p1, p1, Lcom/narvii/master/MasterTemplatePickerFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    if-eqz p1, :cond_1

    .line 176
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    :cond_1
    const/16 p1, 0x326

    const/4 p3, 0x0

    if-ne p2, p1, :cond_2

    .line 179
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    iget-object p2, p0, Lcom/narvii/master/MasterTemplatePickerFragment$2;->this$0:Lcom/narvii/master/MasterTemplatePickerFragment;

    invoke-virtual {p2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 180
    invoke-virtual {p1, p4}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const p2, 0x104000a

    .line 181
    invoke-virtual {p1, p2, p3}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 182
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_0

    :cond_2
    const/16 p1, 0x101

    if-ne p2, p1, :cond_3

    .line 184
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    iget-object p2, p0, Lcom/narvii/master/MasterTemplatePickerFragment$2;->this$0:Lcom/narvii/master/MasterTemplatePickerFragment;

    invoke-virtual {p2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const p2, 0x7f0f0780

    .line 185
    invoke-virtual {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;->setTitle(I)V

    .line 186
    invoke-virtual {p1, p4}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/high16 p2, 0x1040000

    .line 187
    invoke-virtual {p1, p2, p3}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const p2, 0x7f0f0e1a

    .line 188
    new-instance p3, Lcom/narvii/master/MasterTemplatePickerFragment$2$1;

    invoke-direct {p3, p0}, Lcom/narvii/master/MasterTemplatePickerFragment$2$1;-><init>(Lcom/narvii/master/MasterTemplatePickerFragment$2;)V

    invoke-virtual {p1, p2, p3}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 195
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_0

    .line 200
    :cond_3
    iget-object p1, p0, Lcom/narvii/master/MasterTemplatePickerFragment$2;->this$0:Lcom/narvii/master/MasterTemplatePickerFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    :goto_0
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 158
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 160
    iget-object p1, p0, Lcom/narvii/master/MasterTemplatePickerFragment$2;->this$0:Lcom/narvii/master/MasterTemplatePickerFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 163
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/MasterTemplatePickerFragment$2;->this$0:Lcom/narvii/master/MasterTemplatePickerFragment;

    iget-object p1, p1, Lcom/narvii/master/MasterTemplatePickerFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    if-eqz p1, :cond_1

    .line 164
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 166
    :cond_1
    iget-object p1, p0, Lcom/narvii/master/MasterTemplatePickerFragment$2;->this$0:Lcom/narvii/master/MasterTemplatePickerFragment;

    iget-object p1, p1, Lcom/narvii/master/MasterTemplatePickerFragment;->packageUtils:Lcom/narvii/util/PackageUtils;

    iget p2, p0, Lcom/narvii/master/MasterTemplatePickerFragment$2;->val$templateId:I

    invoke-virtual {p1, p2}, Lcom/narvii/util/PackageUtils;->createAmino(I)V

    return-void
.end method
