.class final Lcom/narvii/visitor/VisitorsSettingFragment$Adapter$sendPrivacyRequest$1;
.super Ljava/lang/Object;
.source "VisitorsSettingFragment.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;->sendPrivacyRequest(Ljava/lang/Integer;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;


# direct methods
.method constructor <init>(Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter$sendPrivacyRequest$1;->this$0:Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 164
    iget-object p1, p0, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter$sendPrivacyRequest$1;->this$0:Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;->this$0:Lcom/narvii/visitor/VisitorsSettingFragment;

    invoke-static {p1}, Lcom/narvii/visitor/VisitorsSettingFragment;->access$getPrivacyRequest$p(Lcom/narvii/visitor/VisitorsSettingFragment;)Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 165
    iget-object p1, p0, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter$sendPrivacyRequest$1;->this$0:Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;->this$0:Lcom/narvii/visitor/VisitorsSettingFragment;

    invoke-static {p1}, Lcom/narvii/visitor/VisitorsSettingFragment;->access$getApi$p(Lcom/narvii/visitor/VisitorsSettingFragment;)Lcom/narvii/util/http/ApiService;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter$sendPrivacyRequest$1;->this$0:Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;

    iget-object v0, v0, Lcom/narvii/visitor/VisitorsSettingFragment$Adapter;->this$0:Lcom/narvii/visitor/VisitorsSettingFragment;

    invoke-static {v0}, Lcom/narvii/visitor/VisitorsSettingFragment;->access$getPrivacyRequest$p(Lcom/narvii/visitor/VisitorsSettingFragment;)Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    :cond_0
    return-void
.end method
