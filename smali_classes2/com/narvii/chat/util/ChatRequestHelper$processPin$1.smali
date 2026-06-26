.class final Lcom/narvii/chat/util/ChatRequestHelper$processPin$1;
.super Ljava/lang/Object;
.source "ChatRequestHelper.kt"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/util/ChatRequestHelper;->processPin(ILandroid/content/Context;Lcom/narvii/model/ChatThread;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $dlg:Lcom/narvii/util/dialog/ProgressDialog;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/narvii/util/dialog/ProgressDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/util/ChatRequestHelper$processPin$1;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/narvii/chat/util/ChatRequestHelper$processPin$1;->$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 2

    .line 448
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/narvii/chat/util/ChatRequestHelper$processPin$1;->$context:Landroid/content/Context;

    check-cast p1, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 451
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/util/ChatRequestHelper$processPin$1;->$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    return-void
.end method
