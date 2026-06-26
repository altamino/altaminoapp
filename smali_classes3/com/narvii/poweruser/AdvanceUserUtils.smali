.class public Lcom/narvii/poweruser/AdvanceUserUtils;
.super Ljava/lang/Object;
.source "AdvanceUserUtils.java"


# static fields
.field public static final BAN_USER_RESULT_CANCEL:I = 0x0

.field public static final BAN_USER_RESULT_CONTINUE:I = 0x1

.field public static final STRIKE_USER_RESULT_CANCEL:I = 0x0

.field public static final STRIKE_USER_RESULT_CONTINUE:I = 0x1


# instance fields
.field context:Lcom/narvii/app/NVContext;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/narvii/poweruser/AdvanceUserUtils;->context:Lcom/narvii/app/NVContext;

    return-void
.end method


# virtual methods
.method public showBanUserWarningDialog(Lcom/narvii/util/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 40
    new-instance v0, Lcom/narvii/util/dialog/AlertDialog;

    iget-object v1, p0, Lcom/narvii/poweruser/AdvanceUserUtils;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0e51

    .line 41
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    const v1, 0x7f0b0186

    .line 42
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(I)V

    const v1, 0x7f090a11

    .line 43
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/narvii/poweruser/AdvanceUserUtils$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/narvii/poweruser/AdvanceUserUtils$1;-><init>(Lcom/narvii/poweruser/AdvanceUserUtils;Lcom/narvii/util/dialog/AlertDialog;Lcom/narvii/util/Callback;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09070e

    .line 52
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/narvii/poweruser/AdvanceUserUtils$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/narvii/poweruser/AdvanceUserUtils$2;-><init>(Lcom/narvii/poweruser/AdvanceUserUtils;Lcom/narvii/util/dialog/AlertDialog;Lcom/narvii/util/Callback;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090193

    .line 61
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Lcom/narvii/poweruser/AdvanceUserUtils$3;

    invoke-direct {v1, p0, v0}, Lcom/narvii/poweruser/AdvanceUserUtils$3;-><init>(Lcom/narvii/poweruser/AdvanceUserUtils;Lcom/narvii/util/dialog/AlertDialog;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method

.method public showStrikeWarningDialog(Lcom/narvii/util/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 32
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
