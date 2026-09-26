.class Lcom/narvii/util/dialog/ProgressDialog$ResultListener$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/dialog/ProgressDialog$ResultListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/util/dialog/ProgressDialog$ResultListener;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$resp:Lcom/narvii/model/api/ApiResponse;


# direct methods
.method constructor <init>(Lcom/narvii/util/dialog/ProgressDialog$ResultListener;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/dialog/ProgressDialog$ResultListener$2;->this$1:Lcom/narvii/util/dialog/ProgressDialog$ResultListener;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/util/dialog/ProgressDialog$ResultListener$2;->val$message:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/util/dialog/ProgressDialog$ResultListener$2;->val$resp:Lcom/narvii/model/api/ApiResponse;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/narvii/util/dialog/ProgressDialog$ResultListener$2;->val$msg:Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/dialog/ProgressDialog$ResultListener$2;->this$1:Lcom/narvii/util/dialog/ProgressDialog$ResultListener;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/util/dialog/ProgressDialog$ResultListener;->this$0:Lcom/narvii/util/dialog/ProgressDialog;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/util/dialog/ProgressDialog$ResultListener$2;->this$1:Lcom/narvii/util/dialog/ProgressDialog$ResultListener;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/narvii/util/dialog/ProgressDialog$ResultListener;->this$0:Lcom/narvii/util/dialog/ProgressDialog;

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/narvii/util/dialog/ProgressDialog;->a(Lcom/narvii/util/dialog/ProgressDialog;)Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/util/dialog/ProgressDialog$ResultListener$2;->val$message:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/narvii/util/dialog/ProgressDialog$ResultListener$2;->val$resp:Lcom/narvii/model/api/ApiResponse;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/narvii/util/dialog/ProgressDialog$ResultListener$2;->this$1:Lcom/narvii/util/dialog/ProgressDialog$ResultListener;

    .line 24
    .line 25
    iget-object v2, v2, Lcom/narvii/util/dialog/ProgressDialog$ResultListener;->this$0:Lcom/narvii/util/dialog/ProgressDialog;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->showNetworkError(Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Landroid/content/Context;)V

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/dialog/ProgressDialog$ResultListener$2;->this$1:Lcom/narvii/util/dialog/ProgressDialog$ResultListener;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/narvii/util/dialog/ProgressDialog$ResultListener;->this$0:Lcom/narvii/util/dialog/ProgressDialog;

    .line 38
    .line 39
    iget v1, v0, Lcom/narvii/util/dialog/ProgressDialog;->errorMode:I

    .line 40
    const/4 v2, 0x1

    .line 41
    .line 42
    if-ne v1, v2, :cond_1

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    .line 49
    invoke-static {v0}, Lcom/narvii/util/http/ApiService;->shouldShowErrMessage(Landroid/content/Context;)Z

    .line 50
    move-result v0

    .line 51
    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 55
    .line 56
    iget-object v1, p0, Lcom/narvii/util/dialog/ProgressDialog$ResultListener$2;->this$1:Lcom/narvii/util/dialog/ProgressDialog$ResultListener;

    .line 57
    .line 58
    iget-object v1, v1, Lcom/narvii/util/dialog/ProgressDialog$ResultListener;->this$0:Lcom/narvii/util/dialog/ProgressDialog;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    .line 65
    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 66
    .line 67
    .line 68
    const v1, 0x1080027

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 72
    .line 73
    iget-object v1, p0, Lcom/narvii/util/dialog/ProgressDialog$ResultListener$2;->val$msg:Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 77
    .line 78
    .line 79
    const v1, 0x104000a

    .line 80
    .line 81
    sget-object v2, Lcom/narvii/util/Utils;->DIALOG_BUTTON_EMPTY_LISTENER:Landroid/content/DialogInterface$OnClickListener;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 88
    goto :goto_0

    .line 89
    .line 90
    :cond_1
    iget-object v0, p0, Lcom/narvii/util/dialog/ProgressDialog$ResultListener$2;->this$1:Lcom/narvii/util/dialog/ProgressDialog$ResultListener;

    .line 91
    .line 92
    iget-object v0, v0, Lcom/narvii/util/dialog/ProgressDialog$ResultListener;->this$0:Lcom/narvii/util/dialog/ProgressDialog;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 96
    move-result-object v0

    .line 97
    .line 98
    iget-object v1, p0, Lcom/narvii/util/dialog/ProgressDialog$ResultListener$2;->val$msg:Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    invoke-static {v0, v1, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 102
    move-result-object v0

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    .line 106
    .line 107
    :goto_0
    iget-object v0, p0, Lcom/narvii/util/dialog/ProgressDialog$ResultListener$2;->this$1:Lcom/narvii/util/dialog/ProgressDialog$ResultListener;

    .line 108
    .line 109
    iget-object v0, v0, Lcom/narvii/util/dialog/ProgressDialog$ResultListener;->this$0:Lcom/narvii/util/dialog/ProgressDialog;

    .line 110
    .line 111
    iget-object v0, v0, Lcom/narvii/util/dialog/ProgressDialog;->failureListener:Lcom/narvii/util/Callback;

    .line 112
    .line 113
    if-eqz v0, :cond_2

    .line 114
    .line 115
    iget-object v1, p0, Lcom/narvii/util/dialog/ProgressDialog$ResultListener$2;->val$msg:Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    invoke-interface {v0, v1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 119
    :cond_2
    return-void
.end method
