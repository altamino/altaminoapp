.class public Lcom/narvii/poweruser/AdvanceUserUtils;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/poweruser/AdvanceUserUtils;->context:Lcom/narvii/app/NVContext;

    .line 6
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

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/dialog/AlertDialog;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/poweruser/AdvanceUserUtils;->context:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    const v1, 0x7f120f72

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    .line 18
    .line 19
    .line 20
    const v1, 0x7f0d01a4

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(I)V

    .line 24
    .line 25
    .line 26
    const v1, 0x7f0a0cd9

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    new-instance v2, Lcom/narvii/poweruser/AdvanceUserUtils$1;

    .line 33
    .line 34
    .line 35
    invoke-direct {v2, p0, v0, p1}, Lcom/narvii/poweruser/AdvanceUserUtils$1;-><init>(Lcom/narvii/poweruser/AdvanceUserUtils;Lcom/narvii/util/dialog/AlertDialog;Lcom/narvii/util/Callback;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    .line 40
    .line 41
    const v1, 0x7f0a0970

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 45
    move-result-object v1

    .line 46
    .line 47
    new-instance v2, Lcom/narvii/poweruser/AdvanceUserUtils$2;

    .line 48
    .line 49
    .line 50
    invoke-direct {v2, p0, v0, p1}, Lcom/narvii/poweruser/AdvanceUserUtils$2;-><init>(Lcom/narvii/poweruser/AdvanceUserUtils;Lcom/narvii/util/dialog/AlertDialog;Lcom/narvii/util/Callback;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    .line 55
    .line 56
    const p1, 0x7f0a0247

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    new-instance v1, Lcom/narvii/poweruser/AdvanceUserUtils$3;

    .line 63
    .line 64
    .line 65
    invoke-direct {v1, p0, v0}, Lcom/narvii/poweruser/AdvanceUserUtils$3;-><init>(Lcom/narvii/poweruser/AdvanceUserUtils;Lcom/narvii/util/dialog/AlertDialog;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 72
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

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    const/4 v0, 0x1

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 11
    :cond_0
    return-void
.end method
