.class public Lcom/narvii/util/dialog/ProgressDialog;
.super Lcom/narvii/app/NVDialog;
.source "ProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/util/dialog/ProgressDialog$ResultListener;
    }
.end annotation


# static fields
.field public static final ERROR_ALERT:I = 0x1

.field public static final ERROR_TOAST:I


# instance fields
.field public final dismissListener:Lcom/narvii/util/http/ApiResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/http/ApiResponseListener<",
            "Lcom/narvii/model/api/ApiResponse;",
            ">;"
        }
    .end annotation
.end field

.field private errorDialogFirst:Z

.field public errorMode:I

.field public failureListener:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public minShowTime:I

.field private progressContent:Landroid/widget/TextView;

.field public final responseType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Lcom/narvii/model/api/ApiResponse;",
            ">;"
        }
    .end annotation
.end field

.field private showTime:J

.field public successListener:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/model/api/ApiResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 30
    const-class v0, Lcom/narvii/model/api/ApiResponse;

    invoke-direct {p0, p1, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/model/api/ApiResponse;",
            ">;)V"
        }
    .end annotation

    .line 35
    sget v0, Lcom/narvii/lib/R$style;->CustomDialog:I

    invoke-direct {p0, p1, v0}, Lcom/narvii/app/NVDialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 51
    iput p1, p0, Lcom/narvii/util/dialog/ProgressDialog;->errorMode:I

    .line 53
    iput-boolean p1, p0, Lcom/narvii/util/dialog/ProgressDialog;->errorDialogFirst:Z

    const/16 p1, 0x4b0

    .line 58
    iput p1, p0, Lcom/narvii/util/dialog/ProgressDialog;->minShowTime:I

    .line 37
    iput-object p2, p0, Lcom/narvii/util/dialog/ProgressDialog;->responseType:Ljava/lang/Class;

    .line 38
    new-instance p1, Lcom/narvii/util/dialog/ProgressDialog$ResultListener;

    iget-object p2, p0, Lcom/narvii/util/dialog/ProgressDialog;->responseType:Ljava/lang/Class;

    invoke-direct {p1, p0, p2}, Lcom/narvii/util/dialog/ProgressDialog$ResultListener;-><init>(Lcom/narvii/util/dialog/ProgressDialog;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 39
    sget p1, Lcom/narvii/lib/R$layout;->dialog_progress_layout:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/util/dialog/ProgressDialog;)J
    .locals 2

    .line 24
    iget-wide v0, p0, Lcom/narvii/util/dialog/ProgressDialog;->showTime:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/narvii/util/dialog/ProgressDialog;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcom/narvii/util/dialog/ProgressDialog;->errorDialogFirst:Z

    return p0
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .line 103
    :try_start_0
    invoke-super {p0}, Lcom/narvii/app/NVDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public getShowDelay()J
    .locals 4

    .line 180
    iget v0, p0, Lcom/narvii/util/dialog/ProgressDialog;->minShowTime:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/narvii/util/dialog/ProgressDialog;->showTime:J

    add-long/2addr v0, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public hideProgressContent()V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/narvii/util/dialog/ProgressDialog;->progressContent:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 83
    sget v0, Lcom/narvii/lib/R$id;->progress_content:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/util/dialog/ProgressDialog;->progressContent:Landroid/widget/TextView;

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/dialog/ProgressDialog;->progressContent:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 43
    sget v0, Lcom/narvii/lib/R$id;->root:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setErrorDialogFirst(Z)V
    .locals 0

    .line 109
    iput-boolean p1, p0, Lcom/narvii/util/dialog/ProgressDialog;->errorDialogFirst:Z

    return-void
.end method

.method public show()V
    .locals 2

    .line 90
    invoke-virtual {p0}, Lcom/narvii/util/dialog/ProgressDialog;->hideProgressContent()V

    .line 92
    :try_start_0
    invoke-super {p0}, Lcom/narvii/app/NVDialog;->show()V

    .line 93
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/narvii/util/dialog/ProgressDialog;->showTime:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public updateProgress(Ljava/lang/String;)V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/narvii/util/dialog/ProgressDialog;->progressContent:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 71
    sget v0, Lcom/narvii/lib/R$id;->progress_content:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/util/dialog/ProgressDialog;->progressContent:Landroid/widget/TextView;

    .line 73
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    iget-object p1, p0, Lcom/narvii/util/dialog/ProgressDialog;->progressContent:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/narvii/util/dialog/ProgressDialog;->progressContent:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/narvii/util/dialog/ProgressDialog;->progressContent:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
