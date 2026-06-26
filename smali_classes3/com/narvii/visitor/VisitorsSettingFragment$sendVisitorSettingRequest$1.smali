.class public final Lcom/narvii/visitor/VisitorsSettingFragment$sendVisitorSettingRequest$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "VisitorsSettingFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/visitor/VisitorsSettingFragment;->sendVisitorSettingRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/visitor/VisitorsSettingFragment$VisitorsSettingResponse;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVisitorsSettingFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VisitorsSettingFragment.kt\ncom/narvii/visitor/VisitorsSettingFragment$sendVisitorSettingRequest$1\n*L\n1#1,299:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/visitor/VisitorsSettingFragment;


# direct methods
.method constructor <init>(Lcom/narvii/visitor/VisitorsSettingFragment;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .line 245
    iput-object p1, p0, Lcom/narvii/visitor/VisitorsSettingFragment$sendVisitorSettingRequest$1;->this$0:Lcom/narvii/visitor/VisitorsSettingFragment;

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

    .line 259
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 260
    iget-object p1, p0, Lcom/narvii/visitor/VisitorsSettingFragment$sendVisitorSettingRequest$1;->this$0:Lcom/narvii/visitor/VisitorsSettingFragment;

    invoke-static {p1}, Lcom/narvii/visitor/VisitorsSettingFragment;->access$getProgressView$p(Lcom/narvii/visitor/VisitorsSettingFragment;)Landroid/view/View;

    move-result-object p1

    const-string p2, "progressView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 261
    iget-object p1, p0, Lcom/narvii/visitor/VisitorsSettingFragment$sendVisitorSettingRequest$1;->this$0:Lcom/narvii/visitor/VisitorsSettingFragment;

    invoke-virtual {p1, p4}, Lcom/narvii/list/NVListFragment;->setErrorMessage(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 245
    check-cast p2, Lcom/narvii/visitor/VisitorsSettingFragment$VisitorsSettingResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/visitor/VisitorsSettingFragment$sendVisitorSettingRequest$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/visitor/VisitorsSettingFragment$VisitorsSettingResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/visitor/VisitorsSettingFragment$VisitorsSettingResponse;)V
    .locals 0

    .line 248
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    if-eqz p2, :cond_0

    .line 249
    invoke-virtual {p2}, Lcom/narvii/visitor/VisitorsSettingFragment$VisitorsSettingResponse;->getVisitSettings()Lcom/narvii/model/VisitorSetting;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 250
    iget-object p2, p0, Lcom/narvii/visitor/VisitorsSettingFragment$sendVisitorSettingRequest$1;->this$0:Lcom/narvii/visitor/VisitorsSettingFragment;

    invoke-static {p2, p1}, Lcom/narvii/visitor/VisitorsSettingFragment;->access$updateVisitorSetting(Lcom/narvii/visitor/VisitorsSettingFragment;Lcom/narvii/model/VisitorSetting;)V

    .line 252
    :cond_0
    iget-object p1, p0, Lcom/narvii/visitor/VisitorsSettingFragment$sendVisitorSettingRequest$1;->this$0:Lcom/narvii/visitor/VisitorsSettingFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/narvii/visitor/VisitorsSettingFragment;->access$setLoadSuccess$p(Lcom/narvii/visitor/VisitorsSettingFragment;Z)V

    .line 253
    iget-object p1, p0, Lcom/narvii/visitor/VisitorsSettingFragment$sendVisitorSettingRequest$1;->this$0:Lcom/narvii/visitor/VisitorsSettingFragment;

    invoke-static {p1}, Lcom/narvii/visitor/VisitorsSettingFragment;->access$getProgressView$p(Lcom/narvii/visitor/VisitorsSettingFragment;)Landroid/view/View;

    move-result-object p1

    const-string p2, "progressView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 254
    iget-object p1, p0, Lcom/narvii/visitor/VisitorsSettingFragment$sendVisitorSettingRequest$1;->this$0:Lcom/narvii/visitor/VisitorsSettingFragment;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/narvii/list/NVListFragment;->setErrorMessage(Ljava/lang/String;)V

    .line 255
    iget-object p1, p0, Lcom/narvii/visitor/VisitorsSettingFragment$sendVisitorSettingRequest$1;->this$0:Lcom/narvii/visitor/VisitorsSettingFragment;

    invoke-static {p1}, Lcom/narvii/visitor/VisitorsSettingFragment;->access$getAdapter$p(Lcom/narvii/visitor/VisitorsSettingFragment;)Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/list/prefs/PrefsAdapter;->notifyDataSetChanged()V

    return-void
.end method
