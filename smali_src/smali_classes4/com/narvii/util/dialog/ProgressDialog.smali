.class public Lcom/narvii/util/dialog/ProgressDialog;
.super Lcom/narvii/app/NVDialog;
.source "SourceFile"


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

    const-class v0, Lcom/narvii/model/api/ApiResponse;

    .line 1
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

    sget v0, Lcom/narvii/lib/R$style;->CustomDialog:I

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/narvii/app/NVDialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/narvii/util/dialog/ProgressDialog;->errorMode:I

    iput-boolean p1, p0, Lcom/narvii/util/dialog/ProgressDialog;->errorDialogFirst:Z

    const/16 p1, 0x4b0

    iput p1, p0, Lcom/narvii/util/dialog/ProgressDialog;->minShowTime:I

    iput-object p2, p0, Lcom/narvii/util/dialog/ProgressDialog;->responseType:Ljava/lang/Class;

    .line 3
    new-instance p1, Lcom/narvii/util/dialog/ProgressDialog$ResultListener;

    invoke-direct {p1, p0, p2}, Lcom/narvii/util/dialog/ProgressDialog$ResultListener;-><init>(Lcom/narvii/util/dialog/ProgressDialog;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    sget p1, Lcom/narvii/lib/R$layout;->dialog_progress_layout:I

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/util/dialog/ProgressDialog;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/util/dialog/ProgressDialog;->errorDialogFirst:Z

    return p0
.end method

.method static bridge synthetic b(Lcom/narvii/util/dialog/ProgressDialog;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/narvii/util/dialog/ProgressDialog;->showTime:J

    return-wide v0
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-super {p0}, Lcom/narvii/app/NVDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :catch_0
    return-void
.end method

.method public getShowDelay()J
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/util/dialog/ProgressDialog;->minShowTime:I

    .line 3
    int-to-long v0, v0

    .line 4
    .line 5
    iget-wide v2, p0, Lcom/narvii/util/dialog/ProgressDialog;->showTime:J

    .line 6
    add-long/2addr v0, v2

    .line 7
    .line 8
    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    move-result-wide v2

    .line 11
    sub-long/2addr v0, v2

    .line 12
    return-wide v0
.end method

.method public hideProgressContent()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/dialog/ProgressDialog;->progressContent:Landroid/widget/TextView;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget v0, Lcom/narvii/lib/R$id;->progress_content:I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Landroid/widget/TextView;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/util/dialog/ProgressDialog;->progressContent:Landroid/widget/TextView;

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/dialog/ProgressDialog;->progressContent:Landroid/widget/TextView;

    .line 17
    .line 18
    const/16 v1, 0x8

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    .line 2
    sget v0, Lcom/narvii/lib/R$id;->root:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 10
    return-void
.end method

.method public setErrorDialogFirst(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/util/dialog/ProgressDialog;->errorDialogFirst:Z

    return-void
.end method

.method public show()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/util/dialog/ProgressDialog;->hideProgressContent()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-super {p0}, Lcom/narvii/app/NVDialog;->show()V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    move-result-wide v0

    .line 11
    .line 12
    iput-wide v0, p0, Lcom/narvii/util/dialog/ProgressDialog;->showTime:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    :catch_0
    return-void
.end method

.method public updateProgress(Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/dialog/ProgressDialog;->progressContent:Landroid/widget/TextView;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget v0, Lcom/narvii/lib/R$id;->progress_content:I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Landroid/widget/TextView;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/util/dialog/ProgressDialog;->progressContent:Landroid/widget/TextView;

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object p1, p0, Lcom/narvii/util/dialog/ProgressDialog;->progressContent:Landroid/widget/TextView;

    .line 23
    .line 24
    const/16 v0, 0x8

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 28
    return-void

    .line 29
    .line 30
    :cond_1
    iget-object v0, p0, Lcom/narvii/util/dialog/ProgressDialog;->progressContent:Landroid/widget/TextView;

    .line 31
    const/4 v1, 0x0

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    iget-object v0, p0, Lcom/narvii/util/dialog/ProgressDialog;->progressContent:Landroid/widget/TextView;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    return-void
.end method
