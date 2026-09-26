.class Lcom/narvii/master/MasterTemplatePickerFragment$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/MasterTemplatePickerFragment$2;->this$0:Lcom/narvii/master/MasterTemplatePickerFragment;

    .line 3
    .line 4
    iput p3, p0, Lcom/narvii/master/MasterTemplatePickerFragment$2;->val$templateId:I

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 8
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

    .line 1
    .line 2
    .line 3
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/master/MasterTemplatePickerFragment$2;->this$0:Lcom/narvii/master/MasterTemplatePickerFragment;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    return-void

    .line 13
    .line 14
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/MasterTemplatePickerFragment$2;->this$0:Lcom/narvii/master/MasterTemplatePickerFragment;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/narvii/master/MasterTemplatePickerFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 22
    .line 23
    :cond_1
    const/16 p1, 0x326

    .line 24
    const/4 p3, 0x0

    .line 25
    .line 26
    if-ne p2, p1, :cond_2

    .line 27
    .line 28
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    .line 29
    .line 30
    iget-object p2, p0, Lcom/narvii/master/MasterTemplatePickerFragment$2;->this$0:Lcom/narvii/master/MasterTemplatePickerFragment;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 34
    move-result-object p2

    .line 35
    .line 36
    .line 37
    invoke-direct {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p4}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    const p2, 0x104000a

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, p2, p3}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 50
    goto :goto_0

    .line 51
    .line 52
    :cond_2
    const/16 p1, 0x101

    .line 53
    .line 54
    if-ne p2, p1, :cond_3

    .line 55
    .line 56
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    .line 57
    .line 58
    iget-object p2, p0, Lcom/narvii/master/MasterTemplatePickerFragment$2;->this$0:Lcom/narvii/master/MasterTemplatePickerFragment;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 62
    move-result-object p2

    .line 63
    .line 64
    .line 65
    invoke-direct {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 66
    .line 67
    .line 68
    const p2, 0x7f120837

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;->setTitle(I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, p4}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 75
    .line 76
    const/high16 p2, 0x1040000

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, p2, p3}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 80
    .line 81
    new-instance p2, Lcom/narvii/master/MasterTemplatePickerFragment$2$1;

    .line 82
    .line 83
    .line 84
    invoke-direct {p2, p0}, Lcom/narvii/master/MasterTemplatePickerFragment$2$1;-><init>(Lcom/narvii/master/MasterTemplatePickerFragment$2;)V

    .line 85
    .line 86
    .line 87
    const p3, 0x7f120f45

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, p3, p2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 94
    .line 95
    iget-object p1, p0, Lcom/narvii/master/MasterTemplatePickerFragment$2;->this$0:Lcom/narvii/master/MasterTemplatePickerFragment;

    .line 96
    .line 97
    const-string p2, "statistics"

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, p2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 101
    move-result-object p1

    .line 102
    .line 103
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 104
    .line 105
    const-string p2, "Incomplete Account Info"

    .line 106
    .line 107
    .line 108
    invoke-interface {p1, p2}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 109
    move-result-object p1

    .line 110
    .line 111
    const-string p2, "Template"

    .line 112
    .line 113
    iget p3, p0, Lcom/narvii/master/MasterTemplatePickerFragment$2;->val$templateId:I

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, p2, p3}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;I)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 117
    move-result-object p1

    .line 118
    .line 119
    const-string p2, "Incomplete Account Info Total"

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 123
    goto :goto_0

    .line 124
    .line 125
    :cond_3
    iget-object p1, p0, Lcom/narvii/master/MasterTemplatePickerFragment$2;->this$0:Lcom/narvii/master/MasterTemplatePickerFragment;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 129
    move-result-object p1

    .line 130
    const/4 p2, 0x0

    .line 131
    .line 132
    .line 133
    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 134
    move-result-object p1

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 138
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

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/master/MasterTemplatePickerFragment$2;->this$0:Lcom/narvii/master/MasterTemplatePickerFragment;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    return-void

    .line 13
    .line 14
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/MasterTemplatePickerFragment$2;->this$0:Lcom/narvii/master/MasterTemplatePickerFragment;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/narvii/master/MasterTemplatePickerFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 22
    .line 23
    :cond_1
    iget-object p1, p0, Lcom/narvii/master/MasterTemplatePickerFragment$2;->this$0:Lcom/narvii/master/MasterTemplatePickerFragment;

    .line 24
    .line 25
    iget-object p1, p1, Lcom/narvii/master/MasterTemplatePickerFragment;->packageUtils:Lcom/narvii/util/PackageUtils;

    .line 26
    .line 27
    iget p2, p0, Lcom/narvii/master/MasterTemplatePickerFragment$2;->val$templateId:I

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2}, Lcom/narvii/util/PackageUtils;->createAmino(I)V

    .line 31
    return-void
.end method
