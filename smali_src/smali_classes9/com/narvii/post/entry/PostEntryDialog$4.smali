.class Lcom/narvii/post/entry/PostEntryDialog$4;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/post/entry/PostEntryDialog;->checkEligible()V
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
.field final synthetic this$0:Lcom/narvii/post/entry/PostEntryDialog;


# direct methods
.method constructor <init>(Lcom/narvii/post/entry/PostEntryDialog;Ljava/lang/Class;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/post/entry/PostEntryDialog$4;->this$0:Lcom/narvii/post/entry/PostEntryDialog;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 6
    return-void
.end method

.method public static synthetic a(Lcom/narvii/post/entry/PostEntryDialog$4;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/post/entry/PostEntryDialog$4;->lambda$onFail$0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method private synthetic lambda$onFail$0(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/post/entry/PostEntryDialog$4;->this$0:Lcom/narvii/post/entry/PostEntryDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/post/entry/PostEntryDialog;->dismiss()V

    .line 6
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
    iget-object p1, p0, Lcom/narvii/post/entry/PostEntryDialog$4;->this$0:Lcom/narvii/post/entry/PostEntryDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 6
    move-result p1

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    const/16 p1, 0xee

    .line 12
    .line 13
    if-ne p2, p1, :cond_1

    .line 14
    .line 15
    iget-object p1, p0, Lcom/narvii/post/entry/PostEntryDialog$4;->this$0:Lcom/narvii/post/entry/PostEntryDialog;

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lcom/narvii/post/entry/PostEntryDialog;->k(Lcom/narvii/post/entry/PostEntryDialog;)Z

    .line 19
    move-result p1

    .line 20
    .line 21
    if-nez p1, :cond_1

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_1
    iget-object p1, p0, Lcom/narvii/post/entry/PostEntryDialog$4;->this$0:Lcom/narvii/post/entry/PostEntryDialog;

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lcom/narvii/post/entry/PostEntryDialog;->j(Lcom/narvii/post/entry/PostEntryDialog;)Landroid/content/Context;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Lcom/narvii/util/http/ApiService;->shouldShowErrMessage(Landroid/content/Context;)Z

    .line 32
    move-result p1

    .line 33
    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    new-instance p1, Landroid/app/AlertDialog$Builder;

    .line 37
    .line 38
    iget-object p2, p0, Lcom/narvii/post/entry/PostEntryDialog$4;->this$0:Lcom/narvii/post/entry/PostEntryDialog;

    .line 39
    .line 40
    .line 41
    invoke-static {p2}, Lcom/narvii/post/entry/PostEntryDialog;->j(Lcom/narvii/post/entry/PostEntryDialog;)Landroid/content/Context;

    .line 42
    move-result-object p2

    .line 43
    .line 44
    .line 45
    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 49
    .line 50
    .line 51
    const p2, 0x7f1202ba

    .line 52
    .line 53
    sget-object p3, Lcom/narvii/util/Utils;->DIALOG_BUTTON_EMPTY_LISTENER:Landroid/content/DialogInterface$OnClickListener;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 57
    .line 58
    new-instance p2, Lcom/narvii/post/entry/j;

    .line 59
    .line 60
    .line 61
    invoke-direct {p2, p0}, Lcom/narvii/post/entry/j;-><init>(Lcom/narvii/post/entry/PostEntryDialog$4;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 68
    :cond_2
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

    return-void
.end method
