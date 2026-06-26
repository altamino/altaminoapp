.class final Lcom/narvii/incubator/ContentLanguagePickHelper$showLanguagePickerDialog$1$onFinish$1;
.super Ljava/lang/Object;
.source "ContentLanguagePickHelper.kt"

# interfaces
.implements Lcom/narvii/incubator/LanguageChooseDialog$ItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/incubator/ContentLanguagePickHelper$showLanguagePickerDialog$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/master/explorer/SupportLanguageResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $dlg:Lcom/narvii/incubator/LanguageChooseDialog;

.field final synthetic this$0:Lcom/narvii/incubator/ContentLanguagePickHelper$showLanguagePickerDialog$1;


# direct methods
.method constructor <init>(Lcom/narvii/incubator/ContentLanguagePickHelper$showLanguagePickerDialog$1;Lcom/narvii/incubator/LanguageChooseDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/incubator/ContentLanguagePickHelper$showLanguagePickerDialog$1$onFinish$1;->this$0:Lcom/narvii/incubator/ContentLanguagePickHelper$showLanguagePickerDialog$1;

    iput-object p2, p0, Lcom/narvii/incubator/ContentLanguagePickHelper$showLanguagePickerDialog$1$onFinish$1;->$dlg:Lcom/narvii/incubator/LanguageChooseDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Lcom/narvii/language/LanguageSpec;)V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/narvii/incubator/ContentLanguagePickHelper$showLanguagePickerDialog$1$onFinish$1;->$dlg:Lcom/narvii/incubator/LanguageChooseDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/narvii/incubator/ContentLanguagePickHelper$showLanguagePickerDialog$1$onFinish$1;->$dlg:Lcom/narvii/incubator/LanguageChooseDialog;

    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/narvii/incubator/ContentLanguagePickHelper$showLanguagePickerDialog$1$onFinish$1;->this$0:Lcom/narvii/incubator/ContentLanguagePickHelper$showLanguagePickerDialog$1;

    iget-object v0, v0, Lcom/narvii/incubator/ContentLanguagePickHelper$showLanguagePickerDialog$1;->$languageService:Lcom/narvii/language/ContentLanguageService;

    invoke-virtual {v0}, Lcom/narvii/language/ContentLanguageService;->languageUserSelected()Ljava/lang/String;

    move-result-object v0

    .line 43
    iget-object v1, p1, Lcom/narvii/language/LanguageSpec;->code:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/narvii/incubator/ContentLanguagePickHelper$showLanguagePickerDialog$1$onFinish$1;->this$0:Lcom/narvii/incubator/ContentLanguagePickHelper$showLanguagePickerDialog$1;

    iget-object v0, v0, Lcom/narvii/incubator/ContentLanguagePickHelper$showLanguagePickerDialog$1;->$languageService:Lcom/narvii/language/ContentLanguageService;

    iget-object p1, p1, Lcom/narvii/language/LanguageSpec;->code:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/narvii/language/ContentLanguageService;->saveLanguageCode(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
